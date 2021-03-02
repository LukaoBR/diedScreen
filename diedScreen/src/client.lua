local screenW, screenH = guiGetScreenSize()
local resW, resH = 1024, 768
local x,y = (screenW/resW), (screenH/resH)

cor = {}
function dxDrawDeadPanel ()
    dxDrawImage(screenW * 0.0000, screenH * 0.0000, screenW * 1.0000, screenH * 1.0000, "img/background.png", 0, 0, 0, tocolor(123, 123, 123, 255), false)
    dxDrawRectangle(screenW * 0.2811, screenH * 0.2435, screenW * 0.2204, screenH * 0.2852, cor[1], false)
    dxDrawRectangle(screenW * 0.5139, screenH * 0.2435, screenW * 0.2204, screenH * 0.2852, cor[2], false)
    dxDrawRectangle(screenW * 0.5139, screenH * 0.5677, screenW * 0.2204, screenH * 0.2852, cor[4], false)
    dxDrawRectangle(screenW * 0.2811, screenH * 0.5677, screenW * 0.2204, screenH * 0.2852, cor[3], false)
    cor[1] = tocolor(0, 97, 255, 255)
    if mouseOnElement(screenW * 0.2884, screenH * 0.2578, screenW * 0.2057, screenH * 0.2578) then 
        cor[1] = tocolor(0, 160, 255, 255)
    end
    dxDrawImage(screenW * 0.2884, screenH * 0.2578, screenW * 0.2057, screenH * 0.2578, "img/img1.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
    cor[2] = tocolor(0, 97, 255, 255)
    if mouseOnElement(screenW * 0.5212, screenH * 0.2578, screenW * 0.2057, screenH * 0.2578) then 
        cor[2] = tocolor(0, 160, 255, 255)
    end
    dxDrawImage(screenW * 0.5212, screenH * 0.2578, screenW * 0.2057, screenH * 0.2578, "img/src/img2.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
    cor[3] = tocolor(0, 97, 255, 255)
    if mouseOnElement(screenW * 0.2884, screenH * 0.5807, screenW * 0.2057, screenH * 0.2578) then 
        cor[3] = tocolor(0, 160, 255, 255)
    end
    dxDrawImage(screenW * 0.2884, screenH * 0.5807, screenW * 0.2057, screenH * 0.2578, "img/img3.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
    cor[4] = tocolor(0, 97, 255, 255)
    if mouseOnElement(screenW * 0.5212, screenH * 0.5807, screenW * 0.2057, screenH * 0.2578) then 
        cor[4] = tocolor(0, 160, 255, 255)
    end
    dxDrawImage(screenW * 0.5212, screenH * 0.5807, screenW * 0.2057, screenH * 0.2578, "img/img4.png", 0, 0, 0, tocolor(255, 255, 255, 255), false)
    dxDrawText("Los Santos", screenW * 0.3382, screenH * 0.2148, screenW * 0.4414, screenH * 0.2383, tocolor(255, 255, 255, 255), 1.20, "default-bold", "center", "center", false, false, false, false, false)
    dxDrawText("Las Vegas", screenW * 0.5754, screenH * 0.2148, screenW * 0.6786, screenH * 0.2383, tocolor(255, 255, 255, 255), 1.20, "default-bold", "center", "center", false, false, false, false, false)
    dxDrawText("San Fierro 2", screenW * 0.5739, screenH * 0.5365, screenW * 0.6772, screenH * 0.5599, tocolor(255, 255, 255, 255), 1.20, "default-bold", "center", "top", false, false, false, false, false)
    dxDrawText("San Fierro", screenW * 0.3367, screenH * 0.5365, screenW * 0.4400, screenH * 0.5599, tocolor(255, 255, 255, 255), 1.20, "default-bold", "center", "top", false, false, false, false, false)
end

function dxDrawDeadPanel2 ()
    dxDrawImage(screenW * 0.0000, screenH * 0.0000, screenW * 1.0000, screenH * 1.0000, "img/background.png", 0, 0, 0, tocolor(123, 123, 123, 255), false)
end

function onDead()
    addEventHandler("onClientRender", getRootElement(), dxDrawDeadPanel)
    showCursor(true)
    showChat(false)
    end
addEventHandler ( "onClientPlayerWasted", getLocalPlayer(), onDead )

function mouseOnElement (x,y,w,h)
	if isCursorShowing() then
		local mx, my = getCursorPosition()
		local resx, resy = guiGetScreenSize()
		mousex, mousey = mx*resx, my*resy
		if mousex > x and mousex < x + w and mousey > y and mousey < y + h then
			return true
		else
			return false
		end
	end
end

function spawnOnCity (_,state)
	if isFunction("onClientRender", getRootElement(), dxDrawDeadPanel) then
		if state == "down" then
            if mouseOnElement(screenW * 0.2884, screenH * 0.2578, screenW * 0.2057, screenH * 0.2578) then
                removeEventHandler("onClientRender", getRootElement(), dxDrawDeadPanel)
                addEventHandler("onClientRender", getRootElement(), dxDrawDeadPanel2)
                showCursor(false)
                showChat(true)
                setTimer(function()
                    removeEventHandler("onClientRender", getRootElement(), dxDrawDeadPanel2)
                    setElementPosition ( localPlayer, 1479.93347, -1742.42957, 13.54688 )
                end, 5000, 1)
            elseif mouseOnElement(screenW * 0.5212, screenH * 0.2578, screenW * 0.2057, screenH * 0.2578) then
                removeEventHandler("onClientRender", getRootElement(), dxDrawDeadPanel)
                addEventHandler("onClientRender", getRootElement(), dxDrawDeadPanel2)
                showCursor(false)
                showChat(true)
                setTimer(function()
                    removeEventHandler("onClientRender", getRootElement(), dxDrawDeadPanel2)
                    setElementPosition ( localPlayer, 1479.93347, -1742.42957, 13.54688 )
                end, 5000, 1)
            elseif mouseOnElement(screenW * 0.2884, screenH * 0.5807, screenW * 0.2057, screenH * 0.2578) then
                removeEventHandler("onClientRender", getRootElement(), dxDrawDeadPanel)
                addEventHandler("onClientRender", getRootElement(), dxDrawDeadPanel2)
                showCursor(false)
                showChat(true)
                setTimer(function()
                    removeEventHandler("onClientRender", getRootElement(), dxDrawDeadPanel2)
                    setElementPosition ( localPlayer, 1479.93347, -1742.42957, 13.54688 )
                end, 5000, 1)
            elseif mouseOnElement(screenW * 0.5212, screenH * 0.5807, screenW * 0.2057, screenH * 0.2578) then
                removeEventHandler("onClientRender", getRootElement(), dxDrawDeadPanel)
                addEventHandler("onClientRender", getRootElement(), dxDrawDeadPanel2)
                showCursor(false)
                showChat(true)
                setTimer(function()
                    removeEventHandler("onClientRender", getRootElement(), dxDrawDeadPanel2)
                    setElementPosition ( localPlayer, 1479.93347, -1742.42957, 13.54688 )
                end, 5000, 1)
			end
		end
	end
end
addEventHandler("onClientClick", getRootElement(), spawnOnCity)

function isFunction(sEventName, pElementAttachedTo, func)
    if type(sEventName) == 'string' and isElement(pElementAttachedTo) and
        type(func) == 'function' then
        local painelAberto = getEventHandlers(sEventName, pElementAttachedTo)
        if type(painelAberto) == 'table' and #painelAberto > 0 then
            for i, v in ipairs(painelAberto) do
                if v == func then return true end
            end
        end
    end
    return false
end
