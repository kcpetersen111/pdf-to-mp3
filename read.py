import sys
from gtts import gTTS

def main():
    if len(sys.argv) != 2:
        print("Usage: python read.py filename")
        sys.exit(1)
    filename = sys.argv[1]
    try:
        f = open(filename, "r")
    except FileNotFoundError:
        print("File '%s' not found" %filename)
        sys.exit(1)
    text = f.read()
    # print(text)
    f.close()
    newFile = filename.split(".")[0] + ".mp3"

    tts = gTTS(text)
    # print(text)
    tts.save(newFile)


if __name__ == '__main__':
    main()
