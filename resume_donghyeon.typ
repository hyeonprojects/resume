#set page(
  paper: "a4",
  margin: (x: 1.5cm, y: 1.5cm),
)

#set text(
  font: "Noto Sans CJK KR",
  size: 10pt,
)

// 링크 함수 정의 (문서 상단에 추가)
#let styled-link(url, display-text) = {
  underline(text(fill: rgb("#0066cc"))[#link(url)[#display-text]])
}

#set heading(numbering: none)

// Title Section
#align(center)[
  #text(size: 24pt, weight: "bold")[Back-End Engineer 이동현]
]

#v(0.5em)

#align(center)[
  #text(size: 14pt, weight: "semibold")[비즈니스 영향력과 가치를 만드는 개발자]
]

#v(1em)

// Introduction
약 4년차 백엔드 엔지니어 이동현입니다. Typescript와 Python 등의 다양한 언어와 프레임워크를 활용하여 알림, 마케팅, 소셜 등의 도메인 문제를 해결하고 가치를 만드는 일을 하였습니다. 특히 Kafka, SQS 등을 활용하여 비동기 메시지 처리 및 트래픽 분산 처리 경험이 있습니다.

#v(1em)

// Two Column Layout
#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  
  // Left Column - Information
  [
    = Information
    
    - *전화번호* : 010-5027-6384
    - *이메일* : axzswq\@gmail.com
    - #styled-link("https://github.com/hyeonprojects", "Github"), #styled-link("https://medium.com/@hyeonproject", "Tech Blog"), #styled-link("https://hyeonprojects.notion.site/Restart-Programmer-d48261e368924fe79467c83148964db7", "Tech Memo"), #styled-link("https://www.linkedin.com/in/dong-hyeon-lee-48b5a1236", "LinkedIn")
  ],
  
  // Right Column - Technical Skills
  [
    = Technical Skills
    
    - *Language* : Typescript, Python, Kotlin, C\#
    - *Web Frameworks* : Nest.js, FastAPI, Django, Flask, Socket.io, Spring
    - *Message Queues* : AWS SQS, Kafka, RabbitMQ
    - *Database* : MySQL, Redis, MongoDB, DynamoDB
    - *DevOps & Infra* : AWS(EC2, SQS, S3..), GCP, Jenkins, Docker
  ]
)

#v(1em)

#line()

// Work Experience
= Work Experience

== Mass-Adoption (Vircle, 버클)
*2024년 5월 \~*

- 기존 알림톡 벤더사에서 다른 벤더사로 바꾸는 작업을 통해 *알림톡, LMS, SMS 비용 40% 절감*

- 알림 시스템이 RDB 기반 Out-Box Pattern으로 되어 있어 멱등성이 보장되지 않았던 알림 서비스를 *Message Queue(AWS SQS, Kafka)를 활용*하여 멱등성 보장 및 누락되는 알림에 대한 채널별 처리 기능 구현

- 유저 리텐션 및 참여도 증가, 브랜드의 유저 정보를 모으기 위해 브랜드 라운지 및 스탬프 기능 개발 진행, 해당 기능을 사용하기 위해 약 30개의 브랜드 유료 전환함

- 특정 유저(세그먼트)에게 반복적 또는 일회성으로 8만 개의 메시지를 30분 만에 전달할 수 있도록 마케팅 메시지를 전달할 수 있는 *마케팅 메시지 기능 구현*(알림톡, 친구톡, 브랜드메시지) 및 클릭률 기능 구현

- 해외 전화번호를 사용하는 고객을 위한 LMS, SMS, 알림톡 작업 진행

- *ISO 보안 인증*을 위한 API 점검 작업

#v(1em)

== 뮤즈블라썸 (MuseBlossom)
*2024년 3월 \~ 2024년 5월*

- 음원 워터마킹 사이트 및 내부 음원 사이트에 사용하기 위해 *음원 관리 및 음원 워터마킹 공통 API 개발*

- 음원 워터마킹 처리 속도 개선을 위해 *QIM(Quantization Index Modulation) 및 비가청 주파수 워터마크 삽입 기술 최적화* 및 RabbitMQ를 이용한 Consumer 서버 코드로 구현 (기존 대비 *처리 시간 20% 단축* 및 음원 처리 개수 조합을 *2경 4400조 배 증가*)

#v(1em)

== Social Investing Lab
*2023년 2월 \~ 2024년 2월*

- 증권 구매자들끼리 채팅할 수 있는 *채팅 서비스를 Socket.io를 통해 개발*하고 Jest를 통한 테스트 코드를 구현함 (스트레스 테스트로 *초당 100개씩 메시지를 쏘는 유저 100명 ~ 10000명 시나리오로 스트레스 테스트 통과*)

- KB 증권, 신한 증권사의 계좌 개설 이벤트를 진행하면서, 해당 이벤트를 통해 약 *10000건 이상의 주식 계좌 개설 완료* 및 *유저 유입 10배 달성*

- 회사의 소셜 기능을 관리하고 운영을 담당할 관리자 기능이 부재하여 기획자, 디자이너, Front-End와 협업하여 *관리자 기능을 하는 백오피스 기능을 개발*하였고, 덕분에 *수동으로 하는 업무 28건을 자동화*함

- 소셜 로그인 기능 추가 구현 (애플, 카카오, 구글)

- 증권사 연동 및 이메일 배치 서비스 *C\# 코드를 빠르게 학습*하여 수정 및 개발 작업 진행

#v(1em)

== 자란다 (Jaranda)
*2021년 11월 \~ 2022년 11월*

- GCP App Engine의 컨테이너 개수 제한으로 인한 배포 오류가 잦게 발생, 이를 해결하는 Shell 스크립트로 최신 몇 개의 컨테이너만 유지하도록 구성, Jenkins 배포 스크립트 적용하여 *컨테이너 유지 비용 20% 절감* 및 에러 발생 빈도 감소

- 현재의 배포 전략에 코드 충돌 및 배포가 제대로 되지 않는 문제가 발생하여, *Git-Flow 기반의 브랜치 전략 개선* 및 배포 전략을 위한 스크립트 전반 수정 및 공유 (그 이후로 *배포 시간을 1/3로 단축* 및 배포 장애 최소로 감소)

- 신입 개발자 도구 설치 및 작동하는 *온보딩 프로세스 개선* 및 작업을 하여 *2주 걸리던 온보딩 프로세스를 하루로 단축*

- 하루에 100건에서 200건씩 개발자가 수동으로 데이터 수정하는 코드를 *백오피스에 구현*하여 잡무를 개선

- 앱 서비스 개선을 위한 회사 내부의 *레거시 코드 분석* 및 작동 원리 공유

#v(1em)

== BioAI (바이오에이아이)
*2021년 4월 \~ 2021년 11월*

- 신약후보물질 추천 ML 코드를 실행하는 서비스를 *Javascript Fetch를 통한 웹 서비스 구축* 및 *FastAPI, Redis, Docker를 활용한 인프라 전반 설계 및 구축*

#line()

// Two Column Layout for Personal Experience and Education
#grid(
  columns: (1fr, 1fr),
  gutter: 2em,
  
  // Left Column - Personal Experience
  [
    = Personal Experience
    
    == #styled-link("https://www.linkedin.com/posts/dong-hyeon-lee-48b5a1236_b2bmaker-spmrpuqlu-qoetxusqktnd-ugcPost-7322978146650071041-k9Jv?utm_source=share&utm_medium=member_desktop&rcm=ACoAADrRz2sBJw9YlC1mdCtqzLOmBtRUPLmLaEY", "B2BMaker 세미나")
    
    - 알림 도메인에 대한 설명과 SQS 에 대한 발표를 진행함
    - 프론트엔드 개발자 한 명과 같이 해당 세미나를 전체 구성 및 인원 모집 개발을 진행함
    
    #v(0.5em)

    == #styled-link("https://www.linkedin.com/posts/dong-hyeon-lee-48b5a1236_%EB%8B%AC%EC%82%AC%EC%BD%98-2024-%EC%9E%91%EC%9D%80-%EC%83%9D%EA%B0%81%EC%97%90%EC%84%9C-%EC%8B%9C%EC%9E%91%EB%90%9C-it-%EC%BB%A8%ED%8D%BC%EB%9F%B0%EC%8A%A4-%EC%9D%B4%EC%95%BC%EA%B8%B0-activity-7264054308654977024-8Bxv?utm_source=share&utm_medium=member_desktop&rcm=ACoAADrRz2sBJw9YlC1mdCtqzLOmBtRUPLmLaEY", "달사콘")

    - 개인 이름으로 IT 개발 세미나를 만듬
    - 이메일 서비스를 사용한 경험에 대한 발표도 진행함
  ],
  
  // Right Column - Education
  [
    = Education
    
    *신라대학교 컴퓨터 공학*\
    (2015년 3월 \~ 2021년 2월)
    
    - 빅데이터 연구소 초기 멤버 및 2기 팀장
    - 한국멀티미디어학회 논문 2회 투고
    
    #v(0.5em)
    
    *대진정보통신고등학교 컴퓨터정보과*
  ]
)