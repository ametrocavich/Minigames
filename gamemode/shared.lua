
GM.Name 	= "MiniGames"
GM.Author 	= "Jo The Shmo"
GM.Email 	= "N/A"
GM.Website 	= "N/A"


function GM:Initialize()

	self.BaseClass.Initialize( self )
	GAMEMODE.TeamBased = true
	
	if (CLIENT) then
		surface.CreateFont( "ServerTitle", {
			font 		= "MenuLarge",
			size 		= 30,
			weight 		= 600,
			antialias 	= true,
			additive 	= true,
		} )
	end
end

function GM:CreateTeams()

	SPECTATING = 1
	team.SetUp( SPECTATING, "Dead", Color( 75, 75, 75, 255 ) )

	BLUE = 2
	team.SetUp( BLUE, "Blue", Color( 0, 0, 200, 255 ) )
	team.SetSpawnPoint( BLUE, "info_player_counterterrorist", "info_player_start" )

	RED = 3
	team.SetUp( RED, "Red", Color( 200, 0, 0, 255 ) )
	team.SetSpawnPoint( RED, "info_player_terrorist" )
	
end
