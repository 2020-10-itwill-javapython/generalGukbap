-- (운영자 제외)전체 유저 불러오기
select * from gukbap_user where user_level != 'admin';

-- key값(user_id)로 유저 한명 불러오기
select * from gukbap_user where user_id = 'helprun@naver.com';

-- user_phone 010-1111-1111 형식으로 출력
select SUBSTR(user_phone,0,3)||'-'||SUBSTR(user_phone,4,4)||'-'||SUBSTR(user_phone,8) user_phone 
from gukbap_user
where user_phone is not null;

-- 아이디로 검색했을때 유저수 카운트
select count(*) from gukbap_user where user_id = 'helprun@naver.com';