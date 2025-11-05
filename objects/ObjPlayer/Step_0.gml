//Comenta o código

	velocidadeVertical+=gravidade

//COlisão apenas em cima ou em baixo
if place_meeting(x,y+velocidadeVertical,ObjChao){
	while !place_meeting(x ,y + sign(velocidadeVertical),ObjChao){
		y += sign(velocidadeVertical)
	}
	velocidadeVertical=0
}


y+=velocidadeVertical

if keyboard_check(vk_space) and place_meeting(x,y+1,ObjChao){
	velocidadeVertical-=8
}

propulsaoHorizontal += velocidadeHorizontal * 0.01

//Colisão esquerda e direita
if place_meeting(x + propulsaoHorizontal ,y,ObjParede){
	while !place_meeting(x + sign(propulsaoHorizontal), y,ObjParede){
		x += sign(propulsaoHorizontal)
	}
	propulsaoHorizontal=0
}

if velrolamento and !place_meeting(x + velocidadeHorizontal * 2 ,y,ObjParede) and 
!place_meeting(x +propulsaoHorizontal ,y,ObjParede){
	x+=velocidadeHorizontal * 2
	sprite_index=sprPlayerRolamento
}
else{
	sprite_index = sprPlayerCorrendo
}


x+= propulsaoHorizontal
if keyboard_check_pressed(ord("C")){
	spr=true
	velrolamento=true
	alarm[0]=60 * 0.5

}

velocidadeHorizontal = 4

//Caso o y seja maior que a altura
if y >= room_height{
	room_restart()
}






