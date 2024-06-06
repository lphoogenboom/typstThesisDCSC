#import "../acronymList.typ": acronyms

// The state which tracks the used acronyms
#let usedAcronyms = state("usedDic", (:))

// The function which either shows the acronym or the full text for it
#let acro(body) = {
  if(acronyms.keys().contains(body) == false) {
    return rect(
      fill: red,
      inset: 8pt,
      radius: 4pt,
      [*Warning:\ #body*],
    )
  }
  usedAcronyms.display(usedDic => {
    if(usedDic.keys().contains(body)) {
      return body
    }
    return text(body, weight: "bold") + h(1em) + acronyms.at(body)
  });
  usedAcronyms.update(usedDic => {
    usedDic.insert(body, true)
    return usedDic
  })
}
