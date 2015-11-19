.KoNLPQEnv <- new.env()

.onLoad <- function(libname, pkgname) {
    tempDir <- find.package(pkgname)
    
    pathToSdk <- paste0(system.file(package = pkgname) , tempDir, '/inst/java/')
    
    #jarPaths <- c(paste0(pathToSdk, "kkma-2.0.jar"),
    #              paste0(pathToSdk, "lucypark.jar"),
    #              paste0(pathToSdk, "korean-text-3.0.jar"),
    #              paste0(pathToSdk, "scala-library-2.11.6.jar"),
    #              paste0(pathToSdk, "twitter-text-1.11.1.jar"))
    
    .jpackage(pkgname, morePaths=pathToSdk)
    #attach( javaImport( c("java.lang", "java.io", "java.mail", "java.util", "java.text")))
    
    packageStartupMessage( paste( "KoNLPQ loaded. The classpath is: ", paste(.jclassPath(), collapse=" " ) ) )        
}

.onAttach <- function(libname, pkgname){

  if(!exists("KkmaObj", envir=KoNLPQ:::.KoNLPQEnv)){
    assign("KkmaObj",.jnew("kr.lucypark.kkma.KkmaInterface"), KoNLPQ:::.KoNLPQEnv)
  }
  
  if(!exists("twitterObj", envir=KoNLPQ:::.KoNLPQEnv)){
	twitterObj <- .jnew('com.twitter.penguin.korean.TwitterKoreanProcessorJava$Builder')
	twitterObj <- .jrcall(twitterObj, 'build')
    assign("twitterObj",twitterObj, KoNLPQ:::.KoNLPQEnv)
  }  
  
}

