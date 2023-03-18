str = input()
list = str.split("/")
print("{}-{:0>2}-{:0>2}".format(list[2],list[0],list[1]))