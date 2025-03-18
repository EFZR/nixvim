{
  plugins = {
    ts-autotag = {
      enable = true;
      settings = {
        aliases = {
          astro = "html";
          blade = "html";
          eruby = "html";
          handlebars = "glimmer";
          hbs = "glimmer";
          htmldjango = "html";
          javascript = "typescriptreact";
          "javascript.jsx" = "typescriptreact";
          javascriptreact = "typescriptreact";
          markdown = "html";
          php = "html";
          rescript = "typescriptreact";
          rust = "rust";
          twig = "html";
          typescript = "typescriptreact";
          "typescript.tsx" = "typescriptreact";
          vue = "html";
        };
      };
    };
  };
}
