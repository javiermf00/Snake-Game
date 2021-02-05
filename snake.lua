Snake = {}

function Snake:load()
    self.x = Grid.tileSize
    self.y = Grid.tileSize
    self.width = Grid.tileSize
    self.height = Grid.tileSize
    self.xspeed = Grid.tileSize
    self.yspeed = 0
end

function Snake:update()
    --the snake constantly moves in one direction
    self.x = self.x + self.xspeed
    self.y = self.y + self.yspeed
end

function Snake:direction(x, y)
    self.xspeed = x
    self.yspeed = y
end

function Snake:grow()
    
end

function Snake:draw()
    love.graphics.setColor(255, 255, 255, 1)
    love.graphics.rectangle('fill', self.x, self.y, self.width, self.height)
end