-- ========================================================================== --
-- Duduar's dotfiles                                                          --
--                                                                            --
-- Telescope (neovim plugin) configuration file                               --
-- Copyright (c) 2024 Duduar Deagle                                           --
-- ========================================================================== --
-- Licensed under the Apache License, Version 2.0 (the "License"); you must   --
-- not use this file except in compliance with the License. You may obtain    --
-- a copy of the License with this file or you must obtain a copy of          --
-- the License at:                                                            --
--                                                                            --
-- https://www.apache.org/licenses/LICENSE-2.0                                --
--                                                                            --
-- Unless required by applicable law or agreed to in writing,                 --
-- software distributed under the License is distributed on an "AS IS" BASIS, --
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.   --
-- See the License for the specific language governing permissions and        --
-- limitations under the License.                                             --
-- ========================================================================== --

require('telescope').load_extension('media_files')

require('telescope').setup {
  defaults = {
    vimgrep_arguments = {
      'rg',
      '--color=never',
      '--no-heading',
      '--with-filename',
      '--line-number',
      '--column',
      '--smart-case',
    },
    prompt_prefix = " 🔍  ",
    selection_caret = ' 🔹  ',
    entry_prefix = '  ',
    initial_mode = 'insert',
    selection_strategy = 'reset',
    sorting_strategy = 'ascending',
    layout_strategy = 'horizontal',
    layout_config = {
      horizontal = {
        prompt_position = 'top',
        preview_width = 0.55,
        results_width = 0.8,
      },
      vertical = {
        mirror = false,
      },
      width = 0.87,
      height = 0.80,
      preview_cutoff = 120,
    },
    file_sorter = require('telescope.sorters').get_fuzzy_file,
    file_ignore_patterns = { '.git', 'node_modules', 'bun.lockb' },
    generic_sorter = require('telescope.sorters').get_generic_fuzzy_sorter,
    path_display = { 'absolute' },
    winblend = 0,
    border = {},
    borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
    color_devicons = true,
    use_less = true,
    set_env = { ['COLORTERM'] = 'truecolor' },
    file_previewer = require('telescope.previewers').vim_buffer_cat.new,
    grep_previewer = require('telescope.previewers').vim_buffer_vimgrep.new,
    qflist_previewer = require('telescope.previewers').vim_buffer_qflist.new,
    buffer_previewer_maker = require('telescope.previewers').buffer_previewer_maker,
  },
  extensions = {
    media_files = {
      filetypes = { 'png', 'webp', 'jpg', 'jpeg' },
      find_cmd = 'rg',
    },
  },
}
