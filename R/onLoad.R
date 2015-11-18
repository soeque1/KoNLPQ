.onLoad <-
function(lib, pkg  = "KoNLPQ") {
    .jinit()
    tempDir <- find.package(pkg)
    
    pathToSdk <- paste0(system.file(package = pkg) , tempDir, '/java/')
    
    jarPaths <- c(paste0(pathToSdk, "kkma-2.0.jar"),
                  paste0(pathToSdk, "qunatlab.jar"),
                  paste0(pathToSdk, "korean-text-3.0.jar"),
                  paste0(pathToSdk, "scala-library-2.11.6.jar"),
                  paste0(pathToSdk, "twitter-text-1.11.1.jar"))
    
    .jpackage(pkg, morePaths=jarPaths)
    #attach( javaImport( c("java.lang", "java.io", "java.mail", "java.util", "java.text")))
    
    packageStartupMessage( paste( "KoNLPQ loaded. The classpath is: ", paste(.jclassPath(), collapse=" " ) ) )        
}

.onObj <-
function()
{
    KkmaObj <- .jnew('kr.lucypark.kkma.KkmaInterface') ## 왜 KoNLP를 불러와야 잘 되는가..
    twitterObj <- .jnew('com.twitter.penguin.korean.TwitterKoreanProcessorJava$Builder')
    twitterObj <- .jrcall(twitterObj, 'build')
}
