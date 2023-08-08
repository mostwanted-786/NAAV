# Exercises

##### Group Members: Akash Goyal, Nishant Singh, Vaibhav Nagar, Ambarish Narayan

## Probability Practice

## Part (a)

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
