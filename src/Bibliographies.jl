module Bibliographies

using Dates: Month, Year

using BibTeXFormat: Person, Bibliography
using Parameters: @with_kw

import BibTeXFormat

export BibliographyEntry, Article
export all_fields, ignored_fields

abstract type BibliographyEntry end

@with_kw struct Article <: BibliographyEntry
    author::Person
    journal::String
    title::String
    year::Year
    month::Month = Month(-1)
    note::String = ""
    number::Int = -1
    pages::NTuple{2,Int} = (-1, -1)
    volume::Int = -1
end
Article(author, journal, title, year) =
    Article(author = author, journal = journal, title = title, year = year)

@with_kw struct Book <: BibliographyEntry
    address::String
    annote::String
    author::Person
    booktitle::String
    chapter::Int
    crossref::Int
    doi::String
    edition::VersionNumber
    editor::Person
    howpublished::Symbol
    institution::String
    journal::String
    key::String
    month::Month
    note::String
    number::Int
    organization::String
    pages::NTuple{2,Int}
    publisher::String
    school::String
    series::Int
    title::String
    type::Symbol
    volume::Int
    year::Year
end

@with_kw struct Booklet <: BibliographyEntry
    address::String
    annote::String
    author::Person
    booktitle::String
    chapter::Int
    crossref::Int
    doi::String
    edition::VersionNumber
    editor::Person
    howpublished::Symbol
    institution::String
    journal::String
    key::String
    month::Month
    note::String
    number::Int
    organization::String
    pages::NTuple{2,Int}
    publisher::String
    school::String
    series::Int
    title::String
    type::Symbol
    volume::Int
    year::Year
end

@with_kw struct Conference <: BibliographyEntry
    address::String
    annote::String
    author::Person
    booktitle::String
    chapter::Int
    crossref::Int
    doi::String
    edition::VersionNumber
    editor::Person
    howpublished::Symbol
    institution::String
    journal::String
    key::String
    month::Month
    note::String
    number::Int
    organization::String
    pages::NTuple{2,Int}
    publisher::String
    school::String
    series::Int
    title::String
    type::Symbol
    volume::Int
    year::Year
end

@with_kw struct InBook <: BibliographyEntry
    address::String
    annote::String
    author::Person
    booktitle::String
    chapter::Int
    crossref::Int
    doi::String
    edition::VersionNumber
    editor::Person
    howpublished::Symbol
    institution::String
    journal::String
    key::String
    month::Month
    note::String
    number::Int
    organization::String
    pages::NTuple{2,Int}
    publisher::String
    school::String
    series::Int
    title::String
    type::Symbol
    volume::Int
    year::Year
end

@with_kw struct InCollection <: BibliographyEntry
    address::String
    annote::String
    author::Person
    booktitle::String
    chapter::Int
    crossref::Int
    doi::String
    edition::VersionNumber
    editor::Person
    howpublished::Symbol
    institution::String
    journal::String
    key::String
    month::Month
    note::String
    number::Int
    organization::String
    pages::NTuple{2,Int}
    publisher::String
    school::String
    series::Int
    title::String
    type::Symbol
    volume::Int
    year::Year
end

@with_kw struct InProceedings <: BibliographyEntry
    address::String
    annote::String
    author::Person
    booktitle::String
    chapter::Int
    crossref::Int
    doi::String
    edition::VersionNumber
    editor::Person
    howpublished::Symbol
    institution::String
    journal::String
    key::String
    month::Month
    note::String
    number::Int
    organization::String
    pages::NTuple{2,Int}
    publisher::String
    school::String
    series::Int
    title::String
    type::Symbol
    volume::Int
    year::Year
end

@with_kw struct Manual <: BibliographyEntry
    address::String
    annote::String
    author::Person
    booktitle::String
    chapter::Int
    crossref::Int
    doi::String
    edition::VersionNumber
    editor::Person
    howpublished::Symbol
    institution::String
    journal::String
    key::String
    month::Month
    note::String
    number::Int
    organization::String
    pages::NTuple{2,Int}
    publisher::String
    school::String
    series::Int
    title::String
    type::Symbol
    volume::Int
    year::Year
end

@with_kw struct MastersThesis <: BibliographyEntry
    address::String
    annote::String
    author::Person
    booktitle::String
    chapter::Int
    crossref::Int
    doi::String
    edition::VersionNumber
    editor::Person
    howpublished::Symbol
    institution::String
    journal::String
    key::String
    month::Month
    note::String
    number::Int
    organization::String
    pages::NTuple{2,Int}
    publisher::String
    school::String
    series::Int
    title::String
    type::Symbol
    volume::Int
    year::Year
end

@with_kw struct Misc <: BibliographyEntry
    address::String
    annote::String
    author::Person
    booktitle::String
    chapter::Int
    crossref::Int
    doi::String
    edition::VersionNumber
    editor::Person
    howpublished::Symbol
    institution::String
    journal::String
    key::String
    month::Month
    note::String
    number::Int
    organization::String
    pages::NTuple{2,Int}
    publisher::String
    school::String
    series::Int
    title::String
    type::Symbol
    volume::Int
    year::Year
end

@with_kw struct PhdThesis <: BibliographyEntry
    address::String
    annote::String
    author::Person
    booktitle::String
    chapter::Int
    crossref::Int
    doi::String
    edition::VersionNumber
    editor::Person
    howpublished::Symbol
    institution::String
    journal::String
    key::String
    month::Month
    note::String
    number::Int
    organization::String
    pages::NTuple{2,Int}
    publisher::String
    school::String
    series::Int
    title::String
    type::Symbol
    volume::Int
    year::Year
end

@with_kw struct Proceedings <: BibliographyEntry
    address::String
    annote::String
    author::Person
    booktitle::String
    chapter::Int
    crossref::Int
    doi::String
    edition::VersionNumber
    editor::Person
    howpublished::Symbol
    institution::String
    journal::String
    key::String
    month::Month
    note::String
    number::Int
    organization::String
    pages::NTuple{2,Int}
    publisher::String
    school::String
    series::Int
    title::String
    type::Symbol
    volume::Int
    year::Year
end

@with_kw struct TechReport <: BibliographyEntry
    address::String
    annote::String
    author::Person
    booktitle::String
    chapter::Int
    crossref::Int
    doi::String
    edition::VersionNumber
    editor::Person
    howpublished::Symbol
    institution::String
    journal::String
    key::String
    month::Month
    note::String
    number::Int
    organization::String
    pages::NTuple{2,Int}
    publisher::String
    school::String
    series::Int
    title::String
    type::Symbol
    volume::Int
    year::Year
end

@with_kw struct Unpublished <: BibliographyEntry
    address::String
    annote::String
    author::Person
    booktitle::String
    chapter::Int
    crossref::Int
    doi::String
    edition::VersionNumber
    editor::Person
    howpublished::Symbol
    institution::String
    journal::String
    key::String
    month::Month
    note::String
    number::Int
    organization::String
    pages::NTuple{2,Int}
    publisher::String
    school::String
    series::Int
    title::String
    type::Symbol
    volume::Int
    year::Year
end

struct GeneralBibliographyEntry <: BibliographyEntry
    address::String
    annote::String
    author::Person
    booktitle::String
    chapter::Int
    crossref::Int
    doi::String
    edition::VersionNumber
    editor::Person
    howpublished::Symbol
    institution::String
    journal::String
    key::String
    month::Month
    note::String
    number::Int
    organization::String
    pages::NTuple{2,Int}
    publisher::String
    school::String
    series::Int
    title::String
    type::Symbol
    volume::Int
    year::Year
end
function all_fields()
    return (
        :address,
        :annote,
        :author,
        :booktitle,
        :chapter,
        :crossref,
        :doi,
        :edition,
        :editor,
        :howpublished,
        :institution,
        :journal,
        :key,
        :month,
        :note,
        :number,
        :organization,
        :pages,
        :publisher,
        :school,
        :series,
        :title,
        :type,
        :volume,
        :year,
    )
end # function all_fields

function ignored_fields(T::Type{<:BibliographyEntry})
    return setdiff(all_fields(), fieldnames(T))
end # function ignored_fields

end # module
