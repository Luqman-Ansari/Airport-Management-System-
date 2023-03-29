# i210413_C_Asign2
**Q1**
In this Question, it was challenge to handle relations. I handeled them by setting up foreign and primary keys. It was helpful for mantaining all relations in the database.

**Query 3:**
In query 3 the main challenge that we faced was that we did not at first understand how we were supposed to check the fact that a plane was never serviced. Another challenge we faced was to figure out if we needed to include the plane name in the airplane table but in the end we decided to use planet table and inner join to achieve this.

**Query 4:**
In query 4 a challenge that we faced was to determine where we were supposed to check the capacity from i.e. were we supposed to modify the airplane table or were we supposed to use capacity as an attribute in the planet table. We also had to recheck our erd to make sure we were making the right decision.

![image](https://user-images.githubusercontent.com/116886893/228639024-b5b25a9b-1e43-4d34-aaae-73a4829ac559.png)


**Query 5:**
In query 5 we faced the challenge of deciding whether to take 2 shifts or day and night or to use hours as shifts so to avoid complexity we simply decided on day and night shifts.

![image](https://user-images.githubusercontent.com/116886893/228639119-aaa890f4-2cb7-4c3e-9e65-063d2a674bbc.png)

**Query 6:**
In this Query, i faced the challenge of finding top 5 employee. Hence, I ordered them in decreasing mantaining hours order and selected only top 5 rows.

![image](https://user-images.githubusercontent.com/116886893/228639650-1d07c6a2-9dd2-40a6-b2c2-44a25f71bde3.png)


**Query 7:**
In query 7 the challenge was to set a range for our time frame, meaning to understand how we were to check in a range of past week. For this purpose we scoured the internet and found the built in function DATEADD and we used a condition where we checked if the date of last maintenance falls within 7 days of current date in the past.

**Query 8:**
In this Question, i didnt face any challenge. I used sub queries to find names of both Person and Corporations.

![image](https://user-images.githubusercontent.com/116886893/228640215-5b5723e7-2688-4061-bad7-59b8a8a0ef40.png)

**Query 9:**
In this Question I used two inner joins to find the required result. 

![image](https://user-images.githubusercontent.com/116886893/228640574-3e7da50e-59e8-45dc-8b89-f9d3b4ee1e5c.png)

**Query 10: **

In this Question, I used a group by function to group the planes.

![image](https://user-images.githubusercontent.com/116886893/228640721-98606a88-2941-460a-bd5e-ee33eb9d2480.png)

**Query 11: **

In this question i used, inner joins and group by function for finding the required result. 

![image](https://user-images.githubusercontent.com/116886893/228641066-4a58f0db-8fdc-4ba4-b353-bc3eb61a6e85.png)

**Query 12: **

In this Question, I used sub queries to find plane names by their model numbers.

![image](https://user-images.githubusercontent.com/116886893/228641192-0649bf29-5c54-416c-99cd-be88c0c935e7.png)

**Query 13: **

The challenge was to find employees whoare not qualified, hence i used outer join to find those employees. 

![image](https://user-images.githubusercontent.com/116886893/228641525-bc2727e9-0c7a-4338-8021-64d8358a1010.png)

**Query 14: **

In this question I used 3 inner joins to find the required information as different information was in different tables.

**Query 15: **

In this question, i used a sub query inside inner join to find the planes that are currently not under mantainance, then pilots were found through sub queries, that are allowed to fly that plane. 

![image](https://user-images.githubusercontent.com/116886893/228642197-fa7f808e-ed10-4216-83c5-b33c107b829a.png)

**Query 16: **

In this question i used two sub queries in inner join and from, to find the reuired result. 

![image](https://user-images.githubusercontent.com/116886893/228642442-de12de9a-632d-439f-be78-a5b68b029aaa.png)


**Query 17: **

I used UNION key word to merge two columns, which were obtained from two different sub Queries. 

![image](https://user-images.githubusercontent.com/116886893/228642735-5e9820e9-1b00-4564-9411-4b8a3278ec84.png)

**Query 18: **

In this question I used sub queries to find owners who purchased the same plane a month ago. I used diffdate function to find those owners. 

**Query 19: **
In this question, i used group by function to group all hangars, then counted the planes stored in them. 

![image](https://user-images.githubusercontent.com/116886893/228643073-89f1212b-3647-4d6f-ac6a-55e1ae3750b0.png)

**Query 20: **




