require'nvim-web-devicons'.setup {
 -- your personal icons can go here (to override)
 -- you can specify color or cterm_color instead of specifying both of them
 -- DevIcon will be appended to `name`
 override = {
  css = {
    icon = "",
    color = "#663399", 
    cterm_color = "91",
    name = "Css"
  },
  ["vite.config.cjs"]   = { icon = "󱐋", color = "#FFA800", cterm_color = "214", name = "ViteConfig" },
  ["vite.config.cts"]   = { icon = "󱐋", color = "#FFA800", cterm_color = "214", name = "ViteConfig" },
  ["vite.config.js"]    = { icon = "󱐋", color = "#FFA800", cterm_color = "214", name = "ViteConfig" },
  ["vite.config.mjs"]   = { icon = "󱐋", color = "#FFA800", cterm_color = "214", name = "ViteConfig" },
  ["vite.config.mts"]   = { icon = "󱐋", color = "#FFA800", cterm_color = "214", name = "ViteConfig" },
  ["vite.config.ts"]    = { icon = "󱐋", color = "#FFA800", cterm_color = "214", name = "ViteConfig" },
  ["vitest.config.cjs"] = { icon = "󱐋", color = "#739B1B", cterm_color = "106", name = "VitestConfig" },
  ["vitest.config.cts"] = { icon = "󱐋", color = "#739B1B", cterm_color = "106", name = "VitestConfig" },

 };
}
