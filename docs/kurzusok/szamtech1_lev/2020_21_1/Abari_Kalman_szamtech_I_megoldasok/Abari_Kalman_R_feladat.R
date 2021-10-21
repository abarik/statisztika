# Az R beadandó házi feladat elkészítése
# Abari Kálmán
# 2019.10.19

# Beolvasás -------------------------------------
metacritic <- read.table(file = "adatok/metacritic_games.csv", sep=",", dec=".", header = T, comment.char = "", quote = "\"")

# Sorok és oszlopok száma -----------------------
str(metacritic)
dim(metacritic)  

# Statisztikai mutatók kiírása az adatbázisra ---

# install.packages("psych")
# install.packages("DescTools")
library(psych)
library(DescTools)
options(scipen = 8)
describe(metacritic)
Desc(metacritic)

# Egy numerikus oszlopot ------------------------
describe(metacritic$user_score)
Desc(metacritic$user_score)


# Egy kategorikus oszlop ------------------------
Desc(metacritic$platform)

# Két színes ábra -------------------------------
hist(metacritic$user_score, col=rainbow(30))
boxplot(user_score~metacritic$platform, data=metacritic, col=topo.colors(7))

