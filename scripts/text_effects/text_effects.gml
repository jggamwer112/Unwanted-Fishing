function draw_text_layers(xx,yy,text,col1,col2,col3){

draw_set_colour(col1)
draw_text(xx,yy,text)
draw_set_colour(-1)
draw_set_colour(col2)
draw_text(xx,yy-5,text)
draw_set_colour(-1)
draw_set_colour(col3)
draw_text(xx,yy-10,text)
draw_set_colour(-1)
draw_set_font(-1);
	
}

function draw_text_layers_transformed(xx,yy,text,col1,col2,col3,xscale,yscale,ang){

draw_set_colour(col1)
draw_text_transformed(xx,yy,text,xscale,yscale,40);
draw_set_colour(-1)
draw_set_colour(col2)
draw_text_transformed(xx,yy-5,text,xscale,yscale,40);
draw_set_colour(-1)
draw_set_colour(col3)
draw_text_transformed(xx,yy-10,text,xscale,yscale,40);
draw_set_colour(-1)
draw_set_font(-1);
	
}