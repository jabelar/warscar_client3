// argument[0] is rx_buff
var obj_id = buffer_read(argument[0], buffer_u32)
var obj_x = buffer_read(argument[0], buffer_s32);
var obj_y = buffer_read(argument[0], buffer_s32);
var obj_speed = buffer_read(argument[0], buffer_s32);
var obj_dir = buffer_read(argument[0], buffer_s32);
var obj_image_index = buffer_read(argument[0], buffer_u8)
var obj_image_speed = buffer_read(argument[0], buffer_u8)
var obj_image_alpha = buffer_read(argument[0], buffer_u8)
var instance ;

if not ds_map_exists(object_map, obj_id)
{
    show_debug_message("Could not find object id = "+string(obj_id)+" in map")
}
else
{
    instance = ds_map_find_value(object_map, obj_id)
    instance.x = obj_x
    instance.y = obj_y
    instance.speed = obj_speed
    instance.direction = obj_dir
    instance.image_angle = obj_dir
    instance.image_index = obj_image_index
    instance.image_speed = obj_image_speed
    instance.image_alpha = obj_image_alpha
    
    // show_debug_message("Updated object "+string(instance)+" to x = "+string(obj_x))
}
