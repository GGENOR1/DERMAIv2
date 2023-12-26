# Используем базовый образ Python
FROM python:3.11

# Устанавливаем зависимости
WORKDIR /app
COPY requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# Копируем все файлы приложения
COPY backend /app/backend




CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]