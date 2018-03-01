-----------------------------------------------------------------------------------------
--
-- Created by: Mouaffak Koubeisy
-- Created on: Feb 28 2018
-- This code calculates the area of a circle by the inputed diameter
-----------------------------------------------------------------------------------------
local diameterOfCircleTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 450, 75 )
diameterOfCircleTextField.id = "length textField"

local circumferenceOfCircleTextField = display.newText( "Enter Diameter", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 75 )
circumferenceOfCircleTextField.id = "area textField"
circumferenceOfCircleTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "./assets/sprites/enterButton.png", 406, 157 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 
local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local diameterOfCircle
    local circumferenceOfCircle
 
    diameterOfCircle = diameterOfCircleTextField.text
    circumferenceOfCircle = 2 * 3.14159265359 * ( diameterOfCircle/2 )
    -- print( circumferenceOfCircle )
    circumferenceOfCircleTextField.text = "The area is " .. circumferenceOfCircle

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )