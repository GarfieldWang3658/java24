#グラフstudentの全ての学生情報を走査します
SELECT*FROM student;

#氏名と英語成績を走査します
SELECT name,english FROM student;

#重複データ〜を選別します
SELECT DISTINCT english FROM student;

#各生徒の総合点数を統計します。
SELECT name,(chinese+english+math)FROM student;

#全ての生徒の点数+10
SELECT name,(chinese+english+math+10)FROM student;

#別名で生徒の成績を表ます。
SELECT name AS '名字',(chinese+english+math+10) AS '总分' FROM student;

#氏名で点数を調べる
SELECT*FROM student
WHERE `name` = 'wangyang'

#英語点数90以上の生徒を調べる
SELECT*FROM student
WHERE english>80;

#総合点数200点以上の生徒を調べる
SELECT*FROM student
WHERE (chinese+english+math)>200






