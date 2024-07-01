-- ========================================================================== --
-- Duduar's dotfiles                                                          --
--                                                                            --
-- Tabnine (neovim plugin) configuration file                                 --
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

require('tabnine').setup({
  disable_auto_comment=true,
  accept_keymap='<Tab>',
  dismiss_keymap = '<C-]>',
  debounce_ms = 800,
  suggestion_color = {gui = '#808080', cterm = 244},
  exclude_filetypes = {'TelescopePrompt', 'NvimTree', '*.env', '*.mdx'}
})
