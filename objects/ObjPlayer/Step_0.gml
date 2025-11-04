
if keyboard_check(ord("D")){
    x+=velocidade
	image_xscale=1
	sprite_index=sprPlayerCorrendo
	
}
if keyboard_check(ord("A")){
   x-=velocidade
   image_xscale=-1  
   sprite_index=sprPlayerCorrendo
   
}
if keyboard_check(ord("S")){
   y+=velocidade
   sprite_index=sprPlayerCorrendo
  
}
if keyboard_check(ord("W")){
   y-=velocidade
   sprite_index=sprPlayerCorrendo
	
}
if keyboard_check(ord("L")){
	sprite_index=sprPlayerAtk
}
if ! keyboard_check(vk_anykey){
	sprite_index=sprPlayerParado
}
if isdash==true{
	velocidade=velocidadeDash
}
if keyboard_check_pressed(ord("K")){
	alarm[0]=60
	isdash=true
	
	sprite_index=sprPlayerDash
}

	

