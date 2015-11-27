import XMonad
import XMonad.Layout.Magnifier
import XMonad.Layout.NoBorders
import XMonad.Layout.LayoutModifier
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.SetWMName

import XMonad.Layout.ResizableTile

-- myLayout = magnifier (Tall 1 (3/100) (1/2))
myNormalLayout = avoidStruts $ smartBorders $ tiled $ resizableTiled ||| Mirror tiled ||| Full
  where
    tiled = Tall 1 (3/100) (3/5)
    resizableTiled = ResizableTall 1 (3/100) (1/2) []

myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList
            [
              ((modm, xK_j), sendMessage MirrorShrink)
            , ((modm, xK_k), sendMessage MirrorExpand)
            ]

main = do
  xmonad $ defaultConfig {
    modMask = mod4Mask -- windows key
    , terminal = "terminator"
--    , layoutHook = myLayout
    -- , layoutHook = lessBorders OnlyFloat $ avoidStruts $ myLayout
    , layoutHook = myNormalLayout
    , startupHook = setWMName "LG3D"
    , keys = myKeys
  }

