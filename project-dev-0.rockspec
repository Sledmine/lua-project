package = "<MyProjectName>"
version = "dev-0"
source = {
    url = "<URL>",
}
description = {
    summary = "<A brief summary of my project>",
    detailed = [[
        <Here is a detailed description of my project. It can include multiple lines>
   ]],
}
dependencies = {
    "lua == 5.1"
}
build = {
   type = "builtin",
    modules = {
        -- Local Lua modules
        luna = "src/lua/modules/luna.lua"
        -- Standalone C modules
        -- Default C modules
        cjson = {sources = {
            "src/c/cjson/lua_cjson.c",
            "src/c/cjson/strbuf.c",
            "src/c/cjson/fpconv.c"
        }},
    }
}
