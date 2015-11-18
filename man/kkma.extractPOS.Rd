\name{kkma.extractPOS}
\alias{kkma.extractPOS}
\title{extractPOS using Kkma}
\description{
KKMA
}
\usage{
kkma.extractPOS(strings, POS = "NV")
kkma.extractPOS(strings, POS = "N")
kkma.extractPOS(strings, POS = "V")
}
\arguments{
  \item{strings}{input characters}
  \item{POS}{input character}
}
\value{
N : Noun
V : Verb
NV : N or V
}
\examples{
function (strings, POS = "NV") 
{
    res = .jrcall(KkmaObj, "morphAnalyzer", strings)
    res = .jstrVal(res)
    expr = paste0("([A-Z]+)\\/[", POS, "]")
    res = str_match_all(res, expr)[[1]][, 2]
    res
  }
}