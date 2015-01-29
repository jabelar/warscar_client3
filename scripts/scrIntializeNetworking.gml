socket_client = network_create_socket(network_socket_tcp)
if socket_client < 0
{
    show_debug_message("Failed to create client socket")
}
show_debug_message("Creating socket ="+string(socket_client))

ip_addr_rx = "192.168.1.0"

// create network buffer for sent messages
show_debug_message("Creating transmit buffer")
tx_buff_client = buffer_create( 256, buffer_grow, 1)

show_debug_message("Creating listener to listen for server broadcasts")
socket_listener = network_create_server(network_socket_udp, 6511, 3)
if socket_listener < 0
{
    show_debug_message("Failed to create listener socket")
}

