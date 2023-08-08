# Exercises

##### Group Members: Akash Goyal, Nishant Singh, Vaibhav Nagar, Ambarish Narayan

## Probability Practice

### Part (a)

Visitors to your website are asked to answer a single survey question before they get access to the content on the page. Among all of the users, there are two categories: Random Clicker (RC), and Truthful Clicker (TC). There are two possible answers to the survey: yes and no. Random clickers would click either one with equal probability. You are also giving the information that the expected fraction of random clickers is 0.3. After a trial period, you get the following survey results: 65% said Yes and 35% said No. What fraction of people who are truthful clickers answered yes? Hint: use the rule of total probability.

### Answer

Let's denote the events:

Event A: User is a Random Clicker (RC)

Event T: User is a Truthful Clicker (TC)

Event Y: User's answer is "Yes"

Event N: User's answer is "No"

We are given:

P(A) = 0.3 (expected fraction of random clickers)

P(T) = 1 - P(A) = 0.7 (fraction of truthful clickers)

P(Y\|A) = 0.5 (random clickers would click "Yes" with equal probability)

P(N\|A) = 0.5 (random clickers would click "No" with equal probability)

P(Y\|T) = ? (fraction of truthful clickers who answered "Yes")

P(N\|T) = 1 - P(Y\|T) = ? (fraction of truthful clickers who answered "No")

We want to find P(Y\|T), which is the fraction of truthful clickers who answered "Yes."

Using the law of total probability:

P(Y) = P(A) \* P(Y\|A) + P(T) \* P(Y\|T)

Substitute the known values:

0.65 = 0.3 \* 0.5 + 0.7 \* P(Y\|T)

Now solve for P(Y\|T):

0.65 = 0.15 + 0.7 \* P(Y\|T)

P(Y\|T) = 0.7143

Therefore, the fraction of people who are truthful clickers and answered "Yes" is approximately 0.7143 or 71.43%.

### Part (b)

Imagine a medical test for a disease with the following two attributes:

-   The sensitivity is about 0.993. That is, if someone has the disease, there is a probability of 0.993 that they will test positive.

-   The specificity is about 0.9999. This means that if someone doesn't have the disease, there is probability of 0.9999 that they will test negative.

-   In the general population, incidence of the disease is reasonably rare: about 0.0025% of all people have it (or 0.000025 as a decimal probability).

Suppose someone tests positive. What is the probability that they have the disease?

### Answer
This is a classic application of Bayes' theorem, which can help us calculate the probability that someone actually has the disease given that they tested positive. Let's denote the events:

-   Event D: Person has the disease.

-   Event P: Person tests positive.

We are given the following probabilities:

-   P(D) = 0.000025 (probability of having the disease)

-   P(!D) = 1 - P(D) = 1 - 0.000025 = 0.999975 (probability of not having the disease)

-   P(P\|D) = 0.993 (probability of testing positive given that the person has the disease)

-   P(P\|!D) = 1 - specificity = 1 - 0.9999 = 0.0001 (probability of testing positive given that the person does not have the disease)

We want to find P(D\|P), which is the probability that someone has the disease given that they tested positive.

Using Bayes' theorem:

P(D\|P) = (P(P\|D) \* P(D)) / P(P)

The denominator, P(P), can be calculated using the law of total probability:

P(P) = P(P\|D) \* P(D) + P(P\|!D) \* P(!D)

Now substitute the values and calculate:

P(P) = (0.993 \* 0.000025) + (0.0001 \* 0.999975) ≈ 0.0001249

P(D\|P) = (0.993 \* 0.000025) / 0.0001249 ≈ 0.1995

Therefore, the probability that someone who tests positive actually has the disease is approximately 0.1995 or 19.95%. Despite the high sensitivity and specificity of the test, due to the rarity of the disease in the general population, the positive predictive value is relatively low.

## Wrangling the Billboard Top 100

Consider the data in [billboard.csv](https://github.com/jgscott/STA380/blob/bd4000b1d6146fc4137e76a110b7c2d3f8951e27/data/billboard.csv) containing every song to appear on the weekly [Billboard Top 100](https://www.billboard.com/charts/hot-100/) chart since 1958, up through the middle of 2021. Each row of this data corresponds to a single song in a single week. For our purposes, the relevant columns here are:

-   performer: who performed the song

-   song: the title of the song

-   year: year (1958 to 2021)

-   week: chart week of that year (1, 2, etc)

-   week_position: what position that song occupied that week on the Billboard top 100 chart.

Use your skills in data wrangling and plotting to answer the following three questions.

### Part (a)

Make a table of the top 10 most popular songs since 1958, as measured by the *total number of weeks that a song spent on the Billboard Top 100.* Note that these data end in week 22 of 2021, so the most popular songs of 2021 will not have up-to-the-minute data; please send our apologies to The Weeknd.

Your table should have **10 rows** and **3 columns**: `performer`, `song`, and `count`, where `count` represents the number of weeks that song appeared in the Billboard Top 100. Make sure the entries are sorted in descending order of the `count` variable, so that the more popular songs appear at the top of the table. Give your table a short caption describing what is shown in the table.

(*Note*: you'll want to use both `performer` and `song` in any `group_by` operations, to account for the fact that multiple unique songs can share the same title.)

### Answer

### Part (b)

Is the "musical diversity" of the Billboard Top 100 changing over time? Let's find out. We'll measure the musical diversity of given year as *the number of unique songs that appeared in the Billboard Top 100 that year.* Make a line graph that plots this measure of musical diversity over the years. The x axis should show the year, while the y axis should show the number of unique songs appearing at any position on the Billboard Top 100 chart in any week that year. For this part, please filter the data set so that it excludes the years 1958 and 2021, since we do not have complete data on either of those years. Give the figure an informative caption in which you explain what is shown in the figure and comment on any interesting trends you see.

There are number of ways to accomplish the data wrangling here. For example, you could use two distinct sets of data-wrangling steps. The first set of steps would get you a table that counts the number of times that a given song appears on the Top 100 in a given year. The second set of steps operate on the result of the first set of steps; it would count the number of unique songs that appeared on the Top 100 in each year, *irrespective of how many times* it had appeared.

### Answer

### Part (c)

Let's define a "ten-week hit" as a single song that appeared on the Billboard Top 100 for at least ten weeks. There are 19 artists in U.S. musical history since 1958 who have had *at least 30 songs* that were "ten-week hits." Make a bar plot for these 19 artists, showing how many ten-week hits each one had in their musical career. Give the plot an informative caption in which you explain what is shown.

*Notes*:

1.  You might find this easier to accomplish in two distinct sets of data wrangling steps.

2.  Make sure that the individuals names of the artists are readable in your plot, and that they're not all jumbled together. If you find that your plot isn't readable with vertical bars, you can add a `coord_flip()` layer to your plot to make the bars (and labels) run horizontally instead.

3.  By default a bar plot will order the artists in alphabetical order. This is acceptable to turn in. But if you'd like to order them according to some other variable, you can use the `fct_reorder` function, described in [this blog post](https://datavizpyr.com/re-ordering-bars-in-barplot-in-r/). This is optional.

### Answer
