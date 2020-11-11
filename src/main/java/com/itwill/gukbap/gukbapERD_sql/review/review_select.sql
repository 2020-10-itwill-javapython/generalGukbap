
--모든 후기 불러오기
select * from review;

--최근순으로 모든 후기 불러오기
select * from review order by review_upload_date desc;

--최근 후기 5개 뽑기 
select *
from ( select * 
       from review
       order by REVIEW_UPLOAD_DATE desc )
where rownum <= 5;

--사진 있는 후기만 불러오기
select * from review where review_image is not null;

--후기번호로 후기 하나 불러오기 
select * from review where review_no=1;

--후기번호로 후기 3개 불러오기
select * from (select * from review where review_no<4 order by review_no) where rownum <= 3;

--제품번호로 후기 여러 개 불러오기
select * from review where product_no=1;







