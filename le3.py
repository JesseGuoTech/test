s=int(input())
if 90<=s<=100:
    print("Excellent")
elif 80<=s<90:
    print("Good")
elif 60<=s<80:
    print("Passed")
elif 0<=s<60:
    print("Failed")
else:
    print("Error")
exit(0)