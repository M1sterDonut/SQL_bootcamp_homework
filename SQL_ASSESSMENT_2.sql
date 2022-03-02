--ASSESSMENT 2

--retrieve all info from facilities table
SELECT * FROM cd.facilities;

--list of facilities & their member costs
SELECT name,membercost FROM cd.facilities;

--facilities that charge their members
SELECT name,membercost FROM cd.facilities
WHERE membercost > 0;

--facilities that charge members fee less than 1/50th of monthly maintenance cost
SELECT facid,name,membercost,monthlymaintenance FROM cd.facilities
WHERE membercost >0 AND membercost < (monthlymaintenance/50.0);

--facilities with 'tennis' in their name
SELECT name FROM cd.facilities
WHERE name ILIKE '%tennis%';

--details of facilities ID 1/5 (no OR operator)
SELECT name FROM cd.facilities
WHERE facid IN (1,5);

--memid, surname, firstname, joindate of members joined after start sep 2012
SELECT memid,surname,firstname,joindate FROM cd.members
WHERE joindate >= '2012-08-31';

--ordered list of first 10 surnames, no duplicates
SELECT DISTINCT surname FROM cd.members
ORDER BY surname
LIMIT 10;

--signup date of last member
SELECT joindate FROM cd.members
ORDER BY joindate DESC
LIMIT 1;

--facilities with cost to guest >= 10
SELECT COUNT(*) FROM cd.facilities
WHERE guestcost >= 10;

--slots booked per facility in sept 12
--output: facility & slot
SELECT facilities.facid,facilities.name,SUM(slots) AS total_slots FROM cd.facilities
INNER JOIN cd.bookings
ON cd.facilities.facid = cd.bookings.facid
WHERE starttime BETWEEN '2012-09-01' AND '2012-10-01'
GROUP BY facilities.facid ORDER BY SUM(slots);

--facilities with more than 1000 slots, sort by facid
SELECT facid, SUM(slots) FROM cd.bookings
GROUP BY facid
HAVING SUM(slots) > 1000
ORDER BY facid;

--start times tennis court bookings on 21-09-2012; time & fac, ordered by time
SELECT starttime,name FROM cd.bookings
INNER JOIN cd.facilities
ON cd.bookings.facid = cd.facilities.facid
WHERE name LIKE 'Tennis%'
AND starttime >= '2012-09-21' 
AND starttime < '2012-09-22'
ORDER BY starttime ASC;

--list of start time for bookings for 'David Farrell'?
SELECT firstname, surname, cd.bookings.starttime FROM cd.members
INNER JOIN cd.bookings
ON cd.members.memid = cd.bookings.memid
WHERE firstname = 'David' AND surname = 'Farrell'
ORDER BY starttime;