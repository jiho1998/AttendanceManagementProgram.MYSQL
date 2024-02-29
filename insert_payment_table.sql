INSERT INTO
			payment(payment_code,     -- 급여코드 = varchar
                    payment_category, -- 급여종류 = varchar
					payment_amount)   -- 급여액  = integer
	 VALUES ('PM1', '사장급여', 600),
			('PM2', '부장급여', 500),
            ('PM3', '과장급여', 400),
            ('PM4', '대리급여', 320),
            ('PM5', '사원급여', 250);
		 -- (급여코드,급여종류,급여액)

SELECT * FROM payment;

