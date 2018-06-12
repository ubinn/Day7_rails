## day5 - Rails

*bash*

```ruby
binn02:~/workspace $ rails -v
	Rails 4.2.5
binn02:~/workspace $ ruby -v
	ruby 2.3.4p301 (2017-03-30 revision 58214) [x86_64-linux]
binn02:~/workspace $ cd ..
binn02:~ $ gem install rails -v 5.0.6
binn02:~ $ rvm install 2.4.1
binn02:~ $ ruby -v
	ruby 2.4.1p111 (2017-03-22 revision 58053) [x86_64-linux]
# 만약에 바뀐버전으루 안나오면 rvm default 2.4.1


binn02:~ $ rails _5.0.6_ new test_app
## rails s -p $PORT -o $IP 로 실행~!~!~!


```

> 루비에서 사용하는 라이브러리 => gem 
>
> 여러 gem파일이 들어있는 rails를 만들어 준것이야. ~> bundler 가 그 역할을 한것.
>
> 사실은 gem install bundler를 먼저 해줬어야해

### Bundler

- `bundler` : 내 프로젝트에 사용될 모든 gem을 설치해준다.

- 내가 사용한 gem들은 `Gemfile`에 명시한다.

- `Gemfile`에 내가 사용할 잼들을 면시한 이후에는 터미널에 `$ bundle install`명령어를 입력한다.

  *my_app/Gemfile*

```ruby
gem 'bootstrap-sass'을 저장한후

binn02:~/test_app $ bundle install 
```

- 사용하지 않게 된 gem 또한 `Gemfile`에서 삭제한 이후 위 명령어를 다시 수행해줘야한다!!!



*test_app 폴더 구조* 

- ***app***
  - ***controllers*** : 로직
  - ***models*** : controller와 view 연결
  - ***views*** : ~erb

- bin : binary폴더의 약자
- ***config*** 
  - *** routes(라우팅) ***
  -  사용자가 어떤 요청(url)을 받을지, 어느 로직으로 보낼지에 대한 명시 담당
- db <-ORM에 대한 개념을 알아야해
  - db 에 어떤 table, col, col제약을 줄건지 
  - table하나 만들때마다 뭐가 하나씩 추가될거래
- log : 서버로그 맞아
- public : 외부에서 접근가능한 폴더
- test : rails라는 프레임워크가 TDD (test driven development)에 가장 최적화 되어있음
  - 하지만 우리는 안할거야... 
- tmp : 이미지 파일 저장되는곳 
- Gemfile.lock : gem에 대한 dependency! <- 건들이지 않을꼬~