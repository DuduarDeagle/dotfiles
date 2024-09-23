" ============================================================================ "
" Duduar's dotfiles                                                            "
"                                                                              "
" Neovim plugins file                                                          "
" Copyright (c) 2024 Duduar Deagle                                             "
" ============================================================================ "
" Licensed under the Apache License, Version 2.0 (the "License"); you must not "
" use this file except in compliance with the License. You may obtain a copy   "
" of the License with this file or you must obtain a copy of the License at:   "
"                                                                              "
" https://www.apache.org/licenses/LICENSE-2.0                                  "
"                                                                              "
" Unless required by applicable law or agreed to in writing,                   "
" software distributed under the License is distributed on an "AS IS" BASIS,   "
" WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.     "
" See the License for the specific language governing permissions and          "
" limitations under the License.                                               "
" ============================================================================ "

call plug#begin()
Plug 'christoomey/vim-tmux-navigator'
Plug 'MunifTanjim/nui.nvim'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-neo-tree/neo-tree.nvim', { 'branch': 'v2.x'}
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'ziontee113/color-picker.nvim'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'folke/todo-comments.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'wuelnerdotexe/vim-astro'
Plug 'lewis6991/gitsigns.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'codota/tabnine-nvim', { 'do': './dl_binaries.sh' }
Plug 'tpope/vim-fugitive'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'folke/tokyonight.nvim'
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

so ~/.config/nvim/plugins/telescope.lua
so ~/.config/nvim/plugins/neotree.lua
so ~/.config/nvim/plugins/color-picker.lua
so ~/.config/nvim/plugins/comments.lua
so ~/.config/nvim/plugins/tabnine.lua
so ~/.config/nvim/plugins/treesitter.lua
so ~/.config/nvim/plugins/lualine.lua
so ~/.config/nvim/plugins/ibl.lua
so ~/.config/nvim/plugins/gitsigns.lua
so ~/.config/nvim/plugins/devicons.lua
