import streamlit as st

# 페이지 설정
st.set_page_config(
    page_title="바이브 코딩 실습",
    page_icon="💻",
    layout="wide"
)

# TODO: 페이지 제목이 너무 단순하고 실습의 목적이나 기대 효과가 드러나지 않음
st.title("바이브 코딩 실습")
st.markdown("---")

# 환영 메시지
st.markdown("<h1 style='text-align: center; color: #1f77b4;'>크리에잇에 온걸 환영합니다! </h1>", unsafe_allow_html=True)
st.markdown("---")

# TODO: 실습 소개가 너무 추상적이고 구체적인 실습 내용이나 진행 방식이 명확하지 않음
st.subheader("실습 소개")
st.write("이 페이지는 바이브 코딩 실습을 위한 페이지입니다.")

st.markdown("---")

# TODO: 실습 내용이 기술적 용어에 치우쳐 있고, 참가자가 실제로 무엇을 배우고 경험할 수 있는지 불명확함
st.subheader("실습 내용")
st.write("""
- 코딩 실습 진행
- 실습 과제 수행
- 결과 확인 및 피드백
- 추가 학습 자료 제공
""")

st.markdown("---")

# TODO: CTA 버튼의 문구가 애매하고, 클릭 후 어떤 일이 일어날지 예측하기 어려움
# TODO: 섹션 구조가 단조롭고 시각적 계층이 부족함. 카드나 컬럼 레이아웃을 활용하면 더 나을 것
st.subheader("실습 시작")
if st.button("실습 시작하기"):
    st.success("실습이 준비되었습니다!")
    st.info("실습을 진행해주세요.")
