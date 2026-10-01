x=0;
y=0;
image_xscale=10.24444
image_yscale=7.044445

// Controle do tempo do shader
tempo = 0;

// Pega a referência do shader
shader_agua = sh_agua;

// Pega os uniforms do shader (para alterar depois)
u_time   = shader_get_uniform(shader_agua, "u_time");
u_forca  = shader_get_uniform(shader_agua, "u_forca");
u_escala = shader_get_uniform(shader_agua, "u_escala");

// Cria uma superfície para desenhar as duas camadas juntas
largura = room_width;
altura  = room_height;
superficie_agua = surface_create(largura, altura);