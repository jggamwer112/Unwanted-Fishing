depth=-6
scale=5;
image_xscale=0;
image_yscale=0;
image_alpha=0;

destroy=false;

inst1=instance_create_depth(x-85,y-65,depth-2,obj_options_button_1);
inst1.image_xscale=image_xscale;
inst1.image_yscale=image_yscale;

ui_index=0;
ui_scale_def=2.42;
ui_scale=0;
ui_alpha=.5;

enum sections{

no_one,
graphics,
sounds,
accessibility
}
confing_section=sections.no_one;