local sourcestr = "ADGdfhhjfhjafhdf~fa\000fFAKLDSFklj897890"
print("\nsourcestr is "..sourcestr)

local q_sourcestr = string.format("%q", sourcestr)
print("\nq_sourcestr is "..q_sourcestr)

local upperstr = string.upper(sourcestr)
print("upperstr is " .. upperstr)

