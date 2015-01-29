// argument0 is the rx_buffer
// argument1 is the ip_addr_rx
var server_name = buffer_read(argument[0], buffer_string)
if not connected
{
    show_debug_message("Connecting to server at: "+argument[1])
    ip_addr_server = argument[1]
    result = network_connect( socket_client, ip_addr_server, 6511 )
    if result < 0
    {
        show_debug_message("Networking connection failed")
    }
    else
    {
        show_debug_message("Networking connection succeeded")
        connected = true
    }

    //ip_query_id = show_question_async("Want to connect to server ="+server_name+"?")
}

show_debug_message("Server broadcast received from "+argument[1]+", name is "+server_name);
