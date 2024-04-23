var _inst_sombra =  instance_find(obj_sombra, 0);
var _inst_personagem = instance_create_layer(inst_sombra.x, inst_sombra.y, "instances", obj_personagem);
global.nasce = true;
_inst_personagem.depth = 10;
layer_set_visible("interface", true);
sprite_index = noone;