# 直接記零
def get_votes(prompt="Enter Votes: "):
    try:
        return int(input(prompt))
    except ValueError:
        return 0

# 強制用戶重新輸入
def get_votes_retry(prompt="Enter Votes: "):
    while True:
        try:
            return int(input(prompt))
        except ValueError:
            print("Invalid Value!")

# 用戶輸入個人票數
mario = get_votes_retry("Enter votes for Mario: ")
luigi = get_votes_retry("Enter votes for Luigi: ")
toad = get_votes_retry("Enter votes for Toad: ")

# sum 函數加總
total1 = sum([mario, luigi, toad])
print(f"{total1} voters are willing to hear the election results.")

# 使用 Loop 獲取票數
total2 = 0
for i in ["Peach", "Bowser"]:
    voters_num = get_votes_retry(f"Enter votes for {i}: ")
    total2 += voters_num

print(f"The number of 2nd voters are {total2}")