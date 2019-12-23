local radioStatus = 0

function OnKeyPress(key)
    if key == "Q" then
        local inVehicle = IsPlayerInVehicle()
        if inVehicle == true then
            if radioStatus == 1 then
                AddPlayerChat("Radio is turning off...")
                DestroySound(track)
                radioStatus = 0
            else
                AddPlayerChat("Radio is turning on...")
                AddPlayerChat("Before you are getting of the vehicle press Q again.")
                AddPlayerChat("If the song stopped, press Q again to start a new song.")
                local tracknumber = Random(1,3) -- Generates random number, make sure to edit this number to how much tracks u have.
                track = CreateSound("track"..tracknumber..".mp3")
                radioStatus = 1
            end
        end
	end
end
AddEvent("OnKeyPress", OnKeyPress)
