#!/bin/bash

# Nexus AI Local Development Setup Script

echo "🚀 Setting up Nexus AI local development environment..."

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo "❌ Docker is not running. Please start Docker and try again."
    exit 1
fi

# Navigate to infra directory
cd "$(dirname "$0")/.."

# Start infrastructure services
echo "📦 Starting infrastructure services..."
docker-compose -f docker/docker-compose.yml up -d

# Wait for services to be ready
echo "⏳ Waiting for services to initialize..."
sleep 30

# Check service health
echo "🔍 Checking service health..."
docker-compose -f docker/docker-compose.yml ps

echo "✅ Infrastructure setup complete!"
echo ""
echo "📋 Service URLs:"
echo "   PostgreSQL: localhost:5432"
echo "   MongoDB:    localhost:27017" 
echo "   Redis:      localhost:6379"
echo "   Prometheus: http://localhost:9090"
echo "   Grafana:    http://localhost:3001 (admin/admin123)"
echo "   MailHog:    http://localhost:8025"
echo ""
echo "🔧 Next steps:"
echo "   1. Start the API Gateway: cd ../services/nexus-ai-gateway && npm run start:dev"
echo "   2. Start Auth Service: cd ../services/nexus-ai-auth && npm run start:dev"
echo "   3. Start Task Service: cd ../services/nexus-ai-task && npm run start:dev"
echo "   4. Start AI Service: cd ../services/nexus-ai-ai && npm run start:dev"  
echo "   5. Start Frontend: cd ../nexus-ai-client && npm run dev"
echo ""