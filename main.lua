require('snake')
require('food')
require('grid')

function love.load()
    Snake:load()
    Food:load()
    Grid:load()
end

function love.update(dt)
    Snake:update(dt)
    Food:update(dt)
end

function love.keypressed(key)
    if key == 'w' then
        Snake:direction(0,-100)
    elseif key == 's' then
        Snake:direction(0,100)
    elseif key == 'd' then
        Snake:direction(100,0)
    elseif key == 'a' then
        Snake:direction(-100,0)
    elseif key == 'escape' then
        love.event.quit()
    end
end

function love.draw()
    Snake:draw()
    Food:draw()
    Grid:draw()
end