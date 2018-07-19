library(elliptical)

context("Area")

test_that("area of a circle", {
  expect_equal(ellipse_area(1), pi)
  expect_equal(ellipse_area(1, 0), pi)
})

test_that("area of a line", {
  expect_equal(ellipse_area(1, 1), 0)
})

test_that("area of an ellipse", {
  expect_equal(ellipse_area(1, 0.5), 2.7207, tolerance = 0.000001)
})

test_that("invalid eccentricity", {
  expect_error(ellipse_area(1, -1))
  expect_error(ellipse_area(1, 2))
})
