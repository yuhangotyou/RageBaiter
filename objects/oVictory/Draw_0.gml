cam = view_camera[0];
cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);
cam_w = camera_get_view_width(cam);
cam_h = camera_get_view_height(cam);

text_x = cam_x + (cam_w / 2);
text_y = cam_y + (cam_h / 2);

draw_set_font(Font1);

box_x = text_x - 175;
box_y = text_y - 40;
box_w = 350;
box_h = 80;

if(room_get_name(room) == "MLevel3") {
	draw_set_color(c_navy);
	draw_rectangle(box_x, box_y, box_x + box_w, box_y + box_h, false);
	draw_set_color(c_green);
}
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_color(c_white);

draw_text_ext(text_x, text_y, text_message,10,cam_w - 50);

draw_set_halign(fa_left);
draw_set_valign(fa_top);
