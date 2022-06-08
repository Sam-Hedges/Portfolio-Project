Shader "SamHedges/MyLit" {
	// Subshaders allow for different behaviour and options for different pipelines and platforms
	Subshader {
		// Tags are shared by all passed in this subshader
		Tags {"RenderPipeline" = "UniversalPipeline"}

		// Shader can have several passes which are used to render different data about the material and
		// each pass has it's own vertex and fragment function and shader variant keywords
		Pass {
			Name "ForwardLit" // For debugging 
			Tags {"LightMode" = "UniversalForward"} // Pass specific tags
			// "UniversalForward" tells unity this is the main lighting pass of this shader

			HLSLPROGRAM // Begin HLSL code

			ENDHLSL
		}
	}
}