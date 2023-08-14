## Visual story telling part 2: Capital Metro data

### Question:
Your task is to create a figure, or set of related figures, that tell an interesting story about Capital Metro ridership patterns around the UT-Austin campus during the semester in question. Provide a clear annotation/caption for each figure, but the figure(s) should be more or less stand-alone, in that you shouldn't need many, many paragraphs to convey its meaning. 
Rather, the figure together with a concise caption should speak for itself as far as possible.

### Solution:
Telling a compelling story involves creating visualizations. Here are some of the views:

#### Ridership Distribution by Weekend and Weekday:
![newplot-26](https://github.com/mostwanted-786/NAAV/assets/139088219/c27a4c28-4ae4-4d78-a91c-dbd9e41fcd54)


![newplot-16](https://github.com/mostwanted-786/NAAV/assets/139088219/998d6233-b5a2-4e63-ba31-614e903b2d2b)

##### It can be clearly seen that weekdays are more busy and experience more ridership compared to weekends


#### Correlation matrix:
![newplot-25](https://github.com/mostwanted-786/NAAV/assets/139088219/59f0f8fe-7eed-423e-be43-53e546c83730)

Created a correlation matrix to understand the impact of the variables on the ridership(boarding): 
boarding       1.000000

hour_of_day    0.351907

temperature    0.197585

alighting      0.120225

##### hour_of_day is one of the most important variable

We create visuals now in order to understand different variables along the hour of day
#### Average Boarding Ridership by Hour and Day Heatmap:

![newplot-18](https://github.com/mostwanted-786/NAAV/assets/139088219/68d07e66-8e68-445f-8ea1-2e4daa484dd9)

From the above chart, we can see that the weekdays and specifically 3pm-5pm hours of the day are most busy

#### Ridership Distribution by Weekend and Weekday by hour of day:
![newplot-31](https://github.com/mostwanted-786/NAAV/assets/139088219/e51d4a46-aeae-4335-89f6-35ec1dd5992e)


![newplot-30](https://github.com/mostwanted-786/NAAV/assets/139088219/56277bef-3a73-4184-9698-0cea065383d5)

![newplot-35](https://github.com/mostwanted-786/NAAV/assets/139088219/a56047d0-4b34-4093-9fbe-7ab5bded87fc)

Weekday:
Weekend:


#### Average Boarding Ridership by Month for hour of day:

![newplot-29](https://github.com/mostwanted-786/NAAV/assets/139088219/564a6cf0-4107-4cf5-b36b-df8fe35a6cee)


This could reveal whether there are any significant spikes or drops in ridership during specific months.

#### Average Boarding Ridership Trend by Hour of Day for each day of week: 

![newplot-27](https://github.com/mostwanted-786/NAAV/assets/139088219/4b578b22-0115-4014-9ac0-1cac52229065)


The line plot visualizes the average boarding ridership trend by hour of the day, differentiated by the day of the week. 
It could show how ridership patterns differ on weekdays and weekends.

#### Average Boarding Ridership Trend by Hour of Day for each month as well as temperature: 

![newplot-34](https://github.com/mostwanted-786/NAAV/assets/139088219/f3f77988-8c92-41a9-889d-2ce5b7e71f60)

The box plot illustrates the distribution of boarding ridership between weekdays and weekends. This could highlight whether there are noticeable differences in ridership distribution on these two types of days.
 


The scatter plot shows the relationship between ridership and temperature, with each point color-coded by month. It could reveal whether there's a correlation between temperature and ridership, and whether this correlation changes across different months.

These visualizations and insights provide a comprehensive view of different aspects of the 
Capital Metro ridership data, offering a clearer understanding of the patterns and trends around the UT-Austin campus during the specified semester.
