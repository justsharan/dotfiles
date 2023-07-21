local mason_ok, mason = pcall(require, 'mason')
if not mason_ok then
  return
end

mason.setup()

local mason_lspconfig_ok, mason_lspconfig = pcall(require, 'mason-lspconfig')
if not mason_lspconfig_ok then
  return
end

local servers = {
  'bashls',
  'cssls',
  'html',
  'jsonls',
  'marksman',
  'pyright',
  'tsserver',
  'texlab'
}

mason_lspconfig.setup {
  ensure_installed = servers,
  automatic_installation = true,
}

