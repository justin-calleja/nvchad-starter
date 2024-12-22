local cmp = require("cmp")

-- this isn't doing shit:
cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Replace,
      select = false, -- Prevent selecting the first item by default
    }),
    ['<C-j>'] = cmp.mapping.confirm({ select = true }), -- Explicit confirmation
  },
})

