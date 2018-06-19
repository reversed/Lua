skillgroup =
{   
    ["101"] =
    {
        SkillGroupID = 101,
    },
    ["102"] =
    {
        SkillGroupID = 102,
    },
    ["103"] =
    {
        SkillGroupID = 103,
    },
    ["104"] =
    {
        SkillGroupID = 104,
    },
}
for i in pairs(skillgroup) do
    print("direct output: " .. i)
end

local keyTest = {}
for i in pairs(skillgroup) do
    table.insert(keyTest, i)
end

-- ascending order
table.sort(keyTest, function(a,b) return (tonumber(a) < tonumber(b)) end)

local result = {}
for i,v in pairs(keyTest) do
    table.insert(result, skillgroup[v])
    print("id: " .. v .. "    data: " .. skillgroup[v].SkillGroupID)
end
















