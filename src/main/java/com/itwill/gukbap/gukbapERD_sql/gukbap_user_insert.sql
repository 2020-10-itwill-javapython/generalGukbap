-- 일반 유저 추가
INSERT INTO gukbap_user (user_id, user_password, user_first_name, user_last_name, user_birthdate, user_phone) 
VALUES ('helprun@naver.com', 'password', 'Soonsu', 'Kwon', user_birthdate, '01075127505');

-- 운영자 아이디 추가
INSERT INTO gukbap_user (user_id, user_password, user_first_name, user_last_name, user_birthdate, user_phone, user_level) 
VALUES (user_id, user_password, user_first_name, user_last_name, user_birthdate, user_phone, 'admin');