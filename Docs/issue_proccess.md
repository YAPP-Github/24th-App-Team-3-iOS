# 개발 프로세스

## 1. 브랜치 생성 및 반영
브랜치 유형은 개발시 `feature` `bugfix` `refactor` 3가지를 사용한다. 해당 경우 `develop`에서 브랜치 생성하고, `<유형>/<이슈번호>-<간략한_설명>`의 네이밍 규칙을 따른다
| 브랜치 종류| 설명 | 네이밍| PR 타켓 브랜치|
|---|---|---|---|
| `feature`| 신규 기능 추가 | `feature/#0-example_description-dev`, `feature/#0-example_description-master` 두개 생성| `feature/dev` -> `feature/master` | 
| `bugfix`| 버그 및 잘못된 코드 수정| `bugfix/#1-example_description` | `develop` | 
| `refactor`| 코드 개선| `refactor/#2-example_description` | `develop` | 

### 1.1 Feature 관련 브랜치 프로세스 예시
1. `#3 로그인 구현 화면 개발` 이슈 티켓 생성
2. `develop`브랜치에서 `feature/#3-login_screen-dev`, `feature/#3-login_screen-master` 두 브랜치 생성
3. `feature/#3-login_screen-dev`에서 작업
4. 개발 완료되면 `feature/#3-login_screen-master`에 PR 올리기
5. 코드리뷰 후 `feature/#3-login_screen-master`에 반영

추가 작업이 필요한 경우 1~5 과정을 반복하고, `develop`에 다른 브랜치와 충돌을 피해 머지합니다.

### 1.2 Bugfix, Refactor 브랜치 프로세스 예시
1. `#5 로그인 재시도 오류` 이슈 티켓 생성
2. `develop`에서 `bugfix/#5-login_retry_error` 브랜치 생성하여 작업
3. `develop`에 PR올리고 코드리뷰 후 `develop`에 머지

## 2. 커밋 타이틀 규칙
커밋은 타이틀 앞에 이슈 티켓 번호를 붙입니다

커밋 description에는 수정 내역을 적고, 참조 문서가 있다면 되도록 같이 적어줍니다.


***예시***

`Commit Title` 
- #3 애플 로그인 패키지 import

`Description` 
- 애플 로그인 관련 라이브러리 코드 추가
https://developer.apple.com/documentation/accounts/acaccount/credential/



## 3. 커밋 단위 관련 규칙
> 이러한 경우 따로 커밋합시다!
- 무관한 여러개의 작업을 한 커밋에 담지 않습니다. 
    - i.e. 로그인화면, 설정화면에서 무관한 UI가 각각 바뀐다면 따로 커밋합니다
- 뒤늦게 주석을 추가하는 경우
- 패키지가 추가되는 경우
- 코딩 컨벤션의 이유 또는 오탈자를 수정하는 경우
- 프로젝트 세팅이 변경되는 경우
- 이미지 등의 외부 리소스가 추가되는 경우, 문구가 추가되는 경우
