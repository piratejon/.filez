import XMonad
import XMonad.Layout.Magnifier
import XMonad.Layout.NoBorders
import XMonad.Layout.LayoutModifier
import XMonad.Hooks.ManageDocks

-- myLayout = magnifier (Tall 1 (3/100) (1/2))
myLayout = avoidStruts $ smartBorders $ tiled ||| Mirror tiled ||| Full
  where
    tiled = Tall 1 (3/100) (3/5)

main = do
  xmonad $ defaultConfig {
    modMask = mod4Mask -- windows key
    , terminal = "terminator"
--    , layoutHook = myLayout
    -- , layoutHook = lessBorders OnlyFloat $ avoidStruts $ myLayout
    , layoutHook = myLayout
  }

