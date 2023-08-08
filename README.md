# Exercises
### Group Members: Akash Goyal, Nishant Singh, Vaibhav Nagar, Ambarish Narayan


Let's denote the events:

Event A: User is a Random Clicker (RC)
Event T: User is a Truthful Clicker (TC)
Event Y: User's answer is "Yes"
Event N: User's answer is "No"
We are given:

P(A) = 0.3 (expected fraction of random clickers)
P(T) = 1 - P(A) = 0.7 (fraction of truthful clickers)
P(Y|A) = 0.5 (random clickers would click "Yes" with equal probability)
P(N|A) = 0.5 (random clickers would click "No" with equal probability)
P(Y|T) = ? (fraction of truthful clickers who answered "Yes")
P(N|T) = 1 - P(Y|T) = ? (fraction of truthful clickers who answered "No")
We want to find P(Y|T), which is the fraction of truthful clickers who answered "Yes."

Using the law of total probability:

css
Copy code
P(Y) = P(A) * P(Y|A) + P(T) * P(Y|T)
Substitute the known values:

css
Copy code
0.65 = 0.3 * 0.5 + 0.7 * P(Y|T)
Now solve for P(Y|T):

css
Copy code
0.65 = 0.15 + 0.7 * P(Y|T)
0.65 - 0.15 = 0.7 * P(Y|T)
0.5 = 0.7 * P(Y|T)
P(Y|T) = 0.5 / 0.7
P(Y|T) = 0.7143
Therefore, the fraction of people who are truthful clickers and answered "Yes" is approximately 0.7143 or 71.43%.
