-- npm install -g vscode-css-languageserver-bin
require'lspconfig'.omnisharp.setup{
  cmd = {DATA_PATH .. "/lspinstall/csharp/run"},
  on_attach = require'lsp'.common_on_attach,
}
