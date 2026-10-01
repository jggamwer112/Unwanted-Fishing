varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_time;      // Tempo para animar
uniform float u_forca;     // Intensidade da distorção
uniform vec2  u_escala;    // Escala da onda (x, y)

void main()
{
    // Cria ondas usando seno e cosseno
    vec2 onda;
    onda.x = sin(v_vTexcoord.y * u_escala.x + u_time) * u_forca;
    onda.y = cos(v_vTexcoord.x * u_escala.y + u_time) * u_forca;
    
    // Aplica a distorção na coordenada da textura
    vec2 uv_distorcida = v_vTexcoord + onda;
    
    // Pega a cor da textura distorcida
    vec4 cor = texture2D(gm_BaseTexture, uv_distorcida);
    
    // Aplica a cor final
    gl_FragColor = v_vColour * cor;
}