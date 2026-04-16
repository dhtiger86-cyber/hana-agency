# 하나생명 지점 조회 앱 - Firebase 배포 가이드

## 🎯 개요
이 프로젝트는 Firebase Hosting을 통해 웹 주소로 배포됩니다.
파일 공유 없이 URL만 공유하면 모든 사용자가 최신 버전을 사용할 수 있습니다.

---

## 🚀 초기 설정 (최초 1회만)

### 1. Firebase CLI 설치
```bash
npm install -g firebase-tools
```

### 2. Firebase 로그인
```bash
firebase login
```
- 브라우저가 열리면 Google 계정으로 로그인

### 3. Firebase 프로젝트 생성
1. https://console.firebase.google.com 접속
2. "프로젝트 추가" 클릭
3. 프로젝트 이름 입력: `hanalife-branch-lookup` (또는 원하는 이름)
4. Google Analytics 설정 (선택사항)
5. 프로젝트 생성 완료

### 4. Firebase 프로젝트 연결
```bash
firebase use --add
```
- 생성한 프로젝트 선택
- alias: `default` 입력

---

## 📤 배포하기

### 첫 배포
```bash
firebase deploy --only hosting
```

배포 완료 후 다음과 같은 URL을 받게 됩니다:
```
Hosting URL: https://hanalife-branch-lookup.web.app
```

### 업데이트 배포
데이터나 앱을 수정한 후:
```bash
# 1. index.html 파일 업데이트
# 2. 배포 실행
firebase deploy --only hosting
```

---

## 🔄 데이터 업데이트 방법

### 방법 1: Claude에게 요청
1. 수정된 엑셀 파일 업로드
2. "이 엑셀로 Firebase용 HTML을 만들어줘"
3. 생성된 index.html로 교체
4. `firebase deploy --only hosting` 실행

### 방법 2: 직접 수정
1. `하나생명_지점조회_데이터관리.xlsx` 파일 수정
2. Claude에게 업로드 → 새 HTML 생성
3. 생성된 파일을 `index.html`로 교체
4. 배포

---

## 🌐 사용자 접속 방법

### URL 공유
배포 후 받은 URL을 직원들에게 공유:
```
https://hanalife-branch-lookup.web.app
```

### 스마트폰 홈 화면 추가
**아이폰 (Safari):**
1. URL 접속
2. 하단 공유 버튼 클릭
3. "홈 화면에 추가" 선택
4. 앱처럼 사용 가능

**안드로이드 (Chrome):**
1. URL 접속
2. 우측 상단 메뉴 (⋮)
3. "홈 화면에 추가" 선택

---

## 🎁 장점

✅ **자동 업데이트**: 파일 재공유 불필요
✅ **접근성**: URL만 있으면 어디서든 접속
✅ **버전 관리**: 모두가 항상 최신 버전 사용
✅ **무료**: Firebase 무료 플랜으로 충분
✅ **SSL**: 자동 HTTPS 제공
✅ **빠른 속도**: CDN을 통한 전세계 배포

---

## 💰 비용

Firebase Hosting 무료 플랜:
- 저장용량: 10GB
- 트래픽: 월 360MB
- **이 앱의 경우**: 무료 플랜으로 충분 (앱 크기 1MB 미만)

---

## 🔧 프로젝트 구조

```
firebase-app/
├── index.html          # 메인 앱 파일 (아이폰 최적화 버전)
├── firebase.json       # Firebase 설정
├── .firebaserc         # Firebase 프로젝트 연결 정보
└── README.md          # 이 가이드 파일
```

---

## 📝 주의사항

1. **Firebase 프로젝트 이름**
   - `.firebaserc` 파일의 프로젝트 ID를 실제 생성한 프로젝트 ID로 변경

2. **배포 권한**
   - Firebase 프로젝트 소유자만 배포 가능
   - 담당자가 변경되면 Firebase 콘솔에서 권한 추가

3. **데이터 보안**
   - 현재는 누구나 접속 가능
   - 필요시 Firebase Authentication으로 로그인 기능 추가 가능

---

## 🆘 문제 해결

### "firebase: command not found"
```bash
npm install -g firebase-tools
```

### "Permission denied"
```bash
sudo npm install -g firebase-tools
```

### 배포가 안됨
```bash
# 로그인 재시도
firebase logout
firebase login

# 프로젝트 재연결
firebase use --add
```

---

## 📞 지원

문제가 발생하면 Claude에게 문의하세요:
- "Firebase 배포가 안돼요"
- "데이터를 업데이트하고 싶어요"
- "새로운 기능을 추가하고 싶어요"

---

## 🎉 배포 완료 후

URL을 직원들에게 공유하세요:
- 카카오톡 단체방
- 이메일
- 사내 공지사항

앞으로는 데이터 수정 → 배포만 하면 모두가 자동으로 최신 버전을 사용합니다! 🚀
