INSERT INTO
		   compensation(emp_id,              -- 사용자ID = varchar
                        month_code,           -- 월별코드 = integer
                        compensation_status, -- 보상여부 = char
                        penalty_status,      -- 페널티여부 = char
                        penalty_score_sum   -- 페널티 점수 합계 = integer
						)          
		VALUES
    ('user001', 1, 'Y', 'N', 0),
    ('user002', 1, 'N', 'Y', -1),
    ('user003', 1, 'N', 'Y', -2),
    ('user004', 1, 'N', 'Y', -5),
    ('user005', 1, 'N', 'Y', -1),
    ('user006', 1, 'N', 'Y', -1),
    ('user007', 1, 'N', 'Y', -3),
    ('user008', 1, 'Y', 'N', 0),
    ('user009', 1, 'Y', 'N', 0),
    ('user010', 1, 'N', 'Y', -1),
    ('user011', 1, 'N', 'Y', -7),
    ('user012', 1, 'N', 'Y', -1),
    ('user013', 1, 'Y', 'N', 0),
    ('user014', 1, 'N', 'Y', -1),
    ('user015', 1, 'Y', 'N', 0),
    ('user016', 1, 'Y', 'N', 0),
    ('user017', 1, 'N', 'Y', -3),
    ('user018', 1, 'Y', 'N', 0),
    ('user019', 1, 'Y', 'N', 0),
    ('user020', 1, 'N', 'Y', -2),
    ('user021', 1, 'Y', 'N', 0),
    ('user022', 1, 'N', 'Y', -1),
    ('user023', 1, 'N', 'Y', -4),
    ('user024', 1, 'Y', 'N', 0),
    ('user025', 1, 'Y', 'N', 0),
    ('user026', 1, 'N', 'Y', -1),
    ('user027', 1, 'Y', 'N', 0),
    ('user028', 1, 'N', 'Y', -2),
    ('user029', 1, 'N', 'Y', -5),
    ('user030', 1, 'N', 'Y', -1);



-- (사용자ID ,보상여부,페널티여부,페널티점수합계,월별코드)

DELETE FROM compensation;			 

SELECT * FROM compensation
     ORDER BY penalty_score_sum;

