from fastapi import FastAPI
from fastapi.responses import JSONResponse

# Create FastAPI application instance
app = FastAPI(
    title="DAPR Sample Backend API",
    description="A sample FastAPI backend service for DAPR demonstration",
    version="1.0.0"
)

@app.get("/")
async def read_root():
    """
    Hello World endpoint
    Returns a simple greeting message
    """
    return {"message": "Hello World"}

@app.get("/hello")
async def hello_world():
    """
    Alternative hello world endpoint
    """
    return {"greeting": "Hello World", "service": "DAPR Sample Backend"}

@app.get("/health")
async def health_check():
    """
    Health check endpoint for service monitoring
    """
    return {"status": "healthy", "service": "backend"}

if __name__ == "__main__":
    import uvicorn
    uvicorn.run(app, host="0.0.0.0", port=3001)