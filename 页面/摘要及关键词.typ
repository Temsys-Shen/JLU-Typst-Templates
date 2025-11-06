#import "../配置/字体.typ":*
#let 摘要(摘要: [lorem(128)], ..关键词) = {
  set align(center)
  set text(font: 字体.宋体)
  text([摘要#label("lang")], size: 字号.小三, weight: "extrabold")

  par("")

  set align(alignment.start)
  set text(size: 字号.小四)
  set par(justify: true, first-line-indent: 2em)
  摘要

  par("")

  set par(first-line-indent: 0em)
  [#set strong(delta: 400);*关键词：*<lang> #关键词.pos().join("；")]
  pagebreak()
}