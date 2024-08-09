# create database tai_chinh;
# use tai_chinh;

CREATE TABLE users
(
    MaNguoiDung INT AUTO_INCREMENT PRIMARY KEY,
    email       VARCHAR(50)  NULL,
    password    VARCHAR(255) NULL,
    ten         VARCHAR(255) NULL,
    tuoi        INT          NULL,
    sdt         INT          NULL,
    dia_chi     VARCHAR(50)  NULL
);

CREATE TABLE danhmuc
(
    MaDanhMuc   INT AUTO_INCREMENT PRIMARY KEY,
    MaNguoiDung INT                                                            NULL,
    Ten         VARCHAR(100),
    GhiChu      VARCHAR(100)                                                   NULL,
    NgayTao     DATETIME DEFAULT CURRENT_TIMESTAMP                             NULL,
    NgayCapNhat DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP NULL,
    CONSTRAINT FK_DanhMuc_NguoiDung FOREIGN KEY (MaNguoiDung) REFERENCES users (MaNguoiDung)
);
insert into danhmuc(Ten, GhiChu)
values ('Quan', 'aaa');
select *
from danhmuc;
drop table danhmuc;


CREATE TABLE vitien
(
    MaVitien     INT AUTO_INCREMENT PRIMARY KEY,
    MaNguoiDung  INT          NULL,
    TenNguoiDung VARCHAR(255) NULL,
    MaCode       BIGINT       NULL,
    NgayHetHan   VARCHAR(50)  NULL,
    MaMat        VARCHAR(255) NULL,
    tien         BIGINT(20)   NULL,
    CONSTRAINT FK_Vitien_NguoiDung FOREIGN KEY (MaNguoiDung) REFERENCES users (MaNguoiDung) ON DELETE CASCADE
);
select *
from vitien;

CREATE TABLE giaodich
(
    MaGiaoDich   INT AUTO_INCREMENT PRIMARY KEY,
    MaNguoiDung  INT          NULL,
    MaViTien     INT          NULL,
    MaDanhMuc    INT          NULL,
    SoTien       DECIMAL(10, 2),
    GhiChu       VARCHAR(255) NULL,
    LoaiGiaoDich ENUM ('thu','chi'),
    NgayGiaoDich DATETIME DEFAULT CURRENT_TIMESTAMP,
    NgayTao      DATETIME DEFAULT CURRENT_TIMESTAMP,
    NgayCapNhat  DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    CONSTRAINT FK_GiaoDich_NguoiDung FOREIGN KEY (MaNguoiDung) REFERENCES users(MaNguoiDung) ON DELETE CASCADE,
    CONSTRAINT FK_GiaoDich_ViTien FOREIGN KEY (MaViTien) REFERENCES vitien(MaVitien) ON DELETE CASCADE,
    CONSTRAINT FK_GiaoDich_DanhMuc FOREIGN KEY (MaDanhMuc) REFERENCES danhmuc(MaDanhMuc) ON DELETE CASCADE
);