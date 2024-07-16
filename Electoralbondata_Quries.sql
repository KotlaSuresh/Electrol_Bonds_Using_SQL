/************************************************************============ Electoral Bonds Database =========== *******************************************************************
 -- Database created by: Kotla Suresh
 -- Database Name: electoralbonddata    
 -- Author of Queries : Kotla Suresh
 -- Organization : Careerpedia
 -- Description: This is a database which has electoral bonds data provided by Govenement of INDIA after Supreme Court Ruling. 
 -- Date : 19-May-2024
**********************************************************************************************************************************************************************************/

/*************************************************************************Tables and Data Description*****************************************************************************

The data was provided as 2 Tables and extra data recarding the bank branches has been extracted from GOVT website and the overall data is distributed in 4 tables. So that the 
whole data is in 3rd Normalization Form. 

 Tables in the database: 


The data base has 4 tables : `SHOW TABLES` 

+-------------------------------+
| Tables_in_electoralbonddata   |
+-------------------------------+
| bankdata                      |
| bonddata                      |
| donordata                     |
| receiverdata                  |
+-------------------------------+

#### Bonddata

+--------------+------------+------+-----+---------+-------+
| Field        | Type       | Null | Key | Default | Extra |
+--------------+------------+------+-----+---------+-------+
| Unique_key   | varchar(8) | NO   | PRI | NULL    |       |
| Denomination | int        | YES  |     | NULL    |       |
+--------------+------------+------+-----+---------+-------+


+------------+--------------+
| Unique_key | Denomination |
+------------+--------------+
| OC10000    |     10000000 |
| OC10001    |     10000000 |
| OC10002    |     10000000 |
| OC10003    |     10000000 |
| OC10004    |     10000000 |
+------------+--------------+


#### bankdata

+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| branchCodeNo | int          | NO   | PRI | NULL    |       |
| STATE        | varchar(50)  | YES  |     | NULL    |       |
| Address      | varchar(255) | YES  |     | NULL    |       |
| CITY         | varchar(30)  | YES  |     | NULL    |       |
+--------------+--------------+------+-----+---------+-------+

+--------------+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-------------+
| branchCodeNo | STATE                            | Address                                                                                                                     | CITY        |
+--------------+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-------------+
|            1 | West Bengal and Andaman& Nicobar | Kolkata Main Branch,Samriddhi Bhawan1, Strand Road, Kolkata, West Bengal,District :Kolkata. State: West Bengal.Pin : 700001 | Kolkata     |
|            2 | Tripura                          | Agartala BranchHari Ganga Basak Road,Agartala, District: Tripura (W), Tripura, Pin: 799001                                  | Agartala    |
|           41 | Odisha                           | Bhubaneswar Main BranchP.B.No.14, BhubaneswarBhubaneswar, Orissa. District : KhurdaState: Odisha, Pin : 751001              | Bhubaneswar |
|           78 | Assam                            | Guwahati Branch,Pan Bazar,MG Road, Kamrup, Guwahati.  Pin: 781001                                                           | Guwahati    |
|           92 | Manipur                          | lmphal BranchM G Avenue, lmphal west, Manipur, Pin: 795001                                                                  | Imphal      |
+--------------+----------------------------------+-----------------------------------------------------------------------------------------------------------------------------+-------------+


#### DonorData

+---------------+--------------+------+-----+---------+-------+
| Field         | Type         | Null | Key | Default | Extra |
+---------------+--------------+------+-----+---------+-------+
| Urn           | varchar(30)  | YES  |     | NULL    |       |
| JournalDate   | date         | YES  |     | NULL    |       |
| PurchaseDate  | date         | YES  |     | NULL    |       |
| ExpiryDate    | date         | YES  |     | NULL    |       |
| Purchaser     | varchar(255) | YES  |     | NULL    |       |
| PayBranchCode | int          | YES  | MUL | NULL    |       |
| PayTeller     | int          | YES  |     | NULL    |       |
| Unique_key    | varchar(8)   | NO   | PRI | NULL    |       |
+---------------+--------------+------+-----+---------+-------+

+-------------------------+-------------+--------------+------------+-----------------------------------+---------------+-----------+------------+
| Urn                     | JournalDate | PurchaseDate | ExpiryDate | Purchaser                         | PayBranchCode | PayTeller | Unique_key |
+-------------------------+-------------+--------------+------------+-----------------------------------+---------------+-----------+------------+
| 00847202204080000002387 | 2022-04-08  | 2022-04-08   | 2022-04-22 | KOYA AND COMPANY CONSTRUCTION LTD |           847 |   3898296 | OC10000    |
| 00300202110070000001967 | 2021-10-07  | 2021-10-07   | 2021-10-21 | K RAHEJA CORP PVT LTD             |           300 |   7905165 | OC10001    |
| 00300202110070000001984 | 2021-10-07  | 2021-10-07   | 2021-10-21 | CAPSTAN TRADING LLP               |           300 |   7905165 | OC10002    |
| 00300202110070000001967 | 2021-10-07  | 2021-10-07   | 2021-10-21 | K RAHEJA CORP PVT LTD             |           300 |   7905165 | OC10003    |
| 00300202110070000001984 | 2021-10-07  | 2021-10-07   | 2021-10-21 | CAPSTAN TRADING LLP               |           300 |   7905165 | OC10004    |
+-------------------------+-------------+--------------+------------+-----------------------------------+---------------+-----------+------------+


#### Receiverdata

+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null | Key | Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| DateEncashment | date         | YES  |     | NULL    |       |
| PartyName      | varchar(255) | YES  |     | NULL    |       |
| AccountNum     | varchar(50)  | YES  |     | NULL    |       |
| PayBranchCode  | int          | YES  | MUL | NULL    |       |
| PayTeller      | int          | YES  |     | NULL    |       |
| Unique_key     | varchar(8)   | NO   | PRI | NULL    |       |
+----------------+--------------+------+-----+---------+-------+


+----------------+------------------------+-------------+---------------+-----------+------------+
| DateEncashment | PartyName              | AccountNum  | PayBranchCode | PayTeller | Unique_key |
+----------------+------------------------+-------------+---------------+-----------+------------+
| 2022-04-12     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   3898296 | OC10000    |
| 2021-10-08     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   6417329 | OC10001    |
| 2021-10-08     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   6417329 | OC10002    |
| 2021-10-08     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   6417329 | OC10003    |
| 2021-10-08     | BHARAT RASHTRA SAMITHI | *******7477 |           847 |   6417329 | OC10004    |
+----------------+------------------------+-------------+---------------+-----------+------------+

 *********************************************************************************************************************************************************************************/ 


/***************************************************************************Questions On Electoral Bonds***************************************************************************


create database electoralbonddata;
use electoralbonddata;
show tables;

SELECT * FROM bankdata;
SELECT * FROM bonddata;
SELECT * FROM donordata;
SELECT * FROM receiverdata;

-- 1. Find out how much donors spent on bonds
select sum(Denomination) as spent from donordata  d
inner join bonddata  b
on b.Unique_key=d.Unique_key ;

-- 2. Find out total fund politicians got
select sum(Denomination) as total from bonddata b
inner join receiverdata r
on  r.Unique_key = b.Unique_key;

-- 3. Find out the total amount of unaccounted money received by parties
select  sum(b.Denomination) as gg 
from  donordata d 
right join receiverdata r on r.Unique_key = d.Unique_key 
inner join bonddata b on r.Unique_key = b.Unique_key 
where purchaser is null; 

-- 4. Find year wise how much money is spend on bonds
select year(JournalDate) as year_y , sum(Denomination) as spend from donordata d
inner join bonddata b 
on d.Unique_key = b.Unique_key
group by year(JournalDate);

-- 5. In which month most amount is spent on bonds
select month(JournalDate) as mont , sum(Denomination) as spend from donordata d
inner join bonddata b 
on d.Unique_key = b.Unique_key
group by month(JournalDate);

-- 6. Find out which company bought the highest number of bonds.
select  Purchaser, count(d.Unique_key) as cnt
from  donordata d
inner join  bonddata b
on d.Unique_key = b.Unique_key
group by Purchaser
order by cnt desc ;

-- 7. Find out which company spent the most on electoral bonds.
select  Purchaser, sum(b.Denomination) as cnt
from  bonddata b
inner join  donordata d
on d.Unique_key = b.Unique_key
group by Purchaser
order by cnt desc ;

-- 8. List companies which paid the least to political parties.
select  Purchaser  , PartyName from  donordata b
inner join  receiverdata r
on r.Unique_key = b.Unique_key
group by Purchaser,PartyName
order by PartyName asc;

-- 9. Which political party received the highest cash?

select  partyName, sum(b.Denomination) as cnt
from  receiverdata r
inner join  bonddata b
on r.Unique_key = b.Unique_key
group by partyName
order by cnt desc ;

-- 10. Which political party received the highest number of electoral bonds?
select  partyName, sum(b.Denomination) as cnt
from  receiverdata r
inner join  bonddata b
on r.Unique_key = b.Unique_key
group by partyName
order by cnt desc 
limit 1;

-- 11. Which political party received the least cash?
select  partyName, sum(b.Denomination) as cnt
from  receiverdata r
inner join  bonddata b
on r.Unique_key = b.Unique_key
group by partyName
order by cnt asc
limit 1 ;

-- 12. Which political party received the least number of electoral bonds?
select  partyName, count(d.Unique_key) as cnt
from  donordata d
inner join  receiverdata r
on d.Unique_key = r.Unique_key
group by partyName
order by cnt asc ;

-- 13. Find the 2nd highest donor in terms of amount he paid?
select Unique_key, max(Denomination) 
from bonddata
group by Unique_key
order by Unique_key desc
limit 1,1;

-- 14. Find the party which received the second highest donations?
select PartyName, sum(b.DENOMINATION) 
from receiverdata AS R
JOIN bonddata as b
ON b.Unique_key= r.Unique_key
group by PartyName
order by sum(b.DENOMINATION)  desc
limit 1,1;

select * from bonddata;
select * from receiverdata;
select a.PartyName,sum(b.Denomination) from receiverdata a join bonddata b
on a.Unique_key=b.Unique_key group by 1 order by 2 desc limit 1,1;

-- 15. Find the party which received the second highest number of bonds?

select PartyName, count(b.Unique_key) 
from receiverdata AS R
left JOIN bonddata as b
ON b.Unique_key= r.Unique_key
group by PartyName
order by count(Unique_key)  desc
limit 1,1;

-- 16. In which city were the most number of bonds purchased?
select * from bonddata;
select * from bankdata;
with cte as(
select bd.CITY as city , count(d.Unique_key) as cnt,
dense_rank() over( order by count(d.Unique_key)  desc) as rnk
from donordata d
join bonddata b
on d.unique_key=b.unique_key
join bankdata bd
on d.PayBranchCode=bd.branchCodeNo
group by bd.CITY)
select city, cnt from cte
where rnk =2;

-- 17. In which city was the highest amount spent on electoral bonds?
select city , sum(Denomination) as cnt
from  bankdata as b
join donordata as d
on d.payBranchCode = b.branchCodeNo  
join bonddata as ss
on ss.Unique_key= d.Unique_key
group by city  order  by cnt desc limit 1;

-- 18. In which city were the least number of bonds purchased?
select city , count(Denomination) as cnt
from  bonddata as b
join donordata as d
on b.Unique_key = d.Unique_key  
join bankdata as ss
on ss.branchCodeNo = d.payBranchCode
group by city  order  by cnt asc  limit 1;

-- 19. In which city were the most number of bonds enchased?
select city , count(Unique_key) as cnt
from bankdata b
join receiverdata r
on b.branchCodeNo = r.PayBranchCode
group by city 
order by cnt desc limit 1;

-- 20. In which city were the least number of bonds enchased?

select city , count(Unique_key) as cnt
from bankdata b
join receiverdata r
on b.branchCodeNo = r.PayBranchCode
group by city 
order by cnt asc limit 1;

--   21. List the branches where no electoral bonds were bought; if none, mention it as null.
select CITY 
from bankdata b
left join receiverdata r
on b.branchCodeNo=r.PayBranchCode
where r.PartyName is null;

-- 22. Break down how much money is spent on electoral bonds for each year.
select year(d.PurchaseDate)  , sum(Denomination) as cnt
from bonddata b
join donordata d
on b.Unique_key= d.Unique_key
group by year(PurchaseDate) order by cnt desc;

-- 23. Break down how much money is spent on electoral bonds for each year and provide the year and the amount. Provide values
-- for the highest and least year and amount.

select year(PurchaseDate)  , sum(Denomination)  as cnt
from bonddata b
join donordata d
on b.Unique_key= d.Unique_key
group by year(PurchaseDate) order by cnt desc limit 1;

  --- -- HIGEST VLUE
select year(PurchaseDate)  , max(Denomination)  as maxmimum
from bonddata b
join donordata d
on b.Unique_key= d.Unique_key
group by year(PurchaseDate) order by maxmimum desc limit 1;
---- -- LOWLEST
select year(PurchaseDate)  , min(Denomination)  as minimum
from bonddata b
join donordata d
on b.Unique_key= d.Unique_key
group by year(PurchaseDate) order by minimum desc limit 1;

-- 24. Find out how many donors bought the bonds but did not donate to any political party?

select count(d.unique_key) as cnt
from  donordata as d
left join receiverdata as r
on d.Unique_key = r.Unique_key  
where partyname is null;

-- 25. Find out the money that could have gone to the PM Office, assuming the above question assumption (Domain Knowledge)
select sum(b.Denomination)
from donordata d
left join receiverdata r
on d.Unique_key = r.Unique_key 
left join bonddata b
on d.Unique_key = b.Unique_key
where partyname is null;

-- 26. Find out how many bonds don't have donors associated with them.
select count(*)
from donordata b
right join receiverdata r
on b.Unique_key = r.Unique_key 
where Purchaser is null;

-- 27. Pay Teller is the employee ID who either created the bond or redeemed it. So find the employee ID who issued the highest
-- number of bonds.
select PayTeller, count(Unique_key) as cnt
from donordata b
group by PayTeller
order by cnt desc limit 1;

-- 28. Find the employee ID who issued the least number of bonds.

select PayTeller, count(Unique_key) as cnt
from donordata b
group by PayTeller
order by cnt asc limit 1;

-- 29. Find the employee ID who assisted in redeeming or enchasing bonds the most.
with emp as (select PayTeller, count(Unique_key) as cnt from receiverdata r
group by PayTeller
)
select * from emp 
where cnt =(select max(cnt) from emp);

-- 30. Find the employee ID who assisted in redeeming or enchasing bonds the least
with emp as (select PayTeller, count(Unique_key) as cnt from receiverdata r
group by PayTeller
)
select * from emp 
where cnt =(select min(cnt) from emp);

-- Some more Questions you can try answering Once you are done with
-- above questions.

-- 1. Tell me total how many bonds are created?
select sum(Denomination) as total_bonds from bonddata b
join donordata d
on b.Unique_key=d.Unique_key;

-- 2. Find the count of Unique Denominations provided by SBI?
select count(distinct Denomination) as SBI from bonddata;

-- 3. List all the unique denominations that are available?
select distinct Denomination  as SBI from bonddata;

-- 4. Total money received by the bank for selling bonds
select sum(Denomination)  as selling from bonddata b
join receiverdata r
on b.Unique_key = r. Unique_key ;

-- 5. Find the count of bonds for each denominations that are created.
select  Denomination , count( Denomination) from bonddata
group by Denomination 
order by Denomination desc;

-- 6. Find the count and Amount or Valuation of electoral bonds for each denominations.
select Denomination , count(Denomination), sum(Denomination)  from bonddata b
group by Denomination 
order by Denomination desc;

-- 7. Number of unique bank branches where we can buy electoral bond?
select distinct CITY   from bankdata;

-- 8. How many companies bought electoral bonds
select count( distinct  Unique_key) from donordata;

-- 9. How many companies made political donations
select count(distinct  Purchaser) from donordata;

-- 10. How many number of parties received donations
select count(distinct PartyName) from receiverdata;

-- 11. List all the political parties that received donations
select distinct PartyName from receiverdata;

-- 12. What is the average amount that each political party received
select distinct partyName,  avg(Denomination) from receiverdata r
join bonddata b
on r.Unique_key = b.Unique_key
group by partyName;

-- 13. What is the average bond value produced by bank
select  avg(Denomination) from bonddata b
join donordata d
on b. Unique_key = d. Unique_key ;


-- 14. List the political parties which have enchased bonds in different cities?
select distinct partyName , CITY ,count(Denomination) from receiverdata r
join bonddata b
on r.Unique_key = b.Unique_key
join bankdata bs
on b.Unique_key = r.Unique_key
group by partyName , CITY  ;

-- 15. List the political parties which have enchased bonds in different cities and list the cities in which the bonds have enchased as well?
select   partyName , CITY , count(b.Unique_key) from receIVerdata r
left join bonddata b
on r.Unique_key = b.Unique_key
left join bankdata bd
on bd.branchCodeNo = r.PayBranchCode
group by partyName,CITY;













