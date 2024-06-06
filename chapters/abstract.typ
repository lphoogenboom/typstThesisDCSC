#import "../typFiles/specialChapter.typ": *

#counter(page).update(0)
#show: specialChapter.with(chapterTitle: "Abstract", showInOutline: false,content: [

// Write your abstract here
#lorem(200) // lorem() function adds filler text

])