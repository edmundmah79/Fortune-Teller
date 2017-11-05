math.randomseed(os.time())
display.setStatusBar(display.HiddenStatusBar)
local Teller = display.newImage("Fortuneteller2.png", 160, 240)
local Fortune = display.newImage("Tarotcard.png", 180, 420)
local Fortune2 = display.newImage("Tarotcard.png", 145, 435)
local Fortune3 = display.newImage("Tarotcard1.png", 110, 420)
local Hand = display.newImage("Hand.png", 110, 370)
local Sleeve = display.newImage("Sleeve.png", 112, 312)
local responses = {}
	
	responses[1] = "It is certain"
	responses[2] = "It is decidedly so"
	responses[3] = "Without a doubt"
	responses[4] = "Yes definitely"
	responses[5] = "You may rely on it"
	responses[6] = "As I see it, yes"
	responses[7] = "Most likely"
	responses[8] = "Outlook good"
	responses[9] = "Yes"
	responses[10] = "Signs point to yes"
	responses[11] = "Reply hazy try again"
	responses[12] = "Ask again later"
	responses[13] = "Better not tell you now"
	responses[14] = "Cannot predict now"
	responses[15] = "Concentrate and ask again"
	responses[16] = "Don't count on it"
	responses[17] = "My reply is no"
	responses[18] = "My sources say no"
	responses[19] = "Outlook not so good"
	responses[20] = "Very doubtful"

local function response() 
	display.newImage("background.png", 160, 240)
	display.newImage("octohedron.png", 160, 240)
	display.newText(responses[math.random(1,20)], 160, 240, "Arial", 10 )
end
local function flip()
	local eightback = display.newImage("back.png", 160, 240)
	transition.to(eightback,{time = 1000, xScale=1.5, yScale=1.5})
	transition.from(eightback,{time = 1000, xScale=1.5, yScale=1.5, onComplete = response})
end

Runtime:addEventListener( "tap", flip)

