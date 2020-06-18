# 군집화

# 1. data 생성 ----

data() #전 패키지 dataset 리스트 확인
data(iris) # 특정 dataset 로딩
ls() #선언된 변수 리스트 확인

iris #console 창에 띄우기
View(iris) #예쁘게 행과 열로 표현

swdo_iris <- iris
swdo_iris

head(swdo_iris) #dataset 일부만 select(default: 6행)
head(swdo_iris, 10)

# 2. 컬럼 조정 ----
colnames(swdo_iris) #컬럼명 확인

swdo_iris$Species = NULL #컬럼 삭제
#$를 통해 컬럼명 중 하나 선택 가능

colnames(swdo_iris) #컬럼명 확인

swdo_iris
View(swdo_iris)
View(swdo_iris$Sepal.Length) #특정칼럼 조회
swdo_iris[1] #1번째 칼럼
swdo_iris[2]
swdo_iris[1:3] #칼럼 3개 나오게 하기
swdo_iris[c(1,3)] #특정 칼럼 선택
swdo_iris[c("Sepal.Length", "Petal.Length")] #특정 칼럼 선택

# 3. kmeans(), 군집화 ----

?kmeans()
km = kmeans(swdo_iris, 2) #kmeans 함수 사용
class(km)
km

summary(km) #기본 통계정보 제공

# 4. 검증 ----
?table()

View(iris$Species) #150개 데이터에 대한 종류
View(km$cluster) #150개에 대한 데이터 그룹

table(iris$Species, km$cluster)

# 5. plot

?plot()
plot(swdo_iris[c(1,2,3, 4)], col=km$cluster)
