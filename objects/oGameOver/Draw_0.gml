cam = view_camera[0];
cam_x = camera_get_view_x(cam);
cam_y = camera_get_view_y(cam);
cam_w = camera_get_view_width(cam);
cam_h = camera_get_view_height(cam);

text_x = cam_x + (cam_w / 2);
text_y = cam_y + (cam_h / 2);

draw_set_font(Font1);
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(text_x, text_y, "Game Over! Auto Respawning....");

draw_set_halign(fa_left);
draw_set_valign(fa_top);
