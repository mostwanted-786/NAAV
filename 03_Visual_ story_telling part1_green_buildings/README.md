### Visual story telling part 1: green buildings

### Question: 
Do you agree with the conclusions of her on-staff stats guru? If so, point to evidence supporting his case. If not, explain specifically where and why the analysis goes wrong, and how it can be improved. Do you see the possibility of confounding variables for the relationship between rent and green status? If so, provide evidence for confounding, and see if you can also make a picture that visually shows how we might "adjust" for such a confounder. Tell your story in pictures, with appropriate introductory and supporting text.

### Solution:
Yes, I created a few charts in order to understand and verify the conclusions from stats guru:
1. Low occupany rates: 

![newplot](https://github.com/mostwanted-786/NAAV/assets/139088219/cdc65498-60e1-4dac-96ac-d5c7e812bde6)

![newplot-2](https://github.com/mostwanted-786/NAAV/assets/139088219/6a8f6d36-8bd6-48ff-8eb9-412e33688a2c)



From the above two charts, we can clearly see that there is skewness in the data and majority of the data points indicates more than 50% occupancy. Hence, removing low occupancy rates is a reasonable decision. 
Also, I agree with excel guru's conclusion but the calculation says that post 8.5 year onward we can expect profits if we go for a green building. 
Also, on avg, age of buidling is ~47 years, so its definitely profitable!
Also, we can further look into some other factor which can affect the decision of going for a green building or not such as:
We can create several plots as below:


### Green Rating vs. Rent:
![Screenshot 2023-08-14 at 1 56 39 AM](https://github.com/mostwanted-786/NAAV/assets/139088219/8b1f9808-0000-41ac-88e5-14dae79e71b6)

-- Median rent is higher for Green Rating=1 buildings by +0.18$


### Leasing Rate vs Rent:
![image](https://github.com/mostwanted-786/NAAV/assets/139088219/dff0aef2-05cb-4d83-ba31-e9849115524b)

-- More the leasing rate or occupancy, we can expect more rent which is kind of obvious 

### Stories vs. Rent: 

![newplot-5](https://github.com/mostwanted-786/NAAV/assets/139088219/067b8872-a2ba-4d3e-ba79-b387f64ef1b5)

-- Lower floor or stories tend to havce higher rents compared to higher floor buildings

### Amenities vs. Rent: 
![newplot-8](https://github.com/mostwanted-786/NAAV/assets/139088219/4d2d8d9d-4f0c-4a1b-acf6-ec4e14b48ac7)

![image](https://github.com/mostwanted-786/NAAV/assets/139088219/07ec3095-2f39-4af9-9dbf-adea4ad7ea58)


-- Amenities are not as important for getting higher rents

### Quality(class a,b) vs. Rent: 
![newplot-13](https://github.com/mostwanted-786/NAAV/assets/139088219/9a8b2149-f4e0-4663-9521-4317742f1c52)

![newplot-14](https://github.com/mostwanted-786/NAAV/assets/139088219/a77cd59e-67b2-49dc-a759-b9b3d0ead921)


Class a and class b are also not very significant in order to get higher rents for green buildings



These visualizations help us understand how the the developer can make a better decision in order to to understand the potential confounding factors that might affect the relationship between green status and rent.

### Conclusion: "adjust" for the confounds

From the preliminary analysis as well as the above visuals we can suggests that building a green building could be financially viable. Some of the confounds need to be taken importantly when it comes to building greed building in order to obtain better rents. Constructing lower floor stories with less importance on amenites and ensuring higher occupany at the same can help obtain the better rents!
