p_kuznichenko@ghost MINGW64 ~/Documents/GitHub
$ cd ./TMS

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS (main)
$ git status
On branch main
Your branch is up to date with 'origin/main'.

nothing to commit, working tree clean

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS (main)
$ git switch -c Lesson14
Switched to a new branch 'Lesson14'

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS (Lesson14)
$ cd /
bin/               dev/               git-bash.exe       LICENSE.txt        proc/              tmp/               unins000.exe       usr/
cmd/               etc/               git-cmd.exe        mingw64/           ReleaseNotes.html  unins000.dat       unins000.msg

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS (Lesson14)
$ mkdir 1

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS (Lesson14)
$ cd ./1

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS/1 (Lesson14)
$ nano ghost.sh

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS/1 (Lesson14)
$ chmod +x ghost.sh

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS/1 (Lesson14)
$ bash -x ./ghost.sh
+ exec
+ BASH_XTRACEFD=5
Привет мир!
Привет мир!
Мой дом - это: /c/Users/p_kuznichenko

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS/1 (Lesson14)
$ nano ghost.sh

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS/1 (Lesson14)
$ ./ghost.sh
Привет мир!
Привет мир!
Мой дом - это: /c/Users/p_kuznichenko

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS/1 (Lesson14)
$ sh -n ./
debug_output.txt  ghost.sh

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS/1 (Lesson14)
$ sh -n ./ghost.sh

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS/1 (Lesson14)
$ ls
debug_output.txt  ghost.sh*

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS/1 (Lesson14)
$ nano ghost_2.sh

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS/1 (Lesson14)
$ chmod +x ghost_2.sh

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS/1 (Lesson14)
$ sh -n ./ghost_2.sh
./ghost_2.sh: line 5: unexpected EOF while looking for matching `"'

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS/1 (Lesson14)
$ nano ghost_2.sh

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS/1 (Lesson14)
$ sh -n ./ghost_2.sh

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS/1 (Lesson14)
$ nano ghost_2.sh

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS/1 (Lesson14)
$ sh -v ./ghost_2.sh
#!/bin/bash
var="Привет мир"
echo "$var"
Привет мир
echo "Мой домашний каталог is=$HOME”
echo "Мое имя is=$USER"
./ghost_2.sh: line 5: unexpected EOF while looking for matching `"'

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS (Lesson14)
$ git status
On branch Lesson14
Untracked files:
  (use "git add <file>..." to include in what will be committed)
        1/

nothing added to commit but untracked files present (use "git add" to track)

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS (Lesson14)
$ git add .
warning: in the working copy of '1/debug_output.txt', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of '1/ghost.sh', LF will be replaced by CRLF the next time Git touches it
warning: in the working copy of '1/ghost_2.sh', LF will be replaced by CRLF the next time Git touches it

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS (Lesson14)
$ git commit -m "Lesson14"
[Lesson14 cbabe1c] Lesson14
 3 files changed, 21 insertions(+)
 create mode 100644 1/debug_output.txt
 create mode 100644 1/ghost.sh
 create mode 100644 1/ghost_2.sh

p_kuznichenko@ghost MINGW64 ~/Documents/GitHub/TMS (Lesson14)
$ git push origin Lesson14
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 807 bytes | 807.00 KiB/s, done.
Total 6 (delta 1), reused 0 (delta 0), pack-reused 0 (from 0)
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
To https://github.com/GhostGooner/TMS.git
   9331dfd..cbabe1c  Lesson14 -> Lesson14
