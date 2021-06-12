--[[
	Leaderboards - README
	1.0.0 - 2020/10/05
	Contributors
		Nicholas Foreman (META) (https://www.coregames.com/user/f9df3457225741c89209f6d484d0eba8)

	1.	Description
		Leaderboards is a component that simplifies the process of adding a global leaderboard to a game. It is as simple as dragging
		and dropping a leaderboard template into the hierarchy and adjusting to meet your needs.

	2.	Setup
		1)	Drag and drop "Leaderboard Dependencies" into the hierarchy
		Note: Make sure this is the only version in the hierarchy
		2)	Drag and drop either a "World Leaderboard" or "Interface Leaderboard" into the hierarchy
		3)	Drag the global leaderboard created beforehand (see 3b) into the LeaderboardReference
		custom property of the World/Interface Leaderboard
		4)	Alter custom properties for each template as needed.
	2b.	Creating a Global Leaderboard
		1)	Go to the "Global Leaderboards" tab in the editor: View > Global Leaderboards
		2)	Click "Create New Leaderboard"
		3)	Follow the prompt to create your leaderboard

	3.	Usage
		The most basic usage includes KDR, Kills, and Deaths by dragging the template (world or interface) into the hierarchy and
		adjusting LeaderboardStat to be KDR, KILLS, or DEATHS. However, more advanced usage includes Resources in which you can
		set LeaderboardStat to be RESOURCE and change ResourceName to any resource of your choosing, such as "Money".

	4.	Leaderboard Dependencies
		"Leaderboard Dependencies" is a single template that must be in the hierarchy and remain in the hierarchy. There should
		only be one of this template in the hierarchy. It handles the persistent tracking of resources, kills, deaths, and kdr.
		Having multiple of this in the hierarchy can cause unwanted bugs and possible corruption. Not including it in the hierarchy
		will make each of the leaderboard template not function, either.
	4b.	World Leaderboard
		A "World Leaderboard" is a physical panel in the world utilizing WorldText to display rankings.
	4b.	Interface Leaderboard
		An "Interface Leaderboard" is a UI panel utilizing UI elements to display rankings on the player's screen. With slightly
		more customization, included is the ability to toggle and ease in/out the UI.

	5.	Discord
		If you have any questions, feel free to join the Core Hub Discord server:
			discord.gg/core-creators
		We are a friendly group of creators and players interested in the games and community on Core. Open to everyone,
		regardless of your level of experience or interests.
--]]