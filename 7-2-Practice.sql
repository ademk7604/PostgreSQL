CREATE TABLE workers
(
  id int,
  name varchar(20),
  title varchar(60),
  manager_id int
);
INSERT INTO workers VALUES(1, 'Ali Can', 'Dev', 2);
INSERT INTO workers VALUES(2, 'John Davis', 'QA', 3);
INSERT INTO workers VALUES(3, 'Angie Star', 'Dev Lead', 4);
INSERT INTO workers VALUES(4, 'Amy Sky', 'CEO', 5);
select * from workers;

--1) Tabloya company_industry isminde sütun ekleyiniz. -- tablo da bir degisiklik yapacagim
alter table workers add company_industry varchar(20); -- deger atmadigim icin hepsini null verdi
select * from workers;

--2) TABLOYA worker_address sütunu ve defaullt olarakta 'Miami, FL, USA' adresini ekleyiniz.
alter table workers add worker_address varchar(100) default ('Miami','FL','USA');
select * from workers;

--3) tablodaki worker_address sütununu siliniz
alter table workers drop column worker_address;
select * from workers;

--4) Tablodaki company_industry sütununu, company_profession olarak değiştiriniz.
alter table workers rename column company_industry to company_profession ;
select * from workers;

--5) Tablonun ismini employees olarak değişitiriniz.
alter table workers rename to employees; -- taplonun ismini boyle degistiriyoruz
select * from employees;

--6) Tablodaki title sütununa data tipini VARCHAR(50) olarak değiştiriniz.
alter table employees alter column title type VARCHAR(50); -- column suzda oluyor
select * from employees;

-- Tablodaki title sütununa "UNIQUE" kıstlaması ekleyiniz.
alter table employees add constraint title unique (title)
