t <- 0:100 # time
sig2 <- 0.001
## first, simulate a set of random deviates
x <- rnorm(n = length(t) - 1, sd = sqrt(sig2))
## now compute their cumulative sum
x <- c(0, cumsum(x))
plot(t, x, type = "l", ylim = c(-2, 2),xlab="Time (Ma)",ylab="Trait Value (mm)",main ="Brownian motion Simulation")

sig2 <- 0.01
## first, simulate a set of random deviates
x <- rnorm(n = length(t) - 1, sd = sqrt(sig2))
## now compute their cumulative sum
x <- c(0, cumsum(x)) # stores in x the cumulative sum at each time step
plot(t, x, type = "l", ylim = c(-2, 2),xlab="Time (Ma)",ylab="Trait Value (mm)",main ="Brownian motion Simulation")

nsim<-1000
sig2 <- 0.001
X <- matrix(rnorm(n = nsim * (length(t) - 1), sd = sqrt(sig2)), nsim, length(t) - 1)
X <- cbind(rep(0, nsim), t(apply(X, 1, cumsum)))
plot(t, X[1, ], ylim = c(-2, 2), type = "l",,xlab="Time (Ma)",ylab="Trait Value (m m)",main="Brownian motion Simulation")
apply(X[2:nsim, ], 1, function(x, t) lines(t, x), t = t)

sig2<-0.01
X <- matrix(rnorm(n = nsim * (length(t) - 1), sd = sqrt(sig2)), nsim, length(t) -
              1)
X <- cbind(rep(0, nsim), t(apply(X, 1, cumsum)))
plot(t, X[1, ], ylim = c(-2, 2), type = "l",,xlab="Time (Ma)",ylab="Trait Value (m m)",main="Brownian motion Simulation")
apply(X[2:nsim, ], 1, function(x, t) lines(t, x), t = t)
