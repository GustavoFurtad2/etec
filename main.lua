-- main.lua

function love.load()
    -- Configurações da tela
    love.window.setTitle("Sistema de Física Simples")
    love.graphics.setBackgroundColor(0.2, 0.3, 0.8)
    
    -- Player (quadrado)
    player = {
        x = 400,
        y = 200,
        width = 30,
        height = 30,
        velX = 0,
        velY = 0,
        speed = 200,
        jumpPower = 400,
        onGround = false,
        color = {1, 0.2, 0.2}
    }
    
    -- Física
    gravity = 800
    friction = 0.85
    
    -- Pisos (plataformas)
    floors = {
        -- Piso principal (chão)
        {x = 0, y = 550, width = 800, height = 50},
        -- Plataformas laterais
        {x = 50, y = 450, width = 150, height = 20},
        {x = 600, y = 400, width = 150, height = 20},
        {x = 300, y = 350, width = 200, height = 20},
        {x = 100, y = 250, width = 100, height = 20},
        {x = 550, y = 200, width = 120, height = 20},
        -- Paredes laterais
        {x = -10, y = 0, width = 10, height = 600},
        {x = 800, y = 0, width = 10, height = 600},
        -- Teto
        {x = 0, y = -10, width = 800, height = 10}
    }
end

function love.update(dt)
    -- Input do jogador
    handleInput(dt)
    
    -- Aplicar gravidade
    player.velY = player.velY + gravity * dt
    
    -- Aplicar fricção horizontal
    player.velX = player.velX * friction
    
    -- Movimento horizontal
    local newX = player.x + player.velX * dt
    if not checkCollisionX(newX, player.y) then
        player.x = newX
    else
        player.velX = 0
    end
    
    -- Movimento vertical
    local newY = player.y + player.velY * dt
    local collision, floorY = checkCollisionY(player.x, newY)
    
    if collision then
        if player.velY > 0 then -- Caindo
            player.y = floorY - player.height
            player.velY = 0
            player.onGround = true
        else -- Subindo (bateu no teto)
            player.y = floorY + floors[collision].height
            player.velY = 0
        end
    else
        player.y = newY
        player.onGround = false
    end
    
    -- Limitar posição na tela
    player.x = math.max(0, math.min(player.x, love.graphics.getWidth() - player.width))
end

function handleInput(dt)
    -- Movimento horizontal
    if love.keyboard.isDown("left", "a") then
        player.velX = player.velX - player.speed * dt
    end
    if love.keyboard.isDown("right", "d") then
        player.velX = player.velX + player.speed * dt
    end
    
    -- Pulo
    if love.keyboard.isDown("space", "up", "w") and player.onGround then
        player.velY = -player.jumpPower
        player.onGround = false
    end
end

function checkCollisionX(newX, y)
    -- Verifica colisão horizontal
    for i, floor in ipairs(floors) do
        if rectangleCollision(newX, y, player.width, player.height, 
                            floor.x, floor.y, floor.width, floor.height) then
            return true
        end
    end
    return false
end

function checkCollisionY(x, newY)
    -- Verifica colisão vertical
    for i, floor in ipairs(floors) do
        if rectangleCollision(x, newY, player.width, player.height, 
                            floor.x, floor.y, floor.width, floor.height) then
            return i, floor.y
        end
    end
    return false, 0
end

function rectangleCollision(x1, y1, w1, h1, x2, y2, w2, h2)
    -- Detecção de colisão AABB (Axis-Aligned Bounding Box)
    return x1 < x2 + w2 and
           x1 + w1 > x2 and
           y1 < y2 + h2 and
           y1 + h1 > y2
end

function love.draw()
    -- Desenhar pisos
    love.graphics.setColor(0.3, 0.7, 0.3)
    for i, floor in ipairs(floors) do
        love.graphics.rectangle("fill", floor.x, floor.y, floor.width, floor.height)
        -- Contorno
        love.graphics.setColor(0.2, 0.5, 0.2)
        love.graphics.rectangle("line", floor.x, floor.y, floor.width, floor.height)
        love.graphics.setColor(0.3, 0.7, 0.3)
    end
    
    -- Desenhar player
    love.graphics.setColor(player.color)
    love.graphics.rectangle("fill", player.x, player.y, player.width, player.height)
    
    -- Contorno do player
    love.graphics.setColor(0.8, 0.1, 0.1)
    love.graphics.rectangle("line", player.x, player.y, player.width, player.height)
    
    -- Informações na tela
    love.graphics.setColor(1, 1, 1)
    love.graphics.print("Use WASD ou Setas para mover", 10, 10)
    love.graphics.print("Espaço ou W/Seta para cima para pular", 10, 30)
    love.graphics.print("Velocidade X: " .. math.floor(player.velX), 10, 60)
    love.graphics.print("Velocidade Y: " .. math.floor(player.velY), 10, 80)
    love.graphics.print("No chão: " .. tostring(player.onGround), 10, 100)
    love.graphics.print("Posição: (" .. math.floor(player.x) .. ", " .. math.floor(player.y) .. ")", 10, 120)
end

function love.keypressed(key)
    if key == "escape" then
        love.event.quit()
    end
    
    -- Reset da posição do player
    if key == "r" then
        player.x = 400
        player.y = 200
        player.velX = 0
        player.velY = 0
    end
end