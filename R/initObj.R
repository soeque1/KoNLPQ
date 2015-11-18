initObj <- function()
{
KkmaObj <- .jnew('kr.lucypark.kkma.KkmaInterface') ## 왜 KoNLP를 불러와야 잘 되는가..
twitterObj <- .jnew('com.twitter.penguin.korean.TwitterKoreanProcessorJava$Builder')
twitterObj <- .jrcall(twitterObj, 'build')
}