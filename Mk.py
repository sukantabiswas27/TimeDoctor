import pyautogui
import random
import time

screen_width, screen_height = pyautogui.size()

loop_duration = 2 * 60 * 60

move_duration = 0.5

start_time = time.time()

while time.time() - start_time < loop_duration:
    x_pos = random.randint(0, screen_width)
    y_pos = random.randint(0, screen_height)

    pyautogui.moveTo(x_pos, y_pos, duration=move_duration)

    time.sleep(random.uniform(20, 20))
