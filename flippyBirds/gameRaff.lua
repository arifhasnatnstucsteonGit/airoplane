
--physics essential
local physics =require "physics"
physics.start()


local storyboard =require ("storyboard")
local scene =storyboard.newScene()


--background
function scene:createScene(event)
		 local screenGroup =self.view
		 local background=display.newImage("14.jpg")
			background.width=700
			background.height=1100
			background.speed=5
 
end

function scene:enterScene(event)

end

-- local background1=display.newImage("14.jpg")
-- background1.width=700
-- background1.height=1100
-- background1.speed=5
-- local city1=display.newImage("city1.png")
-- city1.x=0
-- city1.y=460
-- city1.width=700
-- city1.height=1000







--jet for image 
local jet=display.newImage("plane1.png")
jet.x=50
jet.y=100
--now action 
-- physics.addBody(jet,"dynamic", {density=0, bounce=0 ,friction=0 ,radius=12})
physics.addBody(jet)

--jet function

function activateJets(self,event)
	
	self:applyForce(0.001,-0.2,self.x,self.y)
	
 

end
function activateJets1(self,event)
	
	self:applyForce(-.001,0.2,self.x,self.y)
	
 

end

function touchScreen(event)
  -- print("touch")
		  if event.phase == "began" then 
			jet.enterFrame=activateJets
			Runtime:addEventListener("enterFrame",jet)
			
		  end
		  
		  
		  if event.phase =="ended" then
		  jet.enterFrame=activateJets1
		  Runtime:addEventListener("enterFrame",jet)
		  end
  
  
end

Runtime:addEventListener("touch",touchScreen)








function scrollCity(self,event)
	
	
	if self.x<-10 then
	
		self.x=270
	else	
        self.x=self.x-2
	end	

end
function scrollCity1(self,event)
	
	
	if self.y<-540 then
	
		self.y=540
	else	
        self.y=self.y-5
	end	

end


background.enterFrame = scrollCity
Runtime:addEventListener("enterFrame",background)
 -- background1.enterFrame = scrollCity1
 -- Runtime:addEventListener("enterFrame",background1)