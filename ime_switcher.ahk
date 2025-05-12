f_is_down := false
j_is_down := false

$*f:: {
    global f_is_down := true
    CheckTrigger()
    if !j_is_down {
        Send("f")
    }
}

$*f up:: {
    global f_is_down := false
}

$*j:: {
    global j_is_down := true
    CheckTrigger()
    if !f_is_down {
        Send("j")
    }
}

$*j up:: {
    global j_is_down := false
}

CheckTrigger() {
    global f_is_down, j_is_down
    if (f_is_down && j_is_down) {
        Send("{Ctrl down}{Shift down}")
        Sleep(50)
        Send("{Ctrl up}{Shift up}")
        
        Send("{Alt down}z{Alt up}")

        Send("{vkF3sc029}")
    }
}
