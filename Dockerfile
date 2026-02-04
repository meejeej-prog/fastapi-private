FROM python:3.11-slim  # 최신 안정화 버전 권장 (3.14는 아직 실험적일 수 있음)
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]