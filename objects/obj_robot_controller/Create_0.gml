///@description Initialize the State Machine
event_inherited();

state_machine_init();
state_create("Waiting for Enter",state_robot_waiting_for_enter);
state_create("Friendly Turn",state_robot_friendly_turn);
state_create("Enemy Turn",state_robot_enemy_turn);

update_enemy = false;