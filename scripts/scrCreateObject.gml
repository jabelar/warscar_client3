/// scrCreateObject(rx_buff, obj_index)
// argument[0] is rx_buff
// argument[1] is object index (e.g. objBullet)
var obj_id = buffer_read(argument[0], buffer_u32)
var obj_x = buffer_read(argument[0], buffer_s32);
var obj_y = buffer_read(argument[0], buffer_s32);
var obj_speed = buffer_read(argument[0], buffer_s32);
var obj_dir = buffer_read(argument[0], buffer_s32);
var obj_image_index = buffer_read(argument[0], buffer_u8)
var obj_image_speed = buffer_read(argument[0], buffer_u8)
var obj_image_alpha = buffer_read(argument[0], buffer_u8)

// check if already exists (since create packets may be sent out during other client login)
if not ds_map_exists(object_map, obj_id)
{
    var new_instance = instance_create(obj_x, obj_y, argument[1]);
    new_instance.speed = obj_speed
    new_instance.direction = obj_dir
    new_instance.image_angle = obj_dir
    ds_map_add(object_map, obj_id, new_instance) // track server to client object mapping
    show_debug_message("Object created for server id = "+string(obj_id)+", client id = "+string(new_instance)+" at x = "+string(obj_x)+" y = "+string(obj_y))
}
else
{
    show_debug_message("Received create packet for object that already exists")
}
