MutedCvar = CreateClientConVar( "mg_jukebox_station", 0, true, false )

local SongTable = {}
SongTable = {
{Name = "It's The End Of The World As We Know It - R.E.M", Song = "EndOfWorld", Time = 243},
{Name = "Always - Erasure", Song = "Always", Time = 222},
{Name = "Pokemon Rap - Bill Cosby", Song = "Pokemon", Time = 90},
{Name = "Master Exploder - Tenacious D", Song = "Master", Time = 144},
{Name = "E = MC Vagina", Song = "Vagina", Time = 190},
{Name = "Runaway - DaGrahamCracker", Song = "Runaway", Time = 182},
{Name = "Happy Together - The Turtles", Song = "Happy", Time = 172},
{Name = "Where It's At - Beck", Song = "Where", Time = 333},
{Name = "Don't Stop Me Now - Queen", Song = "Stop", Time = 217},
{Name = "Stairway to Heaven - Led Zeppelin", Song = "Stairway", Time = 482},
{Name = "Windows Error Remix", Song = "Windows", Time = 300},
{Name = "Invaders Must Die - The Prodigy", Song = "Invaders", Time = 205},
{Name = "This Is A Mans World - James Brown", Song = "Mans", Time = 180},
{Name = "Don't Stop Believing - Journey", Song = "Believing", Time = 250},
{Name = "Checkmate - Girls' Generation", Song = "CheckmateGG", Time = 214},
{Name = "Stop Nagging Me!", Song = "StopNagging", Time = 185},
{Name = "Lucifer - Shinee", Song = "LuciferSh", Time = 237},
{Name = "Run Devil Run - Girls' Generation", Song = "RunDevilGG", Time = 207},
{Name = "Oh! - Girls' Generation", Song = "OhGirlsGen", Time = 204},
{Name = "Sorry - Super Junior", Song = "SorrySJ", Time = 253},
{Name = "Lead Me - Sistar", Song = "LeadMe", Time = 221},
{Name = "Triple Baka", Song = "TripleBaka", Time = 213},
{Name = "Bloody Mary - Nightcore", Song = "BloodyMaryN", Time = 233},
{Name = "Telepathy - Girl's Day", Song = "TelepathyGD", Time = 186},
{Name = "My Lifestyle - Jessica", Song = "MyLifestyle", Time = 185},
{Name = "The Boys - Girls' Generation", Song = "TheBoysGG", Time = 256},
{Name = "Dusk Maiden OP", Song = "DuskMaidOp", Time = 234},
{Name = "Mirai Nikki OP", Song = "MiraiNikkiOp", Time = 238},
{Name = "Kiss x Sis OP", Song = "KissXSis", Time = 219},
{Name = "Kore wa Zombie OP", Song = "KoreWaZOp", Time = 245},
{Name = "Toradora OP", Song = "ToradoraOP", Time = 238},
{Name = "Rosario + Vampire OP", Song = "RosarioVampireOP", Time = 274},
{Name = "Fuckin' Problems - A$AP", Song = "ProblemsA", Time = 237},
{Name = "The Magic - Macklemore", Song = "TheMagic", Time = 263},
{Name = "Wings - Macklemore", Song = "WingsMM", Time = 332},
{Name = "Under the Sea - Timeflies", Song = "UnderTheSeaTF", Time = 231},
{Name = "Freaks and Geeks - Childish Gambino", Song = "FreaksGeeksCG", Time = 226},
{Name = "Fuck Your Stuff - P.O.S.", Song = "FYSPOS", Time = 241},
{Name = "The Thing I Hate - Stabbing Westward", Song = "TheThingSW", Time = 215},
{Name = "Push It - Static-X", Song = "PushItSX", Time = 154},
{Name = "Dragula - Rob Zombie", Song = "DragulaRZ", Time = 229},
{Name = "Superbeast - Rob Zombie", Song = "SuperbeastRZ", Time = 221},
{Name = "Duality - Slipknot", Song = "DualityS", Time = 214},
{Name = "Coming Undone - Korn", Song = "ComingUndK", Time = 335},
{Name = "Rollin - Limp Bizkit", Song = "RollinLB", Time = 232},
{Name = "Youth Of The Nation - P.O.D.", Song = "YouthNationPOD", Time = 245},
{Name = "Ich Will - Rammstein", Song = "IchWillRam", Time = 245},
{Name = "Du Hast - Rammstein", Song = "DuHastRam", Time = 234},
{Name = "6'7'' Freestyle - Los", Song = "sixsevenlos", Time = 162},
{Name = "No Lie - Los", Song = "NoLieLos", Time = 205},
{Name = "Up Up & Away - Kid Cudi", Song = "UpUpAwayKidCudi", Time = 227},
{Name = "Dat New - Kid Cudi", Song = "DatNewKidC", Time = 256},
{Name = "Erase Me - Kid Cudi", Song = "EraseKidC", Time = 196},
{Name = "If Ever I Stray - Frank Turner", Song = "IfStrayFT", Time = 175},
{Name = "Ho Hey - The Lumineers", Song = "HoHeyTL", Time = 161},
{Name = "Madness - Muse", Song = "Madness", Time = 281},
{Name = "Flip Cup - Knowmads", Song = "FlipCup", Time = 286},
{Name = "Mind Your Manners - Chiddy Bang", Song = "MindManners", Time = 196},
{Name = "One Day - Matisyahu", Song = "OneDay", Time = 207},
{Name = "Aesop Rock - None Shall Pass", Song = "NonePass", Time = 243},
{Name = "Chief Keef - I Don't Like", Song = "Idontlike", Time = 309},
{Name = "Gorillaz - Clint Eastwood", Song = "ClintEastwood", Time = 298},
{Name = "Kanye West - We Don't Care", Song = "WeDC", Time = 239},
{Name = "Only Life I Know - Brother Ali", Song = "OnlyLife", Time = 241},
{Name = "Just Be Good to Green - Professor Green", Song = "JBGTG", Time = 204},
{Name = "Jimi Hendrix - Valleys Of Neptune", Song = "VONeptune", Time = 244},
{Name = "Blueprint - Radio-Inactive", Song = "RadioInactive", Time = 256},
{Name = "Childish Gambino - Bonfire", Song = "Bonfire", Time = 197},
{Name = "Aesop Rock - Daylight", Song = "Daylight", Time = 266},
{Name = "Mourning In America - Brother Ali", Song = "MournAmerica", Time = 248},
{Name = "Ray Charles - Chiddy Bang", Song = "RayCharles", Time = 223},
{Name = "Feel Good Inc - Gorillaz", Song = "FeelGoodInc", Time = 221},
{Name = "Jungle - Professor Green", Song = "Jungle", Time = 193},
{Name = "Still Got Love - Blue Scholars", Song = "StillGL", Time = 382},
{Name = "Bayani - Blue Scholars", Song = "Bayani", Time = 138},
{Name = "Hip-Hop Saved My Life - Lupe Fiasco", Song = "HipHopSave", Time = 242},
{Name = "Loose Hugs - Knowmads", Song = "LooseHugs", Time = 248},
{Name = "One - Knowmads", Song = "OneKnow", Time = 166},
{Name = "Kiss My Lips - Dev", Song = "KissMyLips", Time = 282},
{Name = "Love Sosa - Chief Keef", Song = "LoveSosa", Time = 214},
{Name = "Keep Bouncing - Blueprint", Song = "KBouncing", Time = 229},
{Name = "Go Hard or Go Home - Blueprint", Song = "GoHardGH", Time = 229},
{Name = "Paul Valery (Future) - Blue Scholars", Song = "PaulV", Time = 197},
{Name = "New People - Blue Scholars", Song = "NewPeople", Time = 200},
{Name = "Lumiere - Blue Scholars", Song = "Lumiere", Time = 154},
{Name = "Chemical Calisthenics - Blackalicious", Song = "Calisthenics", Time = 202},
{Name = "The Last to Say - Atmosphere", Song = "LastSay", Time = 264},
{Name = "Mattress - Atmosphere", Song = "Mattress", Time = 217},
{Name = "Just For Show - Atmosphere", Song = "JustShow", Time = 236},
{Name = "The Beast - Tech N9ne", Song = "TheBeastN9", Time = 219},
{Name = "Jellysickle - Tech N9ne", Song = "JellySick", Time = 216},
{Name = "Bout Ta' Bubble - Tech N9ne", Song = "BoutBubble", Time = 209},
{Name = "Riot Maker - Tech N9ne", Song = "RiotMaker", Time = 331},
{Name = "The Opposite of Adults (KIDS) - Chiddy Bang", Song = "TheOppAdult", Time = 192},
{Name = "School Spirit - Kanye West", Song = "SchoolSpirit", Time = 182},
{Name = "Dumb It Down - Lupe Fiasco", Song = "DumbDown", Time = 243},
{Name = "Sit On You - Tim And Eric", Song = "Sit", Time = 61},
{Name = "Heads Will Roll - Yeah Yeah Yeahs", Song = "Heads", Time = 222},
{Name = "Poison - Bell Biv Devoe", Song = "Poison", Time = 260},
{Name = "Kids - MGMT", Song = "Kids", Time = 328},
{Name = "Still Alive - GLaDOS", Song = "Alive", Time = 180},
{Name = "I'm On A Boat - Lonely Island", Song = "Boat", Time = 157},
{Name = "Safety Torch - Tobuscus", Song = "Safetytorch", Time = 43},
{Name = "The Rockafeller Skank - Fat Boy Slim", Song = "Funk", Time = 464},
{Name = "I Created Disco - Calvin Harris", Song = "Disco", Time = 249},
{Name = "Foreplay/Long Time - Boston", Song = "Foreplay", Time = 460},
{Name = "Live And Let Die - Paul McCartney and Wings", Song = "Live", Time = 194},
{Name = "I'm Awesome - Spose", Song = "Awesome", Time = 270},
{Name = "E-Pro - Beck", Song = "Epro", Time = 202},
{Name = "Till I Collapse - Eminem", Song = "Collapse", Time = 297},
{Name = "Tricky Disco - Discotronic", Song = "TrickyDisco", Time = 198},
{Name = "Dance Dance - Fallout Boy", Song = "DanceDance", Time = 180},
{Name = "Omen - The Prodigy", Song = "Omen", Time = 195},
{Name = "California Gurls - Katy Perry", Song = "California", Time = 236},
{Name = "The Nigga Song - Gangsta Rap: The Glockumentary", Song = "N", Time = 178},
--{Name = "I Staple Tapeworms On My Penis - SillyJenny9000", Song = "Staple", Time = 67},
{Name = "Bicycle Theme - Pokemon Red/Blue", Song = "Bike", Time = 78},
{Name = "The Blue Wrath - I Monster", Song = "Monster", Time = 92},
{Name = "You're My Best Friend - Queen", Song = "Friend", Time = 169},
{Name = "Party In The USA - Hannah Montana", Song = "Party", Time = 201},
{Name = "Fuck You - Lily Allen", Song = "FuckYou2", Time = 215},
{Name = "Cyclone - T-Pain", Song = "Cyclone", Time = 240},
{Name = "Earthworm Jim - Tangerine", Song = "Tangerine", Time = 239},
{Name = "Master of Puppets - Metallica", Song = "Puppets", Time = 517},
--{Name = "The 100 Greatest Movie Insults of All Time", Song = "Insults", Time = 559},
{Name = "Dreamnation - Daggmask", Song = "Dream", Time = 244},
{Name = "Propane Nightmares - Pendulum", Song = "Propane", Time = 313},
{Name = "D.A.N.C.E - Justice", Song = "Dance", Time = 246},
{Name = "Invisible Man - Scatman John", Song = "Invisible", Time = 206},
{Name = "Fuck You - Cee Lo Green", Song = "FuckYou", Time = 225},
--{Name = "A Double Rainbow!", Song = "Rainbow", Time = 219},
{Name = "Jump Around - House of Pain", Song = "Around", Time = 201},
{Name = "Jump - Van Halen", Song = "Jump", Time = 228},
{Name = "HPEL - DaGrahamCracker", Song = "HPEL", Time = 135},
{Name = "Electric Feel - MGMT", Song = "Electric", Time = 230},
{Name = "Let's Groove - Earth Wind and Fire", Song = "Groove", Time = 236},
--{Name = "Trip.swf", Song = "Trip", Time = 129},
{Name = "American Fuck Yeah - Team America", Song = "America1", Time = 123},
{Name = "Heavy Bieber - Baby", Song = "Baby", Time = 225},
{Name = "Babyman - Heavy Gaga", Song = "Babyman", Time = 238},
{Name = "Wisdom of the Kings - Rhapsody", Song = "Rhapsody", Time = 268},
{Name = "Futurama Theme", Song = "Futurama", Time = 120},
{Name = "Blah Blah Blah - Ke$ha", Song = "Blah", Time = 172},
{Name = "A Bad Song - Dragonforce", Song = "Dragonforce", Time = 374},
{Name = "Like a Nazi - Rucka Rucka Ali", Song = "Nazi", Time = 249},
{Name = "What A Fool Believes - Doobie Brothers", Song = "Fool", Time = 123},
{Name = "Please Don't Poop On The Lawn - Lolwut", Song = "Poop", Time = 196},
{Name = "Shooting Dinosaurs - Lolwut", Song = "ShootDino", Time = 18},
{Name = "Lori Supercrazysexycool - Lolwut", Song = "Sexy", Time = 99},
{Name = "Spacetech - Lolwut", Song = "Spacetech", Time = 91},
{Name = "Lazy Hell - Lolwut", Song = "Lazy", Time = 58},
{Name = "Trogdor - Strongbad", Song = "Trogdor", Time = 107},
{Name = "FIFA World Cup 2010 Theme", Song = "Cup", Time = 219},
{Name = "Superman - Lazlo Bane", Song = "Superman", Time = 214},
{Name = "The Ultimate Showdown - Lemon Demon", Song = "Showdown", Time = 213},
{Name = "Autotuned Moments", Song = "Autotune", Time = 93},
{Name = "Some Fucking Japanese Shit", Song = "Japanese", Time = 90},
{Name = "Just A Friend - Biz Markie", Song = "Just", Time = 238},
{Name = "Turbo Lover - Judas Priest", Song = "Turbo", Time = 308},
{Name = "Let's Play Some Tetris Motherfucker", Song = "Tetris", Time = 324},
{Name = "Gay Bar - Electric Six", Song = "Gay", Time = 111},
{Name = "Fly Like An Eagle - Steve Miller Band", Song = "Time", Time = 287},
{Name = "My Dick - Mickey Avalon", Song = "Dick", Time = 217},
{Name = "Powerslave - Iron Maiden", Song = "Powerslave", Time = 410},
{Name = "Fiction - Avenged Sevenhold", Song = "Fiction", Time = 312},
{Name = "Caramelldansen", Song = "Caramel", Time = 240},
{Name = "Harder, Better, Faster, Stronger - Daft Punk", Song = "Harder", Time = 213},
{Name = "Tornado of Souls - Megadeath", Song = "Tornado", Time = 323},
{Name = "You're Gonna Go Far, Kid - The Offspring", Song = "FarKid", Time = 182},
{Name = "Dream On - Aerosmith", Song = "DreamOn", Time = 267},
{Name = "The Waffle Song", Song = "Waffle", Time = 30},
{Name = "Hardware Store - Weird Al", Song = "Hardware", Time = 224},
--{Name = "Sleep On You", Song = "Sleep", Time = 171},
{Name = "Holiday - Green Day", Song = "Holiday", Time = 231},
{Name = "Ain't No Rest For The Wicked - CTE", Song = "Wicked", Time = 180},
{Name = "You Are a Pirate!", Song = "Pirate", Time = 93},
{Name = "Mr Blue Sky - ELO", Song = "Bluesky", Time = 308},
{Name = "Ding Ding Dong - Gunther", Song = "DingDingDong", Time = 240},
{Name = "Last Man Standing - Hammerfall", Song = "Lastman", Time = 239},
{Name = "Bulletproof - La Roux", Song = "Bulletproof", Time = 307},
{Name = "Leeroy Jenkins Remix", Song = "Leeroyremix", Time = 127},
{Name = "Dam Dadi Do - Nightcore", Song = "Dumdadi", Time = 144},
{Name = "Oh No You Didn't", Song = "Ohnoyoudidnt", Time = 183},
{Name = "Kickapoo - Tenacious D", Song = "Kickapoo", Time = 252},
{Name = "We No Speak Americano - Yolanda Be Cool", Song = "Americano", Time = 133},
{Name = "Amazing Horse - Weebl", Song = "AmazingHorse", Time = 130},
--{Name = "Baman and Piderman", Song = "Piderman", Time = 1}
{Name = "Boomshakalaka - Logan 7", Song = "Boomshakalaka", Time = 240},
{Name = "Club Foot - Kasabian", Song = "ClubFoot", Time = 175},
{Name = "Beat Your Heart Out - The Distillers", Song = "BeatHeart", Time = 191},
{Name = "Pirates - Bullets and Octane", Song = "Pirates", Time = 141},
{Name = "Doo Wah Diddy - Manfred Mann", Song = "DooWahDiddy", Time = 144},
{Name = "Fly From the Inside - Shinedown", Song = "FlyInside", Time = 191},
{Name = "Jungle Love - Steve Miller Band", Song = "JungleLove", Time = 233},
{Name = "Sonic Reducer - The Dead Boys", Song = "Sonic", Time = 186},
{Name = "1970 - The Stooges", Song = "1970", Time = 315},
{Name = "Cheesecake - Camaros", Song = "Cheesecake", Time = 207},
{Name = "Drums on Fire - Cut Chemist", Song = "FireDrums", Time = 142},
{Name = "Never Give In - Mike V and The Rats", Song = "GiveIn", Time = 100},
{Name = "TNT - CaptainSparklez/TryHardNinja", Song = "TNTParody", Time = 222},
{Name = "Fallen Kingdom - CaptainSparklez/TryHardNinja", Song = "FallenK", Time = 253},
{Name = "Back on the Radio - The Hiss", Song = "BackRadio", Time = 252},
{Name = "Shucks You - TryHardNinja", Song = "Shucks", Time = 248},
{Name = "Here I Am - The Explosion", Song = "HereIAm", Time = 167},
{Name = "Thrift Shop - Macklemore & Ryan Lewis", Song = "Thrift", Time = 235},
{Name = "Revenge - CaptainSparklez/TryHardNinja", Song = "Revenge", Time = 222},
{Name = "System of a Down - Sugar", Song = "Sugar", Time = 153},
{Name = "System of a Down - B.Y.O.B", Song = "BYOB", Time = 263},
{Name = "Golden Earring - Radar Love", Song = "Golden", Time = 306},
{Name = "Mt Eden Dubstep - Simon Says", Song = "Simon", Time = 109},
{Name = "Willy Moon - Yeah Yeah", Song = "Willy", Time = 163},
{Name = "ACDC - Highway To Hell", Song = "Highway", Time = 209},
{Name = "MGMT - Time to Pretend", Song = "Pretend", Time = 259},
{Name = "Foo Fighters - Rope", Song = "Rope", Time = 260},
{Name = "Machinimasound - Dance of the Pixies", Song = "Machinima", Time = 201},
{Name = "Brennan Heart & Wildstylez - Lose my Mind", Song = "Losemind", Time = 184},
{Name = "Will.i.am - Screat & Shout ft. Britney Spears", Song = "Screamshout", Time = 292},
{Name = "Portal 2 - The Wheatley Song", Song = "Wheatley", Time = 175},
{Name = "Quad City DJ's - Space Jam", Song = "Spacejam", Time = 308},
{Name = "Cowboy Bebop - Tank!", Song = "Tank", Time = 211},
{Name = "Korn ft. Skrillex - Get Up", Song = "Getup", Time = 224},
{Name = "Area 11 ft. Simon - Minecraft Christmas", Song = "Christmas", Time = 252},
{Name = "Linkin Park - Numb", Song = "Numb", Time = 187},
{Name = "Coldplay - Viva la Vida", Song = "Viva", Time = 243},
{Name = "Ephixa - Lost Woods Dubstep Remix", Song = "Lostwoods", Time = 234},
{Name = "PSY - Gangnam Style", Song = "Gangnam", Time = 253},
{Name = "Mortal Kombat Theme Song", Song = "Mortal", Time = 284},
{Name = "Savant - Ode to Joy", Song = "odetojoy", Time = 183},
{Name = "Angerfist - Riotstarter", Song = "Riotstarter", Time = 306},
{Name = "Minecraft Style - TryHardNinja/CaptainSparklez", Song = "MCStyle", Time = 237},
{Name = "Ready to Die - Andrew WK", Song = "Readytodie", Time = 175},
{Name = "Spiders - System of a Down", Song = "Spiders", Time = 172},
{Name = "Locked out of Heaven - Bruno Mars", Song = "LoutofH", Time = 233},
{Name = "Techno Jeep - Juliam Smith", Song = "TechJeep", Time = 140},
{Name = "Some Nights - Fun", Song = "Somenights", Time = 264},
{Name = "Somebody That I Used to Know - Gotye", Song = "StIUtK", Time = 244},
{Name = "Mine Turtle - LittleDeuceDeuce/TomSka", Song = "MineTurtle", Time = 122},
{Name = "Finale - Madeon", Song = "FMadeon", Time = 203},
{Name = "The Pretender - Foo Fighters", Song = "Pretender", Time = 270},
{Name = "Play That Funky Music - Wild Cherry", Song = "PlayFunky", Time = 296},
{Name = "Screw The Nether - BlueXephos", Song = "ScrewNether", Time = 242},
{Name = "Addicted To Progress - The Coronas", Song = "Coronas", Time = 180},
{Name = "Avicii - Levels", Song = "Levels", Time = 198},
{Name = "AWOLNATION - Kill Your Heroes", Song = "Heroes", Time = 178},
{Name = "AWOLNATION - Sail", Song = "Sail", Time = 259},
{Name = "Carly Rae Jepsen - Call Me Maybe", Song = "CallMeMaybe", Time = 199},
{Name = "David Guetta - She Wolf", Song = "SheWolf", Time = 237},
{Name = "Deadmau5 - Hi Friend", Song = "HiFriend", Time = 398},
{Name = "Eminem - Not Afraid", Song = "NotAfraid", Time = 259},
{Name = "Far Cry 3 - Make it Bun Dem", Song = "BunDem", Time = 211},
{Name = "Foster The People - Don't Stop", Song = "DontStop", Time = 179},
{Name = "Green Day - Kill The DJ", Song = "KillTheDJ", Time = 223},
{Name = "Haddaway - What is Love?", Song = "WhatIsLove", Time = 239},
{Name = "Imagine Dragons - Radioactive", Song = "Radioactive", Time = 261},
{Name = "Jason Mraz - I'm Yours", Song = "ImYours", Time = 241},
{Name = "Justice - D.A.N.C.E.", Song = "DANCE2", Time = 181},
{Name = "Katy Perry - Hot N Cold", Song = "HotNCold", Time = 284},
{Name = "Kavinsky - Nightcall", Song = "Nightcall", Time = 255},
{Name = "No Handlebars - FloBots", Song = "Handlebars", Time = 207},
{Name = "Mac Miller - Poppy", Song = "Poppy", Time = 172},
{Name = "Macklemore - And We Danced", Song = "AndWeDanced", Time = 323},
{Name = "Maroon 5 - One More Night", Song = "OneMoreNight", Time = 203},
{Name = "Matchbox Twenty - How Far We've Come", Song = "HowFar", Time = 207},
{Name = "Mumford & Songs - The Cave", Song = "TheCave", Time = 275},
{Name = "My Chemical Romange - SING", Song = "SING", Time = 295},
{Name = "Party Rock Anthem - LMFAO", Song = "PartyRock", Time = 262},
{Name = "POMFPOMFPOMF - POMFPOMFPOMF", Song = "POMF", Time = 139},
{Name = "Portal 2 - Want You Gone", Song = "WantYouGone", Time = 138},
{Name = "Queen - Bohemian Rhapsody", Song = "Bohemian", Time = 366},
{Name = "Red Host Chili Peppers - Californication", Song = "Cali", Time = 320},
{Name = "Skyrim Epic Rap - Dan Bull", Song = "Skyrim", Time = 85},
{Name = "The Killers - Mr. Brightside", Song = "Brightside", Time = 227},
{Name = "Thousand Foot Krutch - Courtesy Call", Song = "Courtesy", Time = 237},
{Name = "Three Days Grace - Animal I Have Become", Song = "Animal", Time = 231},
{Name = "Reel Big Fish - I Know You Too Well", Song = "KnowYou", Time = 264},
{Name = "Girls Generation - Gee", Song = "Gee", Time = 218}
}

local HasPlayed = false
local Que = {}
local HTMLTest
local CurrSong = "No song playing"
local CurrNum = 0
local Time = 0
local Requested = false


	surface.CreateFont( "Jukebox", {
		font 		= "Default",
		size 		= 16,
		weight 		= 600,
		antialias 	= true,
		additive 	= false,
	} )
function CreateJukeDerma()

	local Toggle = false

	local DFrame = vgui.Create( "DFrame" )
	DFrame:SetSize( 465, 500 )
	DFrame:Center()
	DFrame:SetDeleteOnClose(true)
	DFrame:SetTitle( "Jukebox" )
	DFrame:SetVisible( true )
	DFrame:SetDraggable( false )
	DFrame:ShowCloseButton( true )
	DFrame:MakePopup()
	
	 
	local Label= vgui.Create("DLabel", DFrame)
	Label:SetTextColor( Color(25, 25, 200, 255) )
	Label:SetText("Playing a song costs 100 money.")
	Label:SetSize(300, 20)
	Label:SetPos( 20, 480 )
	Label:SetTextColor( Color(25, 25, 25, 255) )
	 
	local DermaListView = vgui.Create("DListView")
	DermaListView:SetParent(DFrame)
	DermaListView:SetPos(20, 25)
	DermaListView:SetSize(425, 420)
	DermaListView:SetMultiSelect(false)
	DermaListView:AddColumn("Name")
	local TimeC = DermaListView:AddColumn("Time")
	TimeC:SetMaxWidth(75)
	 
	for k, v in pairs(SongTable) do
		DermaListView:AddLine(SongTable[k].Name, string.FormattedTime( SongTable[k].Time, "%02i:%02i"))
	end
	
	DermaListView.DoDoubleClick = function(parent, index, list)
		if Toggle == false then
			if HasPlayed == false then
				if !table.HasValue(Que, index) then
					if tonumber(LocalPlayer():GetNWInt("money")) >= 100 then
						if table.Count(Que) > 10 then
							Label:SetTextColor( Color(200, 25, 25, 255) )
							Label:SetText("The queue is full.")
							LocalPlayer():ChatPrint("JUKEBOX The queue is full.")
						else
							net.Start( "IncomingJukeBoxReq" )
							net.WriteInt( index,32 )
							net.SendToServer()
							
							HasPlayed = true
							DFrame:Remove()
							timer.Simple(SongTable[index].Time, function() HasPlayed = false end)
						end
					else
						Label:SetTextColor( Color(200, 25, 25, 255) )
						Label:SetText("You don't have enough money!")
						LocalPlayer():ChatPrint("JUKEBOX You don't have enough money!")
					end
				else
					Label:SetTextColor( Color(200, 25, 25, 255) )
					Label:SetText("That song is already in the queue.")
					LocalPlayer():ChatPrint("JUKEBOX That song is already in the queue.")
				end
			else
				Label:SetTextColor( Color(200, 25, 25, 255) )
				Label:SetText("You have already played a song.")
				LocalPlayer():ChatPrint("JUKEBOX You have already played a song.")
			end
		end
	end
	
	local Button = vgui.Create( "DButton", DFrame )
	Button:SetSize( 100, 30 )
	Button:SetPos( 20, 450 )
	Button:SetText( "Add" )
	Button.DoClick = function( Button )
		if DermaListView:GetSelectedLine() != nil then
			if HasPlayed == false then
				if !table.HasValue(Que, DermaListView:GetSelectedLine()) then
					if tonumber(LocalPlayer():GetNWInt("money")) >= 100 then
						if table.Count(Que) > 10 then
							Label:SetTextColor( Color(200, 25, 25, 255) )
							Label:SetText("The queue is full.")
							LocalPlayer():ChatPrint("JUKEBOX The queue is full.")
						else
							net.Start( "IncomingJukeBoxReq" )
								net.WriteInt( DermaListView:GetSelectedLine(),32 )
							net.SendToServer()
							HasPlayed = true
							DFrame:Remove()
							timer.Simple(SongTable[DermaListView:GetSelectedLine()].Time, function() HasPlayed = false end)
						end
					else
						Label:SetTextColor( Color(200, 25, 25, 255) )
						Label:SetText("You don't have enough money!")
						LocalPlayer():ChatPrint("JUKEBOX You don't have enough money!")
					end
				else
					Label:SetTextColor( Color(200, 25, 25, 255) )
					Label:SetText("That song is already in the queue.")
					LocalPlayer():ChatPrint("JUKEBOX That song is already in the queue.")
				end
			else
				Label:SetTextColor( Color(200, 25, 25, 255) )
				Label:SetText("You have already played a song.")
				LocalPlayer():ChatPrint("JUKEBOX You have already played a song.")
			end
		else
			Label:SetTextColor( Color(200, 25, 25, 255) )
			Label:SetText("No songs are selected.")
			LocalPlayer():ChatPrint("JUKEBOX No songs are selected.")
		end
	end
	
	local Button2 = vgui.Create( "DButton", DFrame )
	Button2:SetSize( 100, 30 )
	Button2:SetPos( 120, 450 )
	Button2:SetText( "Stop" )
	Button2.DoClick = function( Button2 )
		StopSong(handle, id, decoded, encoded)
		LocalPlayer():ChatPrint("JUKEBOX The current song was stopped.")
	end
	
	local Button3 = vgui.Create( "DButton", DFrame )
	Button3:SetSize( 100, 30 )
	Button3:SetPos( 320, 450 )
	Button3:SetText( "Request" )
	if Requested == true then
		Button3:SetDisabled(true)
	end
	Button3.DoClick = function( Button3 )
		if Requested == false then
			Derma_StringRequest("Song Request", "Request a song to be added to the jukebox", "", function(text)
				net.Start("IncomingSongReq")
					net.WriteString(text)
				net.SendToServer()
				
				LocalPlayer():ChatPrint("JUKEBOX You have requested the song "..text.." to be added to the jukebox.") 
				Requested = true
				Button3:SetDisabled(true)
			end)
		else
			LocalPlayer():ChatPrint("JUKEBOX You have already requested a song this map.")
		end
	end
	
	local Button4 = vgui.Create( "DButton", DFrame )
	Button4:SetSize( 100, 30 )
	Button4:SetPos( 220, 450 )
	Button4:SetText( "Queue" )
	Button4.DoClick = function( Button4 )
		Toggle = not Toggle
		if Toggle == true then
			Button4:SetText( "Songs" )
			Button:SetDisabled(true)
			DermaListView:Clear()
			for k, v in pairs(Que) do
				DermaListView:AddLine(SongTable[v].Name, string.FormattedTime( SongTable[v].Time, "%02i:%02i"))
			end
		else
			Button4:SetText( "Queue" )
			Button:SetDisabled(false)
			DermaListView:Clear()
			for k, v in pairs(SongTable) do
				DermaListView:AddLine(SongTable[k].Name, string.FormattedTime( SongTable[k].Time, "%02i:%02i"))
			end
		end
	end
	
	local CheckBoxThing = vgui.Create( "DCheckBoxLabel", DFrame )
	CheckBoxThing:SetPos( 340, 482 )
	CheckBoxThing:SetText( "Mute" )
	if MutedCvar:GetBool() == true then
		CheckBoxThing:SetValue( 1 )
	else
		CheckBoxThing:SetValue( 0 )
	end
	CheckBoxThing:SizeToContents()
	CheckBoxThing.OnChange = function()
		if MutedCvar:GetBool() == true then
			LocalPlayer():ConCommand("mg_mute_jukebox 0") 
			LocalPlayer():ChatPrint("JUKEBOX Music will continue once the next song plays.")
		else
			StopSong(handle, id, decoded, encoded)
			LocalPlayer():ChatPrint("JUKEBOX All songs are now muted.")
			LocalPlayer():ConCommand("mg_mute_jukebox 1") 
		end
	end

end

function IncomingQue( len )
	
	for k, v in pairs(net.ReadTable()) do
		Que[k] = v
	end
	
end

net.Receive( "IncomingQue", IncomingQue )

function PlaySong2( len )

	if timer.Exists("ticktimer") then
		timer.Destroy("ticktimer")
	end
				
	Time = 0

	if HTMLTest!=nil then
		HTMLTest:Remove()
	end
	CurrNum = net.ReadInt( 32 )
	CurrSong = SongTable[CurrNum].Name
	
	if !timer.Exists("ticktimer") then
		timer.Create("ticktimer", 1, SongTable[CurrNum].Time, function()
			Time = Time+1
			if Time == SongTable[CurrNum].Time then
				CurrSong = "No song playing"
				Time = 0
				CurrNum = 0
			end
		end)
	end
		--if MutedCvar:GetBool() == false then



		timer.Simple(1,function()
				HTMLTest = vgui.Create("DHTML")
				HTMLTest:SetPos(0,0)
				HTMLTest:SetSize(100, 100)
			HTMLTest:SetVisible(false)
			
				HTMLTest:OpenURL("http://www.mathium.net/music.php?music="..SongTable[CurrNum].Song)
			--local MusicHMTL = [[<embed src="http://www.google.com/reader/ui/3523697345-audio-player.swf?autoPlay=true" flashvars="audioUrl=http://www.evoservers.net/music/Harder.mp3" quality="high" width="1" height="1" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>]]
			
			--HTMLTest:SetHTML(MusicHMTL) 
			--print()
			
		end)
	--end
	
end

net.Receive( "PlaySong2", PlaySong2 )

function StopSong( len )

	if HTMLTest!=nil then
		HTMLTest:Remove()
	end
	
end

net.Receive( "StopSong", StopSong )

function IncomingHookJukeDerma( len )

	CreateJukeDerma()

end

net.Receive( "IncomingHookJukeDerma", IncomingHookJukeDerma )


hook.Add("HUDPaint", "JukeboxGUI", function()
	Width, Height = surface.GetTextSize(CurrSong)
	surface.SetDrawColor(0, 0, 0, 125)
	if Width >=250 then
		surface.DrawRect(0, 0, Width+25, 60)
		surface.SetDrawColor(200, 200, 200, 255)
		surface.DrawOutlinedRect(-1 , -1, Width+26, 61)
	else
		surface.DrawRect(0, 0, 250, 60)
		surface.SetDrawColor(200, 200, 200, 255)
		surface.DrawOutlinedRect(-1 , -1, 251, 61)
	end
	draw.SimpleText(CurrSong, "ScoreboardText", 5, 2, Color(255,255,255,255))
	if CurrNum != 0 then
		draw.SimpleText(string.FormattedTime( Time, "%02i:%02i").." / "..string.FormattedTime( SongTable[CurrNum].Time, "%02i:%02i"), "ScoreboardText", 5, 40, Color(255,255,255,255))
	end
	surface.SetDrawColor(0, 0, 200, 255)
	surface.DrawRect(5, 25, 240, 10)
	surface.SetDrawColor(0, 0, 150, 255)
	surface.DrawRect(5, 30, 240, 5)
	surface.SetDrawColor(200, 200, 200, 200)
	if CurrNum != 0 then
		surface.DrawRect(5+(Time/SongTable[CurrNum].Time)*240, 22, 3, 16)
	else
		surface.DrawRect(5, 22, 3, 16)
	end
end)

--[[
local RadioStations = {
	{Name = "Non Stop Rythym & Dance", URL = "http://www.nonstopplay.com/player/playerbbandmain.html"},
	{Name = "Non Stop Pure Dance", URL = "http://www.nonstopplay.com/player/playerbbandpd.html"},
	{Name = "BBC Radio 1", URL = "http://www.bbc.co.uk/iplayer/console/1xtra/"},
	{Name = "BBC Radio 2", URL = "http://www.bbc.co.uk/iplayer/console/radio2/"},
	{Name = "BBC Radio 3", URL = "http://www.bbc.co.uk/iplayer/console/radio3/"},
	{Name = "BBC Radio 4", URL = "http://www.bbc.co.uk/iplayer/console/bbc_radio_fourfm/"},
	{Name = "BBC Radio 6", URL = "http://www.bbc.co.uk/iplayer/console/6music/"},
	{Name = "BBC Radio 7", URL = "http://www.bbc.co.uk/iplayer/console/bbc7/"}
}


local CurrStation = MutedCvar:GetInt()
local SongName = ""

function ListeningRoom(pl, cmd, args)
	if HTML2Test == nil then
		timer.Simple(.1, function()
			if MutedCvar:GetInt() != 0 then
				HTML2Test = vgui.Create("DHTML")
				HTML2Test:SetPos(0,0)
				HTML2Test:SetSize(800, 800)
			HTML2Test:SetVisible(false)
				HTML2Test:OpenURL(RadioStations[MutedCvar:GetInt()].URL)
				--HTML2Test:Refresh(true)
				--HTML2Test:StartAnimate(100)
				SongName = RadioStations[MutedCvar:GetInt()].Name 
			else
				SongName = "OFF"
			end
		end)
	end

end

concommand.Add("listenroom", ListeningRoom)

function IncomingHookJukeDerma( len )

	if MutedCvar:GetInt() == 8 and HTML2Test != nil then
		HTML2Test:Remove()
		HTML2Test = nil
		LocalPlayer():ChatPrint("JUKEBOX Jukebox Muted!")
		LocalPlayer():ConCommand("mg_jukebox_station 0") 
		SongName = "OFF"
	else
		if HTML2Test != nil then
			HTML2Test:Remove()
			HTML2Test = nil
		end
		timer.Simple(.1, function()
			local num = MutedCvar:GetInt() + 1
			HTML2Test = vgui.Create("HTML")
			HTML2Test:SetPos(ScrW(),ScrH())
			HTML2Test:SetSize(1, 1)
			HTML2Test:SetVisible(false)
			HTML2Test:OpenURL(RadioStations[num].URL)
			--HTML2Test:Refresh(false)
			--HTML2Test:StartAnimate(100)
			LocalPlayer():ChatPrint("JUKEBOX Station changed!")
			LocalPlayer():ConCommand("mg_jukebox_station "..num) 
			SongName = RadioStations[num].Name
		end)
	end

end

net.Receive( "IncomingHookJukeDerma", IncomingHookJukeDerma )



function IncomingQue( len )


	
end

net.Receive( "IncomingQue", IncomingQue )



function PlaySong2( len )

end


net.Receive( "PlaySong2", PlaySong2 )



function StopSong( len )

end


net.Receive( "StopSong", StopSong )


hook.Add("HUDPaint", "JukeboxGUI", function()

	draw.SimpleTextOutlined("Radio: "..SongName.." (Press F3 to change)", "helpfont", 20, ScrH()-160, Color(171, 130, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_CENTER, 1, Color(50, 50, 50, 255))

end)]]
