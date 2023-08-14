## Visual story telling part 2: Capital Metro data

### Question:
Your task is to create a figure, or set of related figures, that tell an interesting story about Capital Metro ridership patterns around the UT-Austin campus during the semester in question. Provide a clear annotation/caption for each figure, but the figure(s) should be more or less stand-alone, in that you shouldn't need many, many paragraphs to convey its meaning. 
Rather, the figure together with a concise caption should speak for itself as far as possible.

### Solution:
Effective storytelling often involves the creation of insightful visualizations. Here are the key visualizations for the Capital Metro ridership data around the UT-Austin campus during the semester:

#### Ridership Distribution by Weekend and Weekday:
![newplot-26](https://github.com/mostwanted-786/NAAV/assets/139088219/c27a4c28-4ae4-4d78-a91c-dbd9e41fcd54)


![newplot-16](https://github.com/mostwanted-786/NAAV/assets/139088219/998d6233-b5a2-4e63-ba31-614e903b2d2b)

##### It is evident that weekdays exhibit significantly higher ridership compared to weekends.


#### Correlation matrix:
![newplot-25](https://github.com/mostwanted-786/NAAV/assets/139088219/59f0f8fe-7eed-423e-be43-53e546c83730)

A correlation matrix generated to discern the variables' impact on boarding. The following correlations observed:
boarding       1.000000

hour_of_day    0.351907

temperature    0.197585

alighting      0.120225

#### hour_of_day is one of the most important variable

Further exploration directed towards understanding the relationship between hour of day and ridership.
#### Average Boarding Ridership by Hour and Day Heatmap:

![newplot-18](https://github.com/mostwanted-786/NAAV/assets/139088219/68d07e66-8e68-445f-8ea1-2e4daa484dd9)

The heatmap aboe underlines that 3pm-5pm on weekdays witnesses the highest ridership levels.

#### Ridership Distribution by Weekend and Weekday by hour of day:
![newplot-31](https://github.com/mostwanted-786/NAAV/assets/139088219/e51d4a46-aeae-4335-89f6-35ec1dd5992e)

![newplot-30](https://github.com/mostwanted-786/NAAV/assets/139088219/56277bef-3a73-4184-9698-0cea065383d5)

![newplot-35](https://github.com/mostwanted-786/NAAV/assets/139088219/a56047d0-4b34-4093-9fbe-7ab5bded87fc)

Weekdays: Peak hours consistently fall around 4pm, except for Thursdays, where it occurs around 3pm.

Weekends: Saturdays witness peak ridership at around 10am, while Sundays continue to maintain their usual peak hours between 4-5pm.

#### Average Boarding Ridership by Month for hour of day:

![newplot-29](https://github.com/mostwanted-786/NAAV/assets/139088219/564a6cf0-4107-4cf5-b36b-df8fe35a6cee)

This visualization, portraying ridership across months, fails to reveal significant spikes or drops. Subsequent charts consider temperature variations for better insights.

#### Average Boarding Ridership Trend by Hour of Day for each day of week: 

![newplot-27](https://github.com/mostwanted-786/NAAV/assets/139088219/4b578b22-0115-4014-9ac0-1cac52229065)

 
This indicated that during these months, how each day observed ridership on average. It's a valuable tool to cater to specific daily demands.

#### Average Boarding Ridership Trend by Hour of Day for each month as well as temperature: 

![newplot-34](https://github.com/mostwanted-786/NAAV/assets/139088219/f3f77988-8c92-41a9-889d-2ce5b7e71f60)

This intricate chart maps ridership trends for specific hours across different months. It uncovers changes as the semester unfolds, influenced by temperature variations. Notably, it also exposes distinct patterns between weekends and weekdays, with noticeable dips during weekends. For November, unusual ridership patterns around hour 12 and 18 in the second-last week are visible.
 
### Summary:

### Weekdays are Busier: 
Weekdays experience significantly higher ridership compared to weekends. This suggests that the transit service is more frequently used by students and faculty during academic days.

### Hour of Day Matters: 
The hour of the day plays a crucial role in ridership. Peak hours are observed around 3pm-5pm on weekdays, indicating the time when students are likely to commute to and from the campus.

### Month and Temperature Impact: 
While no significant spikes or drops in ridership are observed across months, the average ridership trend by month indicates a consistent pattern. The temperature variations are also considered to identify how ridership changes with weather conditions.

### Day-to-Day Variation: 
The line plot showcasing the average boarding ridership trend by hour of the day for each day of the week provides a day-to-day understanding of the ridership. This information can help optimize transit services based on daily demand.

### Weekend vs. Weekdays: 
The last chart demonstrates the ridership trend over different months and hours of the day, showcasing a clear pattern between weekends and weekdays. It's evident that weekends experience sudden drops in ridership, while weekdays follow a more consistent trend.

### From these visualizations, it's evident that understanding the factors influencing ridership is essential for effective transportation management. By identifying peak hours, analyzing monthly variations, and considering weather conditions, Capital Metro can make informed decisions to improve services and cater to the needs of its riders.

### Conclusion:
In conclusion, by harnessing the insights derived from this data-driven visual storytelling, Capital Metro can enhance its services, optimize routes, and provide a more efficient and convenient transportation experience for the UT-Austin community.


