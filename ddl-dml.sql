-- DROP DATABASE IF EXISTS code-learn-db;
-- CREATE DATABASE code-learn-db;

CREATE TABLE problem (
	question_id integer primary key,
	description varchar(1000),
	testcase_input_1 varchar(10), 
	testcase_output_1 varchar(1000),
	testcase_input_2 varchar(10),
	testcase_output_2 varchar(1000)
);

INSERT INTO problem
VALUES (31, 'Viết chương trình lấy số nguyên n từ người dùng và hiển thị tổng các số từ 1 đến n trên màn hình. 

Ví dụ, nếu n = 5, chương trình sẽ cho kết quả như sau: 1 + 2 + 3 + 4 + 5 = 15',
		
		'5', '15', '7', '28');
		
INSERT INTO problem
VALUES (32, 'Viết chương trình nhận hai số nguyên a và b từ người dùng và hiển thị tổng các số lẻ giữa a và b trên màn hình (b > a).

Ví dụ, nếu a = 3, b = 9, đầu ra phải là: 3 + 5 + 7 + 9 = 24',

		'3,9', '24', '16,24', '80');
		
INSERT INTO problem
VALUES (33, 'Viết chương trình lấy một chuỗi s từ bàn phím và hiển thị các ký tự không phải là "y" trong chuỗi s trên màn hình.

Ví dụ: nếu s = "mysql", kết quả đầu ra phải là:
		
Current character: m
Current character: s
Current character: q
Current character: l',

		'sunny', 
'Current character: s
Current character: u
Current character: n
Current character: n',
		
		'lyly', 
'Current character: l
Current character: l');

INSERT INTO problem
VALUES (34, 'Viết chương trình lấy một số nguyên a từ bàn phím và hiển thị các tích của a và các số từ 1 đến 5 trên màn hình.

Ví dụ: nếu a = 10, chương trình sẽ cho kết quả như sau:
		
10 * 1 = 10
10 * 2 = 20
10 * 3 = 30
10 * 4 = 40
10 * 5 = 50',
		
		'5', 
'5 * 1 = 5
5 * 2 = 10
5 * 3 = 15
5 * 4 = 20
5 * 5 = 25', 
		
		'6', 
'6 * 1 = 6
6 * 2 = 12
6 * 3 = 18
6 * 4 = 24
6 * 5 = 30');
		
INSERT INTO problem
VALUES (35, 'Viết chương trình lấy hai số nguyên a và b từ người dùng và hiển thị thông tin sau trên màn hình:

Number of even numbers: {P1}
Number of odd numbers: {P2}
		
Trong đó {P1} là số các số chẵn và {P2} là số các số lẻ trong phạm vi [a, b].

Ví dụ, nếu a = 1, b = 10, chương trình sẽ cho kết quả như sau:
		
Number of even numbers: 5
Number of odd numbers: 5',
		
		'14,23', 
'Number of even numbers: 5
Number of odd numbers: 5', 
		
		'30,40', 
'Number of even numbers: 6
Number of odd numbers: 5');

INSERT INTO problem VALUES (31, 'Viết chương trình lấy số nguyên n từ người dùng và hiển thị tổng các số từ 1 đến n trên màn hình. \n\nVí dụ, nếu n = 5, chương trình sẽ cho kết quả như sau: 1 + 2 + 3 + 4 + 5 = 15', '5', '15', '7', '28');
INSERT INTO problem VALUES (32, 'Viết chương trình nhận hai số nguyên a và b từ người dùng và hiển thị tổng các số lẻ giữa a và b trên màn hình (b > a).\n\nVí dụ, nếu a = 3, b = 9, đầu ra phải là: 3 + 5 + 7 + 9 = 24', '3,9', '24', '16,24', '80');
INSERT INTO problem VALUES (33, 'Viết chương trình lấy một chuỗi s từ bàn phím và hiển thị các ký tự không phải là "y" trong chuỗi s trên màn hình.\n\nVí dụ: nếu s = "mysql", kết quả đầu ra phải là:\n\nCurrent character: m\nCurrent character: s\nCurrent character: q\nCurrent character: l', 'sunny', 'Current character: s\nCurrent character: u\nCurrent character: n\nCurrent character: n', 'lyly', 'Current character: l\nCurrent character: l');
INSERT INTO problem VALUES (34, 'Viết chương trình lấy một số nguyên a từ bàn phím và hiển thị các tích của a và các số từ 1 đến 5 trên màn hình.\n\nVí dụ: nếu a = 10, chương trình sẽ cho kết quả như sau:\n\n10 * 1 = 10\n10 * 2 = 20\n10 * 3 = 30\n10 * 4 = 40\n10 * 5 = 50', '5', '5 * 1 = 5\n5 * 2 = 10\n5 * 3 = 15\n5 * 4 = 20\n5 * 5 = 25', '6', '6 * 1 = 6\n6 * 2 = 12\n6 * 3 = 18\n6 * 4 = 24\n6 * 5 = 30');	
INSERT INTO problem VALUES (35, 'Viết chương trình lấy hai số nguyên a và b từ người dùng và hiển thị thông tin sau trên màn hình:\n\nNumber of even numbers: {P1}\nNumber of odd numbers: {P2}\n\nTrong đó {P1} là số các số chẵn và {P2} là số các số lẻ trong phạm vi [a, b].\n\nVí dụ, nếu a = 1, b = 10, chương trình sẽ cho kết quả như sau:\n\nNumber of even numbers: 5\nNumber of odd numbers: 5', '14,23', 'Number of even numbers: 5\nNumber of odd numbers: 5', '30,40', 'Number of even numbers: 6\nNumber of odd numbers: 5');

INSERT INTO problem VALUES (21, 'Viet chuong trinh lay so nguyen n tu nguoi dung va hien thi tong cac so tu 1 den n tren man hinh. \n\nVi du, neu n = 5, chuong trinh se cho ket qua nhu sau: 1 + 2 + 3 + 4 + 5 = 15', '5', '15', '7', '28');
INSERT INTO problem VALUES (22, 'Viet chuong trinh nhan hai so nguyen a va b tu nguoi dung va hien thi tong cac so le giua a va b tren man hinh (b > a).\n\nVi du, neu a = 3, b = 9, dau ra phai la: 3 + 5 + 7 + 9 = 24', '3,9', '24', '16,24', '80');
INSERT INTO problem VALUES (23, 'Viet chuong trinh lay mot chuoi s tu ban phim va hien thi cac ky tu khong phai la "y" trong chuoi s tren man hinh.\n\nVi du: neu s = "mysql", ket qua dau ra phai la:\n\nCurrent character: m\nCurrent character: s\nCurrent character: q\nCurrent character: l', 'sunny', 'Current character: s\nCurrent character: u\nCurrent character: n\nCurrent character: n', 'lyly', 'Current character: l\nCurrent character: l');
INSERT INTO problem VALUES (24, 'Viet chuong trinh lay mot so nguyen a tu ban phim va hien thi cac tich cua a va cac so tu 1 den 5 tren man hinh.\n\nVi du: neu a = 10, chuong trinh se cho ket qua nhu sau:\n\n10 * 1 = 10\n10 * 2 = 20\n10 * 3 = 30\n10 * 4 = 40\n10 * 5 = 50', '5', '5 * 1 = 5\n5 * 2 = 10\n5 * 3 = 15\n5 * 4 = 20\n5 * 5 = 25', '6', '6 * 1 = 6\n6 * 2 = 12\n6 * 3 = 18\n6 * 4 = 24\n6 * 5 = 30');
INSERT INTO problem VALUES (25, 'Viet chuong trinh lay hai so nguyen a va b tu nguoi dung va hien thi thong tin sau tren man hinh:\n\nNumber of even numbers: {P1}\nNumber of odd numbers: {P2}\n\nTrong do {P1} la so cac so chan va {P2} la so cac so le trong pham vi [a, b].\n\nVi du, neu a = 1, b = 10, chuong trinh se cho ket qua nhu sau:\n\nNumber of even numbers: 5\nNumber of odd numbers: 5', '14,23', 'Number of even numbers: 5\nNumber of odd numbers: 5', '30,40', 'Number of even numbers: 6\nNumber of odd numbers: 5');
