f_is_up := false
j_is_up := false

~$f up:: {
    global f_is_up := true
    combo_triggered := CheckTrigger()

    if (combo_triggered) {
        Send("{Backspace}")
        Send("{Backspace}")
    }

    Sleep 100
    global f_is_up := false
}

~$j up:: {
    global j_is_up := true
    combo_triggered := CheckTrigger()

    if (combo_triggered) {
        Send("{Backspace}")
        Send("{Backspace}")
    }

    Sleep 100
    global j_is_up := false
}

CheckTrigger() {
    global f_is_up, j_is_up

    if (f_is_up && j_is_up) {
        ; Send the key combination to switch JP <=> VN to Unikey
        Send("{Ctrl down}{Shift down}")
        Sleep(50)
        Send("{Ctrl up}{Shift up}")
        Send("{Alt down}z{Alt up}")

        ; Send the key combination to switch ひらがな <=> 英数 to IME
        Send("{vkF3sc029}")
        return true
    }
    
    return false
}
