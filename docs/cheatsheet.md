Cheatsheet
==========

[fzf][]      | 설명
-------------|--------
`Ctrl` + `r` | 자기가 쳤던 커맨드 fuzzy 탐색
`Ctrl` + `t` | 디렉토리 fuzzy 탐색

[fzf]: https://github.com/junegunn/fzf

### tmux
[tmux][]                    | 설명
----------------------------|--------
$ tmux new                  | 세션 생성
$ tmux ls                   | 세션 목록
$ tmux attach [-t <이름>]   | 세션에 attatch
^a d                        | 세션에서 detach
^a $                        | 세션 이름변경
^a c                        | 윈도우 생성
^a n                        | 다음 윈도우로 이동
^a p                        | 이전 윈도우로 이동
^a .                        | 윈도우 순서 변경
^a ,                        | 윈도우 이름 변경
^a \                        | 화면 종베기
^a -                        | 화면 횡베기
^a o                        | 다음 평면으로 이동
^a (h, j, k, l)             | 평면 크기조절
^a (H, J, K, L)             | 평면 크기 미세조절
^a <Space>                  | 평면 위치이동
^a :                        | 명령어창

[tmux]: http://nodeqa.com/nodejs_ref/99

### vim

Normal          | 설명
----------------|--------
ESC             | 다른 모드에서 일반 모드로 가기
^v              |
:w              | 저장하기
:q              | 나오기
:cq             | 저장하지 않고 나오기
:wq             | 저장과 동시에 나오기
:x              |
ZZ              |
:sh             | 새 shell 만들기
u               | Undo
Ctrl + r        | Redo
yy              | 한줄 복사
dd              | 한줄 잘라내기
P               | 앞에 붙여넣기
p               | 뒤에 붙여넣기
"_dd            | 한줄 지우기
:N              | N번째 라인으로 가기
:%s/old/new     | 치환 (문서의 맨 처음부터)
:%s/old/new/g   |
:%s/old/new/gc  |   (with prompt)
:,$s/old/new    | 치환 (현재 위치부터)
:nohlsearch     | 검색결과 하이라이트 끄기
:set paste      | 클립보드 모드 켜기
:set nopaste    |               끄기
:help           | 도움말
:help <keyword> |
f<char>         | 현재 라인에서 <char>로 순간이동
t<char>         |
:cd             | Change Directory
.               | Repeat last command

Insert / Replace | 설명
-----------------|--------
i                | Insert 모드로 들어가기
R                | Replace 모드로 들어가기

Visual    | 설명
----------|--------
`v`       | 비주얼      모드로 들어가기
`V`       | 비주얼 라인 모드로 들어가기
Ctrl + v  | 비주얼 블록 모드로 들어가기
`y`       | 복사
`d`       | 잘라내기
`>`       | 인덴트 추가
`<`       | 인덴트 제거
`J`       | 선택된 라인 전부 한줄로 붙이기

클립보드          | 설명
------------------|-------------
`$ pbcopy < file` | 파일의 내용을 복사
`$ pbpaste`       | 붙여넣기

iTerm2              | 설명
--------------------|---------------------------------
`⌘` + `alt` + drag  | block selection
`⌘` + `t`           | new tab
`⌘` + `T`           | show tab bar
`⌘` + `1`, `2`, ... | Go to tab 1, 2, ...
`⌘` + `-`, `\ `     | new pane (horizontal, virtical)
`⌘` + `[`, `]`      | Go next pane
