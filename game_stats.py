class GameStats:
    """Відстеження статистики для гри Alien Invasion."""
 
    def __init__(self, ai_game):
        """Ініціалізувати статистику."""
        self.settings = ai_game.settings
        self.reset_stats()

        # Розпочати гру в активному стані.
        self.game_active = True
 

    def reset_stats(self):
        """Ініціалізувати статистику, що може змінюватися в грі."""
        self.ships_left = self.settings.ship_limit