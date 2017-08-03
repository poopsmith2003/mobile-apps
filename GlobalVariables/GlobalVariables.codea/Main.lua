-- Testjoe B

-- Created by: Ben. D
-- Created on august 2 2017
-- Created for: Mobile Apps Summer Camp
-- This programs displays a image and moves it around the screen

-- Use this function to perform your initial setup
-- Happens once, and only once

-- global varables
shipposition = vec2()
function setup()
    
    -- setup dispaly and drawing functions
    supportedOrientations(LANDSCAPE_ANY)
    -- get rid of right console, so only fullscreen shows
    displayMode(FULLSCREEN)
    
    -- Housekeeping, sets style to null
    noFill()
    noSmooth()
    noStroke()
    
    -- Takes the above commands and pushes them on the stack for the styles to be useable
    pushStyle()
    
    shipPosition = vec2(WIDTH/2, HEIGHT/2)
end

-- This function gets called once every frame
-- Happens 60x/second
function draw()
    
    shipPosition.x = shipPosition.x + (Gravity.x*30)
    shipPosition.y = shipPosition.y + (Gravity.y*30)

sprite("SpaceCute:Background", 512,384,1098,758)    
sprite("Tyrian Remastered:Boss B", shipPosition.x, shipPosition.y)
sprite("Space Art:Red Ship")
end 