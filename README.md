# dbt-nvim

> A catch phrase that describes your plugin.

## ⚡️ Features

> Write short sentences describing your plugin features

- FEATURE 1
- FEATURE ..
- FEATURE N

## 📋 Installation

<div align="center">
<table>
<thead>
<tr>
<th>Package manager</th>
<th>Snippet</th>
</tr>
</thead>
<tbody>
<tr>
<td>

[wbthomason/packer.nvim](https://github.com/wbthomason/packer.nvim)

</td>
<td>

```lua
-- stable version
use {"dbt-nvim", tag = "*" }
-- dev version
use {"dbt-nvim"}
```

</td>
</tr>
<tr>
<td>

[junegunn/vim-plug](https://github.com/junegunn/vim-plug)

</td>
<td>

```lua
-- stable version
Plug "dbt-nvim", { "tag": "*" }
-- dev version
Plug "dbt-nvim"
```

</td>
</tr>
<tr>
<td>

[folke/lazy.nvim](https://github.com/folke/lazy.nvim)

</td>
<td>

```lua
-- stable version
require("lazy").setup({{"dbt-nvim", version = "*"}})
-- dev version
require("lazy").setup({"dbt-nvim"})
```

</td>
</tr>
</tbody>
</table>
</div>

## ☄ Getting started

> Describe how to use the plugin the simplest way

## ⚙ Configuration

> The configuration list sometimes become cumbersome, making it folded by default reduce the noise of the README file.

<details>
<summary>Click to unfold the full list of options with their default values</summary>

> **Note**: The options are also available in Neovim by calling `:h dbt.options`

```lua
require("dbt").setup({
    -- you can copy the full list from lua/dbt/config.lua
})
```

</details>

## 🧰 Commands

|   Command   |         Description        |
|-------------|----------------------------|
|  `:Toggle`  |     Enables the plugin.    |

## ⌨ Contributing

PRs and issues are always welcome. Make sure to provide as much context as possible when opening one.

## 🗞 Wiki

You can find guides and showcase of the plugin on [the Wiki](https://github.com/morgan/dbt-nvim/wiki)

## 🎭 Motivations

> If alternatives of your plugin exist, you can provide some pros/cons of using yours over the others.
