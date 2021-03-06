-- Set Position of Chat-Frame and load the other Frame-functions. Hook very important otherwise resets on reload/relog
hooksecurefunc("FCF_RestorePositionAndDimensions", function(...)
	ChatFrame1:ClearAllPoints()
	ChatFrame1:SetPoint("BOTTOMLEFT", UIParent, 30, 30)
	ChatFrame1:SetWidth(510)
	ChatFrame1:SetHeight(150)
	ChatFrame1:SetUserPlaced(true)
	loadFrames()
end)

-- Set Positions of Player- and Target-Frame
function unitFrames()
	PlayerFrame:ClearAllPoints() 
		PlayerFrame:SetPoint("CENTER",UIParent,-112,-176)PlayerFrame:SetUserPlaced(true)
	TargetFrame:ClearAllPoints() 
		TargetFrame:SetPoint("CENTER",UIParent,112,-176)TargetFrame:SetUserPlaced(true)
end

-- Set Poisition of RXP-Arrow
function rxpArrow()
	RXPG_ARROW:ClearAllPoints()
	RXPG_ARROW:SetPoint("BOTTOMLEFT",PlayerFrame,"TOPLEFT",45,15)
end

-- Set Position of RXP-Guide-Frame
function rxpGuideFrame()
	RXPFrame:ClearAllPoints()
	RXPFrame:SetPoint("LEFT",0,-125)
end

--[[ Set Position of Details-Frame(1)
function detailsFrame1()
	DetailsBaseFrame1:ClearAllPoints()
	DetailsBaseFrame1:SetPoint("BOTTOMRIGHT")
end

function detailsFrame2()
	DetailsBaseFrame1:ClearAllPoints()
	DetailsBaseFrame1:SetPoint("BOTTOMRIGHT")
end ]]

-- Set Position of UnitScan-Frame
function unitscanFrame()
	unitscan_button:ClearAllPoints()
	unitscan_button:SetPoint("BOTTOM",0,80)
end

-- manually load functions to set positions of Player-, Target-, RXP-Arrow-, RXP-Guide-and Details1-Frames
function loadFrames()
	unitFrames()
	rxpArrow()
	rxpGuideFrame()
--	detailsFrame1()
	unitscanFrame()
end
