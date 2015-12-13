context("extractPOS")

test_that("extractNoun", {
strings <- '오늘도 술로 밤을 채우고'
noun.kkma <- kkma.extractPOS(strings, "N")
expect_equal(noun.kkma, c('오늘', '술', '밤'))

twi.kkma <- twi.extractPOS(strings, "N")
expect_equal(noun.kkma, c('오늘', '술', '밤'))
})