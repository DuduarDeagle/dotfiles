" ==============================================================================
" Duduar's dotfiles
"
" Neovim configuration file
" Copyright (c) 2024 Duduar Deagle
" ==============================================================================
" Licensed under the Apache License, Version 2.0 (the "License"); you may not
" use this file except in compliance with the License. You must obtain a copy
" of the License with this file or you may obtain a copy of the License at:
"
" https://www.apache.org/licenses/LICENSE-2.0
"
" Unless required by applicable law or agreed to in writing,
" software distributed under the License is distributed on an "AS IS" BASIS,
" WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
" See the License for the specific language governing permissions and
" limitations under the License.
" ==============================================================================

let mapleader = ' '

nmap <C-s> :w<CR>
nmap <C-k>s :wa<CR>
nmap <C-k><C-w> :qa<CR>

nmap <C-w> :bw<CR>
nmap <leader>, :bprevious<CR>
nmap <leader>. :bnext<CR>
nmap <ESC><C-m> :tab split<CR>
nmap <ESC><C-w> :tab close<CR>

nmap <CS-I> :CocCommand editor.action.organizeImport<CR>

nmap <silent>gd <Plug>(coc-definition)
nmap <silent>gy <Plug>(coc-type-definition)
nmap <silent>gi <Plug>(coc-implementation)
nmap <silent>gr <Plug>(coc-references)

nmap <C-b> :NeoTreeFloatToggle<CR>

nmap <C-p> :Telescope find_files<CR>
nmap <ESC><C-f> :Telescope live_grep<CR>
nmap <F1> :Telescope command_history<CR>

nmap <C-c> :PickColor<CR>

imap <C-j> <C-n>
imap <C-k> <C-p>
imap <C-l> <C-y>
imap <C-h> <C-h>

nmap <C-f> <Plug>(easymotion-s)
