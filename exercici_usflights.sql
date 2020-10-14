EXERCICI_1
SELECT count(*) AS Total FROM flights

**
EXERCICI_2
SELECT origin, avg(ArrDelay), AVG (DepDelay) FROM flights
GROUP BY origin

**
EXERCICI_3
SELECT origin, colyear, colmonth, AVG (Arrdelay) FROM flights
GROUP BY origin, colyear, colmonth
ORDER BY origin ASC

**
EXERCICI_4
SELECT city, colyear, colmonth, AVG(Arrdelay) FROM flights
JOIN usairports ON origin = iata
GROUP BY city, colyear, colmonth
ORDER BY city ASC

**
EXERCICI_5
SELECT uniquecarrier, colyear, colmonth, sum(cancelled) AS totalcancelled FROM flights
GROUP BY uniquecarrier, colyear, colmonth
ORDER BY totalcancelled DESC

**
EXERCICI_6
SELECT tailnum, sum(distance) AS totaldistance FROM flights
GROUP BY Tailnum
ORDER BY totaldistance DESC
LIMIT 11

**
EXERCICI_7
SELECT uniquecarrier, AVG(ArrDelay) AS avgdelay FROM flights
GROUP BY uniquecarrier
HAVING avgdelay > 10
ORDER BY avgdelay DESC