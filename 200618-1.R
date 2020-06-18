# PCA (주성분 분석)

# 1. 데이터 생성 ----
library()
View(installed.packages(), "LB")
search()
ls()

library(car)
ls()
rm(K1, K2, K3, K4)
ls()
rm(rr, s_score)
ls()


x1 = c(23, 34, 67, 55, 89, 99, 77, 53, 86, 20)
x2 = c(34, 31, 27, 55, 69, 92, 37, 63, 66, 40)
x3 = c(13, 54, 37, 35, 29, 79, 57, 23, 56, 30)
x4 = c(53, 24, 77, 65, 39, 59, 87, 13, 76, 70)

x1
x2
x3
x4
 
# 2. 행렬 만들기 ----
?cbind()
sw_score = cbind(x1, x2, x3,x4)
ls()
rm(s_score)
s_score
ls()

# 3. 컬럼명 / 로우명 표기 변경 ----

?colnames()
?rownames()

colnames(sw_score) = c("국어", "수학", "영어", "과학")

sw_score

rownames(sw_score) = 1:10

sw_score

# 4. 주성분 분석 ----

?prcomp() 
?summary()
?class()

r2 = prcomp(sw_score) # PCA 실행
class(r2)
r2
summary(r2)


