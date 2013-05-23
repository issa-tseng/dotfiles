module Main (main) where

import qualified Data.Map as M

import XMonad

import XMonad.Layout.ThreeColumns
import XMonad.Layout.ToggleLayouts

layouts = toggleLayouts Full ((Tall 1 0.03 0.5) ||| (ThreeCol 1 0.03 0.5) ||| (ThreeColMid 1 0.03 0.5))

customKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList
    [ ((modm .|. shiftMask, xK_BackSpace), sendMessage ToggleLayout)
    , ((modm, xK_BackSpace), sendMessage NextLayout) ]

main :: IO ()
main = xmonad $ defaultConfig
    { borderWidth = 1
    , terminal = "/usr/local/bin/urxvtc"
    , normalBorderColor = "#000000"
    , focusedBorderColor = "#555555"
    , keys = customKeys <+> keys defaultConfig
    , layoutHook = layouts }

