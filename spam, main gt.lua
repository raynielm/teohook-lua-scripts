while true do
sleep (5500) -- in between brackets add interval time 1000 = 1 second
sendPacket("action|input\n|"text"|Spam 1", 2)
sleep(5500) -- in between brackets add interval time 1000 = 1 second
sendPacket("action|input\n|"text"|Spam 2", 2)
sleep (1000) -- you can choose to delete this sleep or keep it
end