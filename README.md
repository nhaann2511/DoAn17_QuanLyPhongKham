# HỆ THỐNG QUẢN LÝ PHÒNG KHÁM

## 1. Giới thiệu
Đây là dự án xây dựng cơ sở dữ liệu cho hệ thống quản lý phòng khám, hỗ trợ quản lý bệnh nhân, bác sĩ, chuyên khoa, lịch làm việc, lịch hẹn và hồ sơ khám bệnh.

Dự án được thực hiện phục vụ cho mục đích học tập và thực hành môn học.

## 2. Công nghệ sử dụng
- **Database:** MySQL
- **Quản lý Database:** phpMyAdmin
- **Local Server:** WAMP Server
- **Ngôn ngữ truy vấn:** SQL

## 3. Chức năng hệ thống
- Quản lý tài khoản người dùng.
- Quản lý chuyên khoa.
- Quản lý thông tin bác sĩ.
- Quản lý lịch làm việc của bác sĩ.
- Quản lý dịch vụ khám bệnh.
- Quản lý lịch hẹn khám.
- Quản lý hàng đợi bệnh nhân.
- Quản lý hồ sơ khám bệnh.
- Quản lý thông báo.

## 4. Cấu trúc cơ sở dữ liệu

Tên database: `quan_ly_phong_kham`

| STT | Tên bảng | Chức năng |
|---|---|---|
| 1 | Users | Quản lý người dùng |
| 2 | ChuyenKhoa | Quản lý chuyên khoa |
| 3 | BacSi | Quản lý bác sĩ |
| 4 | LichLamViec | Quản lý lịch làm việc |
| 5 | DichVu | Quản lý dịch vụ |
| 6 | LichHen | Quản lý lịch hẹn |
| 7 | HangDoi | Quản lý hàng đợi |
| 8 | HoSoKham | Quản lý hồ sơ khám |
| 9 | ThongBao | Quản lý thông báo |

## 5. Hướng dẫn cài đặt

### Bước 1: Cài đặt WAMP Server
- Cài đặt WAMP Server trên máy tính.
- Khởi động WAMP Server.
- Chờ biểu tượng WAMP chuyển sang màu xanh lá.

### Bước 2: Mở phpMyAdmin
Truy cập địa chỉ:

`http://localhost/phpmyadmin`

Đăng nhập bằng tài khoản MySQL của máy tính.

### Bước 3: Import database
- Chọn tab **Import**.
- Nhấn **Choose File**.
- Chọn file `quan_ly_phong_kham.sql`.
- Nhấn **Import** hoặc **Go** để thực hiện.

### Bước 4: Kiểm tra
Sau khi import thành công, database `quan_ly_phong_kham` sẽ xuất hiện cùng 9 bảng dữ liệu.

## 6. Cấu trúc thư mục

```text
DoAn17_QuanLyPhongKham/
│
├── README.md
│
└── quan_ly_phong_kham.sql
```

## 7. Dữ liệu mẫu
Database có dữ liệu mẫu để kiểm tra hoạt động của các bảng, bao gồm tài khoản bệnh nhân, bác sĩ, tiếp tân và quản trị viên.

## 8. Mục đích dự án
- Thực hành thiết kế cơ sở dữ liệu MySQL.
- Sử dụng câu lệnh SQL để tạo và quản lý bảng.
- Tìm hiểu khóa chính, khóa ngoại và mối quan hệ giữa các bảng.
- Thực hành quản lý cơ sở dữ liệu bằng phpMyAdmin.

## 9. Tác giả
- Nhóm : 11
- Đồ án: 17
- Chủ đề: Hệ thống quản lý phòng khám
- Mục đích: Dự án học tập
