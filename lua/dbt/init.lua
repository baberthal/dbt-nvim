local main = require("dbt.main")
local config = require("dbt.config")

local Dbt = {}

--- Toggle the plugin by calling the `enable`/`disable` methods respectively.
function Dbt.toggle()
    if _G.Dbt.config == nil then
        _G.Dbt.config = config.options
    end

    main.toggle("public_api_toggle")
end

--- Initializes the plugin, sets event listeners and internal state.
function Dbt.enable(scope)
    if _G.Dbt.config == nil then
        _G.Dbt.config = config.options
    end

    main.toggle(scope or "public_api_enable")
end

--- Disables the plugin, clear highlight groups and autocmds, closes side buffers and resets the internal state.
function Dbt.disable()
    main.toggle("public_api_disable")
end

-- setup Dbt options and merge them with user provided ones.
function Dbt.setup(opts)
    _G.Dbt.config = config.setup(opts)
end

_G.Dbt = Dbt

return _G.Dbt
