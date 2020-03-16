


DELETE FROM CHARGE_LEDGER_SUCC_BACK A WHERE A.rowid > ANY (SELECT B.rowid FROM CHARGE_LEDGER_SUCC B WHERE A.mobile = B.mobile AND A.col2 = B.col2);




<------------Remove Duplicate Entry from table-------------->


DELETE FROM CHARGE_LEDGER_SUCC_BACK
WHERE rowid not in
(SELECT MIN(rowid)
FROM CHARGE_LEDGER_SUCC_BACK
GROUP BY MOBILE) ;

select FROM CHARGE_LEDGER_SUCC_BACK
WHERE rowid not in
(SELECT MIN(rowid)
FROM CHARGE_LEDGER_SUCC_BACK
GROUP BY MOBILE) ;



select count(*) from SUBSCRIBERS where STATUS='Y' and SUBSCRIBE_TIME>='06-JUN-18' and
 SUBSCRIBE_TIME<'07-JUN-18';
 
 select * from SUBSCRIBERS where SUBSCRIBE_TIME>='03-JUN-18';
 
 select count(*) from SUBSCRIBERS where STATUS='Y' and SUBSCRIBE_TIME>=SYSDATE -2;
 
 SELECT * FROM OUTBOX where MOBILE like '%553328545%,B';
 
 select count(*) from OUTBOX where ENTRY_DATE>='05-JUN-18' and SEND_STATUS is not null;
 
 select count(*) from CHARGE_LEDGER where SEND_STATUS='Y' and ENTRY_DATE >='30-MAY-18';
 
 select count(*) from OUTBOX where ENTRY_DATE>='30-MAY-18' and SEND_STATUS='Y';
 
 Select count(*) from charge_ledger where send_status is not null  and
 
 send_status = 'Y' and entry_date >='10-FEB-18' and entry_date<='28-FEB-18';

<----------Create same table and insert data-------------->

CREATE TABLE CHARGE_LEDGER_SUCC_BACK AS SELECT  FROM CHARGE_LEDGER_SUCC;

<------create index------------------------->

CREATE INDEX mobile_indx ON CHARGE_LEDGER_SUCC_BACK (mobile);
   
   
   
SELECT index_name
FROM DBA_IND_COLUMNS WHERE INDEX_OWNER = 'ttalk'
AND TABLE_NAME LIKE '%CHARGE_LEDGER_SUCC_BACK%';



select * from CHARGE_LEDGER_SUCCESS where MOBILE like '%01932605025%';
select * from INBOX where MOBILE like '%01932605025%';
select * from SUBSCRIBERS where MSISDN like '%01932605025%';
select * from OUTBOX where MOBILE like '%01932605025%';
select * from MSISDN where MOBILE like '%01932605025%';
select * from CCD_SEARCH where MOBILE like '%01932605025%';
delete from MSISDN where MOBILE like '%01932605025%';
COMMIT;
Delete from SUBSCRIBERS where id=1849209;

COMMIT;

select * from SUBSCRIBERS where MSISDN like '%01550017135%';

delete from SUBSCRIBERS where id=1810457;

commit;

SELECT count(*) from SUBSCRIBERS where STATUS='Y';
select count(*) from SUBSCRIBERS where STATUS='Y' and SUBSCRIBE_TIME>='28-MAY-18';
Select count(*) from charge_ledger where send_status = 'Y' and entry_date >='01-FEB-18' and entry_date<='28-FEB-18';


January=279784


select count(*) from CHARGE_LEDGER where 
MOBILE in(select mobile from CHARGE_LEDGER_BAK_12DEC17);


SELECT  *
FROM    all_indexes
WHERE   table_name = 'CHARGE_LEDGER_SUCC_BACK';

DELETE FROM CHARGE_LEDGER_SUCC_BACK
WHERE rowid not in
(SELECT MIN(rowid)
FROM CHARGE_LEDGER_SUCC_BACK
GROUP BY MOBILE) ;


select count(*) from SUBSCRIBERS where STATUS='Y' and SUBSCRIBE_TIME>='03-JUN-18' 
and SUBSCRIBE_TIME<'04-JUN-18';

select count(*) from SUBSCRIBERS where STATUS='Y' and SUBSCRIBE_TIME>=SYSDATE -2;
select * from SUBSCRIBERS where SUBSCRIBE_TIME>='03-JUN-18';


SELECT * FROM OUTBOX where MOBILE like '%553328545%,B';

select count(*) from OUTBOX where ENTRY_DATE>='05-JUN-18' and SEND_STATUS is not null;

select count(*) from CHARGE_LEDGER where SEND_STATUS='Y' and ENTRY_DATE >='30-MAY-18';
Select count(*) from charge_ledger where send_status is not null  and send_status = 'Y'
 and entry_date >='10-FEB-18' and entry_date<='28-FEB-18';
 
 DELETE FROM CHARGE_LEDGER_SUCC_BACK
WHERE rowid not in
(SELECT MIN(rowid)
FROM CHARGE_LEDGER_SUCC_BACK
GROUP BY MOBILE);

SELECT  *
FROM    all_indexes
WHERE   table_name = 'CHARGE_LEDGER_SUCC_BACK';


select count(*) from CHARGE_LEDGER_SUCC_BACK a where rowid > (select min(rowid) from CHARGE_LEDGER_SUCC_BACK b where a.MOBILE=b.MOBILE);
DELETE from CHARGE_LEDGER_SUCC_BACK a where rowid > (select min(rowid) from CHARGE_LEDGER_SUCC_BACK b where a.MOBILE=b.MOBILE);




-----------update-null status-------

select SEND_STATUS,count(*) from OUTBOX where  entry_date>=to_date('29-08-2018','dd-mm-rrrr') 
group by send_status;

select CHARGE_STATUS,SEND_STATUS,count(*) from OUTBOX where  entry_date>=to_date('27-08-2018','dd-mm-rrrr') 
group by send_status,CHARGE_STATUS;

select count(*) from OUTBOX where ENTRY_DATE>='17-JUN-18' and ENTRY_DATE<'18-JUN-18' and SEND_STATUS='Y';

update outbox set send_status=NULL where SEND_STATUS='N' and ENTRY_DATE>='17-JUN-18';

----------content change---------------->

select * from CONTENTS ORDER BY START_TIME DESC; 
DELETE  FROM CONTENTS where ID=350;
select * from CONTENTS ORDER BY START_TIME DESC; 
DELETE  FROM CONTENTS where ID=350;


--------------content change---------------->

update OUTBOX set MSG='Eiffel Tower er uccota 1050 Feet.1887 to 1889 somoy dhore ei Tower er nirman kaj cole r ongsho grohon koren 300 shromik. Support-01534006157' 
where ENTRY_DATE >='07-AUG-18' and SEND_STATUS is null;
commit;



Select outbox_sq.nextval from dual;

-----------------------messige test-------------

Insert into outbox(id,mobile,entry_date,msg,scheduled_time,SEND_STATUS,SEND_TIME,telco_id,INBOX_ID,CHARGE_STATUS) values 
(outbox_sq.nextval,'01559472046',sysdate,'hellow',sysdate,null,sysdate,2,-1,2);
commit;


-----------------campain-----------------------

Insert into outbox(id,mobile,entry_date,msg,scheduled_time,telco_id,INBOX_ID,CHARGE_STATUS) 
Select outbox_sq.nextval,msisdn,sysdate,'Quiz khele jite nin AC soho Huawei Mobile phone o Dhaka to Cox''s bazar Air Ticket, Type START NEWS send 16410 or START QUIZ send 16410 support +8801534006157',sysdate,2,-1,2 from subscribers;

-------------totalrevenew----------------------

select trunc(ENTRY_DATE) AS EN_DATE,count(*) AS SUCCESSFUL_HIT from CHARGE_LEDGER 
where entry_date between to_date('01-02-2019 00:00:00','dd-mm-rrrr hh24:mi:ss') 
and to_date('28-02-2019 23:59:59','dd-mm-rrrr hh24:mi:ss') and send_status='Y'	
GROUP BY trunc(ENTRY_DATE)
ORDER BY EN_DATE; 


Select to_char(entry_date,'MON,rrrr'),count(*)*2.44*.3 from charge_ledger
where entry_date between to_date('01-02-2019 00:00:00','dd-mm-rrrr hh24:mi:ss') 
and to_date('28-02-2019 23:59:59','dd-mm-rrrr hh24:mi:ss')
and send_status='Y'
group by to_char(entry_date,'MON,rrrr') 
order by to_char(entry_date,'MON,rrrr');



-------------totalrevenew---end-------------------


-------------subscribe number edit table alter---------------


create table subscribers_bak20sep18 as select * from subscribers;

Select * from subscribers where length(msisdn) not in (11,13) or (length(msisdn) = 11 and msisdn not like '015%') or (length(msisdn) = 13 and msisdn not like '88015%');


Update subscribers set status='N' 
where status='Y' and msisdn in 
(
Select msisdn from subscribers where (length(msisdn) = 11 and msisdn not like '015%') or (length(msisdn) = 13 and msisdn not like '88015%')
);


delete  from subscribers where length(msisdn) not in (11,13) or (length(msisdn) = 11 and msisdn not like '015%') or (length(msisdn) = 13 and msisdn not like '88015%');

ALTER TABLE TTALK.SUBSCRIBERS ADD 
CONSTRAINT SUBSCRIBERS_C01
 CHECK ((length(msisdn) = 11 and msisdn like '015%') or (length(msisdn) = 13 and msisdn  like '88015%'))
 ENABLE
 VALIDATE;
 
 
-----------Apply same on outbox, INBOX and MSISDN Base ****/ 
-------------subscribe number edit table alter---------------

------------blink log dual update-----------------

Select thread_id,min(tid) from charge_ledger where entry_date > sysdate -1/3 and thread_id is not null group by thread_id;

-----------UPDATE AND SMAE INNER JOIN--------------------

select * FROM SUBSCRIBERS
INNER JOIN DO_NOT_SUBSCRIBE ON DO_NOT_SUBSCRIBE.MOBILE=SUBSCRIBERS.MSISDN;

UPDATE SUBSCRIBERS SET STATUS='N' WHERE ID IN(1759338,1760842);
COMMIT;


---------------------------QUERY OTHER TABLE TO -----------------

SELECT * FROM SUBSCRIBERS s where s.MSISDN in (SELECT MOBILE FROM DO_NOT_SUBSCRIBE);

INSERT INTO MSISDN (MOBILE, TELCO_ID, STATUS, TAG) VALUES ('01558750571', '', '', '');
TRUNCATE TABLE MSISDN;

-------------dual number delete--------

SELECT COUNT(MOBILE), MOBILE
FROM MSISDN
GROUP BY MOBILE
HAVING COUNT(*) > 1;
SELECT * FROM MSISDN WHERE MOBILE ='01558750571' AND ROWNUM <2;

--------------------subscriber push--------------

Select send_status,count(*) from charge_ledger where mobile in 
(
select  msisdn from SUBSCRIBERS where STATUS='Y' and SUBSCRIBE_TIME>='24-DEC-18' 
and SUBSCRIBE_TIME<'25-DEC-18'
) group by send_status;

---------------------new subscriber charge ------------


SELECT * FROM CHARGE_LEDGER s WHERE s.SEND_STATUS = 'Y'
AND s.MOBILE in(select MSISDN from SUBSCRIBERS where STATUS='Y' and SUBSCRIBE_TIME>='01-JAN-19' 
and SUBSCRIBE_TIME<'05-JAN-19');

SELECT send_status,count(*) FROM CHARGE_LEDGER s 
WHERE s.MOBILE in(select MSISDN from SUBSCRIBERS where STATUS='Y' and SUBSCRIBE_TIME>='01-JAN-19' 
and SUBSCRIBE_TIME<'05-JAN-19') group by send_status;

---------------------------subscriber-----------------------

