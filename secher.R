secher<-read.table("secher.txt" , header=T)
names(secher)
model1<-lm(bwt~bpd, data=secher)
sum.model1<- summary(model1)
R2<-sum.model1$r.squared
f<-sum.model1$fstatistic
p.value<- pf(f[1],f[2],f[3],lower.tail=F)
output<-sprintf("R2 = %f and p-value= %f", R2, p.value)
cat(output)
intercept<-model1$coefficients[1]
slope<-model1$coefficients[2]
output<-sprintf("slope=%f intercept=%f" , slope, intercept)
cat(output)
png("graph1.png")
plot(bwt~bpd, data=secher)
abline(model1)
dev.off()

model2<-lm(bwt~ad, data=secher)
sum.model2<-summary(model2)
R22<-sum.model2$r.squared
f2<-sum.model2$fstatistic
p.value2<-pf(f2[1],f2[2],f2[3],lower.tail=F)
output2<-sprintf("R2 = %f and p-value= %f", R22, p.value2)
cat(output2)
intercept2<-model2$coefficients[1]
slope2<-model2$coefficients[2]
output2<-sprintf("slope=%f intercept=%f" , slope2, intercept2)
cat(output2)
png("graph2.png")
plot(bwt~ad, data=secher)
abline(model2)
dev.off()