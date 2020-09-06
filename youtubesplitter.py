import youtube_dl
import sys

def download_all_mp3():
    yout
    #youtube-dl -i --extract-audio --audio-format "https://www.youtube.com/watch?v=ZBraEUEC0EU"

def main():
    link = sys.argv[1]
    file = open("parts.txt", "r")
    dane_rozdzialu = []
    for line in file:
        dane_rozdzialu.append(line.split())
    file.close()
    print(dane_rozdzialu)

if __name__ == "__main__":
    download_all_mp3()
    main()
