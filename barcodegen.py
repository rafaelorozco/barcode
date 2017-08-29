import random, pygame, math, sys




def terminate():
    pygame.quit()
    sys.exit()

def main():

    pygame.init()
    #pygame.mixer.init()

    FPSCLOCK = pygame.time.Clock()
    dispSurf = pygame.display.set_mode((winWidth, winHeight))
    #basFont = pygame.font.Font('freesansbold.ttf',18)
    pygame.display.set_caption('barcode Rafael Orozco')

    while(True):
        draw()    


def draw():
 

    update()


    #pygame.image.save(dispSurf,"frames/fr"+str(numFrame)+".jpg")
    numFrame+=1

    
    

        
    for event in pygame.event.get():
        if event.type == QUIT:
                terminate()                 
        elif event.type == KEYDOWN:
            if event.key == K_ESCAPE:
                terminate()
                 
         
    
    pygame.display.update()
    #dispSurf.fill(WHITE)
    FPSCLOCK.tick(FPS)


if __name__ == '__main__':
    main()
    


