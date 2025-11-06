#import "../配置/字体.typ": *
#let key(body) = {
  set align(left)
  rect(stroke: none, body)
}
#let value(body) = {
  rect(width: 100%, stroke: (bottom: 0.5pt + black), body)
}

#let 封面(中文题目: ("", ""), 外语题目: ("", ""), 学生姓名: "", 日期: "", 学号: "", 学院: "", 专业: "", 指导教师: "", 职称: "") = {
  set align(center)
  set text(font: 字体.宋体) 
  set par(leading: 0.65em, spacing:1.2em)
  image("../assets/图文logo.png", width: 14cm)
  text("本科生毕业论文（设计）", size: 字号.小初, weight: "bold")
  set text(weight: "bold", size: 字号.三号)
  block(width: 14cm, {
    grid(
      row-gutter: 1em,
      columns: 2,
      key("中文题目"),
      grid(row-gutter: 1em, columns: 1, ..中文题目.map((title)=>value(title))),
      key("英文题目"),
      grid(row-gutter: 1em, columns: 1, ..外语题目.map((title)=>value(title))),
    )

    par(spacing: 1em,"")*2

    grid(
      columns: 2,
      row-gutter: 1em,
      key("学生姓名"),
      value(学生姓名),
      key("学　　号"),
      value(学号),
      key("学　　院"),
      value(学院),
      key("专　　业"),
      value(专业),
    )
    grid(columns: 4, row-gutter: 1em, key("指导教师"), value(指导教师), key("职称"), value(职称))
  })
  par("")

  strong(日期)
  pagebreak()
}
