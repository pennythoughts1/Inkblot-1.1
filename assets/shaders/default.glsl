#type vertex
#version 330 core
layout (location=0) in vec3 aPos;
layout (location=1) in vec4 aColor;
layout (location=2) in vec2 aTexCoords;
layout (location=3) in float aTexId;

uniform mat4 uProjection;
uniform mat4 uView;

out vec4 fColor;
out vec2 fTexCoords;
out float ftexId;

void main()
{
    fColor = aColor;
    fTexCoords = aTexCoords;
    ftexId = aTexId;
    gl_Position = uProjection * uView * vec4(aPos, 1.0);
}

#type fragment
#version 330 core

in vec4 fColor;
in vec2 fTexCoords;
in float ftexId;

uniform sampler2D uTextures[8];

out vec4 color;

void main()
{
    if (ftexId > 0) {
        int id = int(ftexId);
        color = fColor * texture(uTextures[id], fTexCoords);
    } else {
        color = fColor;
    }
}

// float noise = fract(sin(dot(fColor.xy, vec2(42.1724, 84.276))) * 43758.5453);
// color = fColor * noise;