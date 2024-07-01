" ============================================================================ "
" Duduar's dotfiles                                                            "
"                                                                              "
" Neovim configuration file                                                    "
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

so ~/.config/nvim/plugins.vim
so ~/.config/nvim/maps.vim

set undofile
set undodir=$HOME/.undodir
set hidden
set wildmenu
set wildoptions=pum
set clipboard=unnamedplus
set mouse=a

set number
set relativenumber
set numberwidth=1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab
set backspace=indent,eol,start
set breakindent
set formatoptions=l
set lbr
set noshowmode

set encoding=UTF-8
set ignorecase
syntax enable

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
set nofoldenable

colorscheme tokyonight-moon
set termguicolors

let g:loaded_node_provider = 0
let g:loaded_python3_provider = 0
let g:loaded_perl_provider = 0
let g:EasyMotion_smartcase = 1
let NERDSpaceDelims=1
let g:coc_global_extensions = ['coc-sh','coc-html','coc-css','@yaegassy/coc-tailwindcss3','coc-tsserver','coc-eslint','@yaegassy/coc-astro','coc-json','coc-pairs','coc-prettier','coc-emmet','coc-snippets','coc-tabnine']
let g:coc_snippet_prev = '<C-p>'
let g:coc_snippet_next = '<C-n>'
let g:astro_typescript = 'enable'
let g:ale_fixers = {
  \ 'css': ['prettier','stylelint'],
  \ 'scss': ['prettier','stylelint']
  \ }
let g:ale_use_neovim_diagnostics_api = 1
let g:ale_disable_lsp = 1
let g:ale_linters_explicit = 1
let g:ale_fix_on_save = 1
