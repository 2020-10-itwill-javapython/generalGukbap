--제품 추가(국밥)
INSERT INTO product 
VALUES (11, '굴국밥', 8000, '사진', '싱싱한 통영산 굴이 가득 들어있는 영양만점 국밥', 0, 0, 1, 0, 'false', 0, sysdate);

INSERT INTO product 
VALUES (12, '돼지국밥', 8000, '사진', '돼지다리뼈를 넣고 우려낸 뽀얀국물에 돼지고기와 양념장이 올라가는 고기국밥', 0, 0, 1, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (13, '소고기국밥', 8500, '사진', '소고기에 콩나물과 우거지를 넣고 푹 끓인 얼큰한 국밥', 0, 0, 1, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (14, '순대국밥', 8000, '사진', '토종순대와 시래기를 넣고 끓인 푸짐한 양의 순대국밥', 0, 0, 1, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (15, '콩나물국밥', 7000, '사진', '무공해로 재배되는 콩나물에 20여가지 천연재료를 사용하여 우려낸 콩나물국밥', 0, 0, 1, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (16, '테스트국밥', 7000, '사진', '테스트국밥', 0, 0, 1, 0, 'false', 0, sysdate);

/*
 * 시퀀스문제있는듯..
 * 사진처리
 * product_order 이건 뭐지
 * 
INSERT INTO product 
VALUES (product_product_no_SEQ, '굴국밥', 8000, '사진', '싱싱한 통영산 굴이 가득 들어있는 영양만점 국밥', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product 
VALUES ( product_product_no_SEQ, '돼지국밥', 8000, '사진', '돼지다리뼈를 넣고 우려낸 뽀얀국물에 돼지고기와 양념장이 올라가는 고기국밥', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product 
VALUES (product_product_no_SEQ, '소고기국밥', 8500, '사진', '소고기에 콩나물과 우거지를 넣고 푹 끓인 얼큰한 국밥', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product 
VALUES (product_product_no_SEQ, '순대국밥', 8000, '사진', '토종순대와 시래기를 넣고 끓인 푸짐한 양의 순대국밥', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product 
VALUES (product_product_no_SEQ, '콩나물국밥', 7000, '사진', '무공해로 재배되는 콩나물에 20여가지 천연재료를 사용하여 우려낸 콩나물국밥', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);
*/

--제품 추가(사이드)

INSERT INTO product
VALUES (21, '굴전', 14000, '사진', '굴 본연의 맛과 향을 느낄 수 있는 굴전', 0, 0, 2, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (22, '모듬순대', 20000, '사진', '머릿고기와 세 가지 종류의 순대를 한 접시에', 0, 0, 2, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (23, '소고기수육', 38000, '사진', '소고기 사태와 양지를 황태육수에 삶아 부추와 함께 즐기는 소고기수육', 0, 0, 2, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (24, '테스트사이드', 38000, '사진', '테스트사이드', 0, 0, 2, 0, 'false', 0, sysdate);
/*

INSERT INTO product
VALUES ( product_product_no_SEQ, '굴전', 14000, '사진', '굴 본연의 맛과 향을 느낄 수 있는 굴전', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES ( product_product_no_SEQ, '모듬순대', 20000, '사진', '머릿고기와 세 가지 종류의 순대를 한 접시에', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ, '소고기수육', 38000, '사진', '소고기 사태와 양지를 황태육수에 삶아 부추와 함께 즐기는 소고기수육', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);
 */

--제품 추가(음료 및 주류)

INSERT INTO product
VALUES (31, '코카콜라(1.5)', 3000, '사진', '1.5L 큰 페트병(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (32, '코카콜라(355)', 2000, '사진', '355ml 뚱뚱한 캔(빨대 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (33, '스프라이트(1.5)', 3000, '사진', '1.5리터 큰 페트병(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (34, '스프라이트(355)', 2000, '사진', '355ml 뚱뚱한 캔(빨대 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (35, '참이슬후레쉬', 4000, '사진', '참이슬후레쉬(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (36, '처음처럼', 4000, '사진', '처음처럼(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (37, '테라병맥주', 5000, '사진', '테라병맥주(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (38, '카스병맥주', 5000, '사진', '카스병맥주(일회용컵 제공 안함)', 0, 0, 3, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (39, '테스트음료', 5000, '사진', '테스트음료', 0, 0, 3, 0, 'false', 0, sysdate);
/*
INSERT INTO product
VALUES (product_product_no_SEQ, '코카콜라(1.5)', 3000, '사진', '1.5L 큰 페트병(일회용컵 제공 안함)', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ, '코카콜라(355)', 2000, '사진', '355ml 뚱뚱한 캔(빨대 제공 안함)', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ, '스프라이트(1.5)', 3000, '사진', '1.5리터 큰 페트병(일회용컵 제공 안함)', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ, '스프라이트(355)', 2000, '사진', '355ml 뚱뚱한 캔(빨대 제공 안함)', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ, '참이슬후레쉬', 4000, '사진', '참이슬후레쉬(일회용컵 제공 안함)', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ, '처음처럼', 4000, '사진', '처음처럼(일회용컵 제공 안함)', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ, '테라병맥주', 5000, '사진', '테라병맥주(일회용컵 제공 안함)', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);

INSERT INTO product
VALUES (product_product_no_SEQ, '카스병맥주', 5000, '사진', '카스병맥주(일회용컵 제공 안함)', 0, 0, product_category_c_no_SEQ, 0, 'false', 0, sysdate);
*/

commit;