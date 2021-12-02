function magplant(varlist)
    if varlist[0]:find("OnDialogRequest") and varlist[1]:find("end_dialog|itemsucker") then
        totalitem = varlist[1]:match("add_textbox|The machine contains (%d+)")
        log(totalitem)
        pkt = string.format([[action|dialog_return
            dialog_name|itemsucker
            tilex|%d|
            tiley|%d|
            buttonClicked|retrieveitem
            
            chk_enablesucking|1
            ]], varlist[1]:match("embed_data|tilex|(%d+)"), varlist[1]:match("embed_data|tiley|(%d+)"))
    
        sendPacket(false, pkt, 2)
        return true
    end
    if varlist[0]:find("OnDialogRequest") and varlist[1]:find("end_dialog|itemremovedfromsucker")then
        pkt2 = string.format([[action|dialog_return
            dialog_name|itemremovedfromsucker
            tilex|%d|
            tiley|%d|
            itemtoremove|%d
            ]], varlist[1]:match("embed_data|tilex|(%d+)"), varlist[1]:match("embed_data|tiley|(%d+)"),totalitem)
        sendPacket(false, pkt2, 2)
        return true
    end
end

addHook("OnVarlist", "emptymag", magplant)