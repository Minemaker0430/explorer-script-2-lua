##
#This page shows all script functions that can be called from Lua
#
#== AI:SetCharacterAI(RogueEssence.Ground.GroundChar,System.String,System.Object[]) ==
#
#
#Assign the given scripted AI class to the specified GroundChar.
#
#
#=== Arguments ===
#
#* <code>ch</code>: None
#* <code>classpath</code>: None
#
#== AI:DisableCharacterAI(RogueEssence.Ground.GroundChar) ==
#
#
#Disable a given groundchar''s AI processing until its enabled again.
#
#
#=== Arguments ===
#
#* <code>ch</code>: None
#
#== AI:EnableCharacterAI(RogueEssence.Ground.GroundChar) ==
#
#
#Enable a given groundchar''s AI processing if its currently disabled
#
#
#=== Arguments ===
#
#* <code>ch</code>: None
#
#== AI:SetAIState(RogueEssence.Ground.GroundChar,System.String) ==
#
#
#Enable a given groundchar''s AI processing if its currently disabled
#
#
#=== Arguments ===
#
#* <code>ch</code>: None
#
#== DUNGEON:CharTurnToChar(RogueEssence.Dungeon.Character,RogueEssence.Dungeon.Character) ==
#
#
#Makes a character turn to face another
#
#
#=== Arguments ===
#
#* <code>curch</code>: None
#* <code>turnto</code>: None
#
#== DUNGEON:LastDungeonResult ==
#
#
#Gets the result of the last dungeon adventure.
#
#
#== DUNGEON:DungeonCurrentFloor ==
#
#
#Returns the floor number of the current dungeon.
#
#
#== DUNGEON:DungeonAssetName ==
#
#
#Returns the internal name for the current dungeon.
#
#
#== DUNGEON:DungeonDisplayName ==
#
#
#Returns the localized name of the current dungeon.
#
#
#== DUNGEON:CharSetEmote(RogueEssence.Dungeon.Character,System.String,System.Int32) ==
#
#
#Set a character''s emote in a dungeon map.
#
#
#=== Arguments ===
#
#* <code>chara</code>: Character to emote
#* <code>emoteid</code>: ID of the emote
#* <code>cycles</code>: The number of times to play the emote.
#
#== DUNGEON:CharStartAnim ==
#
#
#Set a character''s animation.
#
#
#=== Arguments ===
#
#* <code>chara</code>: Character to animate
#* <code>anim</code>: Name of the animation
#* <code>loop</code>: Whether to loop the animation
#
#=== Example ===
#
#<pre>
#
#DUNGEON:CharStartAnim(player, anim, false)
#
#</pre>
#
#== DUNGEON:CharEndAnim ==
#
#
#Stops a character''s current animation, reverting them to default idle.
#
#
#=== Arguments ===
#
#* <code>chara</code>: Character to stop animating
#
#=== Example ===
#
#<pre>
#
#DUNGEON:CharEndAnim(player)
#
#</pre>
#
#== DUNGEON:CharWaitAnim ==
#
#
#Set a character''s animation, and waits until it completed before continue.
#
#
#=== Arguments ===
#
#* <code>chara</code>: Character to animate
#* <code>anim</code>: Name of the animation
#
#=== Example ===
#
#<pre>
#
#DUNGEON:CharStartAnim(player, anim)
#
#</pre>
#
#== DUNGEON:PlayVFX(RogueEssence.Content.FiniteEmitter,System.Int32,System.Int32,RogueElements.Dir8) ==
#
#
#Plays a VFX in the dungeon map
#
#
#=== Arguments ===
#
#* <code>emitter</code>: The VFX emitter
#* <code>x</code>: X position in pixels
#* <code>y</code>: Y Position in pixels
#* <code>dir</code>: Direction to orient the VFX, defaults to Down
#
#== DUNGEON:PlayVFX(RogueEssence.Content.FiniteEmitter,System.Int32,System.Int32,RogueElements.Dir8,System.Int32,System.Int32) ==
#
#
#Plays a VFX that has a start position and an end position.  It uses a finite emitter that generates BaseAnims.
#
#
#=== Arguments ===
#
#* <code>emitter</code>: The VFX emitter
#* <code>x</code>: Start X position in pixels
#* <code>y</code>: Start Y Position in pixels
#* <code>dir</code>: Direction to orient the VFX, defaults to Down.
#* <code>xTo</code>: End X position in pixels
#* <code>yTo</code>: End Y position in pixels
#
#== DUNGEON:PlayVFXAnim(RogueEssence.Content.BaseAnim,RogueEssence.Content.DrawLayer) ==
#
#
#Plays a VFX using just a BaseAnim
#
#
#=== Arguments ===
#
#* <code>anim</code>: The animation to play
#* <code>layer</code>: The layer to put it on
#
#== DUNGEON:MoveScreen(RogueEssence.Content.ScreenMover) ==
#
#
#Plays a screen-moving effect.
#
#
#=== Arguments ===
#
#* <code>mover</code>: The screen mover.
#
#== GAME:GroundSave ==
#
#
#Saves the game while in ground mode.
#
#
#=== Example ===
#
#<pre>
#
#GAME:GroundSave()
#
#</pre>
#
#== GAME:GetModDiff(System.String) ==
#
#
#TODO
#
#
#=== Arguments ===
#
#* <code>uuidStr</code>: None
#
#== GAME:GetCurrentGround ==
#
#
#Gets the current ground map.
#
#
#== GAME:GetCurrentFloor ==
#
#
#Gets the current dungeon map.
#
#
#== GAME:GetCurrentDungeon ==
#
#
#Gets the current zone, also known as dungeon.
#
#
#== GAME:EnterGroundMap(System.Int32,System.Int32,System.Boolean) ==
#
#
#Leave current map, and enter specified ground map within the current zone
#
#
#=== Arguments ===
#
#* <code>id</code>: The index of the ground map in the zone
#* <code>idxentrypoint</code>: The index of the entry point in the ground map
#* <code>preserveMusic</code>: If set to true, does not change the music when moving to the new ground map.
#
#== GAME:EnterGroundMap(System.String,System.String,System.Boolean) ==
#
#
#Leave current map, and enter specified ground map within the current zone
#
#
#=== Arguments ===
#
#* <code>name</code>: The name of the ground map.  It must exist within in the zone.
#* <code>entrypoint</code>: The name of the entry point in the ground map
#* <code>preserveMusic</code>: If set to true, does not change the music when moving to the new ground map.
#
#== GAME:EnterGroundMap(System.String,System.String,System.String,System.Boolean) ==
#
#
#Leave current map, and enter specified ground map within a new zone.
#
#
#=== Arguments ===
#
#* <code>zone</code>: The name of the destination zone.
#* <code>name</code>: The name of the ground map.  It must exist within in the zone.
#* <code>entrypoint</code>: The name of the entry point in the ground map
#* <code>preserveMusic</code>: If set to true, does not change the music when moving to the new ground map.
#
#== GAME:EnterDungeon ==
#
#
#Enters a zone and begins a new adventure.
#
#
#=== Arguments ===
#
#* <code>dungeonid</code>: The id of the dungeon to travel to.
#* <code>structureid</code>: The segment within the dungeon to start in.  -1 represents ground maps.
#* <code>mapid</code>: The id of the ground map or dungeon map within the dungeon segment.
#* <code>entry</code>: The entry point on the resulting map
#* <code>stakes</code>: Decides what happens when the adventure fails/succeeds.
#* <code>recorded</code>: Record the adventure in a replay
#* <code>silentRestrict</code>: Make the dungeon restrictions silently
#
#=== Example ===
#
#<pre>
#
#GAME:EnterDungeon(1, 0, 0, 0, RogueEssence.Data.GameProgress.DungeonStakes.Risk, true, false)
#
#</pre>
#
#== GAME:ContinueDungeon ==
#
#
#Enters a zone and continues the current adventure.
#
#
#=== Arguments ===
#
#* <code>dungeonid</code>: The id of the dungeon to travel to.
#* <code>structureid</code>: The segment within the dungeon to start in.  -1 represents ground maps.
#* <code>mapid</code>: The id of the ground map or dungeon map within the dungeon segment.
#* <code>entry</code>: The entry point on the resulting map
#
#=== Example ===
#
#<pre>
#
#GAME:ContinueDungeon(1, 1, 0, 0)
#
#</pre>
#
#== GAME:EndDungeonRun ==
#
#
#Ends the current adventure, sending the player to a specified destination.
#
#
#=== Arguments ===
#
#* <code>result</code>: The result of the adventure.
#* <code>destzoneid</code>: The id of the dungeon to travel to.
#* <code>structureid</code>: The segment within the dungeon to start in.  -1 represents ground maps.
#* <code>mapid</code>: The id of the ground map or dungeon map within the dungeon segment.
#* <code>entryid</code>: The entry point on the resulting map
#* <code>display</code>: Display an epitaph marking the end of the adventure.
#* <code>fanfare</code>: Play a fanfare.
#
#=== Example ===
#
#<pre>
#
#GAME:EndDungeonRun(GameProgress.ResultType.Cleared, 0, -1, 1, 0, true, true)
#
#</pre>
#
#== GAME:EnterRescue ==
#
#
#Enters a zone and begins a rescue adventure.
#
#
#=== Arguments ===
#
#* <code>sosPath</code>: The path of the sos mail.
#
#=== Example ===
#
#<pre>
#
#GAME:EnterRescue("RESCUE/INBOX/SOS/example.sosmail")
#
#</pre>
#
#== GAME:AddAOKRemark(System.Int32) ==
#
#
#TODO: WIP
#
#
#=== Arguments ===
#
#* <code>remarkIndex</code>: None
#
#== GAME:RestartToTitle ==
#
#
#Leave current map and load up the title screen.
#
#
#== GAME:RestartRogue(RogueEssence.Data.RogueConfig) ==
#
#
#Restarts a Roguelocke run based on the configuration
#
#
#=== Arguments ===
#
#* <code>config</code>: The configuration of the roguelocke run
#
#== GAME:EnterZone(System.String,System.Int32,System.Int32,System.Int32) ==
#
#
#Enters a zone and begins a new adventure.
#
#
#=== Arguments ===
#
#* <code>dungeonid</code>: The id of the dungeon to travel to.
#* <code>structureid</code>: The segment within the dungeon to start in.  -1 represents ground maps.
#* <code>mapid</code>: The id of the ground map or dungeon map within the dungeon segment.
#* <code>entry</code>: The entry point on the resulting map
#
#== GAME:FadeOut ==
#
#
#Fade out the screen. Waits to complete before continuing.
#
#
#=== Arguments ===
#
#* <code>white</code>: Fade to white if set to true.  Fades to black otherwise.
#* <code>duration</code>: The amount of time to fade in frames.
#
#=== Example ===
#
#<pre>
#
#GAME:FadeOut(false, 60)
#
#</pre>
#
#== GAME:FadeIn ==
#
#
#Fade into the screen. Waits to complete before continuing.
#
#
#=== Arguments ===
#
#* <code>duration</code>: The amount of time to fade in frames.
#
#=== Example ===
#
#<pre>
#
#GAME:FadeIn(false, 60)
#
#</pre>
#
#== GAME:MoveCamera ==
#
#
#Centers the camera on a position.
#
#
#=== Arguments ===
#
#* <code>x</code>: X coordinate of the camera center
#* <code>y</code>: Y coordinate of the camera center
#* <code>duration</code>: The amount of time it takes ot move to the destination
#* <code>toPlayer</code>: Destination is in absolute coordinates if false, and relative to the player character if set to true.
#
#=== Example ===
#
#<pre>
#
#GAME:MoveCamera(200, 240, 60, false)
#
#</pre>
#
#== GAME:GetCameraCenter ==
#
#
#Gets the current center of the camera.
#
#
#=== Returns ===
#
#A Loc object representing the center of the camera.
#
#== GAME:IsCameraOnChar ==
#
#
#Determines whether the camera is centered relative to the player.
#
#
#=== Returns ===
#
#Returns true if the camera is relative to the player, false otherwise.
#
#== GAME:HasSOSMail ==
#
#
#TODO
#
#
#== GAME:HasAOKMail ==
#
#
#TODO
#
#
#== GAME:GetTeamLeaderIndex ==
#
#
#Returns the index of the currently player controlled entity in the party.
#
#
#=== Returns ===
#
#Index of the currently player controlled entity in the party.
#
#== GAME:SetTeamLeaderIndex(System.Int32) ==
#
#
#Sets the leader to the chosen index within the party.
#
#
#=== Arguments ===
#
#* <code>idx</code>: The index of the team member within the team.
#
#== GAME:SetCanSwitch(System.Boolean) ==
#
#
#Prevents or allows the switching of leaders for the save file.
#
#
#=== Arguments ===
#
#* <code>canSwitch</code>: Set to true to allow switching, set to false to prevent it.
#
#== GAME:GetPlayerPartyCount ==
#
#
#Returns the player party count.  Does not include guests.
#
#
#=== Returns ===
#
#The count of players
#
#== GAME:GetPlayerPartyTable ==
#
#
#Return the party as a LuaTable.  Does not include guests.
#
#
#=== Returns ===
#
#A Lua Table of Characters
#
#== GAME:GetPlayerPartyMember(System.Int32) ==
#
#
#Gets the character at the specified index within the player''s team.
#
#
#=== Arguments ===
#
#* <code>index</code>: The specified index
#
#=== Returns ===
#
#The team member retrieved.
#
#== GAME:GetPlayerGuestCount ==
#
#
#Gets the number of guests currently in the player''s party.
#
#
#=== Returns ===
#
#The number of guests
#
#== GAME:GetPlayerGuestTable ==
#
#
#Return the guests as a LuaTable
#
#
#=== Returns ===
#
#A Lua Table of Characters
#
#== GAME:GetPlayerGuestMember(System.Int32) ==
#
#
#Gets the character at the specified index within the player''s guests.
#
#
#=== Arguments ===
#
#* <code>index</code>: The specified index
#
#=== Returns ===
#
#The team member retrieved.
#
#== GAME:GetPlayerAssemblyCount ==
#
#
#Gets the number of characters currently in the player''s assembly.
#
#
#=== Returns ===
#
#The number of characters
#
#== GAME:GetPlayerAssemblyTable ==
#
#
#Return the assembly as a LuaTable
#
#
#=== Returns ===
#
#A Lua Table of Characters
#
#== GAME:GetPlayerAssemblyMember(System.Int32) ==
#
#
#Gets the character at the specified index within the player''s assembly.
#
#
#=== Arguments ===
#
#* <code>index</code>: The specified index
#
#=== Returns ===
#
#The assembly member retrieved.
#
#== GAME:AddPlayerTeam(RogueEssence.Dungeon.Character) ==
#
#
#Adds a character to the player''s team.
#
#
#=== Arguments ===
#
#* <code>character</code>: The character to add.
#
#== GAME:RemovePlayerTeam(System.Int32) ==
#
#
#Removes the character from the team, placing its item back in the inventory.
#
#
#=== Arguments ===
#
#* <code>slot</code>: The slot of the player to remove.
#
#== GAME:AddPlayerGuest(RogueEssence.Dungeon.Character) ==
#
#
#Adds a character to the player''s guests.
#
#
#=== Arguments ===
#
#* <code>character</code>: The character to add.
#
#== GAME:RemovePlayerGuest(System.Int32) ==
#
#
#Removes the character from the team''s guests, placing its item back in the inventory.
#
#
#=== Arguments ===
#
#* <code>slot</code>: The slot of the player to remove.
#
#== GAME:AddPlayerAssembly(RogueEssence.Dungeon.Character) ==
#
#
#Adds a character to the player''s assembly.
#
#
#=== Arguments ===
#
#* <code>character</code>: The character to add.
#
#== GAME:RemovePlayerAssembly(System.Int32) ==
#
#
#Removes the character from the assembly, placing its item back in the inventory.
#
#
#=== Arguments ===
#
#* <code>slot</code>: The slot of the player to remove.
#
#== GAME:SetCharacterNickname(RogueEssence.Dungeon.Character,System.String) ==
#
#
#Sets a character''s nickname
#
#
#=== Arguments ===
#
#* <code>character</code>: The character to rename
#* <code>nickname</code>: The new name
#
#== GAME:GetCharacterNickname(RogueEssence.Dungeon.Character) ==
#
#
#Gets the character nickname
#
#
#=== Arguments ===
#
#* <code>character</code>: The character to get the nickname from
#
#=== Returns ===
#
#The character''s nickname
#
#== GAME:SetTeamName(System.String) ==
#
#
#Sets the name of the player''s team
#
#
#=== Arguments ===
#
#* <code>teamname</code>: The new team name
#
#== GAME:GetTeamName ==
#
#
#Gets the name of the player''s team
#
#
#=== Returns ===
#
#The team''s name
#
#== GAME:CanRelearn(RogueEssence.Dungeon.Character) ==
#
#
#Checks if the character can relearn any skills.
#
#
#=== Arguments ===
#
#* <code>character</code>: The character to check
#
#== GAME:CanForget(RogueEssence.Dungeon.Character) ==
#
#
#Checks if the character can forget any skills.
#
#
#=== Arguments ===
#
#* <code>character</code>: The character to check
#
#== GAME:CanLearn(RogueEssence.Dungeon.Character) ==
#
#
#Checks if the character can learn any skills.
#
#
#=== Arguments ===
#
#* <code>character</code>: The character to check
#
#== GAME:CheckLevelSkills ==
#
#
#Checks the levels gained by a character and prompts to learn all skills along the levels.
#Waits until all skills have been accepted or declined before continuing.
#
#
#=== Arguments ===
#
#* <code>chara</code>: The character to prompt for learning.
#* <code>oldLevel</code>: The level that the character leveled up from.
#
#=== Example ===
#
#<pre>
#
#GAME:CheckLevelSkills(player, 5)
#
#</pre>
#
#== GAME:TryLearnSkill ==
#
#
#Attempts to give a new skill to the specified character, prompting to replace an old one if they are full.
#Waits until all the skill has been accepted or declined before continuing.
#
#
#=== Arguments ===
#
#* <code>chara</code>: The character to learn the skill
#* <code>skill</code>: The skill to learn
#
#=== Example ===
#
#<pre>
#
#GAME:TryLearnSkill(player, "thunder")
#
#</pre>
#
#== GAME:LearnSkill(RogueEssence.Dungeon.Character,System.String) ==
#
#
#Gives a new skill to a specified character.
#Fails if the character''s skills are full.
#
#
#=== Arguments ===
#
#* <code>chara</code>: The character to learn the skill
#* <code>skill</code>: The skill to learn
#
#== GAME:ForgetSkill(RogueEssence.Dungeon.Character,System.Int32) ==
#
#
#Removed a skill from the specified character.
#
#
#=== Arguments ===
#
#* <code>chara</code>: The character to forget the skill
#* <code>slot</code>: The slot of the skill to forget
#
#== GAME:SetCharacterSkill(RogueEssence.Dungeon.Character,System.String,System.Int32) ==
#
#
#Gives a new skill to a specified character, replacing a specifically chosen slot.
#
#
#=== Arguments ===
#
#* <code>character</code>: The character to learn the skill
#* <code>skillId</code>: The skill to learn
#* <code>slot</code>: The slot to replace
#
#== GAME:GetCharacterSkill(RogueEssence.Dungeon.Character,System.Int32) ==
#
#
#Gets the skill from a specified character and specified slot.
#
#
#=== Arguments ===
#
#* <code>chara</code>: The character to get the skill from.
#* <code>slot</code>: The slot to get the skill from.
#
#=== Returns ===
#
#The ID of the skill in the slot
#
#== GAME:CanPromote(RogueEssence.Dungeon.Character) ==
#
#
#Checks if the character can be promoted to a new class.
#
#
#=== Arguments ===
#
#* <code>character</code>: The character to check
#
#=== Returns ===
#
#True if the character can be promoted, false otherwise.
#
#== GAME:GetAvailablePromotions(RogueEssence.Dungeon.Character,System.String) ==
#
#
#Gets a list of possible classes that the character can prmote to.
#
#
#=== Arguments ===
#
#* <code>character</code>: The character to check
#* <code>bypassItem</code>: An exception item that can bypass checks for promotion
#
#=== Returns ===
#
#A lua table of PromoteBranch objects
#
#== GAME:PromoteCharacter(RogueEssence.Dungeon.Character,RogueEssence.Data.PromoteBranch,System.String) ==
#
#
#Promotes a character ot a new class.
#
#
#=== Arguments ===
#
#* <code>character</code>: The character to promote
#* <code>branch</code>: The PromoteBranch to promote with
#* <code>bypassItem</code>: An exception item that can bypass checks for promotion
#
#== GAME:FindPlayerItem(System.String,System.Boolean,System.Boolean) ==
#
#
#Finds an item in the player''s team and returns its slot within the inventory or among its team''s equips.
#
#
#=== Arguments ===
#
#* <code>id</code>: The item ID to search for.
#* <code>held</code>: Check equipped items.
#* <code>inv</code>: Check inventory items.
#
#=== Returns ===
#
#The InvSlot of the item. Invalid if the item could not be found.
#
#== GAME:GetPlayerEquippedCount ==
#
#
#Get the number of items equipped by players.  Does not include guests.
#
#
#=== Returns ===
#
#The number of items.
#
#== GAME:GetPlayerBagCount ==
#
#
#Get the number of items in the bag.
#
#
#=== Returns ===
#
#The number of items.
#
#== GAME:GetPlayerBagLimit ==
#
#
#Gets the maximum amount of item the player''s team can carry.
#
#
#=== Returns ===
#
#The number of items.
#
#== GAME:GetPlayerEquippedItem(System.Int32) ==
#
#
#Gets the equipped item for the character in the specified slot.
#
#
#=== Arguments ===
#
#* <code>slot</code>: The team slot of the character to check
#
#=== Returns ===
#
#The character''s equipped item
#
#== GAME:GetGuestEquippedItem(System.Int32) ==
#
#
#Gets the equipped item for the character in the specified guest slot.
#
#
#=== Arguments ===
#
#* <code>slot</code>: The guest slot of the character to check
#
#=== Returns ===
#
#The character''s equipped item
#
#== GAME:GivePlayerItem(RogueEssence.Dungeon.InvItem) ==
#
#
#Gives an item and adds it to the player team''s bag.
#
#
#=== Arguments ===
#
#* <code>item</code>: The item to give
#
#== GAME:GivePlayerItem(System.String,System.Int32,System.Boolean,System.String) ==
#
#
#Gives an item and adds it to the player team''s bag.
#
#
#=== Arguments ===
#
#* <code>id</code>: The ID of the item
#* <code>count</code>: The amount to give. Default 1
#* <code>cursed</code>: Whether the item is cursed. Default false.
#* <code>hiddenval</code>: The hidden value of the item. Default empty string.
#
#== GAME:GetPlayerBagItem(System.Int32) ==
#
#
#Gets the item found at the specified slot of the player''s bag.
#
#
#=== Arguments ===
#
#* <code>slot</code>: The slot to check
#
#=== Returns ===
#
#The item found in the slot
#
#== GAME:TakePlayerBagItem(System.Int32) ==
#
#
#Remove an item from player inventory
#
#
#=== Arguments ===
#
#* <code>slot</code>: The slot from which to remove the item
#
#== GAME:TakePlayerEquippedItem(System.Int32) ==
#
#
#Remove the equipped item from a chosen member of the team
#
#
#=== Arguments ===
#
#* <code>slot</code>: The slot of the character on the team from which to remove the item
#
#== GAME:TakeGuestEquippedItem(System.Int32) ==
#
#
#Remove the equipped item from a chosen guest of the team
#
#
#=== Arguments ===
#
#* <code>slot</code>: The slot of the character on the team''s guest list from which to remove the item
#
#== GAME:GetPlayerStorageCount ==
#
#
#Get the amount of items in the player''s storage
#
#
#== GAME:GetPlayerStorageItemCount(System.String) ==
#
#
#Get the amount of a specific item in the player''s storage
#
#
#=== Arguments ===
#
#* <code>id</code>: ID of the item ot check
#
#=== Returns ===
#
#The amount of copies currently in storage
#
#== GAME:GivePlayerStorageItem(RogueEssence.Dungeon.InvItem) ==
#
#
#Gives an item and adds it to the player team''s storage.
#
#
#=== Arguments ===
#
#* <code>item</code>: The item to give
#
#== GAME:GivePlayerStorageItem(System.String,System.Int32,System.Boolean,System.String) ==
#
#
#Gives an item and adds it to the player team''s storage.
#
#
#=== Arguments ===
#
#* <code>id</code>: The ID of the item
#* <code>count</code>: The amount to give. Default 1
#* <code>cursed</code>: Whether the item is cursed. Default false.
#* <code>hiddenval</code>: The hidden value of the item. Default empty string.
#
#== GAME:TakePlayerStorageItem(System.String) ==
#
#
#Takes an item from the storage
#
#
#=== Arguments ===
#
#* <code>id</code>: The ID of the item to take
#
#== GAME:DepositAll ==
#
#
#Takes all items in the player team''s bag and equipped items, and deposits them in storage.
#
#
#== GAME:GetPlayerMoney ==
#
#
#Gets the amount of money the player currently has on hand.
#
#
#=== Returns ===
#
#The amount of money.
#
#== GAME:AddToPlayerMoney(System.Int32) ==
#
#
#Adds money to the player''s wallet.
#
#
#=== Arguments ===
#
#* <code>toadd</code>: The amount of money to add.
#
#== GAME:RemoveFromPlayerMoney(System.Int32) ==
#
#
#Removes money from the player''s wallet.
#
#
#=== Arguments ===
#
#* <code>toremove</code>: The amount of money to remove.
#
#== GAME:GetPlayerMoneyBank ==
#
#
#Gets the amount of money in the player''s bank
#
#
#=== Returns ===
#
#The amount of money.
#
#== GAME:AddToPlayerMoneyBank(System.Int32) ==
#
#
#Adds money to the player''s bank.
#
#
#=== Arguments ===
#
#* <code>toadd</code>: The amount of money to add.
#
#== GAME:RemoveFromPlayerMoneyBank(System.Int32) ==
#
#
#Removes money from the player''s bank.
#
#
#=== Arguments ===
#
#* <code>toremove</code>: The amount of money to remove.
#
#== GAME:IsKeyDown(System.Int32) ==
#
#
#Checks if a player is making a certain input.
#
#
#=== Arguments ===
#
#* <code>keyid</code>: The ID of the input
#
#=== Returns ===
#
#True if the button is currently pressed.  False otherwise.
#
#== GAME:CutsceneMode(System.Boolean) ==
#
#
#Sets the game in cutscene mode. This prevents characters from taking idle action and hides certain UI.
#
#
#=== Arguments ===
#
#* <code>bon</code>: If set to true, turns cutscene mode on. If set to false, turns it off.
#
#== GAME:GetDailySeed ==
#
#
#Gets the random seed for the current adventure.
#
#
#=== Returns ===
#
#The current adventure''s seed.
#
#== GAME:UnlockDungeon(System.String) ==
#
#
#Unlocks a specified dungeon.
#
#
#=== Arguments ===
#
#* <code>dungeonid</code>: ID of the dungeon to unlock.
#
#== GAME:DungeonUnlocked(System.String) ==
#
#
#Checks if a dungeon is unlocked.
#
#
#=== Arguments ===
#
#* <code>dungeonid</code>: ID of the dungeon to check
#
#=== Returns ===
#
#True if unlocked, false otherwise.
#
#== GAME:InRogueMode ==
#
#
#Checks if the current game is in rogue mode.
#
#
#=== Returns ===
#
#True if in rogue mode, false otherwise.
#
#== GAME:HasServerSet ==
#
#
#TODO: WIP
#
#
#== GAME:GetRescueAllowed ==
#
#
#Checks to see if rescue is allowed.
#
#
#=== Returns ===
#
#True if rescues are allowed, false otherwise.
#
#== GAME:SetRescueAllowed(System.Boolean) ==
#
#
#Sets the value in the player''s save file to determine if they can be rescued or not.
#If rescue is possible on the Save File level, it can still be prevented by the map.
#
#
#=== Arguments ===
#
#* <code>allowed</code>: Set to true to allow the player to be rescued.  False otherwise.
#
#== GAME:QueueLeaderEvent(System.Object) ==
#
#
#Prepares an event to execute on the next frame.
#
#
#=== Arguments ===
#
#* <code>obj</code>: None
#
#== GAME:WaitFrames ==
#
#
#Waits for a specified number of frames before continuing.
#
#
#=== Arguments ===
#
#* <code>frames</code>: The number of frames ot wait.  Each frame is 1/60th of a second.
#
#=== Example ===
#
#<pre>
#
#GAME:WaitFrames(60)
#
#</pre>
#
#== GAME:VectorToDirection(RogueElements.Loc) ==
#
#
#Turns a vector (preferably a unit vector) into a cardinal or diagonal direction.
#
#
#=== Arguments ===
#
#* <code>v</code>: The vector.
#
#=== Returns ===
#
#The direction as one of 8 values.
#
#== GAME:VectorToDirection(System.Double,System.Double) ==
#
#
#Convenience function to get a vector''s components from lua numbers(doubles)
#
#
#=== Arguments ===
#
#* <code>X</code>: The X value of the vector
#* <code>Y</code>: The Y value of the vector
#
#=== Returns ===
#
#The direction the vector points to as one of 8 values.
#
#== GAME:RandomDirection ==
#
#
#Generates a random direction.
#
#
#=== Returns ===
#
#An 8-directional direction.
#
#== GAME:SetupLuaFunctions(RogueEssence.Script.LuaEngine) ==
#
#
#Setups any extra functionalities for this object written on the lua side.
#
#
#== GROUND:Hide(System.String) ==
#
#
#Hides an entity.
#
#
#=== Arguments ===
#
#* <code>entityname</code>: The name of the entity to hide.
#
#== GROUND:Unhide(System.String) ==
#
#
#Unhides an entity.
#
#
#=== Arguments ===
#
#* <code>entityname</code>: The name of the entity to unhide.
#
#== GROUND:CreateObject(System.String,System.String,System.Int32,System.Int32,System.Int32,System.Int32) ==
#
#
#TODO: WIP
#
#
#=== Arguments ===
#
#* <code>objtype</code>: None
#* <code>instancename</code>: None
#* <code>x</code>: None
#* <code>y</code>: None
#* <code>w</code>: None
#* <code>h</code>: None
#
#== GROUND:CreateCharacter(System.String,System.String,System.Int32,System.Int32,System.String,System.String) ==
#
#
#TODO: WIP
#
#
#=== Arguments ===
#
#* <code>chartype</code>: None
#* <code>instancename</code>: None
#* <code>x</code>: None
#* <code>y</code>: None
#* <code>actionfun</code>: None
#* <code>thinkfun</code>: None
#
#== GROUND:RemoveObject(System.String) ==
#
#
#Deletes an object from the ground map, identified by its instance name.
#
#
#=== Arguments ===
#
#* <code>instancename</code>: The instance name of the object.
#
#=== Returns ===
#
#Returns true if succeeded, false otherwise.
#
#== GROUND:RemoveCharacter(System.String) ==
#
#
#Deletes a character from the ground map, identified by its instance name.
#
#
#=== Arguments ===
#
#* <code>instancename</code>: The instance name of the object.
#
#=== Returns ===
#
#Returns true if succeeded, false otherwise.
#
#== GROUND:CreateCharacterFromCharData(System.String,RogueEssence.Dungeon.Character,System.Int32,System.Int32,RogueElements.Dir8) ==
#
#
#Creates a ground character, given a dungeon character.
#
#
#=== Arguments ===
#
#* <code>instancename</code>: The instance name to give the character
#* <code>data</code>: Character data to create from
#* <code>x</code>: X coordinate of the character
#* <code>y</code>: Y coordinate of the character
#* <code>direction</code>: Direction the character will face, defaults to Dir8.Down
#
#== GROUND:RefreshPlayer ==
#
#
#Reloads the controllable player''s character data to be the current team''s leader.
#
#
#== GROUND:SetPlayer(RogueEssence.Dungeon.CharData) ==
#
#
#Sets the controllable player to use new character data
#
#
#=== Arguments ===
#
#* <code>charData</code>: The new character data
#
#== GROUND:SpawnerDoSpawn(System.String) ==
#
#
#Make the specified spawner run its spawn method.
#
#
#=== Arguments ===
#
#* <code>spawnername</code>: None
#
#=== Returns ===
#
#The ground character spawned.
#
#== GROUND:SpawnerSetSpawn(System.String,RogueEssence.Dungeon.CharData) ==
#
#
#Sets the character to the specified spawner
#
#
#=== Arguments ===
#
#* <code>spawnername</code>: The spawner to set the character to, by name
#* <code>spawnChar</code>: The character to spawn.
#
#== GROUND:CharTurnToChar(RogueEssence.Ground.GroundChar,RogueEssence.Ground.GroundChar) ==
#
#
#Makes a character turn to face another character instantly.
#
#
#=== Arguments ===
#
#* <code>turnchar</code>: The character that is turning.
#* <code>turnto</code>: The character to turn to.
#
#== GROUND:CharTurnToCharAnimated ==
#
#
#Makes a character do an animated turn to face another character over the specified time.
#Clockwise or counter-clockwise are chosen based on the closest direction.
#Waits until the operation is completed.
#
#
#=== Arguments ===
#
#* <code>curch</code>: Character that is turning
#* <code>turnto</code>: Character to turn to
#* <code>framedur</code>: Time spent on each direction, in frames
#
#=== Example ===
#
#<pre>
#
#CharTurnToCharAnimated(charFrom, charTo, 3)
#
#</pre>
#
#== GROUND:EntTurn(RogueEssence.Ground.GroundEntity,RogueElements.Dir8) ==
#
#
#Makes a ground entity turn to face a direction.
#
#
#=== Arguments ===
#
#* <code>ent</code>: The ground entity.  Can be a character or object.
#* <code>direction</code>: The direction to face.
#
#== GROUND:CharAnimateTurn ==
#
#
#Makes a character do an animated turn to face a chosen direction over the specified time.
#Must specify clockwise or counter-clockwise.
#Waits until the operation is completed.
#
#
#=== Arguments ===
#
#* <code>ch</code>: The character to turn
#* <code>direction</code>: The direction to turn to
#* <code>framedur</code>: The time spent in each intermediate direction, in frames
#* <code>ccw</code>: false if clockwise, true if counter-clockwise
#
#=== Example ===
#
#<pre>
#
#CharTurnToCharAnimated(charFrom, Dir8.Left, 3, true)
#
#</pre>
#
#== GROUND:CharAnimateTurnTo ==
#
#
#Makes a character do an animated turn to face a chosen direction over the specified time.
#Waits until the operation is completed.
#
#
#=== Arguments ===
#
#* <code>ch</code>: The character to turn
#* <code>direction</code>: The direction to turn to
#* <code>framedur</code>: The time spent in each intermediate direction, in frames
#
#=== Example ===
#
#<pre>
#
#CharTurnToCharAnimated(charFrom, Dir8.Left, 3)
#
#</pre>
#
#== GROUND:TeleportTo(RogueEssence.Ground.GroundEntity,System.Int32,System.Int32,RogueElements.Dir8) ==
#
#
#Repositions the ground entity in a specified location.
#
#
#=== Arguments ===
#
#* <code>ent</code>: The ground entity to reposition
#* <code>x</code>: The X coordinate of the destination
#* <code>y</code>: The Y coordinate of the destination
#* <code>direction</code>: The direction to point the entity.  Defaults to Dir8.None, which leaves it untouched.
#
#== GROUND:MoveInDirection ==
#
#
#Make ground character move in a direction.
#
#
#=== Arguments ===
#
#* <code>chara</code>: Character to move
#* <code>direction</code>: Direction to move in
#* <code>duration</code>: Duration of movement, in frames
#* <code>run</code>: True if using a running animation, false otherwise
#* <code>speed</code>: Speed in pixels per frame
#
#=== Example ===
#
#<pre>
#
#GROUND:MoveInDirection(player, Dir8.Down, 24, false, 2)
#
#</pre>
#
#== GROUND:MoveToPosition ==
#
#
#Make ground character move to a position.
#
#
#=== Arguments ===
#
#* <code>chara</code>: Character to move
#* <code>x</code>: X coordinate of destination
#* <code>y</code>: Y  coordinate of destination
#* <code>run</code>: True if using a running animation, false otherwise
#* <code>speed</code>: Speed in pixels per frame
#
#=== Example ===
#
#<pre>
#
#GROUND:MoveInDirection(player, 200, 240, false, 2)
#
#</pre>
#
#== GROUND:MoveToMarker ==
#
#
#Make ground character move to a ground marker.
#
#
#=== Arguments ===
#
#* <code>chara</code>: Character to move
#* <code>mark</code>: GroundMarker object ot move to
#* <code>run</code>: True if using a running animation, false otherwise
#* <code>speed</code>: Speed in pixels per frame
#
#=== Example ===
#
#<pre>
#
#GROUND:MoveInDirection(player, marker, false, 2)
#
#</pre>
#
#== GROUND:MoveObjectToPosition ==
#
#
#Make ground object move to a position.
#
#
#=== Arguments ===
#
#* <code>ent</code>: Ground Entity to move
#* <code>x</code>: X coordinate of destination
#* <code>y</code>: Y  coordinate of destination
#* <code>speed</code>: Speed in pixels per frame
#
#=== Example ===
#
#<pre>
#
#GROUND:MoveInDirection(player, 200, 240, 2)
#
#</pre>
#
#== GROUND:AnimateInDirection ==
#
#
#Make a ground character move in a direction with custom animation
#
#
#=== Arguments ===
#
#* <code>chara</code>: Character to move
#* <code>anim</code>: Name of the animation
#* <code>animDir</code>: Direction of animation
#* <code>direction</code>: Direction to move in
#* <code>duration</code>: Duration of movement, in frames
#* <code>animSpeed</code>: Speed of animation, where 1.0 represents normal speed
#* <code>speed</code>: Speed movement, in pixels per frame
#
#=== Example ===
#
#<pre>
#
#GROUND:AnimateInDirection(player, "Hurt", Dir8.Down, 24, 0.5, 2)
#
#</pre>
#
#== GROUND:AnimateToPosition ==
#
#
#Make a ground entity move to a position with custom animation
#
#
#=== Arguments ===
#
#* <code>ent</code>: Entity to move
#* <code>anim</code>: Name of the animation
#* <code>animDir</code>: Direction of animation
#* <code>x</code>: X coordinate of the destination
#* <code>y</code>: Y coordinate of the destination
#* <code>animSpeed</code>: Speed of animation, where 1.0 represents normal speed
#* <code>speed</code>: Speed movement, in pixels per frame
#
#=== Example ===
#
#<pre>
#
#GROUND:AnimateToPosition(player, "Hurt", Dir8.Down, 200, 240, 0.5, 2)
#
#</pre>
#
#== GROUND:CharSetEmote(RogueEssence.Ground.GroundChar,System.String,System.Int32) ==
#
#
#Make a character emote on the ground map.
#
#
#=== Arguments ===
#
#* <code>chara</code>: Character to emote
#* <code>emoteid</code>: ID of the emote
#* <code>cycles</code>: The number of times to play the emote.
#
#== GROUND:CharSetDrawEffect(RogueEssence.Ground.GroundChar,RogueEssence.Dungeon.DrawEffect) ==
#
#
#Sets the ground character''s draw effect to become invisible, shaking, still, etc.
#
#
#=== Arguments ===
#
#* <code>chara</code>: Target ground character.
#* <code>effect</code>: The draw effect.
#
#== GROUND:CharEndDrawEffect(RogueEssence.Ground.GroundChar,RogueEssence.Dungeon.DrawEffect) ==
#
#
#Sets the ground character''s draw effect to become invisible, shaking, still, etc.
#
#
#=== Arguments ===
#
#* <code>chara</code>: Target ground character.
#* <code>effect</code>: The draw effect.
#
#== GROUND:CharSetAnim(RogueEssence.Ground.GroundChar,System.String,System.Boolean) ==
#
#
#Set a character''s animation.
#
#
#=== Arguments ===
#
#* <code>chara</code>: Character to animate
#* <code>anim</code>: Name of the animation
#* <code>loop</code>: Whether to loop the animation
#
#== GROUND:CharEndAnim(RogueEssence.Ground.GroundChar) ==
#
#
#Stops a character''s current animation, reverting them to default idle.
#
#
#=== Arguments ===
#
#* <code>chara</code>: Character to stop animating
#
#== GROUND:CharWaitAnim ==
#
#
#Makes the character perform an animation and waits until it''s over.
#
#
#=== Arguments ===
#
#* <code>ent</code>: Character to animate
#* <code>anim</code>: Animation to play
#
#=== Example ===
#
#<pre>
#
#GROUND:CharWaitAnim(player, "Hurt")
#
#</pre>
#
#== GROUND:CharSetAction(RogueEssence.Ground.GroundChar,RogueEssence.Ground.GroundAction) ==
#
#
#Set a character''s action.
#
#
#=== Arguments ===
#
#* <code>chara</code>: Character to perfomr the action
#* <code>action</code>: The action to perform
#
#== GROUND:CharWaitAction ==
#
#
#Makes the character perform an action and waits until it''s over.
#
#
#=== Arguments ===
#
#* <code>ent</code>: Character to animate
#* <code>action</code>: Action to perform
#
#=== Example ===
#
#<pre>
#
#GROUND:CharWaitAction(player, action)
#
#</pre>
#
#== GROUND:ObjectSetAnim(RogueEssence.Ground.GroundObject,System.Int32,System.Int32,System.Int32,RogueElements.Dir8,System.Int32) ==
#
#
#Sets a ground object''s animation.  After it finishes, it will return to the default animation.
#
#
#=== Arguments ===
#
#* <code>obj</code>: The object to animate
#* <code>frameTime</code>: The duration of each frame of animation
#* <code>startFrame</code>: The start frame of animation
#* <code>endFrame</code>: The end frame of animation
#* <code>dir</code>: The direction of the animation
#* <code>cycles</code>: The number of times to repeat the animation
#
#== GROUND:ObjectSetDefaultAnim(RogueEssence.Ground.GroundObject,System.String,System.Int32,System.Int32,System.Int32,RogueElements.Dir8) ==
#
#
#Sets a ground object''s default animation.
#
#
#=== Arguments ===
#
#* <code>obj</code>: The object to animate
#* <code>animName</code>: The name of the animation
#* <code>frameTime</code>: The duration of each frame of animation
#* <code>startFrame</code>: The start frame of animation
#* <code>endFrame</code>: The end frame of animation
#* <code>dir</code>: The direction of the animation
#
#== GROUND:ObjectWaitAnimFrame ==
#
#
#Waits for the object to reach a specific frame before continuing.
#
#
#=== Arguments ===
#
#* <code>obj</code>: The object ot wait on
#* <code>frame</code>: The frame of animation to wait on.
#
#=== Example ===
#
#<pre>
#
#GROUND:WaitObjectAnim(fountain, 3)
#
#</pre>
#
#== GROUND:PlayVFX(RogueEssence.Content.FiniteEmitter,System.Int32,System.Int32,RogueElements.Dir8) ==
#
#
#Plays a VFX using a finite emitter that generates BaseAnims.
#
#
#=== Arguments ===
#
#* <code>emitter</code>: The VFX emitter
#* <code>x</code>: X position
#* <code>y</code>: Y Position
#* <code>dir</code>: Direction to orient the VFX, defaults to Down
#
#== GROUND:PlayVFX(RogueEssence.Content.FiniteEmitter,System.Int32,System.Int32,RogueElements.Dir8,System.Int32,System.Int32) ==
#
#
#Plays a VFX that has a start position and an end position.  It uses a finite emitter that generates BaseAnims.
#
#
#=== Arguments ===
#
#* <code>emitter</code>: The VFX emitter
#* <code>x</code>: Start X position
#* <code>y</code>: Start Y Position
#* <code>dir</code>: Direction to orient the VFX, defaults to Down.
#* <code>xTo</code>: End X position
#* <code>yTo</code>: End Y position
#
#== GROUND:PlayVFXAnim(RogueEssence.Content.BaseAnim,RogueEssence.Content.DrawLayer) ==
#
#
#Plays a VFX using just a BaseAnim
#
#
#=== Arguments ===
#
#* <code>anim</code>: The animation to play
#* <code>layer</code>: The layer to put it on
#
#== GROUND:MoveScreen(RogueEssence.Content.ScreenMover) ==
#
#
#Plays a screen-moving effect.
#
#
#=== Arguments ===
#
#* <code>mover</code>: The screen mover.
#
#== GROUND:AddMapStatus(System.String) ==
#
#
#Adds a mapstatus to the ground map.  Map statuses only have an aesthetic effect in ground maps.
#
#
#=== Arguments ===
#
#* <code>statusIdx</code>: The ID of the Map Status
#
#== GROUND:RemoveMapStatus(System.String) ==
#
#
#Removes a map status from the ground map.
#
#
#=== Arguments ===
#
#* <code>statusIdx</code>: The ID of the Map Status to remove.
#
#== SOUND:PlaySE(System.String) ==
#
#
#Plays a sound effect
#
#
#=== Arguments ===
#
#* <code>name</code>: Sound file name, relative to the Content/SE folder
#
#== SOUND:PlayBattleSE(System.String) ==
#
#
#Plays a sound effect specifically from the Battle/ subdirectory
#
#
#=== Arguments ===
#
#* <code>name</code>: Sound file name, relative to the Content/SE/Battle folder
#
#== SOUND:WaitSE ==
#
#
#Plays a sound effect, and waits for it to complete before continuing.
#
#
#=== Example ===
#
#<pre>
#
#SOUND:WaitSE("Battle/Hit")
#
#</pre>
#
#== SOUND:LoopSE(System.String) ==
#
#
#Plays a continuous sound effect
#
#
#=== Arguments ===
#
#* <code>name</code>: Sound file name, relative to the Content/SE folder
#
#== SOUND:LoopBattleSE(System.String) ==
#
#
#Plays a continuous sound effect
#
#
#=== Arguments ===
#
#* <code>name</code>: Sound file name, relative to the Content/SE/Battle folder
#
#== SOUND:StopSE(System.String) ==
#
#
#Stops a continuous sound effect
#
#
#=== Arguments ===
#
#* <code>name</code>: Sound file name, relative to the Content/SE folder
#
#== SOUND:StopBattleSE(System.String) ==
#
#
#Stops a continuous sound effect
#
#
#=== Arguments ===
#
#* <code>name</code>: Sound file name, relative to the Content/SE/Battle folder
#
#== SOUND:FadeInSE(System.String,System.Int32) ==
#
#
#Plays a continuous sound effect, fading in over a specified amount of time
#
#
#=== Arguments ===
#
#* <code>name</code>: Sound file name, relative to the Content/SE folder
#* <code>fadeTime</code>: Time in frames for the sound to fade in
#
#== SOUND:FadeInBattleSE(System.String,System.Int32) ==
#
#
#Plays a continuous sound effect, fading in over a specified amount of time
#
#
#=== Arguments ===
#
#* <code>name</code>: Sound file name, relative to the Content/SE/Battle folder
#* <code>fadeTime</code>: Time in frames for the sound to fade in
#
#== SOUND:FadeOutSE(System.String,System.Int32) ==
#
#
#Stops a continuous sound effect, fading out over a specified amount of time
#
#
#=== Arguments ===
#
#* <code>name</code>: Sound file name, relative to the Content/SE folder
#* <code>fadeTime</code>: Time in frames for the sound to fade out
#
#== SOUND:FadeOutBattleSE(System.String,System.Int32) ==
#
#
#Stops a continuous sound effect, fading out over a specified amount of time
#
#
#=== Arguments ===
#
#* <code>name</code>: Sound file name, relative to the Content/SE/Battle folder
#* <code>fadeTime</code>: Time in frames for the sound to fade out
#
#== SOUND:PlayFanfare(System.String) ==
#
#
#Plays a sound effect that temporarily mutes the music for its duration
#
#
#=== Arguments ===
#
#* <code>name</code>: Sound file name, relative to the Content/SE folder
#
#== SOUND:WaitFanfare ==
#
#
#Plays a sound effect that temporarily mutes the music for its duration.
#This function waits for the sound to complete before continuing.
#
#
#=== Example ===
#
#<pre>
#
#SOUND:WaitFanfare("Battle/LevelUp")
#
#</pre>
#
#== SOUND:PlayBGM(System.String,System.Boolean,System.Int32) ==
#
#
#Plays a song, replacing the current one.
#
#
#=== Arguments ===
#
#* <code>name</code>: The file name of the song, relative to the Content/Music folder.
#* <code>fade</code>: Whether to fade the old song out, or start a new one.
#* <code>fadeTime</code>: The amount of time, in frames, to fade out the old song.
#
#== SOUND:StopBGM ==
#
#
#Stops playing the current song.
#
#
#== SOUND:FadeOutBGM(System.Int32) ==
#
#
#Fades out the current song.
#
#
#=== Arguments ===
#
#* <code>fadeTime</code>: The amount of time, in frames, to fade out the song.
#
#== SOUND:SetBGMVolume(System.Single) ==
#
#
#Sets the current volume of the song.
#
#
#=== Arguments ===
#
#* <code>val</code>: A float value between 0 and 1
#
#== SOUND:GetCurrentSong ==
#
#
#Gets the currently playing song.  If the current song is fading out, gets the next song to be played.
#
#
#=== Returns ===
#
#The filename of the song, relative to the Content/Music folder
#
#== STRINGS:LocaleCode ==
#
#
#Gets the current language setting of the game.
#
#
#=== Returns ===
#
#The current language, represented by a locale code.
#
#== STRINGS:Format(System.String,System.Object[]) ==
#
#
#Formats a string.  Will unescape escaped characters.
#
#
#=== Arguments ===
#
#* <code>fmt</code>: String to format.
#* <code>para</code>: Arguments
#
#=== Returns ===
#
#The formatted string.
#
#== STRINGS:FormatKey(System.String,System.Object[]) ==
#
#
#Formats a string given a string key.  Will unescape escaped characters.
#
#
#=== Arguments ===
#
#* <code>fmt</code>: The string key to format
#* <code>para</code>: string arguments
#
#== STRINGS:LocalKeyString(System.Int32) ==
#
#
#Gets the string representing a button or key.
#
#
#=== Arguments ===
#
#* <code>index</code>: The input type of the input.
#
#=== Returns ===
#
#The string representing the button o key the input maps to.
#
#== STRINGS:CreateList(NLua.LuaTable) ==
#
#
#Builds a single string of comma separated elements.
#
#
#=== Arguments ===
#
#* <code>listStrings</code>: LuaTable of strings containing the elements to build the list from.
#
#=== Returns ===
#
#The combined string containing all elements.
#
#== TASK:StartEntityTask(RogueEssence.Ground.GroundEntity,NLua.LuaFunction) ==
#
#
#Helper function to make an entity run the specified task.
#Will not replace a running task!
#Tasks are run interlocked with the script processing and game processing, and characters cannot run multiple tasks at the same time.
#
#
#=== Arguments ===
#
#* <code>ent</code>: Entity which will run the task.
#* <code>fn</code>: Task coroutine.
#
#== TASK:StopEntityTask(RogueEssence.Ground.GroundEntity) ==
#
#
#Helper function to force stop an entity''s current task.
#
#
#=== Arguments ===
#
#* <code>ent</code>: Entity running the task to stop.
#
#== TASK:WaitStartEntityTask ==
#
#
#Makes an entity run a specified task, and waits for it to complete.
#
#
#=== Arguments ===
#
#* <code>ent</code>: Entity which will run the task.
#* <code>fn</code>: Task coroutine.
#
#=== Example ===
#
#<pre>
#
#TODO
#
#</pre>
#
#== TASK:WaitEntityTask ==
#
#
#Waits for the specified entity to finish its task.
#
#
#=== Arguments ===
#
#* <code>ent</code>: Entity which task we''ll wait on.
#
#=== Example ===
#
#<pre>
#
#TASK:WaitEntityTask(player)
#
#</pre>
#
#== TASK:WaitTask ==
#
#
#Runs a task and waits for it to complete.
#Most methods that do not expose themselves to script need to be wrapped with this.
#
#
#=== Arguments ===
#
#* <code>obj</code>: The task to wait on.
#
#=== Example ===
#
#<pre>
#
#TASK:WaitTask(_DUNGEON:AddMapStatus("rain"))
#
#</pre>
#
#== TASK:StartScriptLocalCoroutine(NLua.LuaFunction,System.Object[]) ==
#
#
#A wrapper around the StartCoroutine method of the GameManager, so lua coroutines can be executed locally to the script context.
#AKA, it will block the script execution while its executed.
#
#
#=== Arguments ===
#
#* <code>fn</code>: None
#* <code>args</code>: None
#
#== TASK:BranchCoroutine(System.Object) ==
#
#
#Starts a new coroutine to run parallel to the current execution.
#Useful for performing multiple actions at once.
#
#
#=== Arguments ===
#
#* <code>obj</code>: The task to run in parallel
#
#=== Example ===
#
#<pre>
#
#local coro1 = TASK:BranchCoroutine(GAME:_FadeIn(60))
#
#</pre>
#
#== TASK:JoinCoroutines ==
#
#
#Waits for all specified coroutines to finish before continuing execution.
#Often used for coroutines created using TASK:BranchCoroutine()
#
#
#=== Arguments ===
#
#* <code>coroTable</code>: A table of coroutines to wait on.
#
#=== Example ===
#
#<pre>
#
#TASK:JoinCoroutines({coro1})
#
#</pre>
#
#== UI:WaitInput ==
#
#
#Waits for the player to press a button before continuing.
#
#
#== UI:WaitShowDialogue ==
#
#
#Displays a dialogue box with text, waiting until the player completes it.
#Takes a string as an argument.
#
#
#=== Arguments ===
#
#* <code>text</code>: The text to display.
#
#=== Example ===
#
#<pre>
#
#UI:WaitShowDialogue("Hello World!")
#
#</pre>
#
#== UI:WaitShowTimedDialogue ==
#
#
#Displays a dialogue box with text, waiting until the specified time has expired.
#
#
#=== Arguments ===
#
#* <code>text</code>: The text to display.
#* <code>waitTime</code>: The time for the textbox to remain on screen. Pass -1 to wait for layer input.
#
#=== Example ===
#
#<pre>
#
#UI:WaitShowTimedDialogue("Hello World!", 120)
#
#</pre>
#
#== UI:TextDialogue(System.String,System.Int32) ==
#
#
#Sets the current dialogue text to be shown.  Requires WaitDialog to actually display.
#
#
#=== Arguments ===
#
#* <code>text</code>: The text to display.
#* <code>waitTime</code>: The time for the textbox to remain on screen. Pass -1 to wait for layer input.
#
#== UI:WaitShowVoiceOver ==
#
#
#Displays a voice over, waiting until the player completes it.
#
#
#=== Arguments ===
#
#* <code>text</code>: The text to display.
#* <code>expireTime</code>: The time for the textbox to remain on screen. Pass -1 to wait for layer input.
#
#=== Example ===
#
#<pre>
#
#UI:WaitShowVoiceOver("Hello World!", 120)
#
#</pre>
#
#== UI:TextVoiceOver(System.String,System.Int32) ==
#
#
#Sets the current voice-over text to be shown.  Requires WaitDialog to actually display.
#
#
#=== Arguments ===
#
#* <code>text</code>: The text to display.
#* <code>expireTime</code>: The time for the textbox to remain on screen. Pass -1 to wait for layer input.
#
#== UI:PopUp(System.String,System.Int32) ==
#
#
#Makes text pop up in the bottom-left corner. Displays concurrently with any other process.
#
#
#=== Arguments ===
#
#* <code>text</code>: The text to display.
#* <code>expireTime</code>: The time for the textbox to remain on screen.
#
#== UI:WaitShowTitle ==
#
#
#Fades in a title text, waiting until the fade-in is complete.
#
#
#=== Arguments ===
#
#* <code>text</code>: The text to display.
#* <code>time</code>: The time for the text to fade in.
#
#=== Example ===
#
#<pre>
#
#UI:WaitShowTitle("Hello World!", 60)
#
#</pre>
#
#== UI:TextShowTitle(System.String,System.Int32) ==
#
#
#Shows text in the format of a title drop.  Requires WaitDialog to actually display.
#
#
#=== Arguments ===
#
#* <code>text</code>: The text to display.
#* <code>time</code>: The time for the text to fade in.
#
#== UI:WaitHideTitle ==
#
#
#Fades out the currently displayed title, waiting until the fade-out is complete.
#
#
#=== Arguments ===
#
#* <code>time</code>: The time for the text to fade in.
#
#=== Example ===
#
#<pre>
#
#UI:WaitHideTitle(60)
#
#</pre>
#
#== UI:TextFadeTitle(System.Int32) ==
#
#
#Fades out the text set in a title drop.  Requires WaitDialog to actually fade.
#
#
#=== Arguments ===
#
#* <code>time</code>: The time for the text to fade in.
#
#== UI:WaitShowBG ==
#
#
#Fades in a chosen background image, with a chosen framerate, at a certain fade time, waiting until the fade-in is complete.
#
#
#=== Arguments ===
#
#* <code>bg</code>: The background to show, from the list of BG textures.
#* <code>frameTime</code>: Framerate of the image animation.
#* <code>fadeInTime</code>: Time taken to fade in the image.
#
#=== Example ===
#
#<pre>
#
#UI:WaitShowBG("TestBG", 3, 60)
#
#</pre>
#
#== UI:ShowBG(System.String,System.Int32,System.Int32) ==
#
#
#Sets an image to display.  Requires WaitDialog to actually display.
#
#
#=== Arguments ===
#
#* <code>bg</code>: The background to show, from the list of BG textures.
#* <code>frameTime</code>: Framerate of the image animation.
#* <code>fadeInTime</code>: Time taken to fade in the image.
#
#== UI:WaitHideBG ==
#
#
#Fades out the current background image, waiting until the fade-out is complete.
#
#
#=== Arguments ===
#
#* <code>time</code>: Time taken to fade out the image.
#
#=== Example ===
#
#<pre>
#
#UI:WaitHideBG(60)
#
#</pre>
#
#== UI:FadeBG(System.Int32) ==
#
#
#Prepares a fade-out of the current image.  Requires WaitDialog to actually display.
#
#
#=== Arguments ===
#
#* <code>time</code>: Time taken to fade out the image.
#
#== UI:ResetSpeaker(System.Boolean) ==
#
#
#Clears the current speaker, so none is displayed the next time TextDialogue is called.
#This also resets any custom dialogue box positions, portrait positions, and choice positions.
#
#
#=== Arguments ===
#
#* <code>keysound</code>: If turned on, the text from the dialogue boxes make sounds.  Default is on.
#
#== UI:SetSpeaker(System.String,System.Boolean,System.String,System.Int32,System.String,RogueEssence.Data.Gender) ==
#
#
#Sets the speaker to be displayed during the following calls to the TextDialogue functions.  It resets speaker emotion.
#
#
#=== Arguments ===
#
#* <code>name</code>: Speaker name.
#* <code>keysound</code>: Plays sounds when text appears.
#* <code>specie</code>: Species of the speaker
#* <code>form</code>: Form of the speaker
#* <code>skin</code>: Skin of the speaker
#* <code>gender</code>: Gender of the speaker
#
#== UI:SetSpeaker(RogueEssence.Ground.GroundChar,System.Boolean) ==
#
#
#Sets the speaker to be displayed during the following calls to the TextDialogue functions.  It resets speaker emotion.
#
#
#=== Arguments ===
#
#* <code>chara</code>: Character to set as speaker. This is a character in a ground map.
#* <code>keysound</code>: Plays sounds when text appears.
#
#== UI:SetSpeaker(RogueEssence.Dungeon.Character,System.Boolean) ==
#
#
#Sets the speaker to be displayed during the following calls to the TextDialogue functions.  It resets speaker emotion.
#
#
#=== Arguments ===
#
#* <code>chara</code>: Character to set as speaker. This is a character in a dungeon map.
#* <code>keysound</code>: Plays sounds when text appears.
#
#== UI:SetSpeakerReverse(System.Boolean) ==
#
#
#Reverses the speaker orientation to face left instead of right.  This depends on the boolean passed in.
#
#
#=== Arguments ===
#
#* <code>reverse</code>: Faces right if false, left if true.
#
#== UI:SetChoiceLoc(System.Int32,System.Int32) ==
#
#
#Sets the position of the choices for a question dialog.
#
#
#=== Arguments ===
#
#* <code>x</code>: The X position
#* <code>y</code>: The Y position
#
#== UI:ResetChoiceLoc ==
#
#
#Sets the position of the choices for a question dialog back to default.
#
#
#== UI:SetBounds(System.Int32,System.Int32,System.Int32,System.Int32) ==
#
#
#Sets the position and size of the dialogue box.
#
#
#=== Arguments ===
#
#* <code>x</code>: The X position of the box
#* <code>y</code>: The Y position of the box
#* <code>width</code>: Width of the box
#* <code>height</code>: Height of the box
#
#== UI:ResetBounds ==
#
#
#Resets the position and size of the dialogue box.
#
#
#== UI:SetSpeakerLoc(System.Int32,System.Int32) ==
#
#
#Sets the position of the speaker in a dialogue box.
#
#
#=== Arguments ===
#
#* <code>x</code>: The X position
#* <code>y</code>: The Y position
#
#== UI:ResetSpeakerLoc ==
#
#
#Resets the position of the speaker in a dialogue box.
#
#
#== UI:SetSpeakerEmotion(System.String,System.Boolean) ==
#
#
#Sets the emotion of the speaker in the dialogue box.
#
#
#=== Arguments ===
#
#* <code>emo</code>: Emotion to display
#* <code>reverse</code>: Faces right if false, left if true.
#
#== UI:SetCenter(System.Boolean,System.Boolean) ==
#
#
#Sets the centering of the text in the textbox.
#
#
#=== Arguments ===
#
#* <code>centerH</code>: Horizontal centering
#* <code>centerV</code>: Vertical centering
#
#== UI:SetAutoFinish(System.Boolean) ==
#
#
#Makes the text automatically finish when it shows up.
#
#
#=== Arguments ===
#
#* <code>autoFinish</code>: Auto-finishes text if true.
#
#== UI:WaitDialog ==
#
#
#Displays the currently set dialogue box and waits for the player to complete it.
#
#
#=== Example ===
#
#<pre>
#
#UI:WaitDialog()
#
#</pre>
#
#== UI:_DummyWait ==
#
#
#Instantly break. Used as default/invalid value when returning a yieldable value.
#
#
#== UI:ChoiceMenuYesNo(System.String,System.Boolean) ==
#
#
#Ask a question answered by yes or no via character dialogue to the player.
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the integer value indicating the result of the menu, UI:ChoiceResult() must be called.
#
#The Yes/No menu returns 1 for yes, and 0 for no.
#
#
#=== Arguments ===
#
#* <code>message</code>: Question to be asked to the user.
#* <code>bdefaultstono</code>: Whether the cursor starts on no by default
#
#== UI:NameMenu(System.String,System.String,System.Int32) ==
#
#
#Displays the name input box.
#
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the string value indicating the result of the menu, UI:ChoiceResult() must be called.
#
#
#=== Arguments ===
#
#* <code>title</code>: The text to show above the input line.
#* <code>desc</code>: The text to show below the input line.
#* <code>maxLength</code>: The length of the text in pixels.
#
#== UI:AssemblyMenu ==
#
#
#Displays a menu for replacing party members with the assembly.
#
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the boolean value indicating whether the team composition was changed or not, UI:ChoiceResult() must be called.
#
#
#== UI:ShopMenu(NLua.LuaTable) ==
#
#
#Displays the Shop menu.
#
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the table indicating the indices of items chosen, UI:ChoiceResult() must be called.
#
#
#=== Arguments ===
#
#* <code>goods</code>: A table of items to be sold.  The format is { Item=InvItem, Price=int } for each item.
#
#== UI:SellMenu ==
#
#
#Displays the Sell menu.
#
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the table indicating the indices of items to sell, UI:ChoiceResult() must be called.
#
#
#== UI:StorageMenu ==
#
#
#Displays the Storage menu for which to exchange items in the inventory with.
#
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the menu is exited.
#
#
#== UI:WithdrawMenu ==
#
#
#Displays the Storage menu for which to withdraw from.
#
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the menu is exited.
#
#
#== UI:BankMenu ==
#
#
#Displays the Bank menu.
#
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the menu is exited.
#
#
#== UI:SpoilsMenu(NLua.LuaTable) ==
#
#
#Displays the Spoils menu.
#
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the menu is exited.
#
#
#=== Arguments ===
#
#* <code>appraisalMap</code>: A table of mappings from containers to items, in the format of { Box=InvItem , Item=InvItem }
#
#== UI:AppraiseMenu ==
#
#
#Displays the Appraisal menu.
#
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the table indicating the indices of items chosen, UI:ChoiceResult() must be called.
#
#
#== UI:TutorTeamMenu ==
#
#
#Displays the Tutor Team menu.
#
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the integer representing the chosen team member, UI:ChoiceResult() must be called.
#
#
#== UI:RelearnMenu(RogueEssence.Dungeon.Character) ==
#
#
#Displays the Relearn menu for a character.
#
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the integer representing the chosen skill, UI:ChoiceResult() must be called.
#
#
#=== Arguments ===
#
#* <code>chara</code>: The character to relearn skills
#
#== UI:LearnMenu(RogueEssence.Dungeon.Character,System.String) ==
#
#
#Displays the Learn menu for a character to replace an existing skill with a new one.
#
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the integer representing the chosen skill, UI:ChoiceResult() must be called.
#
#
#=== Arguments ===
#
#* <code>chara</code>: The character to relearn skills
#* <code>skillNum</code>: The new skill
#
#== UI:ForgetMenu(RogueEssence.Dungeon.Character) ==
#
#
#Displays the Forget menu for a character to forget a skill.
#
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the integer representing the chosen skill, UI:ChoiceResult() must be called.
#
#
#=== Arguments ===
#
#* <code>chara</code>: The character to relearn skills
#
#== UI:ShowPromoteMenu ==
#
#
#Displays the Promote menu to choose a team member to promote.
#
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the integer representing the chosen team slot, UI:ChoiceResult() must be called.
#
#
#== UI:CanSwapMenu(NLua.LuaTable) ==
#
#
#TODO
#
#
#== UI:SwapMenu(NLua.LuaTable,NLua.LuaTable) ==
#
#
#TODO
#
#
#== UI:TributeMenu(System.Int32) ==
#
#
#TODO
#
#
#== UI:ShowMusicMenu(NLua.LuaTable) ==
#
#
#Displays the Music menu to browse music for the game.
#
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the string representing the chosen song, UI:ChoiceResult() must be called.
#
#
#=== Arguments ===
#
#* <code>spoilerUnlocks</code>: A lua table of strings representing progression flags that have been completed.
			#Any ogg file that uses this tag as a spoiler tag will display in the menu only if the flag has been passed.
#
#== UI:DungeonChoice(System.String,RogueEssence.Dungeon.ZoneLoc) ==
#
#
#Ask to enter a destintion via character dialogue to the player.
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the integer value indicating the result of the menu, UI:ChoiceResult() must be called.
#
#The Yes/No menu returns 1 for yes, and 0 for no.
#
#
#=== Arguments ===
#
#* <code>name</code>: Name of the destination
#* <code>dest</code>: The ZoneLoc location of the destination.
#
#== UI:DestinationMenu(NLua.LuaTable) ==
#
#
#Marks the start of a choice menu for choosing destinations, showing a preview of restrictions and requirements for dungeons.
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the ZoneLoc indicating the chosen destination, UI:ChoiceResult() must be called.
#
#
#=== Arguments ===
#
#* <code>destinations</code>: A lua table representing the list of destinations with each element in the format of { Name=string, Dest=ZoneLoc }
#
#== UI:ServersMenu ==
#
#
#TODO
#
#
#== UI:ContactsMenu ==
#
#
#TODO
#
#
#== UI:SOSMenu ==
#
#
#TODO
#
#
#== UI:AOKMenu ==
#
#
#TODO
#
#
#== UI:PeersMenu ==
#
#
#TODO
#
#
#== UI:ShowConnectMenu ==
#
#
#TODO
#
#
#== UI:CurrentActivityMenu ==
#
#
#TODO
#
#
#== UI:ChooseMonsterMenu(System.String,NLua.LuaTable,System.Boolean,System.Boolean) ==
#
#
#Marks the start of a choice menu for choosing monsters, showing a preview of their appearances via portrait.
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the string indicating the chosen species, UI:ChoiceResult() must be called.
#
#
#=== Arguments ===
#
#* <code>title</code>: The title of the menu
#* <code>choices</code>: A lua table of choices with each element being a MonsterID.
#* <code>canMenu</code>: If set to true, the Menu Button exits the menu if pressed.
#* <code>canCancel</code>: If set to true, the Cancel Button exits the menu if pressed.
#
#== UI:SetCustomMenu(RogueEssence.Menu.InteractableMenu) ==
#
#
#Displays a custom menu of the caller''s choice.
#
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the menu is exited.
#
#
#== UI:BeginChoiceMenu(System.String,NLua.LuaTable,System.Object,System.Object) ==
#
#
#Marks the start of a multi-choice menu.
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the integer value indicating the result of the menu, UI:ChoiceResult() must be called.
#
#
#=== Arguments ===
#
#* <code>message</code>: The question to ask the user.
#* <code>choicesPairs</code>: A table of choices.  Each choice can be either a string, or { string, bool } representing the text and enabled status.
#* <code>defaultChoice</code>: The cursor starts on this choice.
#* <code>cancelChoice</code>: This choice is chosen if the player presses the cancel button.
#
#== UI:BeginMultiPageMenu(System.Int32,System.Int32,System.Int32,System.String,NLua.LuaTable,System.Int32,System.Object,System.Object) ==
#
#
#Marks the start of a multi-paged choice menu.
#UI:WaitForChoice() must be called afterwards for the menu to be actually displayed,
#and for execution to suspend until the choice is returned.
#Then to recover the integer value indicating the result of the menu, UI:ChoiceResult() must be called.
#
#
#=== Arguments ===
#
#* <code>x</code>: X position of the menu
#* <code>y</code>: Y position of the menu
#* <code>width</code>: Width of the menu
#* <code>title</code>: Height of the menu
#* <code>choicesPairs</code>: A table of choices.  Each choice can be either a string, or { string, bool } representing the text and enabled status.
#* <code>linesPerPage</code>: Number of choices per page
#* <code>defaultChoice</code>: The cursor starts on this choice.
#* <code>cancelChoice</code>: This choice is chosen if the player presses the cancel button.
#
#== UI:ChoiceResult ==
#
#
#Get the result of the last choice menu
#
#
#=== Returns ===
#
#The result of the choice
#
#== UI:GetChoiceAction(System.Object) ==
#
#
#It''s complicated.
#
#
#=== Arguments ===
#
#* <code>obj</code>: None
#
#== UI:WaitForChoice ==
#
#
#Displays the currently set choice menu and waits for the player''s selection to complete.
#
#
#=== Example ===
#
#<pre>
#
#UI:WaitForChoice()
#
#</pre>
#
#
#[[Category:Scripting]]
#[[Category:Quick Reference]]
#
#__NOTOC__
##

extends RefCounted
class_name ExplorerScriptToPMDO

var output : PackedStringArray = []
var scope_stack : Array = []
var context : Dictionary = {
	"speaker": "NARRATION",
	"msg_counts": {},
	"msg_type": "default",
	"text_centered": false,
	"camera_performer": -1,
	"position_marks": [],
	"amb_track": ""
}
var config : Dictionary = {
	"StringPrefix": "C"
}
var extracted_strings : Dictionary = {}

func _convert_script(text: String) -> Dictionary:
	var lines = text.split(";")
	for raw_line in lines:
		_process_line(raw_line)
	
	# cleanup
	for line in output:
		if output.find("") != -1:
			output.remove_at(output.find(""))

	return {
		"lua": "\n".join(output),
		"strings": _strings_to_xml(extracted_strings)
	}

func _strings_to_xml(strings: Dictionary) -> String:
	var xml = []
	for key in strings.keys():
		xml.push_back("\t<data name=\"%s\" xml:space=\"preserve\">\n\t\t<value>%s</value>\n\t</data>" % [key, strings[key].strip_edges()])
	return "\n".join(xml)

func _process_line(raw_line: String) -> void:
	var line = raw_line.replace("\n", " ").remove_chars("\t").strip_edges()
	#print(line)

	if line == "":
		return
	
	if line.begins_with("def "):
		if line.find("for actor") != -1:
			output.push_back(_indent() + "function DEF_%s()" % line.substr(4, line.find("for actor") - 4).strip_edges())
			var actor = get_actor(line.substr(line.find("for actor") + 4, line.find("{") - (line.find("for actor") + 4)).strip_edges())
			_push_scope("function", {"args": [actor]})
		else:
			output.push_back(_indent() + "function DEF_%s()" % line.substr(4, line.find("{") - 4).strip_edges())
			_push_scope("function")
		output.push_back(_indent() + "local hTalkKind = SV.Personality.HeroTalkKind")
		output.push_back(_indent() + "local pTalkKind = SV.Personality.PartnerTalkKind")
		_process_line(line.substr(line.find("{") + 1))
		return
	elif line.begins_with("with "):
		var tokens = _tokenize_line(line)
		_push_scope("with", {"args": [tokens[tokens.find("(") + 1]]})
		_process_line(line.substr(line.find("{") + 1))
		return
	elif line.begins_with("}"):
		_close_scope()
		_process_line(line.substr(line.find("}") + 1))
		return
	
	output.push_back(_convert_line(line))

func _push_scope(type: String, data := {}) -> void:
	scope_stack.push_back({"type": type, "data": data})

func _pop_scope() -> void:
	if scope_stack.is_empty():
		return
	scope_stack.pop_back()

func _current_scope() -> Dictionary:
	if scope_stack.is_empty():
		return {}
	return scope_stack[scope_stack.size() - 1]

func _close_scope() -> void:
	var scope = _current_scope()
	match scope.get("type", ""):
		"function":
			_pop_scope()
			output.push_back(_indent() + "end")
		"message":
			_pop_scope()

			match context.msg_type:
				"voiceover":
					output.push_back(_indent() + "UI:WaitShowVoiceOver(STRINGS:Format(STRINGS.MapStrings[\'%s\']), -1)" % scope.data.string)
				_:
					output.push_back(_indent() + "UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings[\'%s\']))" % scope.data.string)
			context.msg_type = "default"

			if context.text_centered:
				output.push_back(_indent() + "UI:SetCenter(false)")
				context.text_centered = false
		"switch_branch":
			_pop_scope()
			var parent_scope = _current_scope()
			parent_scope.data.cases.merge({scope.data.key: scope.data.lines}, true)
		"switch":
			output.push_back(_close_switch_scope())
			_pop_scope()
		"with":
			_pop_scope()
		_:
			_pop_scope()
			output.push_back(_indent() + "end")

func _indent(extra := 0) -> String:
	return "\t".repeat(max(scope_stack.size() + extra, 0))

func _convert_line(line: String) -> String:
	var rules = [
	{"prefix": "Wait(", "func": "_convert_wait"},
	{"prefix": "screen_FadeIn", "func": "_convert_fade_in"},
	{"prefix": "screen_FadeOut", "func": "_convert_fade_out"},
	{"prefix": "bgm_PlayFadeIn", "func": "_convert_bgm_fade_in"},
	{"prefix": "bgm_FadeOut", "func": "_convert_bgm_fade_out"},
	{"prefix": "se_Play", "func": "_convert_sfx"},
	{"prefix": "sound_Stop", "func": "_convert_sound_stop"},
	{"prefix": "back_SetGround", "func": "_convert_back_set_ground"},
	{"prefix": "camera_SetPositionMark", "func": "_convert_camera_position_mark"},
	{"prefix": "camera_SetMyself", "func": "_convert_camera_position_mark"},
	{"prefix": "SetAnimation", "func": "_convert_set_animation"},
	{"prefix": "WaitAnimation", "func": "_convert_wait_animation"},
	{"prefix": "Turn2DirectionLives", "func": "_convert_turn_to_direction_lives"},
	{"prefix": "Turn2Direction", "func": "_convert_turn_to_direction"},
	{"prefix": "SlidePositionOffset", "func": "_convert_slide_position_offset"},
	{"prefix": "MovePositionOffset", "func": "_convert_move_position_offset"},
	{"prefix": "Move2PositionOffset", "func": "_convert_move_position_offset"},
	{"prefix": "MovePositionMark", "func": "_convert_move_position_mark"},
	{"prefix": "Move2PositionMark", "func": "_convert_move_position_mark"},
	{"prefix": "WaitExecuteLives", "func": "_convert_wait_execute_lives"},
	{"prefix": "message_SetFace", "func": "_convert_set_face"},
	{"prefix": "message_SwitchMonologue", "func": "_convert_switch_talk"},
	{"prefix": "message_SwitchTalk", "func": "_convert_switch_talk"},
	{"prefix": "message_Talk", "func": "_convert_message_talk"},
	{"prefix": "message_Explanation", "func": "_convert_message_talk"},
	{"prefix": "message_Mail", "func": "_convert_message_talk"},
	{"prefix": "message_Close", "func": "_ignore"},
	{"prefix": "message_EmptyActor", "func": "_convert_msg_empty_actor"},
	{"prefix": "me_Play", "func": "_convert_me_play"},
	{"prefix": "case", "func": "_convert_case"},
	{"prefix": "default", "func": "_convert_case"},
	{"prefix": "english=", "func": "_convert_message"},
	{"prefix": "SetEffect", "func": "_convert_set_effect"},
	{"prefix": "WaitEffect", "func": "_convert_wait_effect"},
	{"prefix": "ExecuteCommon", "func": "_convert_execute_common"},
	{"prefix": "CallCommon", "func": "_convert_call_common"},
	{"prefix": "supervision_", "func": "_irrelevant"},
	{"prefix": "screen2_FadeIn", "func": "_irrelevant"},
	{"prefix": "screen2_FadeOut", "func": "_irrelevant"},
	{"prefix": "back2_SetMode", "func": "_irrelevant"},
	{"prefix": "back2_SetGround", "func": "_irrelevant"},
	{"prefix": "camera2_SetPositionMark", "func": "_irrelevant"},
	{"prefix": "end", "func": "_ignore"},
	{"prefix": "Destroy", "func": "_convert_destroy"}
	#{"prefix": "if", "func": "_convert_if"}
	]
	for rule in rules:
		if line.begins_with(rule["prefix"]):
			return Callable(self , rule["func"]).call(line)
	return _indent() + "-- TODO: " + line

func _irrelevant(line: String) -> String:
	return _indent() + "-- ### %s [IRRELEVANT]" % line

func _ignore(_line: String) -> String:
	return ""

func _convert_execute_common(line: String) -> String:
	var tokens = _tokenize_line(line)
	var actor = "UNK"

	if _current_scope().type == "with" or (_current_scope().type == "function" and _current_scope().data.has("args")):
		actor = get_actor(_current_scope().data.args[0].substr(6).strip_edges())
	elif line.find("<actor") != 1:
		actor = get_actor(tokens[0].substr(line.find("<actor") + 6, line.find(">") - line.find("<") - 6).strip_edges())
	
	if tokens.size() > 1:
		match tokens[2].strip_edges():
			"CORO_LOOK_AROUND_FUNC_SERIES":
				if _current_scope().type == "with" or (_current_scope().type == "function" and _current_scope().data.has("args")):
					return _indent(-1) + "CharacterActions.LookAround(CH(\'%s\'))" % actor
				elif line.find("<actor") != 1:
					return _indent() + "CharacterActions.LookAround(CH(\'%s\'))" % actor
				return _indent() + "-- TODO: ExecuteCommon: %s" % line
			"CORO_JUMP_HAPPY_FUNC_SERIES":
				if _current_scope().type == "with" or (_current_scope().type == "function" and _current_scope().data.has("args")):
					return _indent(-1) + "CharacterActions.HopOnce(CH(\'%s\'), CH(\'%s\').Direction)" % [actor, actor]
				elif line.find("<actor") != 1:
					return _indent() + "CharacterActions.HopOnce(CH(\'%s\'), CH(\'%s\').Direction)" % [actor, actor]
				return _indent() + "-- TODO: ExecuteCommon: %s" % line
			"CORO_JUMP_ANGRY_FUNC_SERIES":
				if _current_scope().type == "with" or (_current_scope().type == "function" and _current_scope().data.has("args")):
					return _indent(-1) + "CharacterActions.HopTwice(CH(\'%s\'), CH(\'%s\').Direction)" % [actor, actor]
				elif line.find("<actor") != 1:
					return _indent() + "CharacterActions.HopTwice(CH(\'%s\'), CH(\'%s\').Direction)" % [actor, actor]
				return _indent() + "-- TODO: ExecuteCommon: %s" % line
			"CORO_JUMP_SURPRISE_FUNC_SERIES":
				if _current_scope().type == "with" or (_current_scope().type == "function" and _current_scope().data.has("args")):
					return _indent(-1) + "CharacterActions.ScaredJump(CH(\'%s\'), CH(\'%s\').Direction)" % [actor, actor]
				elif line.find("<actor") != 1:
					return _indent() + "CharacterActions.ScaredJump(CH(\'%s\'), CH(\'%s\').Direction)" % [actor, actor]
				return _indent() + "-- TODO: ExecuteCommon: %s" % line
			"CORO_EXPLANATION_FUNC_SERIES":
				if _current_scope().type == "with" or (_current_scope().type == "function" and _current_scope().data.has("args")):
					return _indent(-1) + "CharacterActions.Explain(CH(\'%s\'))" % actor
				elif line.find("<actor") != 1:
					return _indent() + "CharacterActions.Explain(CH(\'%s\'))" % actor
				return _indent() + "-- TODO: ExecuteCommon: %s" % line
			"CORO_HEAD_SHAKE_FUNC_SERIES":
				if _current_scope().type == "with" or (_current_scope().type == "function" and _current_scope().data.has("args")):
					return _indent(-1) + "CharacterActions.ShakeHead(CH(\'%s\'), CH(\'%s\').Direction)" % [actor, actor]
				elif line.find("<actor") != 1:
					return _indent() + "CharacterActions.ShakeHead(CH(\'%s\'), CH(\'%s\').Direction)" % [actor, actor]

				return _indent() + "-- TODO: ExecuteCommon: %s" % line
			_:
				return _indent() + "-- TODO: ExecuteCommon: %s" % line
	
	if _current_scope().type == "with":
		return _indent(-1) + "-- TODO: ExecuteCommon: %s" % line
	return _indent() + "-- TODO: ExecuteCommon: %s" % line

func _convert_wait(line: String) -> String:
	var tokens = _tokenize_line(line)
	if tokens.size() > 1:
		return _indent() + "GAME:WaitFrames(%s)" % tokens[2].strip_edges()
	return _indent() + "-- TODO Wait: %s" % line

func _convert_fade_in(line: String) -> String:
	var tokens = _tokenize_line(line)
	if tokens.size() > 4:
		return _indent() + "GAME:FadeIn(%s)" % tokens[4].strip_edges()
	return _indent() + "-- TODO screen_FadeIn: %s" % line

func _convert_fade_out(line: String) -> String:
	var tokens = _tokenize_line(line)
	if tokens.size() > 4:
		var white = tokens[2].strip_edges()
		var time = tokens[4].strip_edges()
		return _indent() + "GAME:FadeOut(%s, %s)" % [bool(white == "0"), time]
	return _indent() + "-- TODO screen_FadeOut: %s" % line

func _convert_bgm_fade_in(line: String) -> String:
	var tokens = _tokenize_line(line)
	if tokens.size() > 5:
		var song = get_song(tokens[2].strip_edges())
		var fade_time = tokens[4].strip_edges()
		var volume = tokens[6].strip_edges()
		if song.begins_with("Ambient/"):
			context.amb_track = song
			return _indent() + "SOUND:FadeInSE(\"%s\", %s)" % [song, fade_time]
		if volume.to_int() < 256:
			return _indent() + "SOUND:PlayBGM(\"%s\", true, %s)\n%s" % [song, fade_time, _indent() + "SOUND:SetBGMVolume(%s)" % (volume.to_float() / 256.0)]
		if fade_time.to_int() > 0:
			return _indent() + "SOUND:PlayBGM(\"%s\", true, %s)" % [song, fade_time]
		return _indent() + "SOUND:PlayBGM(\"%s\", true)" % song
	return _indent() + "-- TODO bgm_PlayFadeIn: %s" % line

func _convert_bgm_fade_out(line: String) -> String:
	var tokens = _tokenize_line(line)
	if tokens.size() > 1:
		var fadeTime = tokens[2].strip_edges()
		if not context.amb_track.is_empty():
			var song = context.amb_track
			context.amb_track = ""
			return _indent() + "SOUND:FadeOutSE(\"%s\", %s)" % [song, fadeTime]
		return _indent() + "SOUND:FadeOutBGM(%s)" % fadeTime
	return _indent() + "-- TODO bgm_FadeOut: %s" % line

func _convert_sfx(line: String) -> String:
	var tokens = _tokenize_line(line)
	if tokens.size() > 1:
		return _indent() + "SOUND:PlayBattleSE(\"%s\")" % get_sfx(tokens[2].strip_edges())
	return _indent() + "-- TODO se_Play: %s" % line

func _convert_sound_stop(_line: String) -> String:
	return _indent() + "SOUND:StopBGM()"

func _convert_me_play(line: String) -> String:
	var tokens = _tokenize_line(line)
	if tokens.size() > 1:
		return _indent() + "SOUND:PlayFanfare(\"%s\")" % get_ME(tokens[2].strip_edges())
	return _indent() + "-- TODO me_Play: %s" % line

func _convert_back_set_ground(line: String) -> String:
	return _indent() + "-- %s (Should be the map you're currently on, or the map it sends you to next)" % line

func _convert_camera_position_mark(line: String) -> String:
	if _current_scope().type == "with":
		if _current_scope().data.args[0].begins_with("performer"):
			context.camera_performer = _current_scope().data.args[0].substr(9).strip_edges()
			return _indent(-1) + "GAME:MoveCamera(MRKR(\'PERF_%s\').Position.X, MRKR(\'PERF_%s\').Position.Y, 1, false)" % [context.camera_performer, context.camera_performer]
		
		var actor = get_actor(_current_scope().data.args[0].substr(6).strip_edges())
		if actor == "PLAYER":
			return _indent(-1) + "GAME:MoveCamera(0, 0, 1, true)"
		return _indent(-1) + "GAME:MoveCamera(CH(\'%s\').Position.X, CH(\'%s\').Position.Y, 1, false)" % [actor, actor]

	if line.find("<actor") != -1 or line.find("<performer") != -1:
		var tokens = _tokenize_line(line)
		
		if line.find("<performer") != -1:
			context.camera_performer = tokens[0].substr(line.find("<performer") + 10, line.find(">") - line.find("<") - 10).strip_edges()
			return _indent() + "GAME:MoveCamera(MRKR(\'PERF_%s\').Position.X, MRKR(\'PERF_%s\').Position.Y, 1, false)" % [context.camera_performer, context.camera_performer]
		
		var actor = get_actor(tokens[0].substr(line.find("<actor") + 6, line.find(">") - line.find("<") - 6).strip_edges())
		if actor == "PLAYER":
			return _indent() + "GAME:MoveCamera(0, 0, 1, true)"
		return _indent() + "GAME:MoveCamera(CH(\'%s\').Position.X, CH(\'%s\').Position.Y, 1, false)" % [actor, actor]

	return _indent() + "-- TODO camera_SetPositionMark: %s" % line

func _convert_destroy(line: String) -> String:
	if _current_scope().type == "with" or (_current_scope().type == "function" and _current_scope().data.has("args")):
		var actor = get_actor(_current_scope().data.args[0].substr(6).strip_edges())
		return _indent(-1) + "GROUND:Hide(\"%s\")" % [actor]

	if line.find("<actor") != -1:
		var tokens = _tokenize_line(line)
		var actor = get_actor(tokens[0].substr(line.find("<actor") + 6, line.find(">") - line.find("<") - 6).strip_edges())
		return _indent() + "GROUND:Hide(\"%s\")" % [actor]

	return _indent() + "-- TODO Destroy: %s" % line

func _convert_set_animation(line: String) -> String:
	if _current_scope().type == "with" or (_current_scope().type == "function" and _current_scope().data.has("args")):
		var tokens = _tokenize_line(line)
		var actor = get_actor(_current_scope().data.args[0].substr(6).strip_edges())
		if tokens.size() > 1:
			if tokens[2].strip_edges() == "2":
				return _indent(-1) + "GROUND:CharEndAnim(CH(\'%s\'))" % actor
			return _indent(-1) + "GROUND:CharSetAnim(CH(\'%s\'), \"%s\", false)" % [actor, get_animation(tokens[2].strip_edges())]

	if line.find("<actor") != -1:
		var tokens = _tokenize_line(line)
		var actor = get_actor(tokens[0].substr(line.find("<actor") + 6, line.find(">") - line.find("<") - 6).strip_edges())
		if tokens.size() > 1:
			if tokens[2].strip_edges() == "2":
				return _indent() + "GROUND:CharEndAnim(CH(\'%s\'))" % actor
			return _indent() + "GROUND:CharSetAnim(CH(\'%s\'), \"%s\", false)" % [actor, get_animation(tokens[2].strip_edges())]

	return _indent() + "-- TODO SetAnimation: %s" % line

func _convert_wait_animation(line: String) -> String:
	if _current_scope().type == "with" or (_current_scope().type == "function" and _current_scope().data.has("args")):
		# get last line
		var prev_line = output[-1].remove_chars("\t").remove_chars("\n").strip_edges()
		if prev_line.begins_with("GROUND:CharSetAnim"):
			var new_line = prev_line.replace("GROUND:CharSetAnim", "GROUND:CharWaitAnim").replace(", false", "")
			output[-1] = _indent(-1) + new_line
			return ""

	return _indent() + "-- TODO WaitAnimation: %s" % line

func _convert_slide_position_offset(line: String) -> String:
	if _current_scope().type == "with":
		var tokens = _tokenize_line(line)
		var actor = get_actor(_current_scope().data.args[0].substr(6).strip_edges())
		if tokens.size() > 5:
			var duration = tokens[2].strip_edges()
			var x = tokens[4].strip_edges()
			var y = tokens[6].strip_edges()
			return _indent(-1) + "GROUND:AnimateToPosition(CH(\'%s\'), \"None\", CH(\'%s\').Direction, CH(\'%s\').Position.X + %s, CH(\'%s\').Position.Y + %s, 1, %s, 0) -- Replace with GROUND:CharSetDrawEffect(ch, DrawEffect.Shaking) if this is a shaking animation" % [actor, actor, actor, x, actor, y, duration]
	
	return _indent() + "-- TODO SlidePositionOffset: %s" % line

func _convert_move_position_offset(line: String) -> String:
	if _current_scope().type == "with":
		var tokens = _tokenize_line(line)
		var actor = get_actor(_current_scope().data.args[0].substr(6).strip_edges())
		if tokens.size() > 5:
			var speed = int(tokens[2].strip_edges())
			var x = tokens[4].strip_edges()
			var y = tokens[6].strip_edges()
			return _indent(-1) + "ExplorerEssentials.MoveToPositionOffset(CH(\'%s\'), %s, %s, %s, %s)" % [actor, x, y, str(floori(normalize_speed(speed)) > 2), floori(normalize_speed(speed))]
	
	if line.find("<actor") != -1:
		var tokens = _tokenize_line(line)
		var actor = get_actor(tokens[0].substr(line.find("<actor") + 6, line.find(">") - line.find("<") - 6).strip_edges())
		if tokens.size() > 5:
			var speed = int(tokens[2].strip_edges())
			var x = tokens[4].strip_edges()
			var y = tokens[6].strip_edges()
			return _indent() + "ExplorerEssentials.MoveToPositionOffset(CH(\'%s\'), %s, %s, %s, %s)" % [actor, x, y, str(floori(normalize_speed(speed)) > 2), floori(normalize_speed(speed))]

	return _indent() + "-- TODO MovePositionOffset: %s" % line

func _convert_move_position_mark(line: String) -> String:
	if _current_scope().type == "with":
		var tokens = _tokenize_line(line)
		if _current_scope().data.args[0].begins_with("performer") and _current_scope().data.args[0].substr(9).strip_edges() == context.camera_performer:
			if tokens.size() > 3:
				var speed = int(tokens[2].strip_edges())
				var mark = get_position_mark(line.substr(line.find("Position<")))
				context.position_marks.push_back(mark)
				return _indent(-1) + "ExplorerEssentials.MoveCameraAtSpeed(%s, %s, %s, false)" % [mark.x, mark.y, floori(normalize_speed(speed))]
				
		var actor = get_actor(_current_scope().data.args[0].substr(6).strip_edges())
		if line.find("Position<") != -1:
			var speed = int(tokens[2].strip_edges())
			var mark = get_position_mark(line.substr(line.find("Position<")))
			return _indent(-1) + "GROUND:MoveToPosition(CH(\'%s\'), %s, %s, %s, %s)" % [actor, mark.x, mark.y, str(floori(normalize_speed(speed)) > 2), floori(normalize_speed(speed))]
		if tokens.size() > 5:
			var speed = tokens[2].strip_edges()
			var x = tokens[4].strip_edges()
			var y = tokens[6].strip_edges()
			return _indent(-1) + "GROUND:MoveToPosition(CH(\'%s\'), CH(\'%s\').Position.X + %s, CH(\'%s\').Position.Y + %s, %s, %s)" % [actor, actor, x, actor, y, str(floori(normalize_speed(speed)) > 2), floori(normalize_speed(speed))]
	
	if line.find("<actor") != -1 or line.find("<performer") != -1:
		var tokens = _tokenize_line(line)

		if line.find("<performer") != -1 and context.camera_performer == tokens[0].substr(line.find("<performer") + 10, line.find(">") - line.find("<") - 10).strip_edges():
			if tokens.size() > 3:
				var speed = int(tokens[2].strip_edges())
				var mark = get_position_mark(line.substr(line.find("Position<")))
				context.position_marks.push_back(mark)
				return _indent(-1) + "ExplorerEssentials.MoveCameraAtSpeed(%s, %s, %s, false)" % [mark.x, mark.y, floori(normalize_speed(speed))]
		
		var actor = get_actor(tokens[0].substr(line.find("<actor") + 6, line.find(">") - line.find("<") - 6).strip_edges())
		if line.find("Position<") != -1:
			var speed = int(tokens[2].strip_edges())
			var mark = get_position_mark(line.substr(line.find("Position<")))
			return _indent() + "GROUND:MoveToPosition(CH(\'%s\'), %s, %s, %s, %s)" % [actor, mark.x, mark.y, str(floori(normalize_speed(speed)) > 2), floori(normalize_speed(speed))]
		if tokens.size() > 5:
			var speed = tokens[2].strip_edges()
			var x = tokens[4].strip_edges()
			var y = tokens[6].strip_edges()
			return _indent() + "GROUND:MoveToPosition(CH(\'%s\'), CH(\'%s\').Position.X + %s, CH(\'%s\').Position.Y + %s, %s, %s)" % [actor, actor, x, actor, y, str(floori(normalize_speed(speed)) > 2), floori(normalize_speed(speed))]

	return _indent() + "-- TODO MovePositionMark: %s" % line

func _convert_set_effect(line: String) -> String:
	if _current_scope().type == "with":
		var tokens = _tokenize_line(line)
		var actor = get_actor(_current_scope().data.args[0].substr(6).strip_edges())
		if tokens.size() > 1:
			var effect = tokens[2].strip_edges()
			var cycles = floori(int(tokens[4].strip_edges()) / 3.0)
			return _indent(-1) + "GROUND:CharSetEmote(CH('%s'), \"%s\", %s)" % [actor, get_emote(effect), cycles]

	if line.find("<actor") != -1:
		var tokens = _tokenize_line(line)
		var actor = get_actor(tokens[0].substr(line.find("<actor") + 6, line.find(">") - line.find("<") - 6).strip_edges())
		if tokens.size() > 1:
			var effect = tokens[2].strip_edges()
			var cycles = floori(int(tokens[4].strip_edges()) / 3.0)
			return _indent() + "GROUND:CharSetEmote(CH('%s'), \"%s\", %s)" % [actor, get_emote(effect), cycles]

	return _indent() + "-- TODO SetEffect: %s" % line

func _convert_wait_effect(_line: String) -> String:
	if _current_scope().type == "with":
		return _indent(-1) + "GAME:WaitFrames(30)"
	return _indent() + "GAME:WaitFrames(30)"

func _convert_turn_to_direction_lives(line: String) -> String:
	if _current_scope().type == "with" or (_current_scope().type == "function" and _current_scope().data.has("args")):
		var tokens = _tokenize_line(line)
		var actor = get_actor(_current_scope().data.args[0].substr(6).strip_edges())
		if tokens.size() > 1:
			var speed = int(tokens[2].strip_edges())
			#var unk_2 = tokens[4].strip_edges()
			var chara = get_actor(tokens[6].strip_edges())
			return _indent(-1) + "GROUND:CharTurnToCharAnimated(CH(\'%s\'), CH(\'%s\'), %s)" % [actor, chara, floori(normalize_speed(speed / 2.0))]

	if line.find("<actor") != -1:
		var tokens = _tokenize_line(line)
		var actor = get_actor(tokens[0].substr(line.find("<actor") + 6, line.find(">") - line.find("<") - 6).strip_edges())
		if tokens.size() > 1:
			var speed = int(tokens[2].strip_edges())
			#var unk_2 = tokens[4].strip_edges()
			var chara = get_actor(tokens[6].strip_edges())
			return _indent() + "GROUND:CharTurnToCharAnimated(CH(\'%s\'), CH(\'%s\'), %s)" % [actor, chara, floori(normalize_speed(speed / 2.0))]

	return _indent() + "-- %s" % line

func _convert_turn_to_direction(line: String) -> String:
	if _current_scope().type == "with":
		var tokens = _tokenize_line(line)
		var actor = get_actor(_current_scope().data.args[0].substr(6).strip_edges())
		if tokens.size() > 1:
			var speed = int(tokens[2].strip_edges())
			#var unk_2 = tokens[4].strip_edges()
			var dir = get_dir(tokens[6].strip_edges())
			return _indent(-1) + "GROUND:CharAnimateTurnTo(CH(\'%s\'), %s, %s)" % [actor, dir, floori(normalize_speed(speed / 2.0))]
	
	if line.find("<actor") != -1:
		var tokens = _tokenize_line(line)
		var actor = get_actor(tokens[0].substr(line.find("<actor") + 6, line.find(">") - line.find("<") - 6).strip_edges())
		if tokens.size() > 1:
			var speed = int(tokens[2].strip_edges())
			#var unk_2 = tokens[4].strip_edges()
			var dir = get_dir(tokens[6].strip_edges())
			return _indent() + "GROUND:CharAnimateTurnTo(CH(\'%s\'), %s, %s)" % [actor, dir, floori(normalize_speed(speed / 2.0))]

	return _indent() + "-- %s" % line

func _convert_wait_execute_lives(line: String) -> String:
	return _indent() + "-- !! %s" % line

func _convert_call_common(line: String) -> String:
	var tokens = _tokenize_line(line)
	if tokens.size() > 1:
		match tokens[2].strip_edges():
			"CORO_HANYOU_SAVE_FUNC":
				return _indent() + "ExplorerEssentials.AutosaveWithNotification()"
			"CORO_MESSAGE_CLOSE_WAIT_FUNC":
				return _indent() + "-- !! %s" % line 
			_:
				return _indent() + "-- TODO CallCommon: %s" % line
	return _indent() + "-- TODO CallCommon: %s" % line

func _convert_set_face(line: String) -> String:
	var tokens = _tokenize_line(line)
	if tokens.size() > 4:
		var actor = get_actor(tokens[2].strip_edges())
		var face = tokens[4].strip_edges()
		context.merge({"speaker": actor}, true)
		if actor == "PLAYER":
			return _indent() + "ExplorerEssentials.SetSpeakerHero()\n%s" % (_indent() + "UI:SetSpeakerEmotion(\"%s\")" % get_emotion(face))
		return _indent() + "UI:SetSpeaker(CH('%s'))\n%s" % [actor, _indent() + "UI:SetSpeakerEmotion(\"%s\")" % get_emotion(face)]
	return _indent() + "-- TODO message_SetFace: %s" % line

func _convert_msg_empty_actor(_line: String) -> String:
	return _indent() + "ExplorerEssentials.SetSpeakerUnknown(nil)"

func _convert_message_talk(line: String) -> String:
	if line.begins_with("message_Explanation"):
		output.push_back(_indent() + "UI:ResetSpeaker()")
		context.speaker = "NARRATION"
		context.msg_type = "voiceover"
	
	var tokens = _tokenize_line(line)
	if tokens.size() > 1:
		_push_scope("message", {"string": "nil"})
		_process_line(line.substr(line.find("{") + 1).strip_edges())
		return ""
	return _indent() + "-- TODO message_Talk: %s" % line

func _convert_if(line: String) -> String:
	var tokens = _tokenize_line(line)
	if tokens.size() > 1:
		var arg = tokens[2].strip_edges()
		if arg == "$HERO_TALK_KIND":
			arg = "hTalkKind"
		if arg == "$PARTNER_TALK_KIND":
			arg = "pTalkKind"
		_push_scope("if", {"args": [arg], "cases": {}})
		_process_line(line.substr(line.find("{") + 1))
		return ""
	return _indent() + "-- TODO message_SwitchMonologue: %s" % line

func _convert_switch_talk(line: String) -> String:
	var tokens = _tokenize_line(line)
	if tokens.size() > 1:
		var arg = tokens[2].strip_edges()
		if arg == "$HERO_TALK_KIND":
			arg = "hTalkKind"
		if arg == "$PARTNER_TALK_KIND":
			arg = "pTalkKind"
		_push_scope("switch", {"args": [arg], "cases": {}})
		_process_line(line.substr(line.find("{") + 1))
		return ""
	return _indent() + "-- TODO message_SwitchMonologue: %s" % line

func _convert_case(line: String) -> String:
	var tokens = _tokenize_line(line)
	if tokens.size() > 1 and _current_scope().type == "switch":
		_current_scope().data.cases.merge({tokens[0].replace("case ", "").strip_edges(): {}})
		_push_scope("switch_branch", {"key": tokens[0].replace("case ", "").strip_edges(), "lines": []})
		_process_line(line.substr(line.find("{") + 1))
		return ""
	return _indent() + "-- TODO case: %s" % line

func _close_switch_scope() -> String:
	var scope = _current_scope()
	var arg = scope.data.args[0]
	var cases = scope.data.cases
	var res = ""

	# special cases for hTalkKind and pTalkKind
	if arg == "hTalkKind" or arg == "pTalkKind":
		var keys = []
		var values = []
		var is_hero = (arg == "hTalkKind")

		if is_hero:
			keys = [extracted_strings.keys()[-2], extracted_strings.keys()[-1]]
			values = [extracted_strings.values()[-2], extracted_strings.values()[-1]]
		else:
			keys = [extracted_strings.keys()[-3], extracted_strings.keys()[-2], extracted_strings.keys()[-1]]
			values = [extracted_strings.values()[-3], extracted_strings.values()[-2], extracted_strings.values()[-1]]

		var dialogue_changes = false
		var reference_key = keys.front()

		# check if dialogue changes, aka make sure the strings aren't all the same
		for value in values:
			if value != values[0]:
				dialogue_changes = true
				break

		if dialogue_changes:
			var kinds = []
			if is_hero:
				kinds = [0, 1]
			else:
				kinds = [1, 0, 2]
			
			for i in range(keys.size()):
				extracted_strings.merge({"%s_%s" % [reference_key, kinds[i]]: values[i]}, true)
				extracted_strings.erase(keys[i])
			context.msg_counts.merge({context.speaker: context.msg_counts[context.speaker] - (keys.size() - 1)}, true)

			res += _indent(-1) + "UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['%s_'..tostring(%s)]))" % [reference_key, arg]
		else:
			for key in keys:
				extracted_strings.erase(key)
			context.msg_counts.merge({context.speaker: context.msg_counts[context.speaker] - (keys.size() - 1)}, true)
			extracted_strings.merge({reference_key: values[0]}, true)
			res += _indent(-1) + "UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['%s']))" % reference_key
		
		return res
		

	for case in cases.keys():
		var first = (case == cases.keys()[0])
		if case == "default":
			res += _indent(-1) + "else\n"
		elif first:
			res += _indent(-1) + "if %s == %s then\n" % [arg, case]
		else:
			res += _indent(-1) + "else if %s == %s then\n" % [arg, case]
		
		for line in cases[case]:
			res += line + "\n"
	res += _indent(-1) + "end\n"
	return res

func _convert_message(line: String) -> String:
	var speaker = context.get("speaker", "nil")
	var start = line.find("\"")
	var end = line.find("\",", start + 1)

	if line.find("\"\"\"") == start:
		start += 2
		end -= 2

	if start != -1 and end != -1 and end > start:
		var arg_count = 0
		var args := []
		var message = line.substr(start + 1, end - start - 1)
		message = message.replace("[K]", "[pause=0]")
		message = message.replace("[C]", "[br]")
		message = message.replace("[W:", "[pause=")
		if message.find("[CN]") != -1:
				output.push_back(_indent(-1) + "UI:SetCenter(true)")
				context.text_centered = true
				message = message.replace("[CN]", "")
		for i in message.count("["):
			if message.find("[hero]") != -1:
				message = message.erase(message.find("[hero]"), 6).insert(message.find("[hero]"), "{%s}" % arg_count)
				args.push_back("CH('PLAYER'):GetDisplayName()")
				arg_count += 1
			if message.find("[partner]") != -1:
				message = message.erase(message.find("[partner]"), 9).insert(message.find("[partner]"), "{%s}" % arg_count)
				args.push_back("CH('PARTNER'):GetDisplayName()")
				arg_count += 1
			if message.find("[c_kind:PLAYER]") != -1:
				message = message.erase(message.find("[c_kind:PLAYER]"), 6).insert(message.find("[c_kind:PLAYER]"), "{%s}" % arg_count)
				args.push_back("_DATA:GetMonster(CH(\'PLAYER\').CurrentForm.Species):GetColoredName()")
				arg_count += 1
			if message.find("[c_kind:ATTENDANT1]") != -1:
				message = message.erase(message.find("[c_kind:ATTENDANT1]"), 9).insert(message.find("[c_kind:ATTENDANT1]"), "{%s}" % arg_count)
				args.push_back("_DATA:GetMonster(CH(\'PARTNER\').CurrentForm.Species):GetColoredName()")
				arg_count += 1
			if message.find("[team]") != -1:
				message = message.erase(message.find("[team]"), 6).insert(message.find("[team]"), "{%s}" % arg_count)
				args.push_back("GAME:GetTeamName()")
				arg_count += 1
			if message.find("[CS:N]") != -1:
				var astart = message.find("[CS:N]")
				var aend = message.find("[CR]", astart + 1)
				var name = message.substr(astart + 6, aend - astart - 6)
				args.push_back("CH('%s'):GetDisplayName()" % name.to_upper().strip_edges())
				message = message.erase(astart, aend - astart + 4).insert(astart, "{%s}" % arg_count)
				arg_count += 1
			if message.find("[CS:I]") != -1:
				var astart = message.find("[CS:I]")
				var aend = message.find("[CR]", astart + 1)
				var name = message.substr(astart + 6, aend - astart - 6)
				args.push_back("RogueEssence.Dungeon.InvItem(\"%s\"):GetDisplayName()" % name.to_camel_case().to_lower())
				message = message.erase(astart, aend - astart + 4).insert(astart, "{%s}" % arg_count)
				arg_count += 1
			if message.find("[FT:1]") != -1:
				var astart = message.find("[FT:1]")
				var aend = message.find("[FT:0]", astart + 1)
				var text = message.substr(astart + 6, aend - astart - 6).to_upper()
				message = message.erase(astart, aend - astart + 4).insert(astart, to_unown(text))

		var msg_count = 1
		if context.msg_counts.has(speaker):
			msg_count = context.msg_counts[speaker] + 1
		
		var var_name = "%s_%s_%s" % [config.StringPrefix, speaker, msg_count]
		while extracted_strings.has(var_name):
			var_name = "%s_%s_%s" % [config.StringPrefix, speaker, msg_count]
			msg_count += 1
		extracted_strings.merge({var_name: message})
		context.msg_counts.merge({speaker: msg_count}, true)
		if _current_scope().type == "switch_branch":
			var lines = _current_scope().data.lines
			lines.push_back(_indent(-1) + "UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings[\'%s\']%s))" % [var_name, ", " + ", ".join(args)])
			_current_scope()["data"].merge({"lines": lines, "args": args}, true)
			_close_scope()
			_process_line(line.substr(line.find("}") + 1).strip_edges())
			return ""
		if _current_scope().type == "message":
			_current_scope()["data"].merge({"string": var_name, "args": args}, true)
			_close_scope()
			return ""
		#return _indent() + "UI:ShowMessage(%s, %s)" % [
	return _indent() + "-- %s" % line

func _tokenize_line(line: String) -> PackedStringArray:
	var res: PackedStringArray = []
	var token = ""
	const SYMBOLS = ["(", ")", ",", "{", "}", "=", "[", "]", ":"]
	for c in line:
		if SYMBOLS.has(c):
			if token.length() > 0:
				res.append(token.strip_edges())
				token = ""
				res.append(c)
		else:
			token += c
	if token.length() > 0:
		res.append(token.strip_edges())
	return res

static func to_unown(text: String) -> String:
	var res = ""
	for c in range(text):
		var u = text.unicode_at(c)
		res.push_back("\\u%s" % (u + 0xE000))
	
	return res

static func get_position_mark(line: String) -> Dictionary:
	if not line.begins_with("Position<"):
		return {}
	
	var res = {
		"name": "",
		"x": 0,
		"y": 0
	}

	var tokens = line.split(",")
	res.set("name", tokens[0].substr(tokens[0].find("\'") + 1, tokens[0].find("\'", tokens[0].find("\'") + 1) - tokens[0].find("\'") + 1))
	res.set("x", floori(float(tokens[1].strip_edges()) * 8.0))
	res.set("y", floori(float(tokens[2].left(tokens[2].find(">")).strip_edges()) * 8.0))

	return res

static func normalize_speed(speed: int) -> float:
	if speed >= 32770:
		return max((float(speed) / 32770.0), 1)
	return max(speed, 1)

static func get_dir(id: String) -> String:
	const DIRS = {
	"DIR_UP": "Dir8.Up",
	"DIR_DOWN": "Dir8.Down",
	"DIR_LEFT": "Dir8.Left",
	"DIR_RIGHT": "Dir8.Right",
	"DIR_UPLEFT": "Dir8.UpLeft",
	"DIR_UPRIGHT": "Dir8.UpRight",
	"DIR_DOWNLEFT": "Dir8.DownLeft",
	"DIR_DOWNRIGHT": "Dir8.DownRight"
	}
	if DIRS.has(id):
		return DIRS[id]
	return "UNK_%s" % id

static func get_actor(id: String) -> String:
	
	const ACTORS = {
	"ACTOR_PLAYER": "PLAYER",
	"ACTOR_ATTENDANT1": "PARTNER",
	"ACTOR_NPC_JUPUTORU": "Grovyle",
	"ACTOR_NPC_PERAPPU": "Chatot",
	"ACTOR_NPC_GUREGGURU": "Croagunk",
	"ACTOR_NPC_CHIRIIN": "Chimecho",
	"ACTOR_NPC_DIGUDA": "Diglett",
	"ACTOR_NPC_DOGOOMU": "Loudred",
	"ACTOR_NPC_DAGUTORIO": "Dugtrio",
	"ACTOR_NPC_PUKURIN": "Wigglytuff",
	"ACTOR_NPC_BIPPA": "Bidoof",
	"ACTOR_NPC_HEIGANI": "Corphish",
	"ACTOR_NPC_KIMAWARI": "Sunflora"
	}

	if ACTORS.has(id):
		return ACTORS[id]
	return "UNK_%s" % id

static func get_sfx(id: String) -> String:
	const SFX = {
	"5143": "EVT_Battle_Flash",
	"6408": "EVT_CH02_Guild_Gate_Open",
	"6411": "EVT_CH02_Box_Open",
	"6410": "EVT_CH02_Item_Place",
	"8961": "EVT_Emote_Sweatdrop",
	"8962": "EVT_Emote_Confused",
	"8963": "EVT_Emote_Confused_2",
	"8964": "EVT_Emote_Exclaim",
	"8965": "EVT_Emote_Exclaim_Idea",
	"8966": "EVT_Emote_Exclaim_Realized",
	"8967": "EVT_Emote_Exclaim_Surprised",
	"8968": "EVT_Emote_Shock",
	"8969": "EVT_Emote_Shock_Bad",
	"8970": "EVT_Emote_Complain",
	"8971": "EVT_Emote_Complain_2",
	"8972": "EVT_Emote_Sweating",
	"8973": "EVT_Emote_Shock_2",
	"8974": "EVT_Emote_Startled",
	"8976": "EVT_Minigame_Correct",
	"8977": "EVT_Minigame_Wrong",
	"8978": "EVT_Emote_Exclaim_2",
	}
	if SFX.has(id):
		return SFX[id]
	return "UNK_%s" % id

static func get_song(id: String) -> String:
	const BGM = {
	"BGM_WIGGLYTUFFS_GUILD": "008 - Wigglytuff's Guild.ogg",
	"BGM_GUILDMASTER_WIGGLYTUFF": "009 - Guildmaster Wigglytuff.ogg",
	"BGM_WIGGLYTUFFS_GUILD_REMIX": "011 - Wigglytuff's Guild Remix.ogg"
	}
	const AMB = {
	"BGM_OCEAN1": "AMB_Ocean.ogg"
	}
	if BGM.has(id):
		return BGM[id]
	if AMB.has(id):
		return "Ambient/" + AMB[id]
	return "UNK_%s.ogg" % id

static func get_emotion(id: String) -> String:
	const EMOTIONS = {
	"FACE_NORMAL": "Normal",
	"FACE_HAPPY": "Happy",
	"FACE_PAIN": "Pain",
	"FACE_JOYOUS": "Joyous",
	"FACE_SAD": "Sad",
	"FACE_INSPIRED": "Inspired",
	"FACE_SURPRISED": "Surprised",
	"FACE_ANGRY": "Angry",
	"FACE_SIGH": "Sigh",
	"FACE_DIZZY": "Dizzy"
	}
	if EMOTIONS.has(id):
		return EMOTIONS[id]
	return "UNK_%s" % id

static func get_animation(id: String) -> String:
	const ANIMS = {
	"_76": "UNK",
	"66": "Pose",
	"_63": "UNK",
	"_29": "UNK",
	"26": "Nod",
	"9": "Charge",
	"5": "Walk",
	"2": "None"
	}
	if ANIMS.has(id):
		return ANIMS[id]
	return "UNK_%s" % id

static func get_emote(id: String) -> String:
	const EMOTES = {
	"EFFECT_SHOCKED": "shock",
	"EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM": "sweating",
	"EFFECT_SWEAT_DROP": "sweatdrop",
	"EFFECT_SWEAT_DROP_SLOW": "sweatdrop",
	"EFFECT_TWO_ARROWS_AT_SIDE_LEFT": "notice",
	"EFFECT_TWO_ARROWS_AT_SIDE_RIGHT": "notice",
	"EFFECT_EXCLAMATION_MARK": "exclaim",
	"EFFECT_ANGRY": "angry",
	"EFFECT_QUESTION_MARK": "question",
	"EFFECT_JOYOUS": "glowing",
	"EFFECT_LAUGHING": "happy",
	"EFFECT_NONE": "none"
	}
	if EMOTES.has(id):
		return EMOTES[id]
	return "UNK_%s" % id

static func get_ME(id: String) -> String:
	const ME = {
	"1": "Fanfare/LevelUp", # level up sound
	"2": "Fanfare/RankUp", # rank up sound
	"3": "Fanfare/LeaveTeam", # removed from assembly
	"4": "Fanfare/Item", # item reward
	"_5": "UNK", # se unlock / legendary recruit
	"6": "Fanfare/NewArea", # map clears up
	"7": "Fanfare/Note", # message notification sound
	"8": "Fanfare/Promotion", # (unsure if this is the correct sfx) evolving
	"9": "Fanfare/Treasure", # (unsure if this is the correct sfx) great item reward
	"_10": "UNK", # "something's stirring..."
	"_11": "UNK", # 10 but louder
	}
	if ME.has(id):
		return ME[id]
	return "UNK_%s" % id

static func get_icon(id: String) -> String:
	const ICON = {
		"[M:B0]": "STRINGS:LocalKeyString(7)", # Start
		"[M:B1]": "STRINGS:LocalKeyString(8)", # Select
		"[M:B2]": "STRINGS:LocalKeyString(2)", # A
		"[M:B3]": "STRINGS:LocalKeyString(3)", # B
		"[M:B4]": "STRINGS:LocalKeyString(5)", # X
		"[M:B5]": "STRINGS:LocalKeyString(9)", # Y
		"[M:B6]": "STRINGS:LocalKeyString(4)", # L
		"[M:B7]": "STRINGS:LocalKeyString(6)", # R
		"[M:B8]": "\\uF008", # D-Pad
		".[M:B9]": "", # - Block
		".[M:B10]": "", # Check Block
		".[M:B11]": "",	# X Block
		".[M:B12]": "",	# Up Block
		".[M:B13]": "",	# Down Block
		".[M:B14]": "",	# Left Block
		".[M:B15]": "",	# Right Block
		".[M:B16]": "",	# Rewind Block
		".[M:B17]": "",	# FF Block
		".[M:B18]": "",	# Sort Block
		".[M:B19]": "",	# Search Block
		"[M:B20]": "\\uF009", # D-Pad U-D Block
		"[M:B21]": "\\uF00A", # D-Pad L-R Block
		".[M:B22]": "",	# - Gold Block
		".[M:B23]": "",	# Check Gold Block
		".[M:B24]": "",	# X Gold Block
		".[M:B25]": "",	# Up Gold Block
		".[M:B26]": "",	# Down Gold Block
		".[M:B27]": "",	# Left Gold Block
		".[M:B28]": "",	# Right Gold Block
		".[M:B29]": "",	# Rewind Gold Block
		".[M:B30]": "",	# FF Gold Block
		".[M:B31]": "",	# Sort Gold Block
		".[M:B32]": "",	# Search Gold Block
		"[M:S0]": "\\uE024", # P-Money
		"[M:S1]": " ", # Space
		"[M:S2]": "\\uE10A", # Check
		"[M:S3]": "\\uE10C", # Star
		"[M:S4]": "\\uE10B", # X
		".[M:S5]": "", # Check X
		".[M:S6]": "", # Bag
		".[M:S7]": "", # Hut
		".[M:H0]": "", # Heart pink vsmall
		".[M:H1]": "", # Heart pink small
		".[M:H2]": "", # Heart pink
		".[M:H3]": "", # Heart pink big
		".[M:H4]": "", # Heart yellow vsmall
		".[M:H5]": "", # Heart yellow small
		".[M:H6]": "", # Heart yellow
		".[M:H7]": "", # Heart yellow big
		".[M:H8]": "", # Heart pink unshaded
		"[M:R0]": "—", # Dash
		"[M:R1]": "\\uE10D", # Half Star
		".[M:R2]": "", # Amber Gem?
		"[M:R3]": "\\uE10E", # Unopened Mail
		"[M:R4]": "\\uE10F", # Open Mail
		"[M:R5]": "", # Letter
		"[M:R6]": "\\uE110", # Newspaper
		"[M:R7]": "\\uE111", # ! Box
		".[M:R8]": "", # Wi-Fi
		".[M:R9]": "", # E-Mail
		"[M:T0]": ":", # Colon
		"[M:T1]": "\\uE040", # Text Bubble
		"[M:T2]": "\\u2423", # Space Indicator
		".[M:T3]": "", # Space Indicator Red
		".[M:T4]": "", # Kanji 'Kari' (temp)
		".[M:T5]": "", # Kanji 'Su' (end)
		".[M:T6]": "", # Katakana 'De'
		"[M:I0]": "\\uE0AD", # TM
		"[M:I1]": "\\uE0A9" # Orb
	}
	if ICON.has(id):
		return ICON[id]
	return id