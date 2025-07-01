{ lib, config, ... }:
{
  options = {
    cmp-nvim.enable = lib.mkEnableOption "Enable cmp plugins";
  };

  config = lib.mkIf config.cmp-nvim.enable {
    plugins.cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        mapping = {
          __raw = ''
            cmp.mapping.preset.insert({
              ['<C-b>'] = cmp.mapping.scroll_docs(-4),
              ['<C-f>'] = cmp.mapping.scroll_docs(4),
              ['<C-Space>'] = cmp.mapping.complete(),
              ['<C-e>'] = cmp.mapping.abort(),
              ['<CR>'] = cmp.mapping.confirm({ select = true }),
              ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'}),
              ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'}),
            })
          '';
        };
        snippet = {
          expand = "function(args) require('luasnip').lsp_expand(args.body) end";
        };
        sources = [
            { name = "nvim_lsp"; }
            { name = "path"; }
            { name = "buffer"; }
            # { name = 'vsnip' };
            # { name = 'luasnip' };
            # { name = 'ultisnips' };
            # { name = 'snippy' };
        ];
      };
    };
  };
}
