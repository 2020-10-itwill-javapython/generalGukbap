--제품 추가(국밥)
INSERT INTO product 
VALUES (product_product_no_SEQ.nextval, '굴국밥', 8000, 'oystergukbap.jpg', '싱싱한 통영산 굴이 가득 들어있는 영양만점 국밥', 0, 0, 1, 0, 'true', 30, to_date('2020/10/19', 'yyyy/MM/dd'));

INSERT INTO product 
VALUES (product_product_no_SEQ.nextval, '돼지국밥', 8000, 'porkgukbap.jpg', '돼지다리뼈를 넣고 우려낸 뽀얀국물에 돼지고기와 양념장이 올라가는 고기국밥', 0, 0, 1, 0, 'true', 30, to_date('2020/10/20', 'yyyy/MM/dd'));

INSERT INTO product 
VALUES (product_product_no_SEQ.nextval, '소고기국밥', 8500, 'cowgukbap.jpg', '소고기에 콩나물과 우거지를 넣고 푹 끓인 얼큰한 국밥', 0, 0, 1, 0, 'true', 30, to_date('2020/10/21', 'yyyy/MM/dd'));

INSERT INTO product 
VALUES (product_product_no_SEQ.nextval, '순대국밥', 8000, 'sundaogukbap.jpg', '토종순대와 시래기를 넣고 끓인 푸짐한 양의 순대국밥', 0, 0, 1, 0, 'true', 30, to_date('2020/10/22', 'yyyy/MM/dd'));

INSERT INTO product 
VALUES (product_product_no_SEQ.nextval, '콩나물국밥', 7000, 'beangukbap.PNG', '무공해로 재배되는 콩나물에 20여가지 천연재료를 사용하여 우려낸 콩나물국밥', 0, 0, 1, 0, 'true', 30, to_date('2020/10/23', 'yyyy/MM/dd'));

INSERT INTO product
VALUES (product_product_no_SEQ.nextval, '테스트국밥', 7000, '사진', '테스트국밥', 0, 0, 1, 0, 'false', 0, sysdate);

--제품 추가(사이드)
INSERT INTO product
VALUES (product_product_no_SEQ.nextval, '굴전', 14000, 'oysterpancake.jpg', '굴 본연의 맛과 향을 느낄 수 있는 굴전', 0, 0, 2, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ.nextval, '모듬순대', 20000, 'sundae.jpg', '머릿고기와 세 가지 종류의 순대를 한 접시에', 0, 0, 2, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ.nextval, '소고기수육', 38000, 'cowsuyuk.jpg', '소고기 사태와 양지를 황태육수에 삶아 부추와 함께 즐기는 소고기수육', 0, 0, 2, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ.nextval, '테스트사이드', 14000, '사진', '테스트사이드', 0, 0, 2, 0, 'false', 0, sysdate);

--제품 추가(음료 및 주류)
INSERT INTO product
VALUES (product_product_no_SEQ.nextval, '코카콜라(1.5)', 3000, 'bigcola.PNG', '1.5L 큰 페트병(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ.nextval, '코카콜라(355)', 2000, 'smallcola.PNG', '355ml 뚱뚱한 캔(빨대 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ.nextval, '스프라이트(1.5)', 3000, 'bigcider.PNG', '1.5리터 큰 페트병(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ.nextval, '스프라이트(355)', 2000, 'smallcider.PNG', '355ml 뚱뚱한 캔(빨대 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ.nextval, '참이슬후레쉬', 4000, 'soju1.PNG', '참이슬후레쉬(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ.nextval, '처음처럼', 4000, 'soju2.PNG', '처음처럼(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ.nextval, '테라병맥주', 5000, 'tera.PNG', '테라병맥주(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ.nextval, '카스병맥주', 5000, 'cass.PNG', '카스병맥주(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);


/*
마지막에 추가

INSERT INTO product 
VALUES (product_product_no_SEQ.nextval, '굴추가', 2000, '사진', '굴추가', 0, 0, 1, 1, 'false', 0, sysdate);

INSERT INTO product 
VALUES (product_product_no_SEQ.nextval, '돼지고기추가', 8000, '사진', '돼지고기추가', 0, 0, 1, 2, 'false', 0, sysdate);

INSERT INTO product 
VALUES (product_product_no_SEQ.nextval, '소고기추가', 8500, '사진', '소고기추가', 0, 0, 1, 3, 'false', 0, sysdate);

INSERT INTO product 
VALUES (product_product_no_SEQ.nextval, '순대추가', 8000, '사진', '순대추가', 0, 0, 1, 4, 'false', 0, sysdate);
*/

commit;