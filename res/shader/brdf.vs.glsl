attribute vec3 POSITION;
attribute vec2 TEXCOORD_0;

uniform mat4 M;
uniform mat4 VP;
uniform mat4 nM;

varying vec2 uv;
varying vec4 pos;


void main() {
  uv = TEXCOORD_0;
  vec4 position = vec4(POSITION, 1);
  pos = position;
  gl_Position = VP * M * position;
}