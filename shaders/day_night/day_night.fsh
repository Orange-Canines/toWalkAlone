//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float time;
//uniform float redVal;
//uniform float greenVal;
//uniform float blueVal;

void main()
{
	vec4 tmpColor =  v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	tmpColor.r *= time;
	tmpColor.g *= time;
	tmpColor.b *= time;
    gl_FragColor = tmpColor;
}
