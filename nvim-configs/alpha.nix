{
  plugins.alpha = {
    enable = true;
    layout =
      let
        padding = val: {
          type = "padding";
          inherit val;
        };
      in
      [
        (padding 4)
        {
          opts = {
            hl = "AlphaHeader";
            position = "center";
          };
          type = "text";
          val = [
            " 88888888b  88888888b d8888888P  888888ba "
            " 88         88             .d8'  88    `8b"
            "a88aaaa    a88aaaa       .d8'   a88aaaa8P'"
            " 88         88         .d8'      88   `8b."
            " 88         88        d8'        88     88"
            " 88888888P  dP        Y8888888P  dP     dP"
          ];
        }
        (padding 6)
        {
          type = "button";
          val = "󰱼 Find file";
          on_press.raw = "require('telescope.builtin').find_files";
          opts = {
            keymap = [
              "n"
              "f"
              ":Telescope find_files <CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "f";
            position = "center";
            cursor = 3;
            width = 40;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1)
        {
          type = "button";
          val = "󱎸 Find text";
          on_press.raw = "require('telescope.builtin').live_grep";
          opts = {
            keymap = [
              "n"
              "t"
              ":Telescope live_grep <CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "t";
            position = "center";
            cursor = 3;
            width = 40;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1)
        {
          type = "button";
          val = "󰈔 New file";
          on_press.__raw = "function() vim.cmd[[ene]] end";
          opts = {
            keymap = [
              "n"
              "n"
              ":ene <BAR> startinsert <CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "n";
            position = "center";
            cursor = 3;
            width = 40;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1)
        {
          type = "button";
          val = "󱑒 Recently opened files";
          on_press.raw = "require('telescope.builtin').oldfiles";
          opts = {
            keymap = [
              "n"
              "o"
              ":Telescope oldfiles <CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "o";
            position = "center";
            cursor = 3;
            width = 40;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
        (padding 1)
        {
          type = "button";
          val = " Quit Neovim";
          on_press.__raw = "function() vim.cmd[[qa]] end";
          opts = {
            keymap = [
              "n"
              "q"
              ":qa<CR>"
              {
                noremap = true;
                silent = true;
                nowait = true;
              }
            ];
            shortcut = "q";
            position = "center";
            cursor = 3;
            width = 40;
            align_shortcut = "right";
            hl_shortcut = "Keyword";
          };
        }
      ];
  };
}
