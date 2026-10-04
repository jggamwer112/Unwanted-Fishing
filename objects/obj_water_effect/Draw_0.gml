// 1. Desenha as duas camadas de bolhas na superfície
if (!surface_exists(superficie_agua)) {
    superficie_agua = surface_create(largura, altura);
}

surface_set_target(superficie_agua);
draw_clear_alpha(c_black, 0);

// Camada escura (fundo, alpha baixo)
draw_sprite_ext(spr_map_bg_3, 0, 0, 0, image_xscale*5, image_yscale*5, 0, c_white, 0.8);

// Camada branca (frente, alpha normal)
draw_sprite_ext(spr_map_bg_2, image_index, 0, 0, image_xscale, image_yscale, 0, c_white, 1.0);

surface_reset_target();

// 2. Aplica o shader na superfície
shader_set(shader_agua);
shader_set_uniform_f(u_time, tempo);
shader_set_uniform_f(u_forca, 0.005);   // Ajuste fino: 0.005 a 0.03
shader_set_uniform_f(u_escala, 10.0, 13.0); // Frequência das ondas

draw_surface(superficie_agua, 0, 0);

shader_reset();