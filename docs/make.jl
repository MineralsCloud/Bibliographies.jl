using Bibliographies
using Documenter

makedocs(;
    modules=[Bibliographies],
    authors="Qi Zhang <singularitti@outlook.com>",
    repo="https://github.com/MineralsCloud/Bibliographies.jl/blob/{commit}{path}#L{line}",
    sitename="Bibliographies.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://MineralsCloud.github.io/Bibliographies.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/MineralsCloud/Bibliographies.jl",
)
