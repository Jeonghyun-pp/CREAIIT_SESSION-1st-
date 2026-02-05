#!/bin/bash
# Mac/Linux 환경 점검 스크립트
# AI 학회 1일차 실습용

echo "=== 환경 점검 시작 ==="
echo ""

# Python 버전 확인
echo "1. Python 버전 확인..."
if command -v python3 &> /dev/null; then
    PYTHON_VERSION=$(python3 --version 2>&1)
    echo "   ✓ $PYTHON_VERSION"
else
    echo "   ✗ Python3을 찾을 수 없습니다."
    echo "   Python 3.10 이상을 설치해주세요."
    exit 1
fi

echo ""

# pip 사용 가능 여부 확인
echo "2. pip 사용 가능 여부 확인..."
if command -v pip3 &> /dev/null || python3 -m pip --version &> /dev/null; then
    PIP_VERSION=$(python3 -m pip --version 2>&1)
    echo "   ✓ pip 사용 가능: $PIP_VERSION"
else
    echo "   ✗ pip를 찾을 수 없습니다."
    echo "   python3 -m ensurepip --upgrade 를 실행해주세요."
    exit 1
fi

echo ""

# streamlit 설치 여부 확인
echo "3. streamlit 설치 여부 확인..."
if python3 -m streamlit --version &> /dev/null; then
    STREAMLIT_VERSION=$(python3 -m streamlit --version 2>&1)
    echo "   ✓ streamlit이 설치되어 있습니다."
    echo "   $STREAMLIT_VERSION"
else
    echo "   ✗ streamlit이 설치되어 있지 않습니다."
    echo "   다음 명령을 실행하여 설치하세요:"
    echo "   python3 -m pip install streamlit"
    exit 1
fi

echo ""
echo "=== 환경 점검 완료 ==="
echo ""
echo "다음 명령을 실행하여 앱을 시작하세요:"
echo "streamlit run app.py"
echo ""
