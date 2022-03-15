/// @description Insert description here
// You can write your code in this editor

//Various game states
enum gamestate{
	starting,
	running,
	ending	
}

state = gamestate.running;


randomize();


//Sets score and lives
score = 0;
lives = 5




//Gets instance ids of all spawners and places them in a global array to call when certain objects despawn
for (var i = 0; i < instance_number(obj_spawners); ++i;)
{
    global.spawner[i] = instance_find(obj_spawners,i);
}
