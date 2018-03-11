
export polar_complex, Bicomplex

# """ This function computes the bicomplex of a combinatorial code
# Usage: BDelta= Bicomplex(C);
# """
# function Bicomplex(CC::CombinatorialCode)
#     ## Collect the union of original codewords and its complement's dual
#   NewWords=  Array{Array{Int,1},1}([]);
#     for i=1:CC.Nwords
#         push!(NewWords, union(collect(CC.words[i]),  -collect(setdiff(CC.vertices,CC.words[i]))))
#     end
#     return SimplicialComplex(NewWords)
# end

"""
    polar_complex([FacetList], C)

Constructs the polar complex ``Γ(C)`` for the given code.
"""
function polar_complex(::Type{T}, C::AbstractCombinatorialCode) where {T<:AbstractAbstractSimplicialComplex}
end
polar_complex(C::AbstractCombinatorialCode) = polar_complex(FacetList, C)
const Bicomplex = polar_complex # deprecated function
