# github 인증방법 2가지
# 1. oauth 인증방식(제3자인증 - 웹로그인)
# 2. pat token 인증방식 : github에서 직접 보안키 발급
# 발급한 키를 키체인(자격증명)에 등록

# git 프로젝트 생성방법 2가지
# 방법1. github에서 진행중인 원격 repo를 clone
# 방법2. 로컬에서부터 이미 진행중인 프로젝트를 github에 업로드
# 해당 프로젝트 위치에 .git폴더(repo주소, 사용자 정보 등) 가 생성
git init

# 원격지 주소를 생성 및 추가 
git remote add origin 레포주소

# 원격지 주소 삭제
git remote remove origin

# 원격지 주소 변경
git remote set-url origin 레포주소

# git 설정정보 조회
git config --list 

# 타인 레포 clone 받는 방법 2가지
# 1. 커밋이력 그대로 가져오기 , .git 폴더 그대로있음
git clone 타인 레포주소
# 해당 폴더로 이동 후 github 레포주소 변경, add, commit 할 필요가 없음
git remote set-url origin 나의 레포주소
git push origin main 

# 2. 커밋이력 없이 레포 가져오기
git clone 타인레포주소
# 해당폴더 안으로 이동 후 .git 폴더 삭제
git init
git remote add origin 나의 레포주소
git add .
git commit -m "first"
git push origin master

# 다시 push

# 사용자 지정 방법
# 전역적 사용자(이름, Email) 지정
git config --global user.name "유저네임"
git config --global user.email "유저이메일"

# 지역적 사용자 지정
git config --local user.name "유저네임"
git config --local user.email "유저이메일"

# 사용자정보 조회
git config user.name
git config user.email
git config --list

# 특정 파일을 git 추적목록에서 제외시키고 싶다면 .gitignore 파일에 파일목록 등록
# 이미 add, commit 되어버린 파일을 추적목록에서 제어하고 싶다면 
# 애초에 파일이 트랙킹되기전부터 제외처리하는게 제일 베스트 
git rm -r --cached . 

# 현재 working directory, staging area의 상태 조회
git status

# 특정 파일만 add할 경우
git add 특정파일(위치포함)

# local repository에 커밋이력 생성
git commit -m "메시지타이틀" -m "메시지내용"

# vi에디터 모드에서 작성 : 첫줄에는 제목, 두번째줄부터 내용용
# 타이틀이랑 메시지만 입력하면 되니까 위에 commit을 따라라
git commit 

# add와 커밋을 동시에
git commit -am "add와 commit을 동시에"

# local repo의 commit 이력 조회
git log

# git 로그를 간결하게 조회
git log --oneline

# git 로그를 그래프형태로 조회
# 소스트리를 더 많이 사용함
git log --graph

# main 브랜치 뿐만 아니라 전체 commit 이력조회
git log --all 

