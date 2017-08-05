hs.hotkey.bind({"cmd", "alt", "ctrl"}, "up", function()
    volumeUp(5)
end)

hs.hotkey.bind({"cmd", "alt", "ctrl"}, "down", function()
    volumeDown(5)
end)

function volumeUp (increase)
  hs.audiodevice.defaultOutputDevice():setVolume(hs.audiodevice.current().volume + increase)
  showVol()
end

function volumeDown (increase)
  hs.audiodevice.defaultOutputDevice():setVolume(hs.audiodevice.current().volume - increase)
  showVol()
end
  
function showVol ()
   hs.alert.closeAll()
   local volume = hs.audiodevice.current().volume
   hs.alert.show(math.floor(volume))
end