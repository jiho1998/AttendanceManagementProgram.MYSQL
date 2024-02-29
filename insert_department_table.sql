INSERT INTO
			department(department_code, -- 부서코드 = varchar
					   department_name) -- 부서명 = varchar
     VALUES
			('DP1', '경영지원팀'),
            ('DP2', '영업팀'),
            ('DP3', '개발팀'),
            ('DP4', '마케팅팀'),
            ('DP5', '고객서비스팀');
         -- (부서코드,부서명)

SELECT * FROM department;