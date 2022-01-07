/* ========================================================= 
                        TABLO OLUSTURMA  (CRUD - Create)                  
============================================================*/
drop table student;
use sys;
CREATE TABLE student 
(   
    id VARCHAR(4)  ,
    name VARCHAR(20),
    age int
);
/* ========================================================= 
                     VERİ GİRİSİ 
===========================================================*/

INSERT INTO student VALUES( '1001','MEHMET ALİ', 25);
INSERT INTO student VALUES('1002', 'AYSE YILMAZ', 34);
INSERT INTO student VALUES('1003', 'JOHN STAR', 56);
INSERT INTO student VALUES('1004', 'MARY BROWN', 17);


/* ========================================================= 
             PARCALİ    VERİ GİRİSİ 
===========================================================*/
insert into student(name, age) VALUES('samet ay',24 );

/* ========================================================= 
            TABLODAN VERİ SORGULAMA
===========================================================*/

select * from urunler;

/* ========================================================= 
                    TABLO SiLME  (CRUD - Drop )
===========================================================*/

DROP TABLE urunler;
-- concat ---
create table customer (
musteri_no int,
ad VARCHAR(22),
soyad VARCHAR(25),
sehir varchar(45),
cinsiyet varchar(15),
puan int
);
INSERT INTO customer VALUES(111,'ebru', 'akar','denizli','kadin',78);
INSERT INTO customer VALUES(222,'ayse', 'kara','ankara','kadin',90);
INSERT INTO customer VALUES(333,'ali','gel','istanbul','erkek',66);
INSERT INTO customer VALUES(444, 'mehmet','okur','mus','erkek',98);

select concat('adiniz soyadiniz: ', ad,' ', soyad) ad_soyad from customer;
select concat(musteri_no, '.)', ad,' ',soyad) musteri, sehir, cinsiyet,puan from customer; 