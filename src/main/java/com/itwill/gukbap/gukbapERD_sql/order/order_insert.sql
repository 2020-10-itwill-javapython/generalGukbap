INSERT INTO gukbap_order (order_no, order_date, order_status, order_total_pricce, order_desc, order_note, user_id) 
VALUES (gukbap_order_order_no_SEQ.nextval, to_date('2020/10/19', 'yyyy/MM/dd'), 
'준비중', 8000, '굴국밥', '수저주세요','helprun@naver.com');

INSERT INTO gukbap_order (order_no, order_date, order_status, order_total_pricce, order_desc, order_note, user_id) 
VALUES (gukbap_order_order_no_SEQ.nextval, to_date('2020/10/25', 'yyyy/MM/dd'), 
'배송중', 11000, '돼지국밥외1종', '젓가락 주세요','OMG_mim@naver.com');

INSERT INTO gukbap_order (order_no, order_date, order_status, order_total_pricce, order_desc, order_note, user_id) 
VALUES (gukbap_order_order_no_SEQ.nextval, to_date('2020/10/24', 'yyyy/MM/dd'), 
'배송중', 31500, '소고기국밥외2종','안전운전하세요','boyoung90@naver.com');

INSERT INTO gukbap_order (order_no, order_date, order_status, order_total_pricce, order_desc, order_note, user_id) 
VALUES (gukbap_order_order_no_SEQ.nextval, to_date('2020/10/23', 'yyyy/MM/dd'), 
'준비중', 10000, '순대국밥외1종','빨리오세요','chan@naver.com');

INSERT INTO gukbap_order (order_no, order_date, order_status, order_total_pricce, order_desc, order_note, user_id) 
VALUES (gukbap_order_order_no_SEQ.nextval, to_date('2020/10/21', 'yyyy/MM/dd'), 
'준비중', 18000, '콩나물국밥외2종','빨리오세요','syLim@naver.com');

commit;