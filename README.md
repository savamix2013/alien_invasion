# alien_invasion

In Alien Invasion, the user controls a rocket ship that appears at the beginning of the game at the bottom of the screen.
The player can move the ship left and right using the arrow keys on the keyboard or shoot by pressing the spacebar.
When the game starts, a fleet of aliens appears on the screen and begins to move sideways and downwards across the screen.
The player shoots and destroys the aliens.
If the user destroys all the aliens, a new armada appears, moving faster than the previous one.
When at least one alien touches the ship or reaches the bottom of the screen, the player loses the ship.
If the user loses three ships, the game is over.

## Як запустити на Mac за допомогою uv:

1. Створіть віртуальне середовище:
   `uv venv`
2. Активуйте його:
   `source .venv/bin/activate`
3. Встановіть залежності:
   `uv pip install -r requirements.txt`
4. Запустіть гру:
   `python alien_invasion.py`

## Запуск через Docker (Контейнер):

1. Зберіть образ:
   `docker build -t alien_invasion .`
2. Запустіть (Примітка: для роботи графічного інтерфейсу Pygame через Docker на Mac потрібен налаштований XQuartz):
   `docker run -it --rm alien_invasion`
