Snake = {}

function Snake:load()
    self.x = Grid.tileSize
    self.y = Grid.tileSize
    self.width = Grid.tileSize
    self.height = Grid.tileSize
    self.xspeed = Grid.tileSize
    self.yspeed = 0
    self.tailLength = 0
    self.Tail = {}
end

function Snake:update()

    self.lastX = self.x
    self.lastY = self.y
    
    self.x = self.x + self.xspeed
    self.y = self.y + self.yspeed
    self:updateTail()
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

    for _, value in ipairs(self.Tail) do
        love.graphics.rectangle('fill', value[1], value[2], self.width, self.height)
    end
end

function Snake:updateTail()
    for _, value in ipairs(self.Tail) do
        local x, y = value[1], value[2]
        value[1], value[2] = self.lastX, self.lastY
        self.lastX, self.lastY = x, y
    end
end