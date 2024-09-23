-- ========================================================================== --
-- Duduar's dotfiles                                                          --
--                                                                            --
-- Treesitter (neovim plugin) configuration file                              --
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

require('nvim-treesitter.configs').setup {
  auto_install = true,
  ensure_installed = {
    'astro',
    'bash',
    'css',
    'graphql',
    'git_config',
    'javascript',
    'json',
    'lua',
    'markdown',
    'query',
    'tsx',
    'typescript',
    'vimdoc'
  },
  ignore_install = {
    'scss'
  },
  highlight = {
    enable = true,
    disable = {
      'scss'
    }
  },
  additional_vim_regex_highlighting = false,
  indent = {
    enable = true
  }
}
