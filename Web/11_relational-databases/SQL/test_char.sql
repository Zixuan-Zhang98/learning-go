CREATE TABLE test_str(
  a CHAR(5),
  b VARCHAR(5)
);

INSERT test_str(a, b) VALUES('', '');
INSERT test_str(a, b) VALUES('a', 'a');
INSERT test_str(a, b) VALUES('ab', 'ab');
INSERT test_str(a, b) VALUES('abc', 'abc');
INSERT test_str(a, b) VALUES('abcd', 'abcd');
INSERT test_str(a, b) VALUES('abcde', 'abcde');
INSERT test_str(a, b) VALUES('abcdef', 'abcdef');

INSERT test_str(a, b) VALUES(' 123 ', ' 123 ');

SELECT CONCAT('*', a, '*'), CONCAT('*', b, '*') FROM test_str;

-- 测试TEXT不能有默认值
CREATE TABLE test_str1(
  content TEXT DEFAULT 'THIS IS A TEST'
);

-- 测试ENUM
CREATE TABLE test_enum(
  sex ENUM('male', 'female', 'unknown')
);

INSERT test_enum(sex) VALUES('male');
INSERT test_enum(sex) VALUES('masdsa'); -- error
INSERT test_enum(sex) VALUES(NULL);
INSERT test_enum(sex) VALUES(1);

-- 测试SET
CREATE TABLE test_set(
  a SET('A', 'B', 'C', 'D', 'E')
);

INSERT test_set(a) VALUES('A');
INSERT test_set(a) VALUES('A,B');
INSERT test_set(a) VALUES('C,B,A');
INSERT test_set(a) VALUES('D,A,B,C');
INSERT test_set(a) VALUES('C,D,E,B,A');
INSERT test_set(a) VALUES('3');
