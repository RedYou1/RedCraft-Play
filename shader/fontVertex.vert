#version 330

in vec2 position;
in vec2 textureCoords;

out vec2 pass_textureCoords;

uniform mat4 transformationMatrix;
uniform mat4 projectionMatrix;
uniform mat4 viewMatrix;
uniform vec2 scale;

void main(void){

	gl_Position = projectionMatrix * viewMatrix * transformationMatrix * vec4(position.x * scale.x - 1.0,  -(position.y * scale.y) + 1.0,0.0,1.0);
	pass_textureCoords = textureCoords;
}