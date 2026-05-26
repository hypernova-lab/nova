local process = require("@lune/process")

local child = process.exec("lune", { "run", "tests" }, { stdio = "inherit" })

if not child.ok then
    process.exit(child.code)
end
