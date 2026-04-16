#!/bin/bash

# 하나생명 지점 조회 앱 배포 스크립트

echo "🚀 Firebase 배포를 시작합니다..."
echo ""

# Firebase 로그인 확인
if ! firebase projects:list &> /dev/null; then
    echo "❌ Firebase 로그인이 필요합니다."
    echo "다음 명령어를 실행하세요:"
    echo "  firebase login"
    exit 1
fi

echo "✅ Firebase 로그인 확인 완료"
echo ""

# 배포 전 확인
echo "📋 배포 내용 확인:"
echo "  - 파일: index.html"
echo "  - 크기: $(du -h index.html | cut -f1)"
echo ""

read -p "배포를 진행하시겠습니까? (y/n) " -n 1 -r
echo ""

if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "🔄 배포 중..."
    firebase deploy --only hosting
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "✅ 배포 완료!"
        echo ""
        echo "🌐 접속 URL:"
        echo "  https://hanalife-branch-lookup.web.app"
        echo ""
        echo "📱 사용자에게 위 URL을 공유하세요!"
    else
        echo ""
        echo "❌ 배포 실패"
        echo "문제가 지속되면 Claude에게 문의하세요."
    fi
else
    echo "배포가 취소되었습니다."
fi
