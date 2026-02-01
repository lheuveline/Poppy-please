shader_type canvas_item;

uniform sampler2D screen_texture : hint_screen_texture, repeat_disable, filter_nearest_mipmap;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	// Called for every pixel the material is visible on.
	vec2 uv = UV * 2.0 - 1.0;
	float strength = smoothstep(0.2, 0.6, length(uv)) * smoothstep(0.98, 0.6, length(uv));
	//vec2 puv = pow(uv, vec2(1.0 + strength * 2.0));
	vec2 puv = uv * (1.0 + strength * 0.1);
	vec2 offset = puv - uv;
	vec3 color = texture(screen_texture, SCREEN_UV + offset).rgb;
	COLOR = vec4(color, 1.0);
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
