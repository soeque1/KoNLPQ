# KoNLPQ
NLPs

### 실행법
library(devtools)
install_github('soeque1/KoNLPQ')
library(KoNLPQ)

strings = '오늘도 술로 밤을 채우고'
KoNLP::extractNoun(strings)
kkma.extractPOS(strings, "N")
twi.extractPOS(strings, "N")

strings = '오늘도술로밤을채우고'
KoNLP::extractNoun(strings)
kkma.extractPOS(strings, "N")
twi.extractPOS(strings, "N")

kkma.extractPOS(strings, "V")
twi.extractPOS(strings, "V")
kkma.extractPOS(strings, "NV")
twi.extractPOS(strings, "NV")
