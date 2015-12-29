context("extractPOS")

test_that("extractNoun", {
strings <- '오늘도 술로 밤을 채우고'
noun.kkma <- kkma.extractPOS(strings, "N")
expect_equal(noun.kkma, c('오늘', '술', '밤'))

noun.twi <- twi.extractPOS(strings, "N")
expect_equal(noun.twi, c('오늘', '술', '밤'))
})

test_that("extractVerb", {
strings <- '오늘도 술로 밤을 채우고'
verb.kkma <- kkma.extractPOS(strings, "V")
expect_equal(verb.kkma, c('오', '채우'))

verb.twi <- twi.extractPOS(strings, "V")
expect_equal(verb.twi, c('채우다'))
})


