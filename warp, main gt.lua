function hook(packet, type)
if packet:find("action|input") then--                      DO /warp WORLDNAME
text = packet:gsub("action|input\n|text|", "")
if text:find("/") then
cmd = text:gsub("/", "")
if cmd:find("warp ") then
world = cmd:gsub("warp ", "")
log("``1 warping to:`5 "..world.."`4...")
sendPacket(false, "action|join_request\nname|"..world, 3)
return true
end
end
end
end

addHook("Packet", "warphook", hook)






