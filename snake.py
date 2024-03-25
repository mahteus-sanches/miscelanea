import pygame
import time
import random
import sys

# Initialize Pygame
pygame.init()

# Define colors
white = (255, 255, 255)
yellow = (255, 255, 102)
black = (0, 0, 0)
red = (213, 50, 80)
green = (0, 255, 0)
blue = (50, 153, 213)

# Set display width and height
dis_width = 600
dis_height = 1000

# Create display
dis = pygame.display.set_mode((dis_width, dis_height))
pygame.display.set_caption('Snake Game')

clock = pygame.time.Clock()

snake_block = 10
snake_speed = 15

font_style = pygame.font.SysFont(None, 35)
score_font = pygame.font.SysFont(None, 35)

def display_score(score):
    value = score_font.render("Score: " + str(score), True, black)
    dis.blit(value, [dis_width - 150, 0])

def display_high_score(high_score, snake_alive):
    if not snake_alive:
        value = score_font.render("High Score: " + str(high_score), True, black)
        dis.blit(value, [10, 0])

def message(msg, color):
    mesg = font_style.render(msg, True, color)
    dis.blit(mesg, [dis_width / 12, dis_height / 3])

def save_high_score(score):
    with open('highscore.txt', 'w') as file:
        file.write(str(score))

def load_high_score():
    try:
        with open('highscore.txt', 'r') as file:
            return int(file.read())
    except FileNotFoundError:
        return 0

def gameLoop():
    game_over = False
    game_close = False

    x1 = dis_width / 2
    y1 = dis_height / 2

    x1_change = 0
    y1_change = 0

    snake_List = []
    Length_of_snake = 1

    foodx = round(random.randrange(0, dis_width - snake_block) / 10.0) * 10.0
    foody = round(random.randrange(0, dis_height - snake_block) / 10.0) * 10.0
    food_count = 0

    high_score = load_high_score()

    while not game_over:

        while game_close == True:
            dis.fill(blue)
            message("You Lost! Press Q to Quit or P to Play Again", red)
            pygame.display.update()

            for event in pygame.event.get():
                if event.type == pygame.KEYDOWN:
                    if event.key == pygame.K_q:
                        game_over = True
                        game_close = False
                    if event.key == pygame.K_p:
                        gameLoop()

        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                sys.exit()  # Quit the program if the close button is clicked
            if len(snake_List) < 2:
                if event.type == pygame.QUIT:
                    game_over = True
                if event.type == pygame.KEYDOWN:
                    if event.key == pygame.K_LEFT:
                        x1_change = -snake_block
                        y1_change = 0
                    elif event.key == pygame.K_RIGHT:
                        x1_change = snake_block
                        y1_change = 0
                    elif event.key == pygame.K_UP:
                        y1_change = -snake_block
                        x1_change = 0
                    elif event.key == pygame.K_DOWN:
                        y1_change = snake_block
                        x1_change = 0
            else:
                if event.type == pygame.QUIT:
                    game_over = True
                if event.type == pygame.KEYDOWN:
                    if event.key == pygame.K_LEFT:
                        print(snake_List[-1][0])
                        if snake_List[-1][0] - snake_block == snake_List[-2][0]:
                            break
                        else:
                            x1_change = -snake_block
                            y1_change = 0
                    elif event.key == pygame.K_RIGHT:
                        if snake_List[-1][0] + snake_block == snake_List[-2][0]:
                            break
                        else:
                            x1_change = snake_block
                            y1_change = 0
                    elif event.key == pygame.K_UP:
                        if snake_List[-1][1] - snake_block == snake_List[-2][1]:
                            break
                        else:
                            y1_change = -snake_block
                            x1_change = 0
                    elif event.key == pygame.K_DOWN:
                        if snake_List[-1][1] + snake_block == snake_List[-2][1]:
                            break
                        else:
                            y1_change = snake_block
                            x1_change = 0

        if x1 >= dis_width or x1 < 0 or y1 >= dis_height or y1 < 0:
            game_close = True
        x1 += x1_change
        y1 += y1_change
        dis.fill(blue)
        pygame.draw.rect(dis, green, [foodx, foody, snake_block, snake_block])
        snake_Head = []
        snake_Head.append(x1)
        snake_Head.append(y1)
        snake_List.append(snake_Head)
        if len(snake_List) > Length_of_snake:
            del snake_List[0]

        for x in snake_List[:-1]:
            if x == snake_Head:
                game_close = True

        for segment in snake_List:
            pygame.draw.rect(dis, black, [segment[0], segment[1], snake_block, snake_block])

        display_score(food_count)
        display_high_score(high_score, game_close)

        pygame.display.update()

        if x1 == foodx and y1 == foody:
            foodx = round(random.randrange(0, dis_width - snake_block) / 10.0) * 10.0
            foody = round(random.randrange(0, dis_height - snake_block) / 10.0) * 10.0
            Length_of_snake += 1
            food_count += 1
            if food_count > high_score:
                high_score = food_count
                save_high_score(high_score)

        clock.tick(snake_speed)

    pygame.quit()
    quit()


gameLoop()
