# Exercises

##### Group Members: Akash Goyal, Nishant Singh, Vaibhav Nagar, Ambarish Narayan

# Probability Practice

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

# Wrangling the Billboard Top 100

Consider the data in [billboard.csv](https://github.com/jgscott/STA380/blob/bd4000b1d6146fc4137e76a110b7c2d3f8951e27/data/billboard.csv) containing every song to appear on the weekly [Billboard Top 100](https://www.billboard.com/charts/hot-100/) chart since 1958, up through the middle of 2021. Each row of this data corresponds to a single song in a single week. For our purposes, the relevant columns here are:

-   performer: who performed the song

-   song: the title of the song

-   year: year (1958 to 2021)

-   week: chart week of that year (1, 2, etc)

-   week_position: what position that song occupied that week on the Billboard top 100 chart.

Use your skills in data wrangling and plotting to answer the following three questions.

[code](https://github.com/mostwanted-786/NAAV/tree/main/02_Wrangling%20the%20Billboard%20Top%20100)

### Part (a)

Make a table of the top 10 most popular songs since 1958, as measured by the *total number of weeks that a song spent on the Billboard Top 100.* Note that these data end in week 22 of 2021, so the most popular songs of 2021 will not have up-to-the-minute data; please send our apologies to The Weeknd.

Your table should have **10 rows** and **3 columns**: `performer`, `song`, and `count`, where `count` represents the number of weeks that song appeared in the Billboard Top 100. Make sure the entries are sorted in descending order of the `count` variable, so that the more popular songs appear at the top of the table. Give your table a short caption describing what is shown in the table.

(*Note*: you'll want to use both `performer` and `song` in any `group_by` operations, to account for the fact that multiple unique songs can share the same title.)

### Answer
![image](https://github.com/mostwanted-786/NAAV/assets/137720186/9bc9312e-3122-4abc-bf22-df176737c05f)

### Part (b)

Is the "musical diversity" of the Billboard Top 100 changing over time? Let's find out. We'll measure the musical diversity of given year as *the number of unique songs that appeared in the Billboard Top 100 that year.* Make a line graph that plots this measure of musical diversity over the years. The x axis should show the year, while the y axis should show the number of unique songs appearing at any position on the Billboard Top 100 chart in any week that year. For this part, please filter the data set so that it excludes the years 1958 and 2021, since we do not have complete data on either of those years. Give the figure an informative caption in which you explain what is shown in the figure and comment on any interesting trends you see.

There are number of ways to accomplish the data wrangling here. For example, you could use two distinct sets of data-wrangling steps. The first set of steps would get you a table that counts the number of times that a given song appears on the Top 100 in a given year. The second set of steps operate on the result of the first set of steps; it would count the number of unique songs that appeared on the Top 100 in each year, *irrespective of how many times* it had appeared.

### Answer
![newplot](https://github.com/mostwanted-786/NAAV/assets/137720186/0789dc36-9a85-463f-96bf-7a6572b3b7b7)

### Part (c)

Let's define a "ten-week hit" as a single song that appeared on the Billboard Top 100 for at least ten weeks. There are 19 artists in U.S. musical history since 1958 who have had *at least 30 songs* that were "ten-week hits." Make a bar plot for these 19 artists, showing how many ten-week hits each one had in their musical career. Give the plot an informative caption in which you explain what is shown.

*Notes*:

1.  You might find this easier to accomplish in two distinct sets of data wrangling steps.

2.  Make sure that the individuals names of the artists are readable in your plot, and that they're not all jumbled together. If you find that your plot isn't readable with vertical bars, you can add a `coord_flip()` layer to your plot to make the bars (and labels) run horizontally instead.

3.  By default a bar plot will order the artists in alphabetical order. This is acceptable to turn in. But if you'd like to order them according to some other variable, you can use the `fct_reorder` function, described in [this blog post](https://datavizpyr.com/re-ordering-bars-in-barplot-in-r/). This is optional.

### Answer
![newplot (1)](https://github.com/mostwanted-786/NAAV/assets/137720186/210ee1ae-9a6c-4a22-8bb9-5af24c293e00)

# Visual Story Telling Part 1

# Visual Story Telling Part 2

# Clustering and Dimensionality
The data in wine.csv contains information on 11 chemical properties of 6500 different bottles of vinho verde wine from northern Portugal. In addition, two other variables about each wine are recorded:
* whether the wine is red or white
* the quality of the wine, as judged on a 1-10 scale by a panel of certified wine snobs.
Run PCA, tSNE, and any clustering algorithm of your choice on the 11 chemical properties (or suitable transformations thereof) and summarize your results. Which dimensionality reduction technique makes the most sense to you for this data? Convince yourself (and me) that your chosen approach is easily capable of distinguishing the reds from the whites, using only the "unsupervised" information contained in the data on chemical properties. Does your unsupervised technique also seem capable of distinguishing the higher from the lower-quality wines? Present appropriate numerical and/or visual evidence to support your conclusions.

To clarify: I'm not asking you to run a supervised learning algorithm. Rather, I'm asking you to see whether the differences in the labels (red/white and quality score) emerge naturally from applying an unsupervised technique to the chemical properties. This should be straightforward to assess using plots.


### Answer 

# Market Segmentation

# Reuters Corpus

# Association rule mining

We analyzed the hidden relationships in the dataset given, which consists of baskets (i.e., items purchased in a shopping kart). The lift value of greater than 10 was selected, indicating a higher positive relation between the rules, and a confidence value of greater than 0.5, indicating a high likelihood of the relation. Also after hit and trial, these values provided 14 relations to analyze.

After looking at the rules we inferred a lot of exciting associations:
* People who buy liquor or red/blush wine tend to buy bottled beer as well, indicating that all the liquor sections should be located in close proximity.
* People who buy ham, cheese, or eggs also buy white bread. this indicates that all these items are related.
* People who buy baking powder and soda also buy sugar, maybe for baking a cake or something. If these items are located together then it will be easier for the people to grab the items.
* Root vegetables have a high lift value with other fruits and vegetables, so they can be placed together. This makes sense since most people shop for their vegetables and fruits together.

# Image classification with neural networks

The image data was trained with an 80/20 split between training and testing. The following CNN was used to train the data:
(conv1): Conv2d(3, 64, kernel_size=(3, 3), stride=(1, 1))
(conv2): Conv2d(64, 128, kernel_size=(3, 3), stride=(1, 1))
(conv3): Conv2d(128, 256, kernel_size=(3, 3), stride=(1, 1))
(dropout1): Dropout(p=0.25, inplace=False)
(dropout2): Dropout(p=0.5, inplace=False)
(dropout3): Dropout(p=0.7, inplace=False)
(fc1): Linear(in_features=215296, out_features=2048, bias=True)
(fc3): Linear(in_features=2048, out_features=512, bias=True)
(fc4): Linear(in_features=512, out_features=128, bias=True)
(fc5): Linear(in_features=128, out_features=10, bias=True)

A sample prediction in the final stages of training is shown below:

![image](https://github.com/mostwanted-786/NAAV/assets/60353780/8a20134f-cfa5-49d9-baa4-0d07e7deea98)

Actual: 6 4 6 9 9 2 1 1
Predicted: 6 4 3 9 9 2 1 1

The final accuracy of the model is: ~94%

The confusion matrix on the test data is shown below:

![image](https://github.com/mostwanted-786/NAAV/assets/60353780/2bd11db8-bbaa-452c-b5ec-972f2339c838)

