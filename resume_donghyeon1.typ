// 이동현 백엔드 엔지니어 이력서
// Typst 문서 형식

#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 2cm),
)

#set text(
  font: "KoPubWorld돋움체 Medium",
  size: 10pt,
  lang: "ko",
)

#set par(justify: true)

// 제목 스타일
#let section_title(title) = {
  line(length: 100%, stroke: 0.5pt)
  v(0.3em)
  text(size: 14pt, weight: "bold")[#title]
  v(0.5em)
}

// 회사/프로젝트 제목 스타일
#let company_title(name, role, period) = {
  text(size: 12pt, weight: "bold")[#name]
  h(1fr)
  text(size: 9pt, style: "italic")[#period]
  linebreak()
  text(size: 10pt)[#role]
}

// ==================== 헤더 ====================

#align(center)[
  #text(size: 20pt, weight: "bold")[Lee_Dong_Hyeon 이동현]
  #v(0.5em)
  #text(size: 12pt)[비즈니스 영향력과 가치를 만드는 개발자]
  #v(0.5em)
  #text(size: 9pt)[
    4년차 백엔드 엔지니어로, Typescript와 Python 등 다양한 언어와 프레임워크를 활용하여 \
    알림, 마케팅, 소셜 등의 도메인 문제를 해결하고 가치를 만드는 일을 하였습니다. \
    특히 Kafka, SQS 등을 활용한 비동기 메시지 처리 및 트래픽 분산 처리 경험이 있습니다.
  ]
]

#v(1em)

// ==================== 연락처 & 기술 스택 ====================

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  
  // 왼쪽: Information
  [
    #section_title("Information")
    
    *전화번호:* 010-5027-6384 \
    *이메일:* axzswq\@gmail.com \
    *GitHub:* #link("https://github.com/hyeonprojects")[#underline[github.com/hyeonprojects]] \
    *Tech Blog:* #link("https://hyeonproject.medium.com/")[#underline[hyeonproject.medium.com]] \
    *LinkedIn:* #link("https://www.linkedin.com/feed/")[#underline[LinkedIn Profile]] \
    *Tech Memo:* #link("https://www.notion.so/hyeonprojects/Restart-Programmer-d48261e368924fe79467c83148964db7")[#underline[Notion]]
  ],
  
  // 오른쪽: Technical Skills
  [
    #section_title("Technical Skills")
    
    *Language:* Typescript, Python, Kotlin, C\# \
    *Web Frameworks:* Nest.js, FastAPI, Django, Flask, Socket.io, Spring \
    *Message Queues:* AWS SQS, Kafka, RabbitMQ \
    *Database:* MySQL, Redis, MongoDB, DynamoDB \
    *DevOps & Infra:* AWS (EC2, SQS, S3, Lambda, ECS, Fargate), GCP, Jenkins, Docker
  ]
)

#v(1em)

// ==================== 경력 ====================

#section_title("Work Experience")

// Mass-Adoption (Vircle, 버클)
#company_title("Mass-Adoption (Vircle, 버클)", "백엔드 엔지니어", "2024년 5월 ~ 현재")

*사용 기술: Typescript, Nest.js, Kafka, Redis, MySQL, MongoDB, AWS(S3, Lambda), Kotlin, Spring*

#v(0.5em)

*알림 서비스*
- 기존의 레거시 Nest.js 코드를 알림톡 벤더사 변경 작업 진행하여 *알림톡, LMS, SMS 비용 40% 절감*
- 어플리케이션 크론 폴링(RDB) 방식의 *AWS SQS 메세지 큐로 전환하여 다중 Pod 환경 알림 중복 발송 문제 해결*
- 해외 전화번호 사용 고객을 위한 LMS, SMS, 알림톡 작업 진행
- 특정 유저(세그먼트)에게 마케팅 메시지 전달 기능 구현 (*분당 약 2만개의 알림* 발송 가능하도록 구현)
- 메시지 버튼 링크 클릭 로그 저장 및 클릭률 통계 API 구현
- 이메일 발송 서비스를 AWS SES에서 *Ncloud Mailer로 마이그레이션*

#v(0.5em)

*브랜드 라운지 및 스탬프 서비스*
- 유저 리텐션 및 참여도 증가를 위한 브랜드 라운지 및 스탬프 기능 백엔드 개발 담당
- 브랜드별 출석체크, 보증서, 스탬프 등 데이터 기반 온도 기능 데이터 설계 및 개발

#v(0.5em)

*유지 보수 및 개선 작업*
- ISO 보안 인증을 위한 API 점검 및 개발
- 이벤트 일정 예약 기능의 알림 커스터마이징 (D-Day 전날 설정, 당일 알림 시간 설정 등)
- DB 사용량 모니터링 알람 기능을 Lambda로 구현

#v(1em)

// 뮤즈블라썸
#company_title("뮤즈블라썸 (MuseBlossom)", "백엔드 엔지니어", "2024년 3월 ~ 2024년 5월")

*사용 기술: Python, FastAPI, RabbitMQ, Typescript, Nest.js, AWS Aurora MySQL, AWS S3*

#v(0.5em)

*음원 워터마킹 공통 API 개발*
- 음원 워터마킹 사이트 및 내부 음원 사이트용 *음원 관리 및 워터마킹 공통 API 개발*, Swagger로 문서화
- QIM(Quantization Index Modulation) 및 비가청 주파수 워터마크 삽입 기술 최적화(음원 처리 갯수 확장)
- RabbitMQ를 이용한 Consumer 서버 구현으로 *처리 시간 20% 단축*

#v(1em)

// Social Investing Lab
#company_title("Social Investing Lab (소셜인베스팅랩)", "백엔드 엔지니어", "2023년 2월 ~ 2024년 2월")

*사용 기술: Typescript, Nest.js, Socket.io, AWS(ECS, Fargate, S3), Docker, C\#, Aurora MySQL, MongoDB*

#v(0.5em)

*주식 주주 채팅방 개발*
- Nest.js와 Socket.io를 통한 증권 구매자 채팅 서비스 개발
- Jest를 통한 테스트 코드 구현 (코드 커버리지 90% 이상 구현)
- Artillery를 사용하여서 초당 20개 메세지를 발송하는 유저 1000명 스트레스 테스트 통과

#v(0.5em)

*관리자 기능 구현*
- 관리자 콘솔 개발로 *수동 업무 28건 자동화*

#v(0.5em)

*증권사 주식 계좌 생성 이벤트 개발*
- KB 증권, 신한 증권 계좌 개설 이벤트 개발
- *10,000건 이상의 주식 계좌 개설 완료* 및 *유저 유입 10배 달성*

#v(0.5em)

*개인정보 및 이메일 배치 서비스 개선*
- 증권사 연동 및 이메일 배치 서비스 C\# 코드를 빠르게 학습 및 수정함
- 개인정보 파기 의무 변경에 따른 이메일 배치 서비스 재개발

#v(0.5em)

*회원가입 기능 개선*
- 소셜 로그인 기능 구현 (Apple)

#v(0.5em)

*회사 내부 VPN 환경 설정 및 서버실 관리*
- 증권사 연동 서버실 OpenVPN 서버 환경 구축 및 메뉴얼 정리
- 서버실 유지 보수 및 방화벽 관리

#v(1em)

// 자란다
#company_title("자란다 (Jaranda)", "백엔드 엔지니어", "2021년 11월 ~ 2022년 11월")

*사용 기술: Python, FastAPI, Flask, WebApp2, GCP App Engine, Jenkins, Shell Script, Memcached, MySQL*

#v(0.5em)

*인프라 유지 보수 및 배포 환경 개선*
- GCP App Engine 컨테이너 개수 제한 문제 해결을 위한 Jenkins Shell 스크립트 구현으로 컨테이너 유지 비용 20% 절감 및 배포 오류 제거
- Git-Flow 기반 브랜치 전략 개선으로 *배포 시간 1/3 단축* 및 배포 장애 최소화

#v(0.5em)

*개발 프로세스 최적화*
- 신입 개발자 온보딩 프로세스 개선 (*개발 환경 구성 시간 2주 → 하루로 단축*)
- 레거시 코드(Python2, webapp2) 분석 및 공유, 개선 작업

#v(0.5em)

*관리자 기능 구현 및 유지 보수*
- 하루 100~200건의 수동 데이터 수정 작업을 관리자 기능으로 자동화

#v(3em)

// BioAI
#company_title("BioAI (바이오에이아이)", "웹 개발자", "2021년 4월 ~ 2021년 11월")

*사용 기술: Python, FastAPI, Flask, AWS, NCP(네이버 클라우드 플랫폼), Docker, Redis, MariaDB*

#v(0.5em)

*신약 후보 물질 성분 추천 서비스*
- 신약 후보 물질 추천 모델 HTTP API 개발
- JWT 기반 회원가입, 로그인, 비밀번호 변경 등 회원 기능 구현
- SMILES(simplified molecular-input line entry system) 이미지 구현 및 Chart.js로 그래프 시각화 구현

#v(1em)

// ==================== 개인 활동 & 학력 ====================

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1.5em,
  
  // 왼쪽: Personal Experience
  [
    #section_title("Personal Experience")
    
    *B2B Maker 세미나 발표* #link("https://www.linkedin.com/posts/dong-hyeon-lee-48b5a1236_b2bmaker-spmrpuqlu-qoetxusqktnd-ugcPost-7322978146650071041-k9Jv")[#underline[\[링크\]]]
    - 알림 도메인 및 SQS 사용 경험 발표
    - 세미나 전체 구성 및 인원 모집을 직접 진행함
    
    #v(0.5em)
    
    *달사콘 2024* #link("https://www.linkedin.com/posts/dong-hyeon-lee-48b5a1236_달사콘-2024-작은-생각에서-시작된-it-컨퍼런스-이야기-activity-7264054308654977024-8Bxv")[#underline[\[링크\]]]
    - 이메일 서비스 사용 경험 발표
  ],
  
  // 오른쪽: Education
  [
    #section_title("Education")
    
    *신라대학교 컴퓨터공학* \
    _2015년 3월 \~ 2021년 2월_
    - 빅데이터 연구소 초기 멤버 및 2기 팀장
    - 한국멀티미디어학회 논문 2회 투고
    - 신라대학교 메이커톤 3등 수상
    
    #v(0.5em)
    
    *대진정보통신고등학교 컴퓨터정보과*
    - 개발 해커톤 3등 수상
  ]
)

#v(1em)

#align(center)[
  #text(size: 8pt, fill: gray)[
    작성일: 2024년 11월 16일
  ]
]