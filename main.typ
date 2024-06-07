#import "typFiles/coverpage.typ": *
#import "typFiles/titlepage.typ": *
#import "typFiles/acronyms.typ": acrof, acro
#import "typFiles/glossary.typ": *

#set outline(
  indent: 1em
)

#show: coverpage.with()

#show: titlepage.with(
    title: "Thesis Title",
    subtitle: "Optional Subtitle",
    studentName: "T.U. Delftenaar",
    coverIMG: "../graphics/template/COVER.jpg",
)

#include "chapters/abstract.typ"

#include "chapters/tableOfContents.typ"

#include "chapters/preface.typ"

#include "chapters/acknowledgements.typ"

#counter(page).update(1)
#set page(numbering: "1")
#set heading(numbering: "1-1")

#include "chapters/introduction.typ"

#include "chapters/firstRealChapter.typ"

#include "chapters/someBasics.typ"

#show: glossary()
