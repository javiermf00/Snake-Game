Grid = {}

function Grid:load()
    self.tileSize = 16
    self.maxTilesX = love.graphics.getWidth() / self.tileSize
    self.maxTilesY = love.graphics.getHeight() / self.tileSize
end

function Grid:update(dt)
    
end

function Grid:draw()
    love.graphics.setColor(0, 255, 153, 1)
    self:drawGrid()
end

function Grid:drawGrid()
    for y = 1, self.maxTilesY do

        for x = 1, self.maxTilesX do
            
            love.graphics.rectangle('line', (x - 1) * self.tileSize, (y - 1) * self.tileSize, self.tileSize, self.tileSize)
        end
    end
end
