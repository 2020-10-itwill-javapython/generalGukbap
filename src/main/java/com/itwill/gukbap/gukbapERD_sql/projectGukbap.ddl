DROP TABLE chat CASCADE CONSTRAINTS;
DROP TABLE wishlist CASCADE CONSTRAINTS;
DROP TABLE review CASCADE CONSTRAINTS;
DROP TABLE order_detail CASCADE CONSTRAINTS;
DROP TABLE gukbap_order CASCADE CONSTRAINTS;
DROP TABLE userAddress CASCADE CONSTRAINTS;
DROP TABLE address CASCADE CONSTRAINTS;
DROP TABLE product CASCADE CONSTRAINTS;
DROP TABLE product_category CASCADE CONSTRAINTS;
DROP TABLE gukbap_user CASCADE CONSTRAINTS;


CREATE TABLE gukbap_user(
		user_id                       		VARCHAR2(50)		 NULL ,
		user_password                 		VARCHAR2(30)		 NULL ,
		user_first_name               		VARCHAR2(30)		 NULL ,
		user_last_name                		VARCHAR2(30)		 NULL ,
		user_birthdate                		DATE		 NULL ,
		user_phone                    		NUMBER(13)		 NOT NULL,
		user_level                    		VARCHAR2(20)		 DEFAULT 'user'		 NULL 
);


CREATE TABLE product_category(
		c_no                          		NUMBER(10)		 NULL ,
		c_name                        		VARCHAR2(20)		 NULL 
);

DROP SEQUENCE product_category_c_no_SEQ;

CREATE SEQUENCE product_category_c_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;



CREATE TABLE product(
		product_no                    		NUMBER(10)		 NULL ,
		product_name                  		VARCHAR2(50)		 NULL ,
		product_price                 		NUMBER(10)		 NULL ,
		product_image                 		VARCHAR2(500)		 NULL ,
		product_desc                  		VARCHAR2(2000)		 NULL ,
		product_sale_count            		NUMBER(10)		 NULL ,
		product_click_count           		NUMBER(10)		 NULL ,
		c_no                          		NUMBER(10)		 NULL ,
		product_order                 		NUMBER(10)		 NULL ,
		product_isOnSale              		VARCHAR2(10)		 DEFAULT 'false'		 NULL ,
		product_discountRate          		NUMBER(10)		 DEFAULT 0		 NULL ,
		product_sale_date             		DATE		 NULL 
);

DROP SEQUENCE product_product_no_SEQ;

CREATE SEQUENCE product_product_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;



CREATE TABLE address(
		address_no                    		NUMBER(10)		 NULL ,
		address_company_name          		VARCHAR2(50)		 NULL ,
		address_street                		VARCHAR2(200)		 NULL ,
		address_street_optional       		VARCHAR2(50)		 NULL ,
		address_city                  		VARCHAR2(20)		 NULL ,
		address_state                 		VARCHAR2(20)		 NULL 
);

DROP SEQUENCE address_address_no_SEQ;

CREATE SEQUENCE address_address_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;


CREATE TABLE userAddress(
		userAddress_no                		NUMBER(10)		 NULL ,
		user_id                       		VARCHAR2(50)		 NULL ,
		address_no                    		NUMBER(10)		 NULL 
);

DROP SEQUENCE userAddress_userAddress_no_SEQ;

CREATE SEQUENCE userAddress_userAddress_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;



CREATE TABLE gukbap_order(
		order_no                      		NUMBER(10)		 NULL ,
		order_date                    		DATE		 DEFAULT sysdate		 NULL ,
		order_status                  		VARCHAR2(10)		 NULL ,
		order_total_pricce            		NUMBER(10)		 NULL ,
		order_desc                    		VARCHAR2(1000)		 NULL ,
		order_note                    		VARCHAR2(50)		 NULL ,
		user_id                       		VARCHAR2(50)		 NULL 
);

DROP SEQUENCE gukbap_order_order_no_SEQ;

CREATE SEQUENCE gukbap_order_order_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;



CREATE TABLE order_detail(
		o_d_no                        		NUMBER(10)		 NULL ,
		order_no                      		NUMBER(10)		 NULL ,
		o_d_product_count             		NUMBER(10)		 NULL ,
		product_no                    		NUMBER(10)		 NULL 
);

DROP SEQUENCE order_detail_o_d_no_SEQ;

CREATE SEQUENCE order_detail_o_d_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;




CREATE TABLE review(
		review_no                     		NUMBER(10)		 NULL ,
		review_image                  		VARCHAR2(500)		 NULL ,
		review_title                  		VARCHAR2(200)		 NULL ,
		review_content                		VARCHAR2(3000)		 NULL ,
		review_upload_date            		DATE		 DEFAULT sysdate		 NULL ,
		review_group_no               		NUMBER(10)		 NULL ,
		review_step                   		NUMBER(10)		 NULL ,
		review_depth                  		NUMBER(10)		 NULL ,
		product_no                    		NUMBER(10)		 NULL ,
		o_d_no                        		NUMBER(10)		 NULL 
);

DROP SEQUENCE review_review_no_SEQ;

CREATE SEQUENCE review_review_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;




CREATE TABLE wishlist(
		wishlist_no                   		NUMBER(10)		 NULL ,
		user_id                       		VARCHAR2(50)		 NULL ,
		product_no                    		NUMBER(10)		 NULL 
);

DROP SEQUENCE wishlist_wishlist_no_SEQ;

CREATE SEQUENCE wishlist_wishlist_no_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;


CREATE TABLE chat(
		chatID                        		NUMBER(10)		 	 NOT NULL,
		chatName                      		VARCHAR2(20)		 NOT NULL,
		chatContent                   		VARCHAR2(100)		 NOT NULL,
		chatTime                      		VARCHAR2(30)		 NOT NULL
);

CREATE SEQUENCE chat_chatID_SEQ NOMAXVALUE NOCACHE NOORDER NOCYCLE;


ALTER TABLE gukbap_user ADD CONSTRAINT IDX_gukbap_user_PK PRIMARY KEY (user_id);

ALTER TABLE product_category ADD CONSTRAINT IDX_product_category_PK PRIMARY KEY (c_no);

ALTER TABLE product ADD CONSTRAINT IDX_product_PK PRIMARY KEY (product_no);
ALTER TABLE product ADD CONSTRAINT IDX_product_FK0 FOREIGN KEY (c_no) REFERENCES product_category (c_no);

ALTER TABLE address ADD CONSTRAINT IDX_address_PK PRIMARY KEY (address_no);

ALTER TABLE userAddress ADD CONSTRAINT IDX_userAddress_PK PRIMARY KEY (userAddress_no);
ALTER TABLE userAddress ADD CONSTRAINT IDX_userAddress_FK0 FOREIGN KEY (user_id) REFERENCES gukbap_user (user_id);
ALTER TABLE userAddress ADD CONSTRAINT IDX_userAddress_FK1 FOREIGN KEY (address_no) REFERENCES address (address_no);

ALTER TABLE gukbap_order ADD CONSTRAINT IDX_gukbap_order_PK PRIMARY KEY (order_no);
ALTER TABLE gukbap_order ADD CONSTRAINT IDX_gukbap_order_FK0 FOREIGN KEY (user_id) REFERENCES gukbap_user (user_id);

ALTER TABLE order_detail ADD CONSTRAINT IDX_order_detail_PK PRIMARY KEY (o_d_no);
ALTER TABLE order_detail ADD CONSTRAINT IDX_order_detail_FK0 FOREIGN KEY (order_no) REFERENCES gukbap_order (order_no);
ALTER TABLE order_detail ADD CONSTRAINT IDX_order_detail_FK1 FOREIGN KEY (product_no) REFERENCES product (product_no);

ALTER TABLE review ADD CONSTRAINT IDX_review_PK PRIMARY KEY (review_no);
ALTER TABLE review ADD CONSTRAINT IDX_review_FK0 FOREIGN KEY (product_no) REFERENCES product (product_no);
ALTER TABLE review ADD CONSTRAINT IDX_review_FK1 FOREIGN KEY (o_d_no) REFERENCES order_detail (o_d_no);

ALTER TABLE wishlist ADD CONSTRAINT IDX_wishlist_PK PRIMARY KEY (wishlist_no);
ALTER TABLE wishlist ADD CONSTRAINT IDX_wishlist_FK0 FOREIGN KEY (user_id) REFERENCES gukbap_user (user_id);
ALTER TABLE wishlist ADD CONSTRAINT IDX_wishlist_FK1 FOREIGN KEY (product_no) REFERENCES product (product_no);

ALTER TABLE chat ADD CONSTRAINT IDX_chat_PK PRIMARY KEY (chat_no);
ALTER TABLE chat ADD CONSTRAINT IDX_chat_FK0 FOREIGN KEY (user_id) REFERENCES gukbap_user (user_id);

ALTER TABLE chat ADD CONSTRAINT IDX_chat_PK PRIMARY KEY (chatID);
