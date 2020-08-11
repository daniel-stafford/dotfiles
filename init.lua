wifiwatcher = hs.wifi.watcher.new(function ()
  net = hs.wifi.currentNetwork()
  if net==nil then
      hs.notify.show("You lost Wi-Fi connection","","","")
  else
      hs.notify.show("Connected to Wi-Fi network","",net,"")
  end
end)
wifiwatcher:start()

hs.loadSpoon("AClock")
hyper = {'cmd', 'alt'}

hs.hotkey.bind(hyper, '[', function() spoon.AClock:toggleShow() end)