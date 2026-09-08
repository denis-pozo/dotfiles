# Neovim Config Cheatsheet

Leader key: `<Space>`

## Core (not plugin-specific)

General keymaps set directly in `lua/denispozo/core/keymaps.lua`.

| Keymap | Mode | Action |
|---|---|---|
| `jk` | insert | Exit insert mode (acts as `<ESC>`) |
| `<leader>nh` | normal | Clear search highlights |
| `<leader>+` | normal | Increment number under cursor |
| `<leader>-` | normal | Decrement number under cursor |
| `<leader>sv` | normal | Split window vertically |
| `<leader>sh` | normal | Split window horizontally |
| `<leader>se` | normal | Make all splits equal size |
| `<leader>sx` | normal | Close current split |
| `<leader>to` | normal | Open new tab |
| `<leader>tx` | normal | Close current tab |
| `<leader>tn` | normal | Go to next tab |
| `<leader>tp` | normal | Go to previous tab |
| `<leader>tf` | normal | Open current buffer in a new tab |

---

## LSP (`lua/denispozo/lsp.lua`, `lua/denispozo/plugins/lsp/*`)

Not a single plugin but the language server glue: `nvim-lspconfig` defines/launches language servers, `mason.nvim` installs the server binaries (e.g. `lua-language-server`, `typescript-language-server`) so lspconfig has something to run. Keymaps below are buffer-local and only active once an LSP attaches to that buffer.

| Keymap | Mode | Action |
|---|---|---|
| `gR` | normal | Show LSP references (via Telescope) |
| `gD` | normal | Go to declaration |
| `gd` | normal | Go to definition |
| `gi` | normal | Show implementations (via Telescope) |
| `gt` | normal | Show type definitions (via Telescope) |
| `<leader>ca` | normal, visual | Code actions (applies to selection in visual mode) |
| `<leader>rn` | normal | Smart rename symbol |
| `<leader>D` | normal | Show all diagnostics for the buffer (via Telescope) |
| `<leader>d` | normal | Show diagnostic for current line (floating window) |
| `[d` | normal | Jump to previous diagnostic |
| `]d` | normal | Jump to next diagnostic |
| `K` | normal | Show hover documentation for symbol under cursor |
| `<leader>rs` | normal | Restart LSP |

Mason UI (`:Mason`) has its own default keymaps inside its buffer: `i` install, `u` update, `X` uninstall, `U` update all, `<CR>` expand package.

---

## nvim-tree (`plugins/nvim-tree.lua`)

File explorer sidebar (tree view of the filesystem), replaces netrw.

| Keymap | Mode | Action |
|---|---|---|
| `<leader>ee` | normal | Toggle file explorer |
| `<leader>ef` | normal | Toggle file explorer and reveal current file |
| `<leader>ec` | normal | Collapse file explorer |
| `<leader>er` | normal | Refresh file explorer |

Inside the tree window itself (plugin defaults, not custom): `a` create file/folder, `d` delete, `r` rename, `x` cut, `c` copy, `p` paste, `<CR>` open.

---

## Telescope (`plugins/telescope.lua`)

Fuzzy finder for files, text, buffers, LSP results, etc. Backed by `plenary.nvim` (utility lib) and accelerated by the native `fzf` sorter extension.

| Keymap | Mode | Action |
|---|---|---|
| `<leader>ff` | normal | Fuzzy find files in cwd |
| `<leader>fr` | normal | Fuzzy find recently opened files |
| `<leader>fs` | normal | Live grep string in cwd |
| `<leader>fc` | normal | Grep string under cursor |

Inside the Telescope prompt (insert mode): `<C-k>`/`<C-j>` move selection up/down, `<C-q>` send all results to the quickfix list.

---

## nvim-cmp + LuaSnip (`plugins/nvim-cpm.lua`)

Autocompletion engine. Pulls suggestions from the LSP, buffer text, filesystem paths, and snippets; `LuaSnip` expands snippets, `friendly-snippets` supplies a library of them, `lspkind.nvim` adds VS Code-style icons to the completion menu.

| Keymap | Mode | Action |
|---|---|---|
| `<C-k>` | insert (in cmp menu) | Select previous suggestion |
| `<C-j>` | insert (in cmp menu) | Select next suggestion |
| `<C-b>` | insert (in cmp menu) | Scroll docs up |
| `<C-f>` | insert (in cmp menu) | Scroll docs down |
| `<C-Space>` | insert | Trigger completion menu |
| `<C-e>` | insert (in cmp menu) | Abort/close completion |
| `<CR>` | insert (in cmp menu) | Confirm selected item |

---

## nvim-autopairs (`plugins/autopairs.lua`)

Automatically inserts matching closing brackets/quotes as you type. Uses treesitter to avoid pairing inside strings for Lua/JS, and integrates with nvim-cmp so pairs close correctly after accepting a completion (e.g. auto-closing `()` after picking a function). No custom keymaps — it's purely automatic.

---

## Treesitter (`plugins/treesitter.lua`)

Provides accurate syntax highlighting, indentation, and structural code awareness by parsing real syntax trees per language (bash, lua, typescript, sql, yaml, etc. — see `ensure_installed`). `nvim-ts-autotag` auto-closes/renames HTML/JSX tags using this same parser.

| Keymap | Mode | Action |
|---|---|---|
| `<C-Space>` | normal/visual | Start/expand incremental selection (select enclosing syntax node) |
| `<BS>` | visual | Shrink selection to previous node |

---

## bufferline.nvim (`plugins/bufferline.lua`)

Renders a tab/buffer bar at the top of the window (configured in `tabs` mode, slanted separators). Visual only — no custom keymaps defined; navigate tabs with the core `<leader>tn`/`<leader>tp` mappings above.

---

## lualine.nvim (`plugins/lualine.lua`)

Statusline at the bottom of the window: mode indicator, file info, and a pending-updates counter for lazy.nvim. Visual only, no keymaps.

---

## which-key.nvim (`plugins/which-key.lua`)

Popup that shows available keybindings as you type a prefix (e.g. press `<leader>` and wait to see all leader mappings). No keymaps of its own — it just surfaces everything above; lowers `timeoutlen` to 500ms so the popup appears faster.

---

## vim-maximizer (`plugins/vim-maximizer.lua`)

Toggles a split to fill the whole editor and back.

| Keymap | Mode | Action |
|---|---|---|
| `<leader>sm` | normal | Maximize/restore current split |

---

## auto-session (`plugins/auto-session.lua`)

Saves and restores your window/buffer layout per working directory, so `nvim` in a project can reopen where you left off. Auto-restore on startup is disabled, so restoring is manual.

| Keymap | Mode | Action |
|---|---|---|
| `<leader>wr` | normal | Restore session for cwd |
| `<leader>ws` | normal | Save session for cwd |

---

## dressing.nvim (`plugins/dressing.lua`)

Improves the look of built-in `vim.ui.select`/`vim.ui.input` prompts (used by things like LSP rename or code action pickers) so they appear as floating UI instead of the plain command line. No keymaps, purely cosmetic/UX.

---

## rose-pine (`plugins/colorscheme.lua`)

Colorscheme plugin, sets the `rose-pine` theme (`main` variant) globally. No keymaps.

---

## alpha-nvim (`plugins/alpha.lua`)

Start screen shown on launching Neovim with no file (`VimEnter`), with an ASCII header and shortcut buttons.

| Keymap (dashboard buttons) | Action |
|---|---|
| `e` | New file |
| `SPC ee` | Toggle file explorer (nvim-tree) |
| `SPC ff` | Find file (Telescope) |
| `SPC fs` | Find word (Telescope live grep) |
| `SPC wr` | Restore session for cwd (auto-session) |
| `q` | Quit Neovim |

---

## Other dependencies (no config/keymaps of their own)

- **plenary.nvim** — shared Lua utility library other plugins (Telescope, auto-session) depend on.
- **vim-tmux-navigator** — lets `<C-h/j/k/l>`-style navigation move seamlessly between Vim splits and tmux panes.
- **nvim-web-devicons** — file-type icons used by nvim-tree, bufferline, lualine, telescope.
