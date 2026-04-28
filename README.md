# 🏪 Quản Lý Gọi Món Trong Nhà Hàng

Ứng dụng quản lý nhà hàng toàn diện: đặt bàn, gọi món, in hóa đơn, quản lý khuyến mại.

## 🚀 Deploy

### Deploy lên máy tính cá nhân

```bash
# Chạy ứng dụng
java -jar target/NhomATunKitchen_QUANLIGOIMONTRONGNHAHANG_LTPTJV-1.0-SNAPSHOT.jar

# Truy cập: http://localhost:8080
```

### Deploy lên Google Cloud Run (public URL)

**Nhanh nhất**: 
```bash
# 1. Setup Google Cloud SDK
gcloud init

# 2. Deploy
gcloud run deploy quanli-goimon --source . --region asia-southeast1 --allow-unauthenticated

# 3. Lấy URL công khai từ output
```

Xem hướng dẫn chi tiết: [QUICK_START_GCLOUD.md](./QUICK_START_GCLOUD.md)

Hướng dẫn đầy đủ: [DEPLOY_GOOGLE_CLOUD.md](./DEPLOY_GOOGLE_CLOUD.md)

## 📋 Tính năng

- ✅ Đặt bàn (ngày, giờ, số bàn)
- ✅ Gọi món (menu động, phân loại)
- ✅ Tính toán hóa đơn (tự động cộng tiền)
- ✅ In hóa đơn (JasperReports PDF)
- ✅ Khuyến mại (mã code, giảm giá)
- ✅ Quản lý nhân viên & khách hàng
- ✅ REST API

## 🛠️ Tech Stack

- **Backend**: Spring Boot 3.1.12 (Java 17)
- **Database**: MariaDB 3.5.1
- **API**: REST (JDBC + JdbcTemplate)
- **Build**: Maven 3.9
- **Deploy**: Docker + Google Cloud Run
- **Reporting**: JasperReports 7.0.4

## 🐛 Dependencies (CVE Fixed)

Tất cả CVE critical/high đã được fix:
- commons-beanutils: 1.11.0
- commons-collections: 3.2.2
- commons-compress: 1.26.0
- jasperreports: 7.0.4
- groovy-all: 2.4.21

## 📦 Build & Run

### Locally
```bash
# Build
mvn clean package -DskipTests

# Run
java -jar target/NhomATunKitchen_QUANLIGOIMONTRONGNHAHANG_LTPTJV-1.0-SNAPSHOT.jar

# API: http://localhost:8080
```

### Docker
```bash
# Build image
docker build -t quanli-goimon .

# Run
docker run -p 8080:8080 quanli-goimon
```

## 📊 Database Setup

Tạo database:
```bash
mysql -u root -p < scripts/script.sql
```

Cấu hình: `src/main/resources/application.properties`

## 🔗 API Endpoints

```
GET  /                    # Home
GET  /api/tables          # Danh sách bàn
GET  /api/dishes          # Danh sách món ăn
POST /api/order           # Tạo đơn
GET  /api/invoice/{id}    # Hóa đơn
```

## 🧪 Test

```bash
mvn clean test
```

## 📄 Docs

- [Google Cloud Deploy](./DEPLOY_GOOGLE_CLOUD.md) - Hướng dẫn chi tiết
- [Quick Start Cloud](./QUICK_START_GCLOUD.md) - Nhanh 15 phút
- [pom.xml](./pom.xml) - Dependencies

## 👥 Team

- Nhóm A - Tun Kitchen
- HCMUTE - CNTT

## 📝 License

Educational Project

---

**Deployed at**: [Live Demo URL - sắp tới](https://quanli-goimon-xxxxx.run.app)

**Repository**: [GitHub Link](https://github.com/your-repo)
