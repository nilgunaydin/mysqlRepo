CREATE TABLE hastaneler
    (
        id VARCHAR(4) PRIMARY KEY, -- not null+ unique = yani id bosluk  olamaz z ve tek olmali
        isim VARCHAR(50),
       sehir VARCHAR(50),
        ozel CHAR(3)
        );
        
    INSERT INTO hastaneler VALUES ('H101', 'ACIBADEM HASTANESİ', 'ISTANBUL','Y');
    INSERT INTO hastaneler VALUES ('H102', 'HASZEKİ HASTANESİ', 'ISTANBUL','N');
    INSERT INTO hastaneler VALUES ('H103', 'MEDİKOL  HASTANESİ', 'IZMIR','Y');
    INSERT INTO hastaneler VALUES ('H104', 'NEMORYIL HASTANESİ', 'ANKARA','Y');
    
    CREATE TABLE hastalar
    (
       kimlik_no VARCHAR(11) PRIMARY KEY, -- not null+ unique = yani id bosluk  olamaz z ve tek olmali
        ISIM VARCHAR(50),
       TESHİS VARCHAR(50)
        );
   INSERT INTO hastalar VALUES ('12345678901', 'Ali Can', 'Gizli Seker');
   INSERT INTO hastalar VALUES ('22345678901', 'Ayse Yilmaz', 'Hipertansiyon');
   INSERT INTO hastalar VALUES ('32345678901', 'Steve Jop', 'Pankreaatit');
   INSERT INTO hastalar VALUES ('42345678901', 'Tom Hanks', 'Covid19');
   
     CREATE TABLE bolumler
    (
       bolum_id VARCHAR(4) PRIMARY KEY, -- not null+ unique = yani id bosluk  olamaz z ve tek olmali
        bolum_adi VARCHAR(50)
    );
   INSERT INTO bolumler VALUES ( 'DHL', 'Dahiliye');
   INSERT INTO bolumler VALUES ( 'KBB', 'Kulak-Burun-Bogaz');
   INSERT INTO bolumler VALUES ( 'NRJ', 'Noroloji');
   INSERT INTO bolumler VALUES ( 'GAST', 'Gastroloji');
   INSERT INTO bolumler VALUES ( 'KARD', 'Kardioloji');
   INSERT INTO bolumler VALUES ( 'PSK', 'Psikiyatri');
   INSERT INTO bolumler VALUES ( 'GOZ', 'Goz Hataliklari');
   
 CREATE TABLE  Hasta_Kayitlar
 (
 kimlik_no VARCHAR(50) PRIMARY KEY, -- not null+ unique = yani id bosluk  olamazz ve tek olmali
 HASTA_ISIM VARCHAR(50), -- NONAME
 HASTANE_ADİ VARCHAR(50),-- NULL
   BOLUM_ADİ VARCHAR(50), -- NULL
   TESHİS VARCHAR(50) -- NULL
   );
   
    INSERT INTO Hasta_Kayitlar VALUES('1111','NONAME',null,null,null);
    INSERT INTO Hasta_Kayitlar VALUES('2222','NONAME',null,null,null);
    INSERT INTO Hasta_Kayitlar VALUES('3333','NONAME',null, null,null);
    

update  Hasta_Kayitlar set hasta_isim = 'Salvadore Dali'where kimlik_no='3333';
update  Hasta_Kayitlar set hastane_adi = 'John Hopins' where kimlik_no='3333';
update  Hasta_Kayitlar set bolum_adi = 'Noroloji' where kimlik_no='3333';
update  Hasta_Kayitlar set teshis = 'Parkinson' where kimlik_no='3333';
update  Hasta_Kayitlar set kimlik_no= '99991111222' where kimlik_no='3333';

select * from hasta_kayitlar;


update hasta_kayitlar set hasta_isim =(select isim from hastalar where isim='ali can') where kimlik_no='1111';
update hasta_kayitlar set hastane_adi =(select isim from hastaneler where id ='H104')where kimlik_no='1111';
update hasta_kayitlar set bolum_adi=(select bolum_adi from bolumler where bolum_id='dhl')where kimlik_no='1111';
update hasta_kayitlar set teshis=(select teshis from hastalar where isim='ali can')where kimlik_no='1111';
update hasta_kayitlar set kimlik_no =(select kimlik_no from hastalar where isim='ali can')where kimlik_no='1111';


update hasta_kayitlar set HASTA_ISIM=(select isim from hastalar where isim='Ayse Yilmaz')   where kimlik_no='2222';
update hasta_kayitlar set hastane_adi=(select isim from hastaneler where id ='H103') where kimlik_no='2222';
update hasta_kayitlar set  bolum_adi=(select bolum_adi from bolumler where bolum_id='kbb') where kimlik_no='2222';
update hasta_kayitlar set teshis=(select teshis from hastalar where isim='Tom Hanks')where kimlik_no='2222';
update hasta_kayitlar set kimlik_no =(select kimlik_no from hastalar where isim='Steve Jop')where kimlik_no='2222';


