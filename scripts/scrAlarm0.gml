// broadcast server info
show_debug_message("Sending broadcast message")

buffer_seek(tx_buff_broadcast, buffer_seek_start, 0)
buffer_write(tx_buff_broadcast, buffer_u8, CLIENT_ANNOUNCE)
buffer_write(tx_buff_broadcast, buffer_string, "Warscar Client #1")
network_send_broadcast( socket_broadcast, 6512, tx_buff_broadcast, buffer_tell(tx_buff_broadcast) )

alarm[0] = room_speed * 10

result = network_connect(socket_client, "192.168.1.123", 6511)
if result < 0
{
    show_debug_message("Failed to connect to 192.168.1.123")
}
else
{
    show_debug_message("Connected to 192.168.1.123")
}
