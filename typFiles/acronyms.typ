// Dictionary with acronyms
#import "../acronymList.typ": acronyms

// The state which tracks the used acronyms
#let usedAcronyms = state("usedDic", (:))

// #acro() displays long name format for acronyms in acronymsList.typ
#let acro(key) = {
  if(acronyms.keys().contains(key) == false) {
    return rect(
      fill: red,
      inset: 5pt,
      radius: 1pt,
      [!Unknown Acronym: #key!],
    )
  } 
  else {
    return acronyms.at(key)
  }
}

// #acro() displays long name format for acronyms in acronymsList.typ
// e.g.: #acrof("TUD") Technisch Universiteit Delft (TUD)
#let acrof(body) = {
  if(acronyms.keys().contains(body) == false) {
    return rect(
      fill: red,
      inset: 5pt,
      radius: 1pt,
      [!Unknown Acronym: #body!],
    )
  }
  usedAcronyms.display(usedDic => {
    if(usedDic.keys().contains(body)) {
      return body
    }
    return text(body,weight: "bold") + h(2em) + acronyms.at(body)
  });
  usedAcronyms.update(usedDic => {
    usedDic.insert(body, true)
    return usedDic
  })
}