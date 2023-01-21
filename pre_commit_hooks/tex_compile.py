# print_arguments/main.py
#triger ?
import argparse
import os
import datetime


def print_arguments(arguments: list[str]):
    for argument in arguments:
        print(argument)

def excpetionThrow(filepath):
    raise Exception("Hey, it seems like you have not compiled the latest version of " + filepath + " yet, compile it into a pdf before commiting it to the branch")


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("filenames", nargs="*")
    args = parser.parse_args()
    print(args)
    print("___")
    timeCheckTex = {}
    timeCheckPdf = {}

    with open("ThomasHookTest.txt", "w") as file:
        file.write("Succes, Now need to find the location\n")
        file.write(os.getcwd()+"\n")
        for i in args.filenames:
            print(i)
            if(i.split(".")[-1].lower() == "tex"):
                timeCheckTex[i.split(".")[0]] = os.path.getmtime(os.getcwd()+"\\"+i)
            elif(i.split(".")[-1].lower() == "pdf"):
                timeCheckPdf[i.split(".")[0]] = os.path.getmtime(os.getcwd()+"\\"+i)
    for texName in timeCheckTex.keys():
        if timeCheckTex[texName] - timeCheckPdf.get(texName, 0) > 60:
            excpetionThrow(texName)
    print_arguments(args.filenames)


if __name__ == "__main__":
    main()
