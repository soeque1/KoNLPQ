kkma.extractPOS <-
function(strings, POS = 'NV')
{
    res = .jrcall(KkmaObj, 'morphAnalyzer', strings)
    res = .jstrVal(res)
    ## N = Noun, V = Verb
    expr = paste0('([가-힣]+)\\/[', POS, ']')
    res = str_match_all(res, expr)[[1]][,2]
    res
}
