# 🚀 Hướng dẫn Deploy lên Google Cloud Run

Hướng dẫn chi tiết để deploy ứng dụng Spring Boot lên Google Cloud Run - tính năng serverless của Google Cloud với tính năng auto-scaling.

## 📋 Yêu cầu

- Google Cloud Account (tạo tại [cloud.google.com](https://console.cloud.google.com))
- Google Cloud SDK (`gcloud` CLI)
- Docker (nếu test local)
- Git

## 🔧 Bước 1: Cài đặt Google Cloud SDK

### Windows:
```powershell
# Cài đặt SDK
gsutil
```

Hoặc download từ: https://cloud.google.com/sdk/docs/install-sdk#windows

Sau khi cài, chạy:
```powershell
gcloud init
```

Chọn:
1. Login với tài khoản Google
2. Chọn project (hoặc tạo project mới)
3. Chọn region: `asia-southeast1` (máy chủ ở Singapore, gần Việt Nam)

### Kiểm tra cài đặt:
```powershell
gcloud version
gcloud config list
```

## 🔑 Bước 2: Cấu hình Google Cloud Project

### 2.1 Tạo project mới (nếu chưa có)
```powershell
gcloud projects create PROJECT_ID --name="Quản Lý Nhà Hàng"
gcloud config set project PROJECT_ID
```

Thay `PROJECT_ID` bằng ID duy nhất (ví dụ: `quanli-nhahang-2024`)

### 2.2 Enable APIs
```powershell
gcloud services enable run.googleapis.com
gcloud services enable cloudbuild.googleapis.com
gcloud services enable artifactregistry.googleapis.com
```

### 2.3 Set region mặc định
```powershell
gcloud config set run/region asia-southeast1
```

## 📦 Bước 3: Setup Database

### Option A: Cloud SQL (SQL Server có phí)
- Phí: ~$7/tháng cho smallest instance

### Option B: Database bên ngoài (Khuyên dùng)
Sử dụng **Neon** (PostgreSQL free tier):
1. Đăng ký tại https://neon.tech
2. Tạo project
3. Copy connection string: `postgresql://user:password@host/db`
4. Cập nhật environment variable khi deploy

Hoặc **Railway** (free $5/tháng):
https://railway.app

## 🐳 Bước 4: Deploy lên Cloud Run

### 4.1 Đơn giản nhất: Dùng gcloud deploy
```powershell
# Từ folder project root
cd c:\Users\Admin\OneDrive - Industrial University of HoChiMinh City\Desktop\cv\NhomATunKitchen_QUANLIGOIMONTRONGNHAHANG_LTPTJV-main

# Deploy
gcloud run deploy quanli-goimon `
  --source . `
  --region asia-southeast1 `
  --allow-unauthenticated `
  --memory 512Mi `
  --cpu 1 `
  --timeout 3600 `
  --set-env-vars="SPRING_DATASOURCE_URL=jdbc:mariadb://your-db-host:3306/db,SPRING_DATASOURCE_USERNAME=user,SPRING_DATASOURCE_PASSWORD=pass"
```

**Lần đầu tiên có thể mất 5-10 phút** (Cloud Build tự động build Docker image và deploy).

### 4.2 Hoặc dùng script bash (Linux/Mac):
```bash
chmod +x deploy-gcloud.sh
./deploy-gcloud.sh your-project-id quanli-goimon asia-southeast1
```

## ✅ Bước 5: Kiểm tra Deploy

Sau khi deploy thành công, sẽ nhận được URL public:
```
Service URL: https://quanli-goimon-xxxxx.run.app
```

### Test API:
```powershell
$url = "https://quanli-goimon-xxxxx.run.app"
Invoke-WebRequest -Uri "$url/" -UseBasicParsing
```

## 🔗 Cấu hình Domain tùy chỉnh (tuỳ chọn)

Muốn dùng domain riêng (ví dụ: `quanli-nhahang.com`)?

1. Mua domain tại GoDaddy, Namecheap, v.v.
2. Update DNS records trong Google Cloud Console
3. Thêm custom domain vào Cloud Run service

Chi tiết: https://cloud.google.com/run/docs/mapping-custom-domains

## 📊 Monitoring & Logs

Xem logs:
```powershell
gcloud run logs read quanli-goimon --region asia-southeast1 --limit=50
```

Dashboard: https://console.cloud.google.com/run

## 💰 Giá cả

**Cloud Run Free Tier:**
- 2 triệu requests/tháng miễn phí
- Đủ cho demo project

**Chi phí nếu vượt:**
- ~$0.40 per triệu requests
- CPU: $0.0000417 per CPU-second (mặc định shared)

## 🚨 Troubleshooting

### Deploy bị lỗi "permission denied"
```powershell
gcloud auth login
gcloud auth application-default login
```

### Container fails to start
Kiểm tra logs:
```powershell
gcloud run logs read SERVICE_NAME --region asia-southeast1
```

### Database connection failed
- Kiểm tra `SPRING_DATASOURCE_URL`, username, password
- Database có public accessible không?
- Firewall cho phép Cloud Run IP không?

## 📝 CV Format

Ghi vào CV như này:
```
Restaurant Management System
• Spring Boot backend + MariaDB database
• Deployed on Google Cloud Run (auto-scaling, serverless)
• Live URL: https://quanli-goimon-xxxxx.run.app
• GitHub: https://github.com/your-username/repo
• Features: Order management, table booking, invoice printing
```

## 🎯 Next Steps

1. ✅ Tạo Google Cloud Account + Project
2. ✅ Enable APIs
3. ✅ Cấu hình database
4. ✅ Chạy `gcloud run deploy` command
5. ✅ Test URL
6. ✅ Chia sẻ link vào CV

---

**Cần hỗ trợ?** Cho biết thông báo lỗi hoặc bước nào không hiểu!
