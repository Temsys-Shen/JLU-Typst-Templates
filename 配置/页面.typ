#import "字体.typ":*
#let 边距(body) = {
  set page(margin: (top: 2.8cm, bottom: 2.5cm, x: 2.8cm))
  body
}

// #let 页眉(body) = {
//   //TODO
//   body
// }

#let 段落(body) = {
  set par(leading: 1.5em, spacing: 2em, first-line-indent: 2em)
  show heading.where(level: 1):set align(center)
  show outline: set heading(numbering: none, offset: 114514)
  set heading(numbering: "1.")
  show heading.where(level: 1, offset: 0):set heading(numbering: "第1章");
  show heading: it => {//解决首段不缩进
    par(leading: 0em)[#text()[#h(0.0em)]]
    it
    par(leading: 0em)[#text()[#h(0.0em)]]
  }
  body
}

#let 默认字体(body) = {
  set text(font: 字体.宋体, size: 字号.五号)
  body
}