test_that("multiplication works", {
  expect_equal(2 * 3, 6)
})

a <- kage(1996-05-28, "2019-10-17", "K")
expect_warning(a)

b <- kage("1995-07-18", "2053-11-21", "G")
expect_equal(b, 58)
