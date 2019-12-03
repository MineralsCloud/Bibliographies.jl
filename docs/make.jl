using Documenter, Bibliographies

makedocs(;
    modules=[Bibliographies],
    format=Documenter.HTML(),
    pages=[
        "Home" => "index.md",
    ],
    repo="https://github.com/MineralsCloud/Bibliographies.jl/blob/{commit}{path}#L{line}",
    sitename="Bibliographies.jl",
    authors="Qi Zhang <singularitti@outlook.com>",
    assets=String[],
)

deploydocs(;
    repo="github.com/MineralsCloud/Bibliographies.jl",
)
