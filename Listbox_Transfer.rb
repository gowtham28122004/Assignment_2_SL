package require Tk

# Create the main window
wm title . "Listbox Transfer Example"

# Create two listboxes
listbox .listbox1 -selectmode single
listbox .listbox2 -selectmode single

# Pack the listboxes
pack .listbox1 .listbox2 -side left -padx 10

# Add some items to the first listbox
foreach item {Item1 Item2 Item3 Item4 Item5} {
    .listbox1 insert end $item
}

# Define the function to move item from listbox1 to listbox2
proc move_item {args} {
    set selection [.listbox1 curselection]
    if {[llength $selection] > 0} {
        set item [.listbox1 get $selection]
        .listbox2 insert end $item
    }
}

# Define the function to remove item from listbox2
proc remove_item {args} {
    set selection [.listbox2 curselection]
    if {[llength $selection] > 0} {
        .listbox2 delete $selection
    }
}

# Bind the events
bind .listbox1 <<ListboxSelect>> move_item
bind .listbox2 <<ListboxSelect>> remove_item
