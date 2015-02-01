show_debug_message("Controller create event started")
show_debug_message("Running client side")

status_string = "Waiting for network activity"
my_ip_address = "127.0.0.1"

alarm[0] = room_speed * 2

scrConstants()

scrIntializeNetworking()

// initialize HUD information
max_num_players = 32
for (var i=0; i<max_num_players; i++)
{
    player_active[i] = false
    player_score[i] = 0
    player_health[i] = 100
    player_ammo[i] = 10
}

show_debug_message("Initializing input booleans")
scrClearInput()

connected = false

object_map = ds_map_create() // maps object ids on server to client

