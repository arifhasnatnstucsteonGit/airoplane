
local storyboard =require ("storyboard")
local scene =storyboard.newScene()







 
function scene:createScene(event)
		 local screenGroup =self.view
		  background=display.newImage("3.PNG")
		  background.width=540
		  background.height=960
		
			
	
 
end











function scene:enterScene(event)
     
end


function scene:exitScene(event)

end

function scene:destroyScene(event)

end


scene:addEventListener("createScene",scene)
scene:addEventListener("enterScene",scene)
scene:addEventListener("exitScene",scene)
scene:addEventListener("destroyScene",scene)


return scene

