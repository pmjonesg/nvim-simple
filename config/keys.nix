{ lib, config, ... }:
{
  options = {
    keys.enable = lib.mkEnableOption "Enable keys module";
  };

  config = lib.mkIf config.keys.enable {
    globals.mapleader = " ";

    plugins.which-key = {
      enable = true;
      settings = {
        spec = [
          {
            __unkeyed-1 = "<leader>f";
	    group = "find";
          }
	  {
            __unkeyed-1 = "<leader>w";
            group = "window";
            proxy = "<c-w>";
          }
	  {
            __unkeyed-1 = "<leader>e";
            __unkeyed-2 = "<cmd>Oil --float<cr>";
            desc = "file system";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>l";
            group = "lsp";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>a";
            group = "avante";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>c";
            group = "code";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>d";
            group = "debug";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>dut";
            __unkeyed-2 = "<cmd>:lua require('dapui').toggle()<cr>";
            desc = "toggle ui";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>db";
            __unkeyed-2 = "<cmd>:lua require('dap').toggle_breakpoint()<cr>";
            desc = "toggle breakpoint";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>dB";
            __unkeyed-2 = "<cmd>:lua require('dap').set_breakpoint(vim.fn.input('Breakpoint confition: '))<cr>";
            desc = "set breakpoint";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>dt";
            __unkeyed-2 = "<cmd>:lua require('dap').debug_test()<cr>";
            desc = "test";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>do";
            __unkeyed-2 = "<cmd>:lua require('dap').repl.open()<cr>";
            desc = "repl";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>dlp";
            __unkeyed-2 = "<cmd>:lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<cr>";
            desc = "log point message";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>dc";
            __unkeyed-2 = "<cmd>:lua require('dap').continue()<cr>";
            desc = "continue";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>dso";
            __unkeyed-2 = "<cmd>:lua require('dap').step_over()<cr>";
            desc = "step over";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>dsi";
            __unkeyed-2 = "<cmd>:lua require('dap').step_into()<cr>";
            desc = "step into";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>dsx";
            __unkeyed-2 = "<cmd>:lua require('dap').step_out()<cr>";
            desc = "step out";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>tr";
            __unkeyed-2 = "<cmd>:lua require('neotest').run.run()<cr>";
            desc = "run nearest test";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>tf";
            __unkeyed-2 = "<cmd>:lua require('neotest').run.run(vim.fn.expand('%'))<cr>";
            desc = "run current file";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>ta";
            __unkeyed-2 = "<cmd>:lua require('neotest').run.run({ suite = true })<cr>";
            desc = "run all";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>td";
            __unkeyed-2 = "<cmd>:lua require('neotest').run.run({ strategy = 'dap' })<cr>";
            desc = "debug nearest test";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>ts";
            __unkeyed-2 = "<cmd>:lua require('neotest').run.stop()<cr>";
            desc = "stop test";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>tn";
            __unkeyed-2 = "<cmd>:lua require('neotest').run.attach()<cr>";
            desc = "attach to nearest test";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>to";
            __unkeyed-2 = "<cmd>:lua require('neotest').output.open()<cr>";
            desc = "show test output";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>tp";
            __unkeyed-2 = "<cmd>:lua require('neotest').output_panel.toggle()<cr>";
            desc = "toggle output panel";
            mode = "n";
          }
	  {
            __unkeyed-1 = "<leader>tv";
            __unkeyed-2 = "<cmd>:lua require('neotest').summary.toggle()<cr>";
            desc = "toggle summary";
            mode = "n";
          }
	];
      };
    };

    keymaps = [
      {
        mode = "n";
	key = "<Esc>";
	action = "<cmd>nohlsearch<CR>";
      }
    ];
  };
}
