//for menu system, needs to be improved
if global.menuroom=main{
if y=menuArrow.y return 0;
else if y-menuArrow.y=64 return 1;
else if y-menuArrow.y=128 return 2;
}

if global.menuroom=game{
if y=menuArrow.y return 3;
else if y-menuArrow.y=64 return 4;
else if y-menuArrow.y=128 return 5;
}
