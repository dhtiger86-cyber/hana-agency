# 🚀 빠른 시작 가이드

## 5분 만에 배포하기

### 1단계: Firebase CLI 설치 (최초 1회)
```bash
npm install -g firebase-tools
```

### 2단계: 로그인 (최초 1회)
```bash
firebase login
```

### 3단계: Firebase 콘솔에서 프로젝트 생성 (최초 1회)
1. https://console.firebase.google.com 접속
2. "프로젝트 추가" 클릭
3. 프로젝트 이름 입력 (예: hanalife-branch)
4. 완료

### 4단계: 프로젝트 ID 수정 (최초 1회)
`.firebaserc` 파일을 열어서:
```json
{
  "projects": {
    "default": "여기에-실제-프로젝트-ID-입력"
  }
}
```

### 5단계: 배포!
```bash
firebase deploy --only hosting
```

또는

```bash
./deploy.sh
```

---

## 완료! 🎉

배포 후 나오는 URL을 저장하고 직원들에게 공유하세요:
```
https://your-project-id.web.app
```

---

## 데이터 업데이트 시

1. 엑셀 파일 수정
2. Claude에게 업로드 → 새 HTML 생성
3. 생성된 파일을 `index.html`로 교체
4. `firebase deploy --only hosting` 실행

끝! 모든 사용자가 자동으로 최신 버전 사용 🚀
