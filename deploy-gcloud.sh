#!/bin/bash

# Deploy to Google Cloud Run script
# Usage: ./deploy-gcloud.sh <project-id> <service-name> <region>

PROJECT_ID=${1:-your-project-id}
SERVICE_NAME=${2:-quanli-goimon}
REGION=${3:-asia-southeast1}

echo "🚀 Deploying to Google Cloud Run..."
echo "Project: $PROJECT_ID"
echo "Service: $SERVICE_NAME"
echo "Region: $REGION"

# Set project
gcloud config set project $PROJECT_ID

# Deploy
gcloud run deploy $SERVICE_NAME \
  --source . \
  --region $REGION \
  --allow-unauthenticated \
  --memory 512Mi \
  --cpu 1 \
  --timeout 3600 \
  --platform managed \
  --set-env-vars="SPRING_DATASOURCE_URL=jdbc:mariadb://localhost:3306/quanlidatbantrongnhahang,SPRING_DATASOURCE_USERNAME=root,SPRING_DATASOURCE_PASSWORD=root"

echo "✅ Deploy complete!"
gcloud run services describe $SERVICE_NAME --region $REGION --format='value(status.url)'
