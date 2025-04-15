xieyezi@xieyezi-home-pc:~/mcp-server$ cat Dockerfile 
FROM python:3.11

WORKDIR /app

RUN pip install mcpo uv cryptography pygments

COPY ./bocha-search-mcp ./bocha-search-mcp/

CMD ["uvx", "mcpo", "--host", "0.0.0.0", "--port", "8000", "--api-key", "chun138132.", "--config", "./config.json"]