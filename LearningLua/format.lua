local retstr = string.format("today is %s", os.date())
print(retstr)

retstr = string.format("my age is %d", 22)
print(retstr)

retstr = string.format("the number 1024 = %e", 1024)
print(retstr)

retstr = string.format("the unsigned number is %u", -1)
print(retstr)

retstr = string.format("the number is %d", -1)
print(retstr)

retstr = string.format("the content1 is %s", "content1 is haha\n \0 content 1")
print(retstr)

retstr = string.format("the content1 is %q", "content2 is haha\n \0 content 2")
print(retstr)
