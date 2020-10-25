delete gukbap_order;

delete gukbap_order where order_no=1;

delete gukbap_order where user_id='syLim@naver.com';

update gukbap_order set order_note='젓가락3개주세요' WHERE order_no=2;

update gukbap_order set order_status='주문중' WHERE order_no=3;

update gukbap_order set order_status='배송중',order_total_pricce=15000,order_desc='순대국밥외2종',order_note='빨리빨리'
WHERE user_id='boyoung90@naver.com';

update gukbap_order set order_status='배송중',order_total_pricce=15000,order_desc='순대국밥외2종',order_note='빨리빨리'
WHERE order_no=10;
