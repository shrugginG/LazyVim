return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    local auto_select = true
    opts.mapping = cmp.mapping.preset.insert({
      ["<C-b>"] = cmp.mapping.scroll_docs(-4),
      ["<C-f>"] = cmp.mapping.scroll_docs(4),
      ["<C-Space>"] = cmp.mapping.complete(),
      ["<Tab>"] = LazyVim.cmp.confirm({ select = auto_select }),
      ["<CR>"] = LazyVim.cmp.confirm({ select = false }),
      ["<S-CR>"] = LazyVim.cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      ["<C-CR>"] = function(fallback)
        cmp.abort()
        fallback()
      end,
    })
  end,
}
