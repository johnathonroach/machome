"Mac Vim Things
if has("gui_macvim")

	"Disable Printing in MacVim
	macmenu &File.Print key=<nop>
	macm &File.Print key=<nop>
    macm Edit.Find.Use\ Selection\ for\ Find key=<nop>
	"set mac ligatures only if we are in MacVim	
	set macligatures
    
    "MacVim specific stylings
    set foldcolumn=1
    hi foldcolumn guibg=background

endif



