#import "typFiles/coverpage.typ": *
#import "typFiles/titlepage.typ": *
#import "typFiles/specialChapter.typ": *

#show: coverpage.with(
    title: "Thesis Title",
    subtitle: "Optional Subtitle",
    studentName: "T.U. Delftenaar",
    coverIMG: "../graphics/template/COVER.jpg",
)

#show: titlepage.with(
    title: "Thesis Title",
    subtitle: "Optional Subtitle",
    studentName: "T.U. Delftenaar",
    coverIMG: "../graphics/template/COVER.jpg",
)

//#show: abstract.with(content: lorem(600))
#counter(page).update(0)
#show: specialChapter.with(content: lorem(600), chapterTitle: "Abstract")

#show: specialChapter.with(
  content: outline(
      title: none,
      //target: specialChapter.with(chapterTitle: "Preface")
      ), 
  chapterTitle: "Table of Contents")

#show: specialChapter.with(content: lorem(100), chapterTitle: "Preface")

#show: specialChapter.with(content: lorem(400), chapterTitle: "Acknowledgements")
#pagebreak()
= testy <test>
= testies <test2>
this is a test
