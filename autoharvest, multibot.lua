for _, tile in pairs(getTiles()) do
if tile.fg == 5666 then -- itemid here
findPath(tile.pos.x, tile.pos.y)
sleep(330)
pkt = {}
pkt.type = 3
pkt.int_data = 18
pkt.pos_x = getLocal().pos.x
pkt.pos_y = getLocal().pos.y
pkt.int_x = tile.pos.x
pkt.int_y = tile.pos.y
sendPacketRaw(pkt)
end
end
