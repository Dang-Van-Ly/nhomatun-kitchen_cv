INSERT INTO LoaiBan (maLB, tenLB) VALUES ('LB001', 'Tang 1');
INSERT INTO LoaiBan (maLB, tenLB) VALUES ('LB002', 'Tang 2');
INSERT INTO LoaiBan (maLB, tenLB) VALUES ('LB003', 'Phong VIP');

INSERT INTO Ban (maBan, soBan, tinhTrang, loaiBanID, soGhe) VALUES ('T1001', 1, 0, 'LB001', 4);
INSERT INTO Ban (maBan, soBan, tinhTrang, loaiBanID, soGhe) VALUES ('T1002', 2, 0, 'LB001', 4);
INSERT INTO Ban (maBan, soBan, tinhTrang, loaiBanID, soGhe) VALUES ('T1003', 3, 0, 'LB001', 4);
INSERT INTO Ban (maBan, soBan, tinhTrang, loaiBanID, soGhe) VALUES ('T1004', 4, 0, 'LB001', 4);
INSERT INTO Ban (maBan, soBan, tinhTrang, loaiBanID, soGhe) VALUES ('T1005', 5, 0, 'LB001', 4);
INSERT INTO Ban (maBan, soBan, tinhTrang, loaiBanID, soGhe) VALUES ('T2001', 1, 0, 'LB002', 8);
INSERT INTO Ban (maBan, soBan, tinhTrang, loaiBanID, soGhe) VALUES ('T2002', 2, 0, 'LB002', 8);
INSERT INTO Ban (maBan, soBan, tinhTrang, loaiBanID, soGhe) VALUES ('T3001', 1, 0, 'LB003', 12);
INSERT INTO Ban (maBan, soBan, tinhTrang, loaiBanID, soGhe) VALUES ('T3002', 2, 0, 'LB003', 12);

INSERT INTO LoaiNhanVien (maLoaiNV, viTri) VALUES ('LNV1', 'Quan li');
INSERT INTO LoaiNhanVien (maLoaiNV, viTri) VALUES ('LNV2', 'Thu ngan');
INSERT INTO LoaiNhanVien (maLoaiNV, viTri) VALUES ('LNV3', 'Le tan');

INSERT INTO NhanVien (maNV, hoTenNV, CCCD, soDT, matKhau, trangThai, loaiNhanVienID, ngaySinh, gioiTinh, maXacThuc, email) VALUES ('NVQL001', 'Pham Thanh Tri', '864321567955', '0387512346', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', true, 'LNV1', '1996-07-31', 'Nam', NULL, 'phamthanhtri0712@gmail.com');
INSERT INTO NhanVien (maNV, hoTenNV, CCCD, soDT, matKhau, trangThai, loaiNhanVienID, ngaySinh, gioiTinh, maXacThuc, email) VALUES ('NVLT001', 'Tran Minh Tri', '059483728591', '0996854934', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', true, 'LNV3', '2001-09-12', 'Nam', NULL, 'minhtri084038@gmail.com');
INSERT INTO NhanVien (maNV, hoTenNV, CCCD, soDT, matKhau, trangThai, loaiNhanVienID, ngaySinh, gioiTinh, maXacThuc, email) VALUES ('NVTN001', 'Dang Thi Van Ly', '059378654824', '0928594324', 'ef797c8118f02dfb649607dd5d3f8c7623048c9c063d532cc95c5ed7a898a64f', true, 'LNV2', '2000-08-16', 'Nam', NULL, 'hthanhtuan.2307@gmail.com');

INSERT INTO LoaiKhachHang (maLoaiKH, tenLoaiKH, giamGiaTV) VALUES ('LKH1', 'Khach hang thanh vien', 0);
INSERT INTO LoaiKhachHang (maLoaiKH, tenLoaiKH, giamGiaTV) VALUES ('LKH2', 'Khach hang Goal', 10);
INSERT INTO LoaiKhachHang (maLoaiKH, tenLoaiKH, giamGiaTV) VALUES ('LKH3', 'Khach hang Platinum', 15);

INSERT INTO KhachHang (maKH, tenKH, soDT, diemTL, trangThai, loaiKhachHangID, ngayTao) VALUES ('KH000001', 'Tran Thi Bich', '0912345678', 0, true, 'LKH1', '2024-12-09');
INSERT INTO KhachHang (maKH, tenKH, soDT, diemTL, trangThai, loaiKhachHangID, ngayTao) VALUES ('KH000002', 'Le Hoang Phuc', '0923456789', 281, true, 'LKH2', '2024-12-09');

INSERT INTO LoaiMonAn (maLoaiMA, tenLoaiMA) VALUES ('LM001', 'Dimsum');
INSERT INTO LoaiMonAn (maLoaiMA, tenLoaiMA) VALUES ('LM002', 'Drink');
INSERT INTO LoaiMonAn (maLoaiMA, tenLoaiMA) VALUES ('LM003', 'Soup');
INSERT INTO LoaiMonAn (maLoaiMA, tenLoaiMA) VALUES ('LM004', 'Vit Bac Kinh');
INSERT INTO LoaiMonAn (maLoaiMA, tenLoaiMA) VALUES ('LM005', 'Meat');
INSERT INTO LoaiMonAn (maLoaiMA, tenLoaiMA) VALUES ('LM006', 'Sea Food');
INSERT INTO LoaiMonAn (maLoaiMA, tenLoaiMA) VALUES ('LM007', 'Tofu');
INSERT INTO LoaiMonAn (maLoaiMA, tenLoaiMA) VALUES ('LM008', 'Rice');
INSERT INTO LoaiMonAn (maLoaiMA, tenLoaiMA) VALUES ('LM009', 'Noodle');
INSERT INTO LoaiMonAn (maLoaiMA, tenLoaiMA) VALUES ('LM010', 'Vegetable');
INSERT INTO LoaiMonAn (maLoaiMA, tenLoaiMA) VALUES ('LM011', 'Dessert');

INSERT INTO MonAn (maMA, tenMA, hinhAnh, gia, trangThai, loaiMonAnID, khuyenMaiID) VALUES ('MA001', 'Mi kho xa xiu', '/hinhAnh/miKhoXaXiu.jpg', 105000, true, 'LM009', NULL);
INSERT INTO MonAn (maMA, tenMA, hinhAnh, gia, trangThai, loaiMonAnID, khuyenMaiID) VALUES ('MA002', 'Mi sui cao', '/hinhAnh/miSuiCao.jpg', 115000, true, 'LM009', NULL);
INSERT INTO MonAn (maMA, tenMA, hinhAnh, gia, trangThai, loaiMonAnID, khuyenMaiID) VALUES ('MA003', 'Mi xao vit', '/hinhAnh/miXaoVit.jpg', 115000, true, 'LM009', NULL);
INSERT INTO MonAn (maMA, tenMA, hinhAnh, gia, trangThai, loaiMonAnID, khuyenMaiID) VALUES ('MA004', 'Canh bao ngu', '/hinhAnh/canhBaoNgu.jpg', 155000, true, 'LM003', NULL);
INSERT INTO MonAn (maMA, tenMA, hinhAnh, gia, trangThai, loaiMonAnID, khuyenMaiID) VALUES ('MA009', 'Banh bao ca de', '/hinhAnh/banhBaoCaDe.jpg', 115000, true, 'LM001', NULL);
INSERT INTO MonAn (maMA, tenMA, hinhAnh, gia, trangThai, loaiMonAnID, khuyenMaiID) VALUES ('MA019', 'Atiso mat ong hat sen', '/hinhAnh/atisoMatOngSenVang.jpg', 120000, true, 'LM002', NULL);
INSERT INTO MonAn (maMA, tenMA, hinhAnh, gia, trangThai, loaiMonAnID, khuyenMaiID) VALUES ('MA021', 'Heineken', '/hinhAnh/heineken.jpg', 95000, true, 'LM002', NULL);
INSERT INTO MonAn (maMA, tenMA, hinhAnh, gia, trangThai, loaiMonAnID, khuyenMaiID) VALUES ('MA025', 'Vit quay bac kinh', '/hinhAnh/vitQuayBacKinh.jpg', 255000, true, 'LM004', NULL);
INSERT INTO MonAn (maMA, tenMA, hinhAnh, gia, trangThai, loaiMonAnID, khuyenMaiID) VALUES ('MA028', 'Heo quay da gion', '/hinhAnh/heoQuayDaGion.jpeg', 205000, true, 'LM005', NULL);
INSERT INTO MonAn (maMA, tenMA, hinhAnh, gia, trangThai, loaiMonAnID, khuyenMaiID) VALUES ('MA031', 'Bao ngu sot hong kong', '/hinhAnh/baoNguSotHongKong.jpeg', 245000, true, 'LM006', NULL);
INSERT INTO MonAn (maMA, tenMA, hinhAnh, gia, trangThai, loaiMonAnID, khuyenMaiID) VALUES ('MA036', 'Com ga xi dau', '/hinhAnh/comGaXiDau.jpeg', 165000, true, 'LM008', NULL);
INSERT INTO MonAn (maMA, tenMA, hinhAnh, gia, trangThai, loaiMonAnID, khuyenMaiID) VALUES ('MA038', 'Bong cai xanh sot dau hao', '/hinhAnh/bongCaiXanhSotDauHao.jpeg', 145000, true, 'LM010', NULL);
INSERT INTO MonAn (maMA, tenMA, hinhAnh, gia, trangThai, loaiMonAnID, khuyenMaiID) VALUES ('MA041', 'Che duong chi kim lo', '/hinhAnh/cheDuongChiKimLo.jpeg', 123000, true, 'LM011', NULL);
