a <- kage("1996-05-28", "2019-10-17", "K")
expect_equal(a, 24)


b <- kage("1995-07-18", "2053-11-21", "G")
expect_equal(b, 58)



expect_error(kage("1996-05-28", "20133339-140-17", "G"))
