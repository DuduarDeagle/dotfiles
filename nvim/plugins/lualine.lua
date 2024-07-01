-- ========================================================================== --
-- Duduar's dotfiles                                                          --
--                                                                            --
-- lualine (neovim plugin) configuration file                                 --
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

require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = '|',
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'filename'},
    lualine_c = {
      'branch', 'diff', {
        'diagnostics', 
        sources = {
          'coc',
          'ale'
        },
        symbols = {
          error = ' ', 
          warn = ' ', 
          info = ' ', 
          hint = ''
        },
      }
    },
    lualine_x = {'encoding','fileformat','filetype'},
    lualine_y = {'location','progress'},
    lualine_z = {'os.date("%H:%M %p")','tabnine'}
  }
}
