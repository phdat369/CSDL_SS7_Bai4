-- Phân tích: 
-- Trong biểu thức not in chúng ta không thể so sánh với được với giá trị null chỉ có thể so sánh bằng is null hoặc is not null nên nó gây ra trình trạng bị lỗi hệ thống
-- Để code sống sót thì chúng ta phải lọc những dữ liệu nào bị rác ra, chỉ giữ lại những kiểu dữ liệu số 

-- Viết code: 
select * 
from courses 
where id not in (
   select course_id 
   from enrollments 
   where course_id is null
);
