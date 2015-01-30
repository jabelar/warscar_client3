show_debug_message("Controller create event started")
show_debug_message("Running client side")

status_string = "Waiting for network activity"
my_ip_address = "127.0.0.1"

alarm[0] = room_speed * 10

scrConstants()

scrIntializeNetworking()

show_debug_message("Initializing input booleans")
scrClearInput()

connected = false

object_map = ds_map_create() // maps object ids on server to client

