#用戶輸入個人票數
mario = int(input("Enter votes for Mario:"))
luigi = int(input("Enter votes for Luigi:"))
toad = int(input("Enter votes for Toad:"))
#加總
total = str(mario + luigi + toad)
print("The number of voters are " + total)
#加總2
total1 = str(sum((mario, luigi, toad)))
print(total1 + " voters are willing to hear the election results.")
