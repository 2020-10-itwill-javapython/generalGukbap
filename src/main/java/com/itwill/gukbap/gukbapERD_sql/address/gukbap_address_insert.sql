/*insert into address values(address_address_no_SEQ.nextval,'국밥','교하로70','33-10','파주시','경기도/대한민국');*/


insert into address (ADDRESS_NO,ADDRESS_COMPANY_NAME,ADDRESS_STREET,ADDRESS_CITY,ADDRESS_STATE)
values(address_address_no_SEQ.nextval,'국밥','교하로70','파주시','경기도/한국');

insert into address (ADDRESS_NO, ADDRESS_COMPANY_NAME, ADDRESS_STREET,ADDRESS_STREET_OPTIONAL,ADDRESS_CITY,ADDRESS_STATE)
values(address_address_no_SEQ.nextval,'국밥','교하로70','33-10','파주시','경기도/한국');

insert into address values(address_address_no_SEQ.nextval,'국밥','교하로70','33-10','파주시','경기도/한국');
insert into address values(address_address_no_SEQ.nextval,'본전돼지국밥','중앙대로214번길','3-8','동구','부산/한국');
insert into address values(address_address_no_SEQ.nextval,'삼백집','도산대로17길','6','강남구','서울/한국');
insert into address values(address_address_no_SEQ.nextval,'중앙해장','영동대로86길','17','강남구','서울/한국');
insert into address values(address_address_no_SEQ.nextval,'돈수백','강남대로110길','13','강남구','서울/한국');
insert into address values(address_address_no_SEQ.nextval,'태평소국밥','온천동로65','50','유성구','대전/한국');
insert into address values(address_address_no_SEQ.nextval,'재기돼지국밥','강남대로110길','13','강남구','서울/한국');
insert into address values(address_address_no_SEQ.nextval,'돈수백','절영로49번길','25','영도구','부산/한국');


update address set ADDRESS_CITY='파주시' WHERE ADDRESS_NO=11;
update address set ADDRESS_COMPANY_NAME='변경국밥',ADDRESS_STREET='변경70',ADDRESS_STREET_OPTIONAL='변경-10',ADDRESS_CITY='변경시',
ADDRESS_STATE='변경변경' WHERE ADDRESS_NO=14;


SELECT * FROM address;
SELECT * FROM address WHERE ADDRESS_NO=9;
SELECT * FROM address WHERE ADDRESS_COMPANY_NAME='국밥';
SELECT * FROM address WHERE ADDRESS_CITY='파주시';

delete from address where ADDRESS_NO=1;

delete from address;

commit;
