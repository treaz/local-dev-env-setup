# Reference: https://apple.stackexchange.com/questions/44886/modifying-user-interface-sound-effects-with-applescript#44892


tell application "System Preferences"
    reveal anchor "effects" of pane id "com.apple.preference.sound"
end tell

tell application "System Events"
    tell process "System Preferences"
        set theBox to checkbox 1 of tab group 1 of window 1
        if value of theBox is not 1 then -- or "is 1"
            click theBox
        end if
    end tell
end tell