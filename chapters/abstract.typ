#import "../typFiles/specialChapter.typ": *

#counter(page).update(0)
#show: specialChapter.with(content: lorem(600), chapterTitle: "Abstract", showInOutline: false)