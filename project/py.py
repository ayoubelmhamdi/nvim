import sys

favoriteContry: list = []
filetxt = "file.txt"

def saveContry():
    print("you are save your contry in :", filetxt)
    with open(filetxt, "a") as file:
        file.write(readString() + "\n")
        file.close()
        start()


def loadContry():
    try:
        with open(filetxt) as file:
            file.seek(0)
            first_char = file.read(1)
            if not first_char:
                printPlus()
                print("\nyou dont have any favorit yet!\n")
                printPlus()

            else:
                printPlus()
                print("your best contry is :\n")
                file.seek(0)
                for line in file:
                    print(line.strip()) if line else 0
                printPlus()
            file.close()
            start()

    except Exception:
        printPlus()
        print("\nyou dont have any favorit yet!\n")
        printPlus()
        start()


def choose(x):
    if (x == 1):
        loadContry()

    elif (x == 2):
        saveContry()

    elif (x == 3):
        sys.exit()

    else:
        printPlus()
        print("\nError choix\n")
        printPlus()
        start()


def start():
    print("\n\n\tWelcome Younnes !\n\n\t")
    print("do you:\n")
    print("1) View your favorit\n")
    print("2) Add new favorit Contry\n")
    print("3) Exit\n")
    var_input = input()
    try:
        x = int(var_input)
    except Exception:
        x = 0
    choose(x)


def printPlus():
    print("+++++++++++++++++++++++++++++++++++++++")


def readString():
    print("write bew favorit contry: ")
    return input()


start()
