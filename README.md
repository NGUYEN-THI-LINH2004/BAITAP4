# BAITAP4
# BTVN_BAITAP4
# bai tap 4: (sql server)
- Yêu cầu bài toán:
 - Tạo csdl cho hệ thống TKB (đã nghe giảng, đã xem cách làm)
 - Nguồn dữ liệu: TMS.tnut.edu.vn
 - Tạo các bảng tuỳ ý (3nf)
 - Tạo được query truy vấn ra thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra.
   trả lời câu hỏi: trong khoảng thời gian từ datetime1 tới datetime2 thì có những gv nào đang bận giảng dạy.

- Các bước thực hiện:
1. Tạo github repo mới: đặt tên tuỳ ý (có liên quan đến bài tập này)
2. tạo file readme.md, edit online nó:
   paste những ảnh chụp màn hình
   gõ text mô tả cho ảnh đó
- Gợi ý:
  sử dung tms => dữ liệu thô => tiền xử lý => dữ liệu như ý (3nf)
  tạo các bảng với struct phù hợp
  insert nhiều rows từ excel vào cửa sổ edit dữ liệu 1 table (quan sát thì sẽ làm đc)

  # Đây là hình ảnh các bảng được tạo từ nguồn dữ liệu TMS
  ## CÁC BẢNG 
  ### BẢNG THỜI KHÓA BIỂU
  ![Screenshot 2025-04-13 154744](https://github.com/user-attachments/assets/dbbfdd5a-6afa-4144-8891-f8a59f479fec)
  ### BẢNG NULL CỦA TKB
    - Ở bảng này thì em thêm cột tiết bắt đầu và tiết kết thúc để tính thời gian giờ vào và giờ ra
  ![Screenshot 2025-04-13 154639](https://github.com/user-attachments/assets/72e53de0-0a0d-40b0-8bd3-0fac34f7b899)
  ### BẢNG MÔN HỌC
  ![Screenshot 2025-04-13 154723](https://github.com/user-attachments/assets/d62bcaba-182c-43ec-8766-850b68fa10b8)
  ### BẢNG NULL CỦA MÔN HỌC
  ![Screenshot 2025-04-13 154715](https://github.com/user-attachments/assets/37f9b858-0620-4ebb-a721-534d732af070)
  ### BẢNG GIÁO VIÊN
  ![Screenshot 2025-04-13 154750](https://github.com/user-attachments/assets/c9e9f0bf-cdbb-4915-828b-5669782fc85b)
  ### BẢNG NULL CỦA GIÁO VIÊN
  ![Screenshot 2025-04-13 155006](https://github.com/user-attachments/assets/ca23c3bd-ee31-4afd-b8f4-cd6b26ef58cd)
  ### BẢNG LỚP
  ![Screenshot 2025-04-13 154859](https://github.com/user-attachments/assets/d14d1d0a-24dc-4be2-9980-204ee15cb01b)
  ### BẢNG NULL CỦA LỚP
  ![Screenshot 2025-04-13 154936](https://github.com/user-attachments/assets/c3838787-4a41-4f12-b2dc-0fd48062c6ed)
  ### BẢNG PHÒNG HỌC
  ![Screenshot 2025-04-13 154806](https://github.com/user-attachments/assets/a2fc200f-2566-41e2-952b-2372b2695068)
  ### BẢNG NULL PHÒNG HỌC
  ![Screenshot 2025-04-13 154815](https://github.com/user-attachments/assets/84d8ce12-915a-425b-9be8-a9198d8e57cc)

## Tạo được query truy vấn ra thông tin gồm 4 cột: họ tên gv, môn dạy, giờ vào lớp, giờ ra.
 -Ở phần này em tạo ra giờ vào và giơ ra trước sau.
### Em dùng lệnh dưới đây để chuyển đồi từ tiết học sang giờ cụ thể để dễ so sánh và hiện thị 
 ![Screenshot 2025-04-13 170942](https://github.com/user-attachments/assets/c88247ab-598c-48ed-99ee-810129e8142a)
##  Truy vấn trong khoảng từ 6:30 đến 12:00 của ngày 21-03-2025 đến 28-03-2025 thì có những gv nào đang bận giảng dạy.
  ![Screenshot 2025-04-14 121559](https://github.com/user-attachments/assets/67d4ff92-56c5-4796-b69d-f7131943d444)

   ![Screenshot 2025-04-14 124313](https://github.com/user-attachments/assets/f144e66f-1963-4685-b7e6-ec57dd1129a2)


