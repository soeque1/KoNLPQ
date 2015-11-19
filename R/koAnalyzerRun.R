kkma.extractPOS <- function(strings, POS = 'NV')
{
    res = .jrcall(get("KkmaObj",envir=KoNLPQ:::.KoNLPQEnv), 'morphAnalyzer', strings)
    res = .jstrVal(res)
    ## N = Noun, V = Verb
    expr = paste0('([가-힣]+)\\/[', POS, ']')
    res = str_match_all(res, expr)[[1]][,2]
    res
}

kkma.extractNoun <- function(strings)
{
    res = .jrcall(get("KkmaObj",envir=KoNLPQ:::.KoNLPQEnv), 'extractNoun', strings)
    res = .jstrVal(res)
    res = str_extract_all(res, "[가-힣]+")[[1]]
    res
}

twi.extractPOS <- function(strings, POS = 'NP')
{
    err <- NULL
    tryCatch({res = .jrcall(get("twitterObj",envir=KoNLPQ:::.KoNLPQEnv), 'tokenize', strings)}, 
             error = function(e) err <<- conditionMessage(e))
    if(is.null(err)) 
    {
        res = .jstrVal(res)
        ## N = Noun, V = Verb
        expr = paste0('([가-힣]+)\\([', POS, ']')
        res = str_match_all(res, expr)[[1]][,2]
    } else {
        res = ''
    }
    return(res)
}

twi.extractNoun <- function(strings, POS)
{
    res = twi.extractPOS(strings, POS = 'N')
    res
}