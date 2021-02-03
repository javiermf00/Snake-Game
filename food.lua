Food = {}

function Food:load()
    self.width = 16
    self.height = 16
end

function Food:update(dt)
   -- math.randomseed(os.time)
end

function Food:spawn()
    
end

function Food:draw()
    love.graphics.setColor(255, 0, 0, 1)
    love.graphics.rectangle('fill', 250, 250, self.width, self.height)
end