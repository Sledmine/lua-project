# lua-project
Standalone lua project template for rapid binary and in local module building

**NOTE:**  Only supports LuaJIT as of now.

## Default Lua Modules
- `luna` - Lua standard library with additional features

## Default C Modules
- `cjson` - JSON encoding/decoding

## Build
To build the project, make sure you have `luapak` installed and your Lua interpreter already
compiled, then run the following command:

```bash
$LUAJIT_PATH=lib/luajit luapak make \
    -s src/lua/main.lua \
    --lua-impl=luajit \
    --lua-incdir=$LUAJIT_PATH/src \
    --lua-version=5.1 \
    --lua-lib=$LUAJIT_PATH/src/libluajit.a \
    --no-minify \
    -o dist/dfjson
```
