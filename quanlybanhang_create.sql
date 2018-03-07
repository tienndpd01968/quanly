-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2018-03-03 15:53:58.058

-- tables
-- Table: chitiethoadon
CREATE TABLE chitiethoadon (
    MaCTHD int(5) NOT NULL,
    MaHD int(5) NULL,
    MaSP int(5) NULL,
    SoLuong int(11) NULL,
    DonGia decimal(15,0) NULL,
    sappham_MaSP int(5) NOT NULL,
    hoadon_MaHD int(5) NOT NULL,
    CONSTRAINT chitiethoadon_pk PRIMARY KEY (MaCTHD)
);

-- Table: hoadon
CREATE TABLE hoadon (
    MaHD int(5) NOT NULL,
    MaKH int(5) NULL,
    NgayTao datetime NOT NULL,
    khachhang_MaKH int(5) NOT NULL,
    CONSTRAINT hoadon_pk PRIMARY KEY (MaHD)
);

-- Table: khachhang
CREATE TABLE khachhang (
    MaKH int(5) NOT NULL,
    TenKH varchar(50) NOT NULL,
    SDT varchar(50) NOT NULL,
    Email varchar(50) NOT NULL,
    DiaChi varchar(50) NOT NULL,
    CONSTRAINT khachhang_pk PRIMARY KEY (MaKH)
);

-- Table: loaisanpham
CREATE TABLE loaisanpham (
    MaLoaiSP int(5) NOT NULL,
    TenLoaiSP varchar(50) NOT NULL,
    CONSTRAINT loaisanpham_pk PRIMARY KEY (MaLoaiSP)
);

-- Table: sappham
CREATE TABLE sappham (
    MaSP int(5) NOT NULL,
    MaLoaiSP int(5) NULL,
    TenSP varchar(50) NOT NULL,
    GiaSP decimal(15,0) NULL,
    SoLuong int(11) NULL,
    NgaySX date NOT NULL,
    loaisanpham_MaLoaiSP int(5) NOT NULL,
    CONSTRAINT sappham_pk PRIMARY KEY (MaSP)
);

-- foreign keys
-- Reference: chitiethoadon_hoadon (table: chitiethoadon)
ALTER TABLE chitiethoadon ADD CONSTRAINT chitiethoadon_hoadon FOREIGN KEY chitiethoadon_hoadon (hoadon_MaHD)
    REFERENCES hoadon (MaHD);

-- Reference: chitiethoadon_sappham (table: chitiethoadon)
ALTER TABLE chitiethoadon ADD CONSTRAINT chitiethoadon_sappham FOREIGN KEY chitiethoadon_sappham (sappham_MaSP)
    REFERENCES sappham (MaSP);

-- Reference: hoadon_khachhang (table: hoadon)
ALTER TABLE hoadon ADD CONSTRAINT hoadon_khachhang FOREIGN KEY hoadon_khachhang (khachhang_MaKH)
    REFERENCES khachhang (MaKH);

-- Reference: sappham_loaisanpham (table: sappham)
ALTER TABLE sappham ADD CONSTRAINT sappham_loaisanpham FOREIGN KEY sappham_loaisanpham (loaisanpham_MaLoaiSP)
    REFERENCES loaisanpham (MaLoaiSP);

-- End of file.

