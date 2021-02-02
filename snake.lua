Snake = {}

function Snake:load()
    self.x = love.graphics.getWidth() / 2
    self.y = love.graphics.getHeight() / 2
    self.width = 16
    self.height = 16
    self.xspeed = 100
    self.yspeed = 0
end

function Snake:update(dt)
    --the snake constantly moves in one direction
    self.x = self.x + self.xspeed * dt
    self.y = self.y + self.yspeed * dt
end

function Snake:direction(x, y)
    self.xspeed = x
    self.yspeed = y
end

function Snake:draw()
    love.graphics.setColor(255, 255, 255, 1)
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end