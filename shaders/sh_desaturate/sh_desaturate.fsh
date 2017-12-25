///Desature Shader
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
	vec4 texColor = texture2D(gm_BaseTexture, v_vTexcoord);
	float gray = dot(texColor.rgb, vec3(0.299/2.0, 0.587/2.0, 0.114/2.0));
    gl_FragColor = v_vColour*vec4(gray,gray,gray,texColor.a);
}
