/// @description Insert description here
// You can write your code in this editor

//check how many collects there are
var num_collects = instance_number(obj_collect);

//count up the number of frames
frames_since_collect += 1;

//IF we've waited the max number of frames OR
//if we have less than 2 collects
if (frames_since_collect > frames_bt_collect || num_collects < 2) {
	//IF we do not have the max num of collects
	if(num_collects < max_collects) {
		//create a new collect at a random position
		var new_collect = instance_create_layer(
			random_range(10, room_width - 10),
			random_range(10, room_height - 50),
			"Instances",
			obj_collect
		)
	
		//the with structure allows us to change the scope
		//of the following variables to whatever is in the paraenthesis
		//in this case, the scope is of the newly created collect
		with(new_collect) {
			//count how many times we tried to change the collects position
			var tries = 0;
			//while we've tried less than 3000 times
			//and a collect is inside our collider
			while(tries < 3000 && collision_rectangle(
				x-12, y-12, 
				x+12, y+12, 
				obj_collect, 
				false, true) != noone) {
					//set the new collect's position to a new random position
					//and count up the num of times we've tried to get
					//a new position
					x = random_range(30, room_width - 30);
					y = random_range(100, room_height - 200);
					tries +=1;
			}
		}
	}
	//since we just made a new collect
	//reset the counter
	frames_since_collect = 0;
}




