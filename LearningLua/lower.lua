local sourcestr = "ADGdfhhjfhjafhdf~fa\000fFAKLDSFklj897890"
print("sourcestr is " .. sourcestr)

local q_str = string.format("%q", sourcestr)
print("q_str is " .. q_str)

local lowerstr = string.lower(sourcestr)
print("lowerstr is " .. lowerstr)

local q_lowerstr = string.format("%q", lowerstr)
print("q_lowerstr is " .. q_lowerstr)
