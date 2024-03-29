#version 330

in vec2 position;
in vec2 textureCoords;

out vec2 pass_textureCoords;

uniform vec2 translation;
uniform vec2 scale;

void main(void){

	gl_Position = vec4(translation.x + position.x * scale.x - 1.0,translation.y + -(position.y * scale.y) + 1.0, 0.0, 1.0);
	pass_textureCoords = textureCoords;
}