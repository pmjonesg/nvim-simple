{ lib, config, ... }:
{
  options = {
    avante.enable = lib.mkEnableOption "Enable avante plugin";
  };
  
  config = lib.mkIf config.avante.enable {
    plugins.avante = {
      enable = true;
      settings = {
        diff = {
          autojump = true;
          debug = false;
          list_opener = "copen";
        };
        highlights = {
          diff = {
            current = "DiffText";
            incoming = "DiffAdd";
          };
        };
        hints = {
          enabled = true;
        };
        mappings = {
          diff = {
            both = "cb";
            next = "]x";
            none = "c0";
            ours = "co";
            prev = "[x";
            theirs = "ct";
          };
        };
        provider = "claude";
        providers = {
          claude = {
            endpoint = "https://api.anthropic.com";
            extra_request_body = {
              max_tokens = 4096;
              temperature = 0;
            };
            model = "claude-sonnet-4-20250514";
          };
        };
        windows = {
          sidebar_header = {
            align = "center";
            rounded = true;
          };
          width = 30;
          wrap = true;
        };
      };
    };
  };
}
