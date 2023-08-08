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
