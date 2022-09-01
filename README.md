# 학원 수강생 카페 리뉴얼

## 기간 및 개발 인원

2022.05.23 ~ 2022.06.17 (5주 3인 팀 작업)

## 프로젝트 의도 및 목적

- 학원에서 배운 내용의 복습 및 숙달
- 게시판 Page bug fix 및 기능 개선
- Code refactoring(JAVA 8, Lombok 프레임워크 적용)
- 강의 녹화 비디오 파일 다운로드시 서버 부하 경감 및 기능 개선
- File I/O에 대한 이해도 향상

## 본인의 역할

강의 녹화 비디오 파일 다운로드 기능 개선(BE & FE), PPT 작성 및 Presentation

## 구현 기술

### Backend

JAVA8, Spring boot, Spring Security, Spring JPA, AJAX, Lombok

### Frontend

JSP, HTML, CSS, JavaScript, jQuery, Bootstrap

### Tools

Oracle 11g, Git, Github, Spring Tools Suit4

### Presentation PPT

[TeamGrowth](https://www.miricanvas.com/v/116znu7)

## 기술 설명 및 핵심 내용

- 기존의 코드는 View에서 파일목록올 보여줄 때 HTML의 video태그를 이용하여 동영상 파일의 개수가 조금만 많아져도 서버에 부담을 주고 다운되는 증상마저 발생.
- 각 동영상 파일의 크기가 1GB가 넘고 자료실 게시판의 Multipart(파일 크기 제한) 로직을 피해서 구현해야 했기에 어려움이 있었음.
- yml 파일에 설정된 폴더에서 파일 리스트를 받아와서 List Collection으로 구성하여 파일 생성일자 역순(최신 파일이 목록의 처음으로 오도록)으로 정렬 후
- JPA의 Pageable library를 이용하여 Paging 후 Json으로 View에 전달.
- 내가 구현한 기능과 Pageable library를 통합하는데 어려움이 있었음.
- View에서 Jason을 분리하여 파일명을 목록으로 보여주고 각 아이콘 별로 파일 다운로드와 동영상 Player Popup(Modal) 구현.

## 프로젝트 후기

- 팀원간 개발에 사용되는 프레임워크에 대한 이해도가 다를 때 협업이 쉽지 않고 한 사람에게 작업이 몰리는 현상을 체험함. 실무에서는 프레임워크를 변경하기 전에 필요성에 대한 팀원간 충분한 교감과 학습이 필요하다는 것을 배웠음.
- 기능 구현을 하면서 JAVA API Document를 보거나 클래스 구조를 분석해 볼 때 Generics에 대한 이해가 깊지 않으면 문서 보는 것 조차 쉽지 않다는 것을 체감함.
- 내가 설계한 로직과 다른 library를 통합하여 기능을 구현하는 게 생각 보다 쉽지 않다는 것을 배움.
- 특정 Library나 Framework에 어느 정도 의존해야 할지 프로젝트 시작전에 숙고가 필요하다는 것을 배움.
- 단기적으로는 Framework와 내가 사용하는 Tool에 대한 공부가 필요하지만 중장기적으로는 기초지식(CS지식)이 중요하다는 것을 체감함.
