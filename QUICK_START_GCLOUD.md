# ⚡ Hướng dẫn Nhanh Deploy Google Cloud Run

**Mất thời gian: ~15 phút từ setup đến deploy**

## 1️⃣ Tạo & Setup Google Cloud Project

```powershell
# Cài Google Cloud SDK (nếu chưa có)
# Download: https://cloud.google.com/sdk/docs/install-sdk

# Kiểm tra cài đặt
gcloud version

# Login với Gmail
gcloud auth login

# Khởi tạo
gcloud init
# Chọn: 
#  - Create new project
#  - Project name: "Restaurant Management" (hoặc tên khác)
#  - Region: asia-southeast1
```

## 2️⃣ Enable APIs

```powershell
# Chạy từ terminal PowerShell
gcloud services enable run.googleapis.com
gcloud services enable cloudbuild.googleapis.com
gcloud services enable artifactregistry.googleapis.com
```

## 3️⃣ Deploy

```powershell
# Chuyển vào folder project
cd "c:\Users\Admin\OneDrive - Industrial University of HoChiMinh City\Desktop\cv\NhomATunKitchen_QUANLIGOIMONTRONGNHAHANG_LTPTJV-main"

# Deploy (thay PROJECT_ID)
gcloud run deploy quanli-goimon `
  --source . `
  --region asia-southeast1 `
  --allow-unauthenticated `
  --memory 512Mi `
  --cpu 1
```

**Lần đầu mất 5-10 phút. Chờ đến khi thấy:**
```
Service URL: https://quanli-goimon-xxxxx.run.app
```

## 4️⃣ Test & Lấy Link

```powershell
# Lấy URL
gcloud run services list --region asia-southeast1

# Test
Invoke-WebRequest https://quanli-goimon-xxxxx.run.app
```

## 📝 Ghi vào CV

```
Live Demo: https://quanli-goimon-xxxxx.run.app
```

---

**Database**: Hiện tại vẫn dùng localhost MariaDB. 
- Để database cũng lên cloud → xem DEPLOY_GOOGLE_CLOUD.md (phần "Setup Database")
- Hoặc: Dùng Cloud SQL (phí ~$7/tháng) hoặc Neon PostgreSQL (free)

**Lỗi gì?** Chạy lệnh này để xem log:
```powershell
gcloud run logs read quanli-goimon --region asia-southeast1 --limit=50
```
