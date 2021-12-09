unlink("mtcars.json")
unlink("mtcarslist.json")
x <- elastic::connect(port = Sys.getenv("TEST_ES_PORT"), warn = FALSE)
invisible(elastic::index_delete(x, index="*", verbose = FALSE))
