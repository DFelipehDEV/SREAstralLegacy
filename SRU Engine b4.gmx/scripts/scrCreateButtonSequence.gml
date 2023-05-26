var XX;
XX=view_xview+200
global.first=instance_create(XX,y,choose(charD,charA,charS));
XX+=50
global.second=instance_create(XX,y,choose(charD,charA,charS));
XX+=50
global.third=instance_create(XX,y,choose(charD,charA,charS));
global.tim=120
ctrl=instance_create(x,y,charControl);
ctrl.XX=XX
