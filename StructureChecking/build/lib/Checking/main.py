# print_arguments/main.py
import argparse


def print_arguments(arguments: list[str]):
    for argument in arguments:
        print(argument)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("filenames", nargs="*")
    args = parser.parse_args()

    print_arguments(args.filenames)


if __name__ == "__main__":
    main()
