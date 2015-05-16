
 
physics =require "physics"
physics.start()


storyboard =require ("storyboard")
scene =storyboard.newScene()







 
function scene:createScene(event)
		  local screenGroup =self.view
		  background=display.newImage("14.jpg")
		  screenGroup:insert(background)
		  
			background.width=700
			background.height=1100
			background.speed=5
			
				
		jet=display.newImage("plane1.png")
		screenGroup:insert(jet)
		jet.x=100
		jet.y=200
		--now action 
		physics.addBody(jet,"dynamic", {density=.1, bounce=.1 ,friction=0.2 ,radius=12})
         --physics.addBody(jet)
 
end






							function activateJets(self,event)
								
								self:applyForce(0,-1.5,self.x,self.y)
								
							 

							end
							function activateJets1(self,event)
								
								self:applyForce(0,1.5,self.x,self.y)
								
							 

							end

							function touchScreen(event)
							          
									  if event.phase == "began" then 
									  print("touch")
										jet.enterFrame=activateJets
										Runtime:addEventListener("enterFrame",jet)
										
									  end
									  
									  
									  if event.phase =="ended" then
									   print("touch end")
									  -- jet.enterFrame=activateJets1
									  -- Runtime:addEventListener("enterFrame",jet)
									  -- jet.enterFrame=activateJets
									  -- Runtime:removeEventListener("enterFrame",jet)
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







function scene:enterScene(event)
      background.enterFrame = scrollCity
      Runtime:addEventListener("enterFrame",background)
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







