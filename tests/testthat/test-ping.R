context("ping")

x <- connect(port = Sys.getenv("TEST_ES_PORT"), warn=FALSE)

test_that("ping", {
  expect_is(x$ping(), "list")
})

