DELETE FROM emp_position;

INSERT INTO
			emp_position(position_code,        -- 직책코드 = varchar
                         position_name,        -- 직책명 = varchar
                         authorization_access) -- 권한 = varchar
     VALUES
			('PS1', '사장', 'ADMIN'),
            ('PS2', '부장', 'MGR'),
            ('PS3', '과장', 'EMP'),
            ('PS4', '대리', 'EMP'),
            ('PS5', '사원', 'EMP');
	     -- (직책코드,직책명,권한)

SELECT * FROM emp_position;
