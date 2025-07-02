local _saveinstance = nil
function saveinstance(options)
    options = options or {}
    assert(type(options) == "table", "invalid argument #1 to 'saveinstance' (table expected, got " .. type(options) .. ")", 2)
    print("Saving Instance....")
    _saveinstance = _saveinstance or loadstring(game:HttpGet("https://raw.githubusercontent.com/DucksEz/SaveInstance/refs/heads/main/SaveInstance.luau", true), "saveinstance")()
    return _saveinstance(options)
end
getgenv().saveinstance = saveinstance
