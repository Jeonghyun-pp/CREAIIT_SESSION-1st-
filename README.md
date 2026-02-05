#  1일차 바이브 코딩/컨텍스트 엔지니어링 실습

## 실습 개요

이 실습에서는 환경 준비부터 시작하여 Streamlit 앱을 실행하고, AI를 활용하여 앱의 개선 포인트를 찾아 개선하는 과정을 경험합니다.

## 사전 조건

- Python 3.10 이상 권장 (Python 3.8 이상도 가능)
- pip (Python 패키지 관리자)

## 설치 및 실행 방법

### 1. 폴더 이동

터미널 또는 PowerShell에서 이 프로젝트 폴더로 이동합니다.

```bash
cd 1st_session_basecode
```

### 2. (권장) 가상환경 생성 및 활성화

**Windows (PowerShell):**
```powershell
python -m venv venv
.\venv\Scripts\Activate.ps1
```

**Mac/Linux:**
```bash
python3 -m venv venv
source venv/bin/activate
```

### 3. 패키지 설치

```bash
python -m pip install streamlit
```

또는 Mac/Linux의 경우:
```bash
python3 -m pip install streamlit
```

### 4. 앱 실행

```bash
streamlit run app.py
```

브라우저가 자동으로 열리며 `http://localhost:8501`에서 앱을 확인할 수 있습니다.

## 환경 점검 스크립트

실행 전 환경을 점검하려면 다음 스크립트를 실행하세요:

**Windows:**
```powershell
.\scripts\verify_env.ps1
```

**Mac/Linux:**
```bash
chmod +x scripts/verify_env.sh
./scripts/verify_env.sh
```

## 문제 해결 FAQ

### 포트 충돌 (Port 8501 is already in use)
다른 포트로 실행: `streamlit run app.py --server.port 8502`

### pip 명령을 인식하지 못함
`python -m pip` 또는 `python3 -m pip`로 실행하세요.

### streamlit 명령을 인식하지 못함
가상환경이 활성화되어 있는지 확인하고, `python -m streamlit run app.py`로 실행하세요.

### PowerShell 실행 정책 오류
PowerShell을 관리자 권한으로 실행한 후 `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser`를 실행하세요.

## 실습 목표

1. **환경 준비**: Python 환경 설정 및 필요한 패키지 설치
2. **실행**: Streamlit 앱을 실행하고 현재 상태 확인
3. **AI로 개선**: AI 도구를 활용하여 앱의 개선 포인트를 찾고 개선하기

추후 실습을 통해 이 웹 앱을 직접 수정하고 개선해보며, 원하는 기능과 디자인을 구현해보세요!
