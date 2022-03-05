#!/usr/bin/env lua
local json = require 'lunajson'

PATH = 'test.json'

local storage = {}

storage.save = function(data, filename)
    local file = io.open(PATH, 'w')
    if not file then
        return false
    end
    local contents = json.encode(data)
    file:write(contents)
    io.close(file)
    return true
end

storage.load = function(filename)
    local file = io.open(PATH, 'r')
    if not file then
        return nil
    end
    local contents = file:read('*a')
    local data = json.decode(contents)
    io.close(file)
    return data
end


-- local function usage()
-- end

local function dump(o)
    for k,v in pairs(o) do
        print(k .. ' = ' .. v)
    end
end

dump(storage.load())

local function main()
end

