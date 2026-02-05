# Windows 환경 점검 스크립트
# AI 학회 1일차 실습용

Write-Host "=== 환경 점검 시작 ===" -ForegroundColor Cyan
Write-Host ""

# Python 버전 확인
Write-Host "1. Python 버전 확인..." -ForegroundColor Yellow
try {
    $pythonVersion = python --version 2>&1
    Write-Host "   ✓ $pythonVersion" -ForegroundColor Green
} catch {
    Write-Host "   ✗ Python을 찾을 수 없습니다." -ForegroundColor Red
    Write-Host "   Python 3.10 이상을 설치해주세요." -ForegroundColor Yellow
    exit 1
}

Write-Host ""

# pip 사용 가능 여부 확인
Write-Host "2. pip 사용 가능 여부 확인..." -ForegroundColor Yellow
try {
    $pipVersion = python -m pip --version 2>&1
    Write-Host "   ✓ pip 사용 가능: $pipVersion" -ForegroundColor Green
} catch {
    Write-Host "   ✗ pip를 찾을 수 없습니다." -ForegroundColor Red
    Write-Host "   python -m ensurepip --upgrade 를 실행해주세요." -ForegroundColor Yellow
    exit 1
}

Write-Host ""

# streamlit 설치 여부 확인
Write-Host "3. streamlit 설치 여부 확인..." -ForegroundColor Yellow
try {
    $streamlitCheck = python -m streamlit --version 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "   ✓ streamlit이 설치되어 있습니다." -ForegroundColor Green
        Write-Host "   $streamlitCheck" -ForegroundColor Gray
    } else {
        throw
    }
} catch {
    Write-Host "   ✗ streamlit이 설치되어 있지 않습니다." -ForegroundColor Red
    Write-Host "   다음 명령을 실행하여 설치하세요:" -ForegroundColor Yellow
    Write-Host "   python -m pip install streamlit" -ForegroundColor Cyan
    exit 1
}

Write-Host ""
Write-Host "=== 환경 점검 완료 ===" -ForegroundColor Cyan
Write-Host ""
Write-Host "다음 명령을 실행하여 앱을 시작하세요:" -ForegroundColor Green
Write-Host "streamlit run app.py" -ForegroundColor Cyan
Write-Host ""

# PowerShell 실행 정책 안내
Write-Host "참고: 스크립트 실행이 차단된 경우," -ForegroundColor Yellow
Write-Host "PowerShell을 관리자 권한으로 실행한 후 다음 명령을 실행하세요:" -ForegroundColor Yellow
Write-Host "Set-ExecutionPolicy RemoteSigned -Scope CurrentUser" -ForegroundColor Cyan
Write-Host ""
