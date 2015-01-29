// broadcast server info
show_debug_message("Sending broadcast message")

buffer_seek(tx_buff_broadcast, buffer_seek_start, 0)
buffer_write(tx_buff_broadcast, buffer_u8, CLIENT_ANNOUNCE)
buffer_write(tx_buff_broadcast, buffer_string, "Warscar Client #1")
network_send_broadcast( socket_broadcast, 6512, tx_buff_broadcast, buffer_tell(tx_buff_broadcast) )

alarm[0] = room_speed * 10
