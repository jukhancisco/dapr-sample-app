# DAPR Sample Application

This is a sample DAPR (Distributed Application Runtime) application demonstrating key DAPR building blocks and patterns.

## Project Structure

```
dapr-sample-app/
├── src/
│   ├── frontend/          # Frontend service
│   └── backend/           # Backend API service
├── components/            # DAPR component configurations
├── config/               # DAPR configuration files
├── scripts/              # Helper scripts
├── docker/               # Docker configurations
└── README.md            # This file
```

## DAPR Building Blocks Demonstrated

- **Service Invocation**: Service-to-service communication
- **State Management**: Storing and retrieving application state
- **Pub/Sub**: Publishing and subscribing to messages
- **Configuration**: Managing application configuration
- **Secrets**: Secure secret management

## Prerequisites

- [DAPR CLI](https://docs.dapr.io/getting-started/install-dapr-cli/)
- [Docker](https://docs.docker.com/get-docker/)
- [Node.js](https://nodejs.org/) or [Python](https://www.python.org/) or [.NET](https://dotnet.microsoft.com/)

## Quick Start

1. Initialize DAPR in your local environment:
   ```bash
   dapr init
   ```

2. Navigate to the project directory:
   ```bash
   cd ~/repos/dapr-sample-app
   ```

3. Run the sample application:
   ```bash
   ./scripts/run-local.sh
   ```

## Development

- Frontend service runs on port 3000
- Backend service runs on port 3001
- DAPR sidecar runs on port 3500 (default)

## Related JIRA Story

This project corresponds to JIRA story: **DAE-592 - Create a sample DAPR application**