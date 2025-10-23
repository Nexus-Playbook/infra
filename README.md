# Nexus AI Infrastructure

Infrastructure as Code and deployment configurations for Nexus AI platform.

## Contents
- Docker Compose for local development
- Kubernetes manifests for production
- CI/CD pipeline configurations
- Database setup scripts
- Monitoring and observability configs

## Quick Start - Local Development

### Prerequisites
- Docker & Docker Compose
- Node.js 18+ (for services)
- Git

### Run Full Stack Locally
```bash
# Start infrastructure services
docker-compose up -d postgres mongodb redis

# Start all microservices (separate terminals)
cd ../nexus-ai-client && npm run dev
cd ../services/nexus-ai-gateway && npm run start:dev  
cd ../services/nexus-ai-auth && npm run start:dev
cd ../services/nexus-ai-task && npm run start:dev
cd ../services/nexus-ai-ai && npm run start:dev
```

## Directory Structure
```
infra/
├── docker/
│   ├── docker-compose.yml     # Local dev stack
│   ├── docker-compose.prod.yml # Production-like stack
│   └── Dockerfile.*           # Service-specific Dockerfiles
├── k8s/
│   ├── namespaces/
│   ├── deployments/
│   ├── services/
│   └── ingress/
├── scripts/
│   ├── setup-local.sh         # Local environment setup
│   ├── deploy.sh              # Deployment script
│   └── migrate.sh             # Database migration runner
└── monitoring/
    ├── prometheus/
    ├── grafana/
    └── alerts/
```

## Services & Ports
- Frontend: http://localhost:3000
- API Gateway: http://localhost:4000  
- Auth Service: http://localhost:3001
- Task Service: http://localhost:3002
- AI Service: http://localhost:3003
- Doc Service: http://localhost:3004
- Analytics Service: http://localhost:3005
- Billing Service: http://localhost:3006

## Infrastructure Services
- PostgreSQL: localhost:5432
- MongoDB: localhost:27017
- Redis: localhost:6379
- Prometheus: http://localhost:9090
- Grafana: http://localhost:3001

## Environment Setup
1. Copy `.env.example` to `.env` in each service
2. Update database URLs and API keys
3. Run `./scripts/setup-local.sh` for initial setup

## Production Deployment
- Kubernetes manifests in `k8s/` directory
- Helm charts for easier deployment
- ArgoCD GitOps workflows
- Automated CI/CD via GitHub Actions

## Monitoring Stack
- Prometheus for metrics collection
- Grafana for visualization and dashboards  
- Jaeger for distributed tracing
- ELK stack for centralized logging

## License
Private - Nexus AI Platform