#import "../typFiles/chapter.typ": *

#show: chapter.with(chapterTitle: "Introduction", content: [

This is a Typst thesis and this is Chapter 1.

= About Typst
Typst.app is a document preparation system for the TEX typesetting program. It offers programmable desktop publishing features and extensive facilities for automating most aspects of typesetting and desktop publishing, including numbering and cross-referencing, tables and figures, page layout, bibliographies, and much more.
Typst was originally written in 1984 by Leslie Lamport and has become the dominant method for using TEX; few people write in plain TEX anymore. The current version is Typst 13.01. If you want to know more about L A TEX you better read

= About Acronyms
This section contains an acronym of the Delft Center for Systems and Control (DCSC). The DCSC is our department within the faculty of Mechanical, Maritime and Materials Engineering (3mE) at Delft University of Technology (TU Delft). Acronyms are automatically listed in the Glossary in the back of this thesis. You have to define acronyms in glossary.tex using \\acro{ACRONYM}{Full text}. You print an acronym by using the command \\ac{...}. You can always force a full, long or short printout by using \\acf{...}, \\acl{...} or \\acs{...} respectively.
#linebreak();#linebreak()

- \\acf{DCSC}: Delft Center for Systems and Control (DCSC


- \\acl{DCSC}: Delft Center for Systems and Control;
- \\acs{DCSC}: DCSC.
])