return {
  "lukoshkin/highlight-whitespace",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    tws = "\\s\\+$",
    clear_on_bufleave = false,
    palette = {
      markdown = {
        tws = 'RosyBrown',
        ['\\S\\@<=\\s\\(\\.\\|,\\)\\@='] = 'CadetBlue3',
        ['\\S\\@<= \\{2,\\}\\S\\@='] = 'SkyBlue1',
        ['\\t\\+'] = 'plum4',
      }
    }
  }
}
