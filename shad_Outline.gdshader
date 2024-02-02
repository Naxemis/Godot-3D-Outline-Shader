shader_type spatial;
render_mode unshaded, cull_front;

uniform bool enable = true; //enable or disable shader
uniform bool useVertex = true; //use vertex or normal in calculating outline
uniform float outlineThickness = 0.01; //thickness
uniform vec4 outlineColor: source_color = vec4(0, 0, 0, 1); //outline color


void vertex() {
	if (enable) {
		if (useVertex) {
			VERTEX += normalize(VERTEX) * outlineThickness;
		}
		else {
			VERTEX += normalize(NORMAL) * outlineThickness;
		}
	}
}

void fragment() {
	if (enable) {
		ALBEDO = outlineColor.rgb;
	}
}