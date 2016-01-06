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
  a <- new("dgeMatrix", x = Rnorm(1600*1600), Dim = as.integer(c(1600, 1600)))
  invisible(gc())
  #a <- Rnorm(400*400); dim(a) <- c(400, 400)
  timing <- system.time({
    #  b <- qr.solve(a)
    # Rem: a little faster than
    b <- solve(a)
  })[3]
  cumulate <- cumulate + timing
}
timing <- cumulate/runs
times[5, 2] <- timing
cat(c("Inverse of a 1600x1600 random matrix________________ (sec): ", timing, "\n"))
remove("a", "b")

cumulate <- 0; b <- 0
for (i in 1:runs) {
  a <- new("dgeMatrix", x = Rnorm(3200*3200), Dim = as.integer(c(3200, 3200)))
  invisible(gc())
  #a <- Rnorm(400*400); dim(a) <- c(400, 400)
  timing <- system.time({
    #  b <- qr.solve(a)
    # Rem: a little faster than
    b <- solve(a)
  })[3]
  cumulate <- cumulate + timing
}
timing <- cumulate/runs
times[5, 2] <- timing
cat(c("Inverse of a 3200x3200 random matrix________________ (sec): ", timing, "\n"))
remove("a", "b")


cumulate <- 0; b <- 0
for (i in 1:runs) {
  a <- new("dgeMatrix", x = Rnorm(4800*4800), Dim = as.integer(c(4800, 4800)))
  invisible(gc())
  #a <- Rnorm(400*400); dim(a) <- c(400, 400)
  timing <- system.time({
    #  b <- qr.solve(a)
    # Rem: a little faster than
    b <- solve(a)
  })[3]
  cumulate <- cumulate + timing
}
timing <- cumulate/runs
times[5, 2] <- timing
cat(c("Inverse of a 4800X4800 random matrix________________ (sec): ", timing, "\n"))
remove("a", "b")


cumulate <- 0; b <- 0
for (i in 1:runs) {
  a <- new("dgeMatrix", x = Rnorm(6000*6000), Dim = as.integer(c(6000, 6000)))
  invisible(gc())
  #a <- Rnorm(400*400); dim(a) <- c(400, 400)
  timing <- system.time({
    #  b <- qr.solve(a)
    # Rem: a little faster than
    b <- solve(a)
  })[3]
  cumulate <- cumulate + timing
}
timing <- cumulate/runs
times[5, 2] <- timing
cat(c("Inverse of a 6000X6000 random matrix________________ (sec): ", timing, "\n"))
remove("a", "b")


cumulate <- 0; b <- 0
for (i in 1:runs) {
  a <- new("dgeMatrix", x = Rnorm(7200*7200), Dim = as.integer(c(7200, 7200)))
  invisible(gc())
  #a <- Rnorm(400*400); dim(a) <- c(400, 400)
  timing <- system.time({
    #  b <- qr.solve(a)
    # Rem: a little faster than
    b <- solve(a)
  })[3]
  cumulate <- cumulate + timing
}
timing <- cumulate/runs
times[5, 2] <- timing
cat(c("Inverse of a 7200X7200 random matrix________________ (sec): ", timing, "\n"))
remove("a", "b")

cumulate <- 0; b <- 0
for (i in 1:runs) {
  a <- new("dgeMatrix", x = Rnorm(8400*8400), Dim = as.integer(c(8400, 8400)))
  invisible(gc())
  #a <- Rnorm(400*400); dim(a) <- c(400, 400)
  timing <- system.time({
    #  b <- qr.solve(a)
    # Rem: a little faster than
    b <- solve(a)
  })[3]
  cumulate <- cumulate + timing
}
timing <- cumulate/runs
times[5, 2] <- timing
cat(c("Inverse of a 8400X8400 random matrix________________ (sec): ", timing, "\n"))
remove("a", "b")
