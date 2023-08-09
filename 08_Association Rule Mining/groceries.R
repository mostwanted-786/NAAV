library(tidyverse)
library(igraph)
library(arules)  # has a big ecosystem of packages built around it
library(arulesViz)

lines = readLines("groceries.txt")

i = 1
groceries = list()

# Process the lines
for (line in lines) {
  items = strsplit(line, ",")[[1]]
  for (item in items) {
    groceries = c(groceries, list(data.frame(basket_id = i, item = item)))
  }
  i = i + 1
}

# Create a data frame
groceries = do.call(rbind, groceries)
print(groceries)

groceries$basket_id = factor(groceries$basket_id)
groceries = split(x=groceries$item, f=groceries$basket_id)
groceries = lapply(groceries, unique)
groceriestrans = as(groceries, "transactions")

groceries_rules = apriori(groceriestrans,
                     parameter=list(support=.001, confidence=.01, maxlen=10))
inspect(groceries_rules)
plot(groceries_rules, jitter=0)

groceries_graph = associations2igraph(subset(groceries_rules, subset=lift > 10 & confidence > 0.5), associationsAsNodes = FALSE)
igraph::write_graph(groceries_graph, file='groceries.graphml', format = "graphml")


