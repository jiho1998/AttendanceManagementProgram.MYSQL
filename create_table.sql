use attendancemanagementdb;

DROP TABLE attendance_record;
DROP TABLE check_date;
DROP TABLE check_month;
DROP TABLE compensation;
DROP TABLE department;
DROP TABLE emp_info;
DROP TABLE emp_position;
DROP TABLE evaluation_list;
DROP TABLE payment;

DROP TABLE `check_month`;

CREATE TABLE `check_month`
(
    `month_code`    INTEGER NOT NULL COMMENT '월별코드',
    `month_name`    VARCHAR(100) NOT NULL COMMENT '월별코드',
 PRIMARY KEY ( `month_code` )
) COMMENT = '월별';

CREATE UNIQUE INDEX `check_month_PK` ON `check_month`
( `month_code` );

ALTER TABLE `check_month`
 ADD CONSTRAINT `check_month_PK` PRIMARY KEY ( `check_month_code` );

DROP TABLE `emp_position`;

CREATE TABLE `emp_position`
(
    `position_code`    VARCHAR(100) NOT NULL COMMENT '직책코드',
    `position_name`    VARCHAR(100) NOT NULL COMMENT '직책명',
    `authorization_access`    VARCHAR(100) NOT NULL COMMENT '권한',
 PRIMARY KEY ( `position_code` )
) COMMENT = '직책';

CREATE UNIQUE INDEX `emp_position_PK` ON `emp_position`
( `position_code` );

ALTER TABLE `emp_position`
 ADD CONSTRAINT `emp_position_PK` PRIMARY KEY ( `position_code` );


DROP TABLE `check_date`;

CREATE TABLE `check_date`
(
    `date_code`    INTEGER NOT NULL COMMENT '날짜코드',
    `year_month_day`    DATE NOT NULL COMMENT '날짜',
    `month_code`    INTEGER NOT NULL COMMENT '월별코드'
) COMMENT = '날짜';

ALTER TABLE `check_date`
DROP PRIMARY KEY;


DROP TABLE `attendance_record`;

CREATE TABLE `attendance_record`
(
    `attendance_code`    VARCHAR(100) NOT NULL COMMENT '근태코드',
    `date_code`    INTEGER NOT NULL COMMENT '날짜코드',
    `emp_id`    VARCHAR(100) NOT NULL COMMENT '사용자ID',
    `arrival_at_work`    CHAR NOT NULL COMMENT '출근',
    `leave_work`    CHAR NOT NULL COMMENT '퇴근',
    `late_work`    CHAR NOT NULL COMMENT '지각',
    `vacation`    CHAR NOT NULL COMMENT '휴가',
    `day_off`    CHAR NOT NULL COMMENT '결근',
 PRIMARY KEY ( `attendance_code` )
) COMMENT = '근태기록';

ALTER TABLE `attendance_record`
 ADD CONSTRAINT `attendance_record_PK` PRIMARY KEY ( `attendance_code` );



DROP TABLE `department`;

CREATE TABLE `department`
(
    `department_code`    VARCHAR(100) NOT NULL COMMENT '부서코드',
    `department_name`    VARCHAR(100) NOT NULL COMMENT '부서명',
 PRIMARY KEY ( `department_code` )
) COMMENT = '부서';

CREATE UNIQUE INDEX `department_PK` ON `department`
( `department_code` );

ALTER TABLE `department`
 ADD CONSTRAINT `department_PK` PRIMARY KEY ( `department_code` );


DROP TABLE `compensation`;

CREATE TABLE `compensation`
(
    `emp_id`    VARCHAR(100) NOT NULL COMMENT '사용자ID',
    `month_code`    INTEGER NOT NULL COMMENT '월별코드',
    `compensation_status`    CHAR NOT NULL COMMENT '보상여부',
    `penalty_status`    CHAR NOT NULL COMMENT '패널티여부',
    `penalty_score_sum`    INTEGER NOT NULL COMMENT '패널티스코어합계',
 PRIMARY KEY ( `emp_id` )
) COMMENT = '보상';


CREATE UNIQUE INDEX `compensation_PK` ON `compensation`
( `emp_id` );

ALTER TABLE `compensation`
 ADD CONSTRAINT `compensation_PK` PRIMARY KEY ( `emp_id` );


DROP TABLE `emp_info`;

CREATE TABLE `emp_info`
(
    `emp_id`    VARCHAR(100) NOT NULL COMMENT '사용자ID',
    `emp_password`    VARCHAR(100) NOT NULL COMMENT '사용자PWD',
    `emp_name`    VARCHAR(100) NOT NULL COMMENT '이름',
    `phone`    VARCHAR(100) NOT NULL COMMENT '전화번호',
    `email`    VARCHAR(100) NOT NULL COMMENT '이메일주소',
    `department_code`    VARCHAR(100) NOT NULL COMMENT '부서코드',
    `position_code`    VARCHAR(100) NOT NULL COMMENT '직책코드',
    `emp_identification`    VARCHAR(100) NOT NULL COMMENT '구분',
    `payment_code`    VARCHAR(100) NOT NULL COMMENT '급여코드',
 PRIMARY KEY ( `emp_id` )
) COMMENT = '직원정보';

CREATE UNIQUE INDEX `emp_info_PK` ON `emp_info`
( `emp_id` );

ALTER TABLE `emp_info`
 ADD CONSTRAINT `emp_info_PK` PRIMARY KEY ( `emp_id` );

CREATE TABLE `payment`
(
    `payment_code`    VARCHAR(100) NOT NULL COMMENT '급여코드',
    `payment_category`    VARCHAR(100) NOT NULL COMMENT '급여종류',
    `payment_amount`    INTEGER NOT NULL COMMENT '급여액',
 PRIMARY KEY ( `payment_code` )
) COMMENT = '급여';


CREATE UNIQUE INDEX `payment_PK` ON `payment`
( `payment_code` );

ALTER TABLE `payment`
 ADD CONSTRAINT `payment_PK` PRIMARY KEY ( `payment_code` );



DROP TABLE `evaluation_list`;

CREATE TABLE `evaluation_list`
(
    `evaluation_code`    VARCHAR(100) NOT NULL COMMENT '평가코드',
    `emp_id`    VARCHAR(100) NOT NULL COMMENT '사용자ID',
    `attendance_code`    VARCHAR(100) NOT NULL COMMENT '근태코드',
    `penalty_factor`    VARCHAR(100) COMMENT '감점요인',
    `penalty_score`    INTEGER COMMENT '패널티 점수',
 PRIMARY KEY ( `evaluation_code` )
) COMMENT = '평가항목';

ALTER TABLE `evaluation_list`
 ADD CONSTRAINT `evaluation_list_PK` PRIMARY KEY ( `evaluation_code` );


