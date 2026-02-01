shader_type canvas_item;

uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_linear_mipmap;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	vec2 uv = UV * 2.0 - 1.0;
	float strength = smoothstep(0.1, 0.6, pow(length(uv), 2.0)) * smoothstep(0.98, 0.6, length(uv));
	float strength2 = pow(length(uv), 3.0) * smoothstep(0.98, 0.9, length(uv));
	float mask = smoothstep(0.958, 0.96, length(uv)) * smoothstep(0.972, 0.97, length(uv));
	float angle = atan(uv.y, uv.x);
	uv *= (1.0 + sin(angle + TIME) * 0.2);
	//vec2 puv = pow(uv, vec2(1.0 + strength * 2.0));
	vec2 puv = uv * (1.0 + strength * 0.16);
	vec2 offset = puv - uv;
	vec3 color = textureLod(screen_texture, SCREEN_UV + offset, strength2 * 2.4).rgb;
	color = mix(color, vec3(0.62, 0.78, 0.96), mask * 0.7);
	COLOR = vec4(color, 1.0);
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
