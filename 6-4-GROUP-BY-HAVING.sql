/*
GROUP BY --HAVING __
HAVING ifadesinin islevi WHERE ifadesininkine cok benziyor. 
Ancak kumeleme fonksiyonlari ile WHERE ifadesi birlikte kullanilmasdigindan HAVING ifadesine ihtiyac duyulmustur.
GROUP BY ilekullanilir. gruplamadan sonraki sart icin group by dan sonra HAVING kullanilir. (sahip olmak)
--grouptan sionra where kullanmiyorum o yuzden havinge ihtiyac var onu kullaniyoruz
*/
select * from personel
--Maaş ortalaması 3000’den fazla olan ülkelerdeki erkek çalışanların maaş ortalaması.
select ulke, avg(maas) as maas_ortalamasi from personel
where cinsiyet='E'
group by ulke
having avg(maas)>3000

--Erkek çalışanların sayısı 1’den fazla olan ülkelerin maaş ortalamasını getiren sorgu

select ulke, round(avg(maas)) as maas_ortalamasi from personel
group by ulke
having count(cinsiyet='E')>1




