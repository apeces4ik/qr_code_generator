# Базовый образ Python
FROM python:3.10-slim

# Установка рабочей директории
WORKDIR /app

# Копирование файлов проекта
COPY . .

# Установка зависимостей
RUN pip install --no-cache-dir -r requirements.txt

# Открытие порта для Flask
EXPOSE 5000

# Команда для запуска приложения
CMD ["python", "main.py"]
