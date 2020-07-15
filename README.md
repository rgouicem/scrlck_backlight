# scrlck_backlight
A dumb bash script for keyboards backlit with scrolllock

If you use Wayland and own a keyboard that uses the scroll lock indicator light as backlight, you might experience some problems...
This script forces the backlight of your keyboard to be always on.

## How to use
Just write the name of your keyboard in the `kbdname` variable at the beginning of the script and run it.
This name can be found in one of these files `/sys/class/leds/input*scrolllock/device/name`.

## Problems
Each time you press a key, the keyboard will blink.
If you like fancy RGB keyboards you may like it.
If you are epileptic, you should learn to type without looking...
