-- LIMIT --
select * from kisiler
-- Kisiler tablosundan ilk 5 veriyi listeleyiniz
select * from kisiler limit 5
--ilk iki veriden sonra 5 veriyi listeleyiniz
select * from kisiler limit 5 OFFSET 2 -- 3 den baslayip 7. veri dahil verir.

-- id değeri 5 den büyük olan ilk iki veriyi listeleyiniz
select * from kisiler  where id>5 limit 2
select * from kisiler ORDER by id limit 2 OFFSET 5 -- buda furkan hocamin cozumu

--  MAAŞ'ı en yüksek 3 kişinin bilgilerini listeleyiniz
select * from kisiler order by maas desc limit 3

-- En yüksek maaşı alan 4. 5.  6. kişilerin bilgilerini listeleyiniz
select * from kisiler order by maas desc limit 3 offset 3 --3 tanesini sec ama (offset3) 3 ten sonrasini.




