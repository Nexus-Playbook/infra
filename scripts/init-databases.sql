-- Initialize databases for all services
CREATE DATABASE nexus_ai_auth;
CREATE DATABASE nexus_ai_analytics;
CREATE DATABASE nexus_ai_billing;
CREATE DATABASE nexus_ai_ai;

-- Create users with appropriate permissions
CREATE USER auth_service WITH PASSWORD 'auth_password';
CREATE USER analytics_service WITH PASSWORD 'analytics_password';  
CREATE USER billing_service WITH PASSWORD 'billing_password';
CREATE USER ai_service WITH PASSWORD 'ai_password';

-- Grant permissions
GRANT ALL PRIVILEGES ON DATABASE nexus_ai_auth TO auth_service;
GRANT ALL PRIVILEGES ON DATABASE nexus_ai_analytics TO analytics_service;
GRANT ALL PRIVILEGES ON DATABASE nexus_ai_billing TO billing_service;
GRANT ALL PRIVILEGES ON DATABASE nexus_ai_ai TO ai_service;