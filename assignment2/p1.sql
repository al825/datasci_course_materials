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
	 HAVING sums>300);
	 

SELECT COUNT(DISTINCT docid)
FROM
	(SELECT docid
	FROM frequency
	WHERE term = 'transactions'
	INTERSECT
	SELECT docid
	FROM frequency
	WHERE term = 'world');
	

SELECT a.row_num,b.col_num, SUM(a.value*b.value)
FROM a AS a,b AS b
WHERE a.col_num=b.row_num
GROUP BY a.row_num, b.col_num;*/




SELECT a.docid, b.docid, a.term, b.term, SUM(a.count*b.count)
FROM frequency AS a, frequency AS b
WHERE a.term=b.term AND a.docid ='9809_txt_acq' AND b.docid ='9810_txt_earn'
GROUP BY a.docid, b.docid; 


/*CREATE VIEW temp AS 
SELECT * 
FROM frequency
UNION
SELECT 'q' as docid, 'washington' as term, 1 as count
UNION
SELECT 'q' as docid, 'taxes' as term, 1 as count

SELECT d.docid, SUM(a.count*b.count)
FROM temp AS a, temp AS b
WHERE temp.term=temp.term AND a.docid='q'
GROUP BY
UNION
SELECT 'q' as docid, 'treasury' as term, 1 as count;*/





