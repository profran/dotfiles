#!/bin/sh

while getopts m: option; do
  case "${option}" in

  m) MODE=${OPTARG} ;;
  esac
done

INTER='eDP-1'
EXTER='DP-2-2'
DESKS='一 二 三 四 五 六 七 八 九 十 '

switch_mode() {
  if [[ $MODE == 'internal' ]]; then
    xrandr --output $INTER --primary --auto --output $EXTER --off
    reorder_bspwm $INTER $EXTER
  elif [[ $MODE == 'external' ]]; then
    xrandr --output $EXTER --primary --auto --output $INTER --off
    reorder_bspwm $EXTER $INTER
  elif [[ $MODE == 'both' ]]; then
    xrandr --output $EXTER --primary --auto --output $INTER --auto
    #reorder_bspwm $EXTER $INTER
    #reorder_bspwm $INTER $EXTER
  else
    echo "Unrecognized option: $MODE"
  fi
}

reorder_bspwm() {
  mon=$1
  monR=$2
  #bspc monitor $monR -r
  res=$(xrandr | grep $mon | grep -o "[0-9]*x[0-9]*+[0-9]*+[0-9]")
  bspc monitor $mon -g $res
  
 

  #for desk in $(bspc query -m $monR -D); do
  #  bspc desktop $desk --to-monitor $mon
  #done
  for desk in {'一','二','三','四','五','六','七','八','九','十'}; do
    bspc desktop "$desk" --to-monitor $mon
  done

  bspc desktop Desktop -r
  #bspc monitor $mon -d $DESKS

  bspc monitor $monR -r

  #bspc monitor $mon -d $DESKS
  #bspc monitor $monR -s $mon
  #bspc monitor $mon -f
}

switch_mode
