tell application "System Events" to set frontmost of process "Wirecast" to true --Checks to see if Wirecast is the current window so we can start the stream
tell application "Wirecast"
	set my_doc to last document --Opens the last Wirecast document this should be the SermonAudioSream document
	start broadcasting my_doc --Starts the Wirecast stream to Sermon Audio
	set my_layer to the layer 1 of my_doc --Variable sets the Layer row with all of our videos/images to my_layer so we can switch shots later
	set all_shots to shots of my_layer --Variable for the shots in the my_layer variable so we can switch shots
	set active shot of my_layer to item 2 of all_shots
	go my_doc --Runs all the stuff above 
	
	delay 180 --Wait 3 minutes
	tell application "System Events" to set frontmost of process "Wirecast" to true --Checks to see if Wirecast is the current window so we can switch shots
	set active shot of my_layer to item 3 of all_shots --Switches to the intro video shot 
	go my_doc
	
	delay 120 --Wait 2 min
	tell application "System Events" to set frontmost of process "Wirecast" to true --Checks to see if Wirecast is the current window so we can switch shots
	set active shot of my_layer to item 4 of all_shots --Switches to the ATEM Video Switcher shots
	go my_doc
	
end tell  
