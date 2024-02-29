INSERT INTO
		   check_month (month_code, -- 월별코드 = integer
                        month_name) -- 월명 = varchar
		VALUES  (1,'1월'),
			    (2,'2월'),
                (3,'3월'),
                (4,'4월'),
                (5,'5월'),
                (6,'6월'),
                (7,'7월'),
                (8,'8월'),
                (9,'9월'),
                (10,'10월'),
                (11,'11월'),
                (12,'12월');
			 -- (월별코드, 월명)
SELECT * FROM check_month
  ORDER BY month_name and month_code;