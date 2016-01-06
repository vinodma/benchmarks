runs <- 3			# Number of times the tests are executed
times <- rep(0, 15); dim(times) <- c(5,3)
require(Matrix)		# Optimized matrix operations
require(SuppDists)	# Optimized random number generators
Runif <- rMWC1019	# The fast uniform number generator
# If you don't have SuppDists, you can use: Runif <- runif
a <- rMWC1019(10, new.start=TRUE, seed=492166)	# Init. the generator
Rnorm <- rziggurat	# The fast normal number generator
# If you don't have SuppDists, you can use: Rnorm <- rnorm
b <- rziggurat(10, new.start=TRUE)	# Init. the generator
remove("a", "b")
options(object.size=100000000)

cat("\n\n   R Benchmark 2.5\n")
cat("   ===============\n")
cat(c("Number of times each test is run__________________________: ", runs))
cat("\n\n")


cumulate <- 0; b <- 0
for (i in 1:runs) {
  a <- Rnorm(2500*2500); dim(a) <- c(2500, 2500)
  invisible(gc())
  timing <- system.time({
    b <- crossprod(a)		# equivalent to: b <- t(a) %*% a
  })[3]
  cumulate <- cumulate + timing
}
timing <- cumulate/runs
times[4, 1] <- timing
cat(c("2500x2500 cross-product matrix (b = a' * a)_________ (sec): ", timing, "\n"))
remove("a", "b")


cumulate <- 0; b <- 0
for (i in 1:runs) {
  a <- Rnorm(5000*5000); dim(a) <- c(5000, 5000)
  invisible(gc())
  timing <- system.time({
    b <- crossprod(a)		# equivalent to: b <- t(a) %*% a
  })[3]
  cumulate <- cumulate + timing
}
timing <- cumulate/runs
times[4, 1] <- timing
cat(c("5000X5000 cross-product matrix (b = a' * a)_________ (sec): ", timing, "\n"))
remove("a", "b")


cumulate <- 0; b <- 0
for (i in 1:runs) {
  a <- Rnorm(7500*7500); dim(a) <- c(7500, 7500)
  invisible(gc())
  timing <- system.time({
    b <- crossprod(a)		# equivalent to: b <- t(a) %*% a
  })[3]
  cumulate <- cumulate + timing
}
timing <- cumulate/runs
times[4, 1] <- timing
cat(c("7500X7500 cross-product matrix (b = a' * a)_________ (sec): ", timing, "\n"))
remove("a", "b")


cumulate <- 0; b <- 0
for (i in 1:runs) {
  a <- Rnorm(10000*10000); dim(a) <- c(10000, 10000)
  invisible(gc())
  timing <- system.time({
    b <- crossprod(a)		# equivalent to: b <- t(a) %*% a
  })[3]
  cumulate <- cumulate + timing
}
timing <- cumulate/runs
times[4, 1] <- timing
cat(c("10000x10000 cross-product matrix (b = a' * a)_________ (sec): ", timing, "\n"))
remove("a", "b")


cumulate <- 0; b <- 0
for (i in 1:runs) {
  a <- Rnorm(12500*12500); dim(a) <- c(12500, 12500)
  invisible(gc())
  timing <- system.time({
    b <- crossprod(a)		# equivalent to: b <- t(a) %*% a
  })[3]
  cumulate <- cumulate + timing
}
timing <- cumulate/runs
times[4, 1] <- timing
cat(c("12500x12500 cross-product matrix (b = a' * a)_________ (sec): ", timing, "\n"))
remove("a", "b")

cumulate <- 0; b <- 0
for (i in 1:runs) {
  a <- Rnorm(15000*15000); dim(a) <- c(15000, 15000)
  invisible(gc())
  timing <- system.time({
    b <- crossprod(a)		# equivalent to: b <- t(a) %*% a
  })[3]
  cumulate <- cumulate + timing
}
timing <- cumulate/runs
times[4, 1] <- timing
cat(c("15000x15000 cross-product matrix (b = a' * a)_________ (sec): ", timing, "\n"))
remove("a", "b")
if (R.Version()$os == "Win32" || R.Version()$os == "mingw32") flush.console()
