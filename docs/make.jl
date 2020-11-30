push!(LOAD_PATH,"../src/")
using Documenter, Bump

println( names(Bump; imported=true) )

#~ makedocs(;
#~     modules=[Bump],
#~     authors="Joris Pinkse",
#~     repo="https://github.com/NittanyLion/Bump.jl/blob/{commit}{path}#L{line}",
#~     sitename="Bump.jl",
#~     format=Documenter.HTML(;
#~         prettyurls=get(ENV, "CI", "false") == "true",
#~         canonical="https://NittanyLion.github.io/Bump.jl",
#~         assets=String[],
#~     ),
#~     pages=[
#~         "Home" => "index.md",
#~     ],
#~ )
makedocs(sitename="My Documentation")

deploydocs(;
    repo="github.com/NittanyLion/Bump.jl.git",
    target="build",
    push_preview=true
)
