Grid = {}

function Grid:load()
    self.tileSize = 16
    self.maxTilesX = love.graphics.getWidth() / self.tileSize
    self.maxTilesY = love.graphics.getHeight() / self.tileSize
    self:spawnFood()
end

function Grid:draw()
    love.graphics.setColor(0, 0, 0, 1)
    self:drawGrid()
end

function Grid:drawGrid()
    for y = 1, self.maxTilesY do
        for x = 1, self.maxTilesX do
            love.graphics.rectangle('line', (x - 1) * self.tileSize, (y - 1) * self.tileSize, self.tileSize, self.tileSize)
        end
    end
    love.graphics.setColor(255, 0, 0, 1)
    love.graphics.rectangle('fill', self.foodX, self.foodY, self.tileSize, self.tileSize)
end

function Grid:spawnFood()
    math.randomseed(os.time())
    self.foodX = roundFood(math.random(love.graphics.getWidth() - 16), self.tileSize)
    self.foodY = roundFood(math.random(love.graphics.getHeight() - 16), self.tileSize)
end

function roundFood(numRound, multiple)
    local num = numRound % multiple
    if num == 0 then
        return numRound
    end
    return numRound + multiple - num
end
