#version 330

in vec2 pass_textureCoords;

out vec4 out_colour;

uniform vec3 colour;
uniform sampler2D fontAtlas;

uniform float width;
uniform float edge;

void main(void){

	float distance = 1.0 - texture(fontAtlas, pass_textureCoords).a;
	float alpha = 1.0 - smoothstep(width,width+edge,distance);

	out_colour = vec4(colour, alpha);

}