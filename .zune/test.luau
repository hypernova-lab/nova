local process = zune.process

local child = process.run("zune", { "run", "tests" }, { stdout = "inherit", stderr = "inherit" })

if not child.ok then
    process.exit(child.code)
end
