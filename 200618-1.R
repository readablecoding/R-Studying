# PCA (�ּ��� �м�)

# 1. ������ ���� ----
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
 
# 2. ��� ����� ----
?cbind()
sw_score = cbind(x1, x2, x3,x4)
ls()
rm(s_score)
s_score
ls()

# 3. �÷��� / �ο�� ǥ�� ���� ----

?colnames()
?rownames()

colnames(sw_score) = c("����", "����", "����", "����")

sw_score

rownames(sw_score) = 1:10

sw_score

# 4. �ּ��� �м� ----

?prcomp() 
?summary()
?class()

r2 = prcomp(sw_score) # PCA ����
class(r2)
r2
summary(r2)

