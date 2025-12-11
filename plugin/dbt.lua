-- You can use this loaded variable to enable conditional parts of your plugin.
if _G.DbtLoaded then
    return
end

_G.DbtLoaded = true

vim.api.nvim_create_user_command("Dbt", function()
    require("dbt").toggle()
end, {})
