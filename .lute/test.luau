local process = require("@lute/process")

local child = process.run({ "lute", "run", "tests" }, { stdio = "inherit" })

if not child.ok then
    process.exit(child.exitcode)
end
