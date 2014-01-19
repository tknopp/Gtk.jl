using Gtk.ShortNames


function main()
    builder = Builder("builder.xml")
    win = G_.object(builder, "mainWindow")
 
    signal_connect( G_.object(builder, "imagemenuitem1") , "activate") do widget
        dlg = FileChooserDialog("Select file", NullContainer(), FileChooserAction.OPEN,
                        Stock.CANCEL, Response.CANCEL,
                        Stock.OPEN, Response.ACCEPT)
    end    

    showall(win)
end

main()
#wait(Condition())