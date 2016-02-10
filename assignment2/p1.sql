/*SELECT *
FROM frequency
WHERE docid = '10398_txt_earn';

SELECT term
FROM frequency
WHERE docid='10398_txt_earn' AND count=1;

SELECT term
FROM frequency
WHERE docid='10398_txt_earn' AND count=1 
UNION 
SELECT term
FROM frequency
WHERE docid='925_txt_trade' AND count=1;

SELECT term
FROM frequency
WHERE docid IN ('10398_txt_earn', '925_txt_trade') AND count=1;

SELECT COUNT(*)
FROM 
	(SELECT docid, COUNT (*)
	 FROM frequency
	 WHERE term LIKE '%parliament%'
	 GROUP BY docid);
	 

SELECT docid
FROM 
	 (SELECT docid, sum(count) AS sums
	 FROM frequency
	 GROUP BY docid
	 HAVING sums>300);*/
	 

SELECT COUNT(DISTINCT docid)
FROM frequency
WHERE term IN ('transactions', 'world');
