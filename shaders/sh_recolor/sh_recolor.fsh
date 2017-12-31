// Color Overlay Fragment Shader
varying vec2 v_vTexcoord;
uniform vec4 u_color;
varying vec4 v_vColour;

void main()
{
    vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
    gl_FragColor = v_vColour.a * vec4(u_color.rgb, texColor.a);
}
