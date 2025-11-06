#import "../配置/字体.typ": 字号, 字体
#let 目录 = page({
  set align(center)
  set par(leading: 1.5em)
  text([目录<lang>], size:字号.三号, font: 字体.黑体)
  set align(left)
  show outline.entry.where(level: 1):entry=>{
    text(entry, size:字号.四号)
  }
  show outline.entry.where(level:2):entry=>{
    text(entry, size:字号.四号)
  }  
  outline(title: "", indent: n=> 2em*n)
})
