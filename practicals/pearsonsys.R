install.packages("PearsonDS")

#Q3
result <- log(4)
formatted_result <- sprintf("%.15f", result)
print(formatted_result)

#Q4
intersect(seq(4, 28, by = 7), seq(3, 31, by = 2))

library(PearsonDS)
x <- seq(-1, 6, by=1e-3)
y0 <- dpearson0(x, 2, 1/2)
y1 <- dpearsonI(x, 1.5, 2, 0, 2)
y2 <- dpearsonII(x, 2, 0, 1)
y3 <- dpearsonIII(x, 3, 0, 1/2)
y4 <- dpearsonIV(x, 2.5, 1/3, 1, 2/3)
y5 <- dpearsonV(x, 2.5, -1, 1)
y6 <- dpearsonVI(x, 1/2, 2/3, 2, 1)
y7 <- dpearsonVII(x, 3, 4, 1/2)
plot(x, y0, type="l", ylim=range(y0, y1, y2, y3, y4, y5, y7),ylab="f(x)", main="The Pearson distribution system")
lines(x[y1 != 0], y1[y1 != 0], lty=2)
lines(x[y2 != 0], y2[y2 != 0], lty=3)
lines(x[y3 != 0], y3[y3 != 0], lty=4)
lines(x, y4, col="grey")
lines(x, y5, col="grey", lty=2)
lines(x[y6 != 0], y6[y6 != 0], col="grey", lty=3)
lines(x[y7 != 0], y7[y7 != 0], col="grey", lty=4)
legend("topright", leg=paste("Pearson", 0:7), lty=1:4,col=c(rep("black", 4), rep("grey", 4)))
