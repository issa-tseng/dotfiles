import XMonad

main :: IO ()
main = xmonad $ defaultConfig
    { borderWidth = 1
    , terminal = "/usr/local/bin/urxvtc"
    , normalBorderColor = "#000000"
    , focusedBorderColor = "#555555" }
