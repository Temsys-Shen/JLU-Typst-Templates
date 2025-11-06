#let 应用配置(body, 配置: (body=>body,)) = {
  let confs = 配置
  if confs.len() == 0 {
    return body
  }
  let result = confs.at(0)(body)
  confs = confs.slice(1)
  应用配置(result, 配置: confs)
};