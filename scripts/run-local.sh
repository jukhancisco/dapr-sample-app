#!/bin/bash

# DAPR Sample App - Local Development Script

echo "Starting DAPR Sample Application..."

# Check if DAPR is initialized
if ! dapr --version > /dev/null 2>&1; then
    echo "Error: DAPR CLI not found. Please install DAPR CLI first."
    echo "Visit: https://docs.dapr.io/getting-started/install-dapr-cli/"
    exit 1
fi

# Check if DAPR is initialized
if ! dapr status > /dev/null 2>&1; then
    echo "DAPR not initialized. Initializing DAPR..."
    dapr init
fi

echo "DAPR Status:"
dapr status

echo ""
echo "To run services with DAPR:"
echo "1. Backend API:"
echo "   cd src/backend && dapr run --app-id backend --app-port 3001 --dapr-http-port 3500 --components-path ../../components -- npm start"
echo ""
echo "2. Frontend (in another terminal):"
echo "   cd src/frontend && dapr run --app-id frontend --app-port 3000 --dapr-http-port 3501 --components-path ../../components -- npm start"
echo ""
echo "Services will be available at:"
echo "- Frontend: http://localhost:3000"
echo "- Backend API: http://localhost:3001"
echo "- DAPR Dashboard: http://localhost:8080"
echo ""
echo "To open DAPR Dashboard:"
echo "dapr dashboard"