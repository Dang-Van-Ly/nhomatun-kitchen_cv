# Hướng Dẫn Chạy Chương Trình

## Kiến trúc
- **Swing GUI** → kết nối trực tiếp MariaDB (JPA/Hibernate)
- **RMI Server** → dùng cho `Client.java` test (không bắt buộc cho GUI)
- **Spring Boot Web** → REST API (tùy chọn)

---

## Bước 1: Khởi động Database (Docker)

```bash
docker compose up -d mariadb
```

Chờ khoảng 15 giây để MariaDB sẵn sàng.

---

## Bước 2: Chạy Swing GUI

Mở project trong **IntelliJ IDEA** hoặc **NetBeans**, sau đó chạy class:

```
gui.main.Login
```

Hoặc chạy bằng Maven (nếu có):
```bash
mvn exec:java -Dexec.mainClass="gui.main.Login"
```

---

## Tài khoản đăng nhập mặc định

| Mã NV     | Mật khẩu | Vai trò   |
|-----------|----------|-----------|
| NVQL001   | 12345678 | Quản lý   |
| NVLT001   | 12345678 | Lễ tân    |
| NVTN001   | 12345678 | Thu ngân  |

---

## Bước 3 (Tùy chọn): Chạy RMI Server

```bash
docker compose up -d rmi-server
```

---

## Dừng tất cả

```bash
docker compose down
```

## Dừng và xóa dữ liệu

```bash
docker compose down -v
```
