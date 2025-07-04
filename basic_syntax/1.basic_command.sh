# git add . 은 모든변경(추가)사항을 staging area 이동
git add .

# git commit은 staging area의 변경사항을 확정짓고 commitID생성
git commit -m "메시지"

# 원격 repo에 main브랜치 변경사항(commitID)업로드
git push origin main


# git pull은 원격의 변경사항을 Local로 내려받는것(working directory까지 반영)
git pull origin 브랜치명

# 원격에 변경사항을 Local에 가져오되 병합은 하지않는것
git fetch origin main