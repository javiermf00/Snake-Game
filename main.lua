require('snake')
require('food')
require('grid')

function love.load()
    interval = 20
    Grid:load()
    Snake:load()
end

function love.update(dt)
    interval = interval - 1
    if interval < 0 then
        Snake:update()
        interval = 20
    end
end

function love.keypressed(key)
    if key == 'w' then
        Snake:direction(0,-16)
    elseif key == 's' then
        Snake:direction(0,16)
    elseif key == 'd' then
        Snake:direction(16,0)
    elseif key == 'a' then
        Snake:direction(-16,0)
    elseif key == 'escape' then
        love.event.quit()
    elseif key == 'k' then
        Grid:spawnFood()
    end
end

function love.draw()
    Grid:draw()
    Snake:draw()
end