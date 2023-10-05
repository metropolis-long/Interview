/* v 2022.02.06
 * Datawhale组队学习 SQL 编程语言 task06 建表语句汇总
 *
 *
*/

-- task06:
-- Section A

-- 练习一：各部门工资最高的员工
DROP TABLE if EXISTS Employee;
CREATE TABLE Employee
(id INT,
name VARCHAR(20),
salary INT,
departmentid INT,
PRIMARY KEY (id));

INSERT INTO Employee VALUES(1,'Joe',70000,1);
INSERT INTO Employee VALUES(2,'Henry',80000,2);
INSERT INTO Employee VALUES(3,'Sam',60000,2);
INSERT INTO Employee VALUES(4,'Max',90000,1);


DROP TABLE if EXISTS Department;
CREATE TABLE Department
(id INT,
name VARCHAR(20),
PRIMARY KEY (id));

INSERT INTO Department VALUES(1,'IT');
INSERT INTO Department VALUES(2,'Sales');


-- 练习二：换座位
DROP TABLE if exists seat;
CREATE TABLE seat
(id INT,
student VARCHAR(20),
PRIMARY KEY (id));

INSERT INTO seat VALUES(1,'Abbot');
INSERT INTO seat VALUES(2,'Doris');
INSERT INTO seat VALUES(3,'Emerson');
INSERT INTO seat VALUES(4,'Green');
INSERT INTO seat VALUES(5,'Jeames');


-- 练习三：分数排名
DROP TABLE if exists score;
CREATE TABLE score
(class INT,
score_avg INT,
PRIMARY KEY (class));

INSERT INTO score VALUES(1, 93);
INSERT INTO score VALUES(2, 93);
INSERT INTO score VALUES(3, 93);
INSERT INTO score VALUES(4, 91);


-- 练习四：连续出现的数字
DROP TABLE if exists logs;
CREATE TABLE logs
(id INT,
num INT,
PRIMARY KEY (id));

INSERT INTO logs VALUES (1, 1);
INSERT INTO logs VALUES (2, 1);
INSERT INTO logs VALUES (3, 1);
INSERT INTO logs VALUES (4, 2);
INSERT INTO logs VALUES (5, 1);
INSERT INTO logs VALUES (6, 2);
INSERT INTO logs VALUES (7, 2);


-- 练习五：树节点
DROP TABLE if exists tree;
CREATE TABLE tree
(id INT,
p_id INT,
PRIMARY KEY (id));

INSERT INTO tree VALUES (1, null);
INSERT INTO tree VALUES (2, 1);
INSERT INTO tree VALUES (3, 1);
INSERT INTO tree VALUES (4, 2);
INSERT INTO tree VALUES (5, 2);


-- 练习六：至少有五名直接下属的经理 
DROP TABLE if exists Employee2;
CREATE TABLE Employee2
(id INT,
name varchar(20),
department varchar(20),
managerid INT,
PRIMARY KEY (id));

INSERT INTO Employee2 VALUES (101,  'John', 'A', null);
INSERT INTO Employee2 VALUES (102,   'Dan', 'A', 101);
INSERT INTO Employee2 VALUES (103, 'James', 'A', 101);
INSERT INTO Employee2 VALUES (104,   'Amy', 'A', 101);
INSERT INTO Employee2 VALUES (105,  'Anne', 'A', 101);
INSERT INTO Employee2 VALUES (106,   'Ron', 'B', 101);


-- 练习七：查询回答率最高的问题 
DROP TABLE IF EXISTS survey_log;
CREATE TABLE survey_log (
	uid INT,
	action VARCHAR (20),
	question_id INT,
	answer_id INT,
	q_num INT,
	TIMESTAMP INT
);

INSERT INTO survey_log VALUES (5, 'show', 285, NULL, 1, 123);
INSERT INTO survey_log VALUES (5, 'answer', 285, 124124, 1, 124);
INSERT INTO survey_log VALUES (5, 'show', 369, NULL, 2, 125);
INSERT INTO survey_log VALUES (5, 'skip', 369, NULL, 2, 126);


-- 练习八：各部门前3高工资的员工
DROP TABLE IF EXISTS employee9;
CREATE TABLE employee9 SELECT id, name, salary,departmentid FROM employee;


INSERT INTO employee9 VALUES(5, 'Janet', 69000, 1);
INSERT INTO employee9 VALUES(6, 'Randy', 85000, 1);


-- 练习九：平面上最近距离
DROP TABLE IF EXISTS point_2d;
CREATE TABLE point_2d (
	x INT,
  y INT
);

INSERT INTO point_2d VALUES(-1, -1);
INSERT INTO point_2d VALUES( 0,  0);
INSERT INTO point_2d VALUES(-1, -2);


-- 练习十：行程和用户
DROP TABLE if EXISTS Trips;
CREATE TABLE Trips
(Id INT,
Client_Id INT,
Driver_Id INT,
City_Id INT,
Status VARCHAR(30),
Request_at DATE,
PRIMARY KEY (Id));

INSERT INTO Trips VALUES (1, 1, 10, 1, 'completed', '2013-10-1');
INSERT INTO Trips VALUES (2, 2, 11, 1, 'cancelled_by_driver', '2013-10-1');
INSERT INTO Trips VALUES (3, 3, 12, 6, 'completed', '2013-10-1');
INSERT INTO Trips VALUES (4, 4, 13, 6, 'cancelled_by_client', '2013-10-1');
INSERT INTO Trips VALUES (5, 1, 10, 1, 'completed', '2013-10-2');
INSERT INTO Trips VALUES (6, 2, 11, 6, 'completed', '2013-10-2');
INSERT INTO Trips VALUES (7, 3, 12, 6, 'completed', '2013-10-2');
INSERT INTO Trips VALUES (8, 2, 12, 12, 'completed', '2013-10-3');
INSERT INTO Trips VALUES (9, 3, 10, 12, 'completed', '2013-10-3');
INSERT INTO Trips VALUES (10, 4, 13, 12, 'cancelled_by_driver', '2013-10-3');


DROP TABLE if EXISTS Users ;
CREATE TABLE Users 
(Users_Id  INT,
 Banned    VARCHAR(30),
 Role      VARCHAR(30),
PRIMARY KEY (Users_Id));

INSERT INTO Users VALUES (1,    'No',  'client');
INSERT INTO Users VALUES (2,    'Yes', 'client');
INSERT INTO Users VALUES (3,    'No',  'client');
INSERT INTO Users VALUES (4,    'No',  'client');
INSERT INTO Users VALUES (10,   'No',  'driver');
INSERT INTO Users VALUES (11,   'No',  'driver');
INSERT INTO Users VALUES (12,   'No',  'driver');
INSERT INTO Users VALUES (13,   'No',  'driver');


-- Section B

-- 练习一：行转列
DROP TABLE IF EXISTS `score2`;
CREATE TABLE `score2` (
  `name` varchar(20) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL,
  `score` int DEFAULT NULL
);

INSERT INTO score2 VALUES('A', 'chinese', 99);
INSERT INTO score2 VALUES('A', 'math',    98);
INSERT INTO score2 VALUES('A', 'english', 97);
INSERT INTO score2 VALUES('B', 'chinese', 92);
INSERT INTO score2 VALUES('B', 'math',    91);
INSERT INTO score2 VALUES('B', 'english', 90);
INSERT INTO score2 VALUES('C', 'chinese', 88);
INSERT INTO score2 VALUES('C', 'math',    87);
INSERT INTO score2 VALUES('C', 'english', 86);


-- 练习二：列转行
DROP TABLE IF EXISTS `score22`;
CREATE TABLE `score22` (
  `name` varchar(20) DEFAULT NULL,
  `chinese` int DEFAULT NULL,
  `math`    int DEFAULT NULL,
  `english` int DEFAULT NULL
);

INSERT INTO score22 VALUES('A', 99, 98, 97);
INSERT INTO score22 VALUES('B', 92, 91, 90);
INSERT INTO score22 VALUES('C', 88, 87, 86);

-- 练习三：谁是明星带货主播？
DROP TABLE if EXISTS anchor_sales;
CREATE TABLE anchor_sales
(anchor_name  VARCHAR(20),
date INT,
sales INT);

INSERT INTO anchor_sales VALUES('A', 20210101, 40000);
INSERT INTO anchor_sales VALUES('B', 20210101, 80000);
INSERT INTO anchor_sales VALUES('A', 20210102, 10000);
INSERT INTO anchor_sales VALUES('C', 20210102, 90000);
INSERT INTO anchor_sales VALUES('A', 20210103,  7500);
INSERT INTO anchor_sales VALUES('C', 20210103, 80000);


-- Section C

-- 练习一：行转列
DROP TABLE IF EXISTS row_col;
create table row_col 
(cdate date,
result varchar(255));


insert into row_col values ('2021-01-01','胜');
insert into row_col values ('2021-01-01','负');
insert into row_col values ('2021-01-03','胜');
insert into row_col values ('2021-01-03','负');
insert into row_col values ('2021-01-01','胜');
insert into row_col values ('2021-01-03','负');


-- 练习二：列转行
DROP TABLE IF EXISTS col_row;
create table col_row 
(`比赛日期` date
,`胜` int
,`负` int);

insert into col_row values ('2021-01-01', 4, 1);
insert into col_row values ('2021-01-03', 1, 4);

-- 练习三：连续登录
DROP TABLE if EXISTS t_act_records;
CREATE TABLE t_act_records
(uid  VARCHAR(20),
imp_date DATE);

INSERT INTO t_act_records VALUES('u1001', 20210101);
INSERT INTO t_act_records VALUES('u1002', 20210101);
INSERT INTO t_act_records VALUES('u1003', 20210101);
INSERT INTO t_act_records VALUES('u1003', 20210102);
INSERT INTO t_act_records VALUES('u1004', 20210101);
INSERT INTO t_act_records VALUES('u1004', 20210102);
INSERT INTO t_act_records VALUES('u1004', 20210103);
INSERT INTO t_act_records VALUES('u1004', 20210104);
INSERT INTO t_act_records VALUES('u1004', 20210105);

-- 练习四：用户购买商品推荐
-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `user_id` int NOT NULL,
  `product_id` int NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES (123, 1);
INSERT INTO `orders` VALUES (123, 2);
INSERT INTO `orders` VALUES (123, 3);
INSERT INTO `orders` VALUES (456, 1);
INSERT INTO `orders` VALUES (456, 2);
INSERT INTO `orders` VALUES (456, 4);

-- 练习六：LEFT JOIN 是否可能会出现多出的行？为什么？
-- ----------------------------
-- Table structure for t1
-- ----------------------------
DROP TABLE IF EXISTS `t1`;
CREATE TABLE `t1`  (
  `id` int NOT NULL,
  `name` varchar(255)  NULL DEFAULT NULL,
  `score` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t1
-- ----------------------------
INSERT INTO `t1` VALUES (1, 'aaa', 90);
INSERT INTO `t1` VALUES (2, 'bbb', 80);
INSERT INTO `t1` VALUES (3, 'ccc', 70);
INSERT INTO `t1` VALUES (4, 'ddd', 60);
INSERT INTO `t1` VALUES (5, ''   , 90);
INSERT INTO `t1` VALUES (6, ''   , 100);

-- ----------------------------
-- Table structure for t2
-- ----------------------------
DROP TABLE IF EXISTS `t2`;
CREATE TABLE `t2`  (
  `id` int NOT NULL,
  `name` varchar(255) NULL DEFAULT NULL,
  `city` varchar(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t2
-- ----------------------------
INSERT INTO `t2` VALUES (1, 'aaa', 'beijing');
INSERT INTO `t2` VALUES (2, 'bbb', 'tianjin');
INSERT INTO `t2` VALUES (3, 'ccc', 'chengdu');
INSERT INTO `t2` VALUES (4, ''   , 'shenzhen');
INSERT INTO `t2` VALUES (5, ''   , 'qingdao');
INSERT INTO `t2` VALUES (6, ''   , 'guangzhou');

