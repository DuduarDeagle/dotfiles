-- ========================================================================== --
-- Duduar's dotfiles                                                          --
--                                                                            --
-- devicons (neovim plugin) configuration file                                --
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

require('nvim-web-devicons').set_icon {
  astro = {
    icon = '',
    color = "#e44d26",
    cterm_color = "0",
    name = 'Astro'
  },
  cjs = {
    icon = '',
    color = '#cbcb41',
    cterm_color = "0",
    name = 'CommonJS'
  },
  norg = {
    icon = '',
    color = '#70a898',
    cterm_color = '0',
    name = 'Norg'
  },
  ['prettier.config.js'] = {
    icon = '',
    color = '#458d90',
    cterm_color = "0",
    name = 'prettier.config.js'
  },
  ['tailwind.config.js'] = {
    icon = '󱏿',
    color = '#38bdf8',
    cterm_color = '0',
    name = 'tailwind.config.cjs'
  }
}
