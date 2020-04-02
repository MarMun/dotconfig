#! /bin/sh
# switch desktop
bspc desktop -f '^2'

# open windows
urxvt -name devtty1 &
urxvt -name devtty2 &
code &
firefox &

# urxvt -name devtty1 &
# urxvt -name devtty2 &
# code -name devcode1 & #name doesn't work here?
# Firefox -name devfirefox1 & #name doesn't work here?

# bspc node -i
# bspc node @/ -p east -i
# bspc node @/1 -p east -i
# bspc node @/2 -p east -i

#bspc rule -a URxvt:test1 -o node=@/1
#bspc rule -a URxvt:test2 -o node=@/2
# bspc rule -a Code -o node=@/2

#urxvt -name test1 -e htop &
#urxvt -name test2 -e ranger &
# code &

#bspc rule -a URxvt:devtty1 -o node='/1/1'
#bspc rule -a URxvt:devtty2 -o node='/1/2'
#bspc rule -a Code:devcode1 -o node=@^1:^9:/2/1

# bspc node path='@/1/1' -i
# bspc node path='@/1/2' -i
# bspc node path='@/2/1' -i
#bspc node -i path='@/3/1'

# urxvt &
# urxvt &
# code &
