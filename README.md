# KoNLPQ
NLPs

### 실행법
library(devtools)
install_github('soeque1/KoNLPQ')
library(KoNLPQ)
KkmaObj <- .jnew('kr.lucypark.kkma.KkmaInterface') ## 왜 KoNLP를 불러와야 잘 되는가..
twitterObj <- .jnew('com.twitter.penguin.korean.TwitterKoreanProcessorJava$Builder')
twitterObj <- .jrcall(twitterObj, 'build')
kkma.extractPOS('오늘도술로밤을세우고', 'N')
kkma.extractPOS('오늘도술로밤을세우고', 'NV')
