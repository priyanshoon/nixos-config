{
  # programs.nixvim.extraConfigLua = ''
  #   -- Cursor Dark-inspired palette. Base editor groups deliberately have no
  #   -- background, allowing the terminal transparency to show through.
  #   vim.cmd("highlight clear")
  #   vim.g.colors_name = "cursor-dark-transparent"
  #
  #   local colors = {
  #     foreground = "#d4d4d4",
  #     muted = "#858585",
  #     line = "#2a2d2e",
  #     selection = "#264f78",
  #     search = "#613315",
  #     cyan = "#4ec9b0",
  #     blue = "#569cd6",
  #     light_blue = "#9cdcfe",
  #     purple = "#c586c0",
  #     yellow = "#dcdcaa",
  #     orange = "#ce9178",
  #     green = "#6a9955",
  #     number = "#b5cea8",
  #     red = "#f14c4c",
  #     error = "#f48771",
  #     warning = "#cca700",
  #     info = "#75beff",
  #   }
  #
  #   local function hl(group, options)
  #     vim.api.nvim_set_hl(0, group, options)
  #   end
  #
  #   -- Editor chrome: transparent wherever a background is not essential.
  #   hl("Normal", { fg = colors.foreground, bg = "NONE" })
  #   hl("NormalNC", { fg = colors.foreground, bg = "NONE" })
  #   hl("NormalFloat", { fg = colors.foreground, bg = "NONE" })
  #   hl("SignColumn", { bg = "NONE" })
  #   hl("EndOfBuffer", { fg = "NONE", bg = "NONE" })
  #   hl("LineNr", { fg = colors.muted, bg = "NONE" })
  #   hl("CursorLineNr", { fg = colors.yellow, bg = "NONE", bold = true })
  #   hl("CursorLine", { bg = colors.line })
  #   hl("ColorColumn", { bg = colors.line })
  #   hl("VertSplit", { fg = colors.line, bg = "NONE" })
  #   hl("WinSeparator", { fg = colors.line, bg = "NONE" })
  #   hl("StatusLine", { fg = colors.foreground, bg = "NONE" })
  #   hl("StatusLineNC", { fg = colors.muted, bg = "NONE" })
  #   hl("TabLine", { fg = colors.muted, bg = "NONE" })
  #   hl("TabLineSel", { fg = colors.foreground, bg = "NONE", bold = true })
  #   hl("Pmenu", { fg = colors.foreground, bg = colors.line })
  #   hl("PmenuSel", { fg = "#ffffff", bg = colors.selection })
  #   hl("FloatBorder", { fg = colors.blue, bg = "NONE" })
  #   hl("Visual", { bg = colors.selection })
  #   hl("Search", { fg = "#ffffff", bg = colors.search })
  #   hl("IncSearch", { fg = "#ffffff", bg = colors.orange })
  #   hl("MatchParen", { fg = colors.yellow, underline = true, bold = true })
  #
  #   -- Syntax groups follow Cursor's Dark+ token colours.
  #   hl("Comment", { fg = colors.green, italic = true })
  #   hl("Constant", { fg = colors.light_blue })
  #   hl("String", { fg = colors.orange })
  #   hl("Character", { fg = colors.orange })
  #   hl("Number", { fg = colors.number })
  #   hl("Boolean", { fg = colors.blue })
  #   hl("Identifier", { fg = colors.light_blue })
  #   hl("Function", { fg = colors.yellow })
  #   hl("Statement", { fg = colors.purple })
  #   hl("Keyword", { fg = colors.purple })
  #   hl("Operator", { fg = colors.foreground })
  #   hl("Type", { fg = colors.cyan })
  #   hl("Special", { fg = colors.blue })
  #   hl("PreProc", { fg = colors.purple })
  #   hl("Todo", { fg = colors.yellow, bold = true })
  #
  #   -- Diagnostics and common plugin integration groups.
  #   hl("DiagnosticError", { fg = colors.error })
  #   hl("DiagnosticWarn", { fg = colors.warning })
  #   hl("DiagnosticInfo", { fg = colors.info })
  #   hl("DiagnosticHint", { fg = colors.cyan })
  #   hl("DiagnosticUnderlineError", { undercurl = true, sp = colors.error })
  #   hl("DiagnosticUnderlineWarn", { undercurl = true, sp = colors.warning })
  #   hl("DiagnosticUnderlineInfo", { undercurl = true, sp = colors.info })
  #   hl("DiagnosticUnderlineHint", { undercurl = true, sp = colors.cyan })
  #   hl("DiffAdd", { fg = colors.green, bg = "NONE" })
  #   hl("DiffChange", { fg = colors.blue, bg = "NONE" })
  #   hl("DiffDelete", { fg = colors.red, bg = "NONE" })
  #   hl("GitSignsAdd", { fg = colors.green, bg = "NONE" })
  #   hl("GitSignsChange", { fg = colors.blue, bg = "NONE" })
  #   hl("GitSignsDelete", { fg = colors.red, bg = "NONE" })
  #   hl("LspReferenceText", { bg = colors.line })
  #   hl("LspReferenceRead", { bg = colors.line })
  #   hl("LspReferenceWrite", { bg = colors.line })
  # '';

  programs.nixvim = {
    colorschemes.vscode = {
      enable = true;
      settings = {
        transparent = true;
      };
    };
  };
}
