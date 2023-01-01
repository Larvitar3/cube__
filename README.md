
# Project - Star Entertainment

## 구성 :

<aside>
👉 프로젝트 구성 사항 

MVC, JPA, Security, Jasper , Spring-Security-Taglibs, Jstl   

외부 API 
결제 API, OAuth 2.0, chart API, etc api..  

build package : gradle 

etc : 
ERD, Git, Validation, Bootstrap, JQuery, Ajax , CSRF,
Coding convention, Responsive Web 

tools : 
STS suite , trello, notion , Git Readme, PPT

</aside>

## 타임라인 :

[https://trello.com/b/o3e9VVuB/starent](https://trello.com/b/o3e9VVuB/starent)

## 깃 :

[https://github.com/1000bang/starEnt](https://github.com/1000bang/starEnt)

## 노션 :

https://1000bang.notion.site/Project-373eb1c07a074cff9e69d2c44bae356d


## 엔티티

- UserEntity
    - id
    - username
    - userid
    - password
    - birth
    - email
    - status
    - role        
    - membership
    - addressEntity address

- addressEntity
    - id
    - postcode
    - address
    - detailAddress

- membershipEntity
    - tier
    - rate
    
- newsEntity
    - id
    - title
    - content 

- boardEntity 
    - id
    - title
    - content 
    - list<reply>
    - userid 작성자
    - starid  어떤 스타에게 쓰는지 (아이디)
    
- replyEntity
    - id
    - content
    - createTime
    - user
    - board

- starEntity
    - id
    - birth
    - name
    - activity
    - role
        - 그룹
        - 솔로
    - music
    - act
    - entertainer

- MusicEntity
    - id
    - starid
    - albumName
    - albumYear
    - albumPic

- MovieEntity
    - id
    - starid
    - movieName
    - movieYear
    - moviePic

- entertainmentEntity
    - id
    - starid
    - programName
    - programYear
    - programPic
    

---


## 기능

### -  유저 기능

로그인 & 로그아웃 / 회원가입  / 굿즈샵 결제/ 편지쓰기(CRUD) / 오디션 신청 

### -  관리자 기능

스타 관리(추가 수정 삭제 목록) / 뉴스관리 / 오디션 공지  / 굿즈샵 관리 (CRUD) 

### -  스타 기능

댓글 쓰기(팬소통) 이외엔 유저와 같음
