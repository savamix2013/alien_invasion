# Використовуємо офіційний образ Python
FROM python:3.12-slim

# Встановлюємо робочу директорію всередині контейнера
WORKDIR /app

# Встановлюємо системні бібліотеки, необхідні для роботи Pygame (SDL2)
RUN apt-get update && apt-get install -y \
    libsdl2-dev \
    libsdl2-image-dev \
    libsdl2-mixer-dev \
    libsdl2-ttf-dev \
    && rm -rf /var/lib/apt/lists/*

# Копіюємо всі файли гри в контейнер
COPY . /app

# Встановлюємо Pygame
RUN pip install --no-cache-dir pygame

# Команда для запуску гри
CMD ["python", "alien_invasion.py"]