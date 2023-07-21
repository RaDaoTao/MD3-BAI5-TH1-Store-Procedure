 -- Bước 1: Chọn Database `classicmodels` để thao tác với cơ sở dữ liệu này (nếu chưa có Database xem lại bài TH1) :
USE `classicmodels`;

-- Tạo Mysql Stored Procedure đầu tiên
DELIMITER //

CREATE PROCEDURE findAllCustomers()
BEGIN
  SELECT * FROM customers;
END //

DELIMITER ;

-- Cách gọi procedure
call findAllCustomers();

-- Lệnh Drop để xóa đi Procedure đó và tạo lại:
DELIMITER //
DROP PROCEDURE IF EXISTS `findAllCustomers`//

-- Tạo lại Procedure findAllCustomers() với thêm điều kiện truy vấn
CREATE PROCEDURE findAllCustomers()
BEGIN
SELECT * FROM customers where customerNumber = 175;
END //

