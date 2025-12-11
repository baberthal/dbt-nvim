local log = require("dbt.util.log")

local Dbt = {}

--- Dbt configuration with its default values.
---
---@type table
--- Default values:
---@eval return MiniDoc.afterlines_to_code(MiniDoc.current.eval_section)
Dbt.options = {
    -- Prints useful logs about what event are triggered, and reasons actions are executed.
    debug = false,
}

---@private
local defaults = vim.deepcopy(Dbt.options)

--- Defaults Dbt options by merging user provided options with the default plugin values.
---
---@param options table Module config table. See |Dbt.options|.
---
---@private
function Dbt.defaults(options)
    Dbt.options =
        vim.deepcopy(vim.tbl_deep_extend("keep", options or {}, defaults or {}))

    -- let your user know that they provided a wrong value, this is reported when your plugin is executed.
    assert(
        type(Dbt.options.debug) == "boolean",
        "`debug` must be a boolean (`true` or `false`)."
    )

    return Dbt.options
end

--- Define your dbt setup.
---
---@param options table Module config table. See |Dbt.options|.
---
---@usage `require("dbt").setup()` (add `{}` with your |Dbt.options| table)
function Dbt.setup(options)
    Dbt.options = Dbt.defaults(options or {})

    log.warn_deprecation(Dbt.options)

    return Dbt.options
end

return Dbt
