#let specialChapter(
  content: lorem(40),
  chapterTitle: "Special Chapter",
  studentName: "T.U. Delftenaar",
  body
) = {
set align(top)

let topMargin = 2.5cm+1.35cm

set par(justify: true, linebreaks: "optimized")
set text(size: 10pt,font: "New Computer Modern Math", weight: 500)
set page(
  margin: (top:topMargin, bottom: 3.16cm),
  header: 
  [
    #locate(loc => {
      let titlePage = counter(page).at(label(lower(chapterTitle))).first()
      let thisPage = counter(page).at(loc).first()
      set align(if calc.rem(thisPage, 2) == 0 { left } else { right })
      if thisPage != titlePage {counter(page).display("i"); v(-9pt) ; line(length: 100%, stroke: 0.5pt)} else {}
    })
  ],
  header-ascent: 21.4%,
  footer-descent: 9%,

 footer:
  [
    #locate(loc => {
      let n = counter(page).at(loc).first()
      if calc.rem(n,2) == 0 {
        [
        #stack(dir: ltr,
        text(font: "New Computer Modern Sans")[#studentName],
        align(right)[#text(font: "New Computer Modern Sans")[Literature Survey]])
        ]
      } 
      else {
        [
        #stack(dir: ltr,
        text(font: "New Computer Modern Sans")[Literature Survey],
        align(right)[#text(font: "New Computer Modern Sans")[#studentName]])
        ]
      }
    })
  ]
)
  v(116pt-topMargin+2.5cm)
  line(length: 100%, stroke: 2pt)
  v(-10pt)
  align(
    right,
    //[#text(size: 24.4pt, font: "New Computer Modern Sans", weight: "bold")[#chapterTitle ]#label(lower(chapterTitle))]
    
    [#text(size: 24.4pt, font: "New Computer Modern Sans")[#heading(outlined: true)[#chapterTitle]]#label(lower(chapterTitle))]
  )
  v(87pt)
  set text(size: 10.5pt,font: "New Computer Modern Math", weight: 500)
[#content]

pagebreak(to: "even", weak: true)

body

}