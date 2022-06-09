// Pull in URP library functions and our own common functions
#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"

// This attributes struct receives data about the mesh we're currently rendering
// Data automatically populates fields according to their semantic
struct Attributes
{
    float3 positionOS : POSITION; // Position in object space
};

struct Interpolators
{
    float4 positionCS : SV_POSITION;
};

Interpolators Vertex(Attributes input)
{
    Interpolators output;

    VertexPositionInputs posnInputs = GetVertexPositionInputs(input.positionOS);

    output.positionCS = posnInputs.positionCS;

    return output;
}

float4 Fragment(Interpolators input) : SV_TARGET
{
    return float4(1, 1, 1, 1);
}
