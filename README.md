# KoNLPQ
NLPs  
<img src='https://travis-ci.org/soeque1/KoNLPQ.svg'>
<a href="https://codecov.io/github/soeque1/KoNLPQ?branch=master">
  <img src="https://codecov.io/github/soeque1/KoNLPQ/coverage.svg?branch=master" alt="Coverage via Codecov" />
</a>

### 실행법
library(devtools)  
install_github('soeque1/KoNLPQ')  
library(KoNLPQ)  

##### 일반 문장에서 명사 추출
strings = '오늘도 술로 밤을 채우고'  
KoNLP::extractNoun(strings)  
kkma.extractPOS(strings, "N")  
twi.extractPOS(strings, "N")  

##### 띄어쓰기가 되지 않은 문장에서 명사 추출
strings = '오늘도술로밤을채우고'  
KoNLP::extractNoun(strings)  
kkma.extractPOS(strings, "N")  
twi.extractPOS(strings, "N")  

##### 동사 추출
kkma.extractPOS(strings, "V")  
twi.extractPOS(strings, "V")  

##### 명사 또는 동사 추출
kkma.extractPOS(strings, "NV")  
twi.extractPOS(strings, "NV")  
