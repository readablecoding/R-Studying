# ����ȭ

# 1. data ���� ----

data() #�� ��Ű�� dataset ����Ʈ Ȯ��
data(iris) # Ư�� dataset �ε�
ls() #����� ���� ����Ʈ Ȯ��

iris #console â�� ����
View(iris) #���ڰ� ��� ���� ǥ��

swdo_iris <- iris
swdo_iris

head(swdo_iris) #dataset �Ϻθ� select(default: 6��)
head(swdo_iris, 10)

# 2. �÷� ���� ----
colnames(swdo_iris) #�÷��� Ȯ��

swdo_iris$Species = NULL #�÷� ����
#$�� ���� �÷��� �� �ϳ� ���� ����

colnames(swdo_iris) #�÷��� Ȯ��

swdo_iris
View(swdo_iris)
View(swdo_iris$Sepal.Length) #Ư��Į�� ��ȸ
swdo_iris[1] #1��° Į��
swdo_iris[2]
swdo_iris[1:3] #Į�� 3�� ������ �ϱ�
swdo_iris[c(1,3)] #Ư�� Į�� ����
swdo_iris[c("Sepal.Length", "Petal.Length")] #Ư�� Į�� ����

# 3. kmeans(), ����ȭ ----

?kmeans()
km = kmeans(swdo_iris, 2) #kmeans �Լ� ���
class(km)
km

summary(km) #�⺻ ������� ����

# 4. ���� ----
?table()

View(iris$Species) #150�� �����Ϳ� ���� ����
View(km$cluster) #150���� ���� ������ �׷�

table(iris$Species, km$cluster)

# 5. plot

?plot()
plot(swdo_iris[c(1,2,3, 4)], col=km$cluster)