delete gukbap_order;

delete gukbap_order where order_no=1;

delete gukbap_order where user_id='syLim@naver.com';

update gukbap_order set order_note='������3���ּ���' WHERE order_no=2;

update gukbap_order set order_status='�ֹ���' WHERE order_no=3;

update gukbap_order set order_status='�����',order_total_pricce=15000,order_desc='���뱹���2��',order_note='��������'
WHERE user_id='boyoung90@naver.com';

update gukbap_order set order_status='�����',order_total_pricce=15000,order_desc='���뱹���2��',order_note='��������'
WHERE order_no=10;
