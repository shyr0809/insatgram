# 12조 자산가들

> **12조를 가진 자산가들이 되고 싶은 4명의 I와 1명의 E**
> 

---

- **프로젝트 소개**
    
    ### → 프로젝트 주제 선정
    
    ![와이어프레임](./docs/와이어프레임.png)
    
    ![와이어프레임1](./docs/와이어프레임1.png)
    
    ## 프로젝트명 : 인사트그램 (insatgram)
    
      **: 인스타그램을 입맛에 맞게 재구성**
    
    ### → 와이어 프레임
    
    ![와이어프레임2](./docs/와이어프레임2.png)
    
- **시연 영상**
    
    [https://youtu.be/2KK_vf1luNc](https://youtu.be/2KK_vf1luNc)
    
    [2023 07 14 05 02 47](https://youtu.be/2KK_vf1luNc)
    
    ![와이어프레임3](./docs/와이어프레임3.png)
    
    **→ 구현에 실패한 부분 : 스토리보드 클릭 시 개인 페이지로 이동**

    BottomNavigationBar의 화면이동을 index로 하다보니 Navigator를 따로 사용하는 것 보다는 index로 화면 이동을 관리하는 것이 편하다고 생각하였습니다.

    앱 구조를 생각하여 리펙토링하는 작업 도중에 화면 구성에 필요한 인자를 넘겼는데 그 과정에서 인자를 final로 받다보니 index변화를 감지하지 못해 생긴 일 같습니다.
    
- **역할 분담**
    
    ### HomePage
    
    **→ 이승현 : main page ui와 listview를 이용한 스토리보드 구현**
    
    **→ 홍현민 : main page 하트~text ui 구현&하트 클릭 시 provider를 활용한 data 변화**
    
    ### PersonalPage
    
    **→ 황현아 : Navigator push로 위젯 간 데이터 전달하여 개별 이미지, 텍스트 화면에 표시** 
    
    **→ 장석수 : PersonalPage UI 구현** 
    
    ### LikelistPage
    
    **→ 권용일 : LikelistPage의 UI와 provider(상태관리 패키지)를 활용하여 PersonalPage의 하트 아이콘 클릭 시 LikelistPage에 데이터를 전달하여 리스트 구현**
    
- **어려웠던 점 & 해결 방식**
    
    ### 이승현 (팀장)
    
    4일 동안 제가 맡은 부분에서 Listview와 widget 그리고 Github에 관하여 공부했습니다. Listview에 Navigator 기능과 아래에 텍스트 넣는 것을 인터넷과 강의를 뒤져가며 해결했습니다. 
    
    해결하지 못 한 점은 BottomNavigatorBar에 Provider를 적용해 페이지로 넘기는 것을 해결하지 못 하였습니다.
    
    ### 홍현민
    
    코딩 공부에선 가장 중요하다고 생각하는 것은 공식 문서라고 생각됩니다. 공식 문서를 통해 여러 widget의 특징과 활용 방법을 공부했습니다. provider 같은 library는 스파르타에서 제공해주신 영상을 가지고 library 활용법을 익혔습니다. 
    
    Navigtor를 route로 body부분만 전환에 성공했지만, 그렇게 될 경우 appbar, BottomNavigationBar에서의 route가 적용하지 못했습니다.
    
    ### 권용일
    
    담당해야하는 부분(provider 상태관리 패키지)의 공부가 부족하다고 느껴
    구글, 유튜브에서 관련 자료를 보면서 공부했습니다.
    
    최종적으로는 정보를 담당하는 부분에서 페이지로 정보를 넘기는 것을 해결하지 못했고 팀원분들의 도움으로 문제 해결을 했습니다.
    
    ### 황현아
    
    UI를 구현할 때 강의 내용이나 숙제 했던 것을 참고하면서 배웠던 내용을 복습하는 시간을 가졌습니다. Navigator를 사용할 때는 데이터를 다른 페이지로 넘겨주는 부분에 어려움을 느껴 구글링으로 추가 학습을 하여 구현할 수 있었습니다. 
    
    이후 팀원들과 코드를 합쳐 페이지 이동 구현을 다시 시도하였는데 여러 코드가 섞이고 Provider가 추가되면서 해결을 하지 못하게 되었습니다.
    
    ### 장석수
    
    공부하는 도중에 에뮬레이터에서 오류가 지속적으로 발생하여 해당 문제를 해결하는데 상당한 시간을 소모하였습니다. 재설치를 해보기도 하고, 폴더 위치를 바꿔보기도 했었습니다. 결국 환경 변수를 설정한 이후 재설치를 하니 문제가 해결되었습니다.
    
    그리고 코드를 작성할 때 쉼표나 열이 어긋나서 에러가 뜨는 경우가 종종 발생하여 이를 해결하는데 신경을 쓰곤 했습니다. 다행히 빨간 줄로 표기된 부분들을 수정하니 별 이상 없이 해결되었습니다.
    
- **느낀 점 & 앞으로의 각오**
    
    ### 이승현 (팀장)
    
    페이지를 따로 나눠서 작업을 하니 공통되게 사용되는 위젯들이 서로 다르게 만들어진다는 것을 알았습니다. 앞으로는 페이지의 기능, ui 따로 만들어야 한다는 것을 알았고 팀원간의 소통이 가장 중요하다는 것을 알았습니다.
    
    ### 홍현민
    
    프로그래머 같은 직업이 다른 직업에 비해 업무 환경이 편하다고 하지만, 업무 진행 과정은 어떤 직업보다 더 체계적으로 진행되는 것이 필요하다고 느꼈습니다.
    
    ### 권용일
    
    팀 과제를 하면서 느낀점은 모르는 부분에 대해서는 혼자서 해결하려기보다는 팀원분들과의 소통이 제일 중요하다고 생각됩니다. 과제기간동안 이해도 잘 안되고 해결도 힘들었던 부분을 팀원분께서 말씀드리니 너무 쉽게 이해시켜주시는걸 보고 직접 공부하는것도 중요하지만 팀 프로젝트에서 팀원과의 소통이 얼마나 중요한 일인지 다시한번 배웠습니다.
    
    ### 황현아
    
    협업이 처음이다보니 깃 사용이 많이 어려웠고 새롭고 귀한 경험이었지만 조금 힘들었습니다. 프로젝트를 통해 배웠던 내용을 주말 동안 정리하고 복습할 예정입니다. 팀원들에게 배운 것을 차곡차곡 쌓아 더 다양한 프로젝트에 도전해보고 싶습니다.
    
    ### 장석수
    
    어떤 부분에서 오류가 생기거나 막히게 될지 모르겠다는 생각과, 앞으로는 이번에 겪은 일이 다시 일어나게 되었을 때, 더 빠르게 대처할 수 있을 거란 생각이 들었습니다.
    

---