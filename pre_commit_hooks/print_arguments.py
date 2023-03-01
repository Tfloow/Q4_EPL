# print_arguments/main.py
import argparse
import os

def print_arguments(arguments: list[str]):
    for argument in arguments:
        print(argument)

def excpetionThrow(filepath):
    raise Exception(
        f"Hey, it seems like you have not compiled the latest version of {filepath} yet, compile it into a pdf before commiting it to the branch"
    )


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("filenames", nargs="*")
    args = parser.parse_args()
    print(args)
    print("___")
    timeCheckTex = {}
    timeCheckPdf = {}

    with open("LogGit.txt", "w") as file:
        file.write("Log File of Pre_commit:\n")
        file.write(os.getcwd()+"\n")
        for i in args.filenames:
            print(i)
            if (i[8].lower() == "c"):
                continue
            elif(i.split(".")[-1].lower() == "tex"):
                timing = os.path.getmtime(os.getcwd()+"\\"+i)
                file.write(f"{i} modifié à {timing}\n")
                timeCheckTex[i.split(".")[0]] = timing
            elif(i.split(".")[-1].lower() == "pdf"):
                timing = os.path.getmtime(os.getcwd() + "\\" + i)
                file.write(f"{i} modifié à {timing}\n")
                timeCheckPdf[i.split(".")[0]] = timing
        file.write("___Now checking the different timing___:\n")
        for texName in timeCheckTex:
            if timeCheckTex[texName] - timeCheckPdf.get(texName, 0) > 60: # flexibility of 1 minute
                file.write(f"ISSUE: Tex file: {texName} at {timeCheckTex[texName]}, PDF file modified at {timeCheckPdf.get(texName, 0)}")
                excpetionThrow(texName)
    print_arguments(args.filenames)



if __name__ == "__main__":
    main()
