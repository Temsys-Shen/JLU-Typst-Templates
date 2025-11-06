#let 韩文(body) ={
  show "英文题目": "韩文题目"
  show "参考文献": "참고문헌"
  show "致谢": "감사의 글"
  body
}
#let 基本英文(body) ={
  show <lang>:l=>{
    show "摘要": "Abstract"
    show "关键词": "Keywords"
    l
  }
  body
}