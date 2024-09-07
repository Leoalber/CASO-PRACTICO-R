library(tidyverse)
df <- read.csv("Titanicv2.csv")
str(df)
summary(df)
colSums(is.na(df))
df %>%
  ggplot(aes(x = Age)) +
  geom_histogram()
library(dplyr)
df %>%
  select(Name, Age, Fare)
df %>%
  filter(Pclass == 1)
df %>%
  filter(Age > 18)
df %>%
  filter(Age < 18)
ggplot(df, aes(x = factor(Pclass), y = Fare)) +
  geom_boxplot() +
  labs(title = "Boxplot de Fare por Clase de Pasajero",
       x = "Clase de Pasajero",
       y = "Tarifa (Fare)") +
  theme_minimal()

df %>%
  ggplot(aes(x = as.factor(Pclass), fill = as.factor(Survived))) +
  geom_bar(position = "fill") +
  labs(x = "Clase", y = "Proporción", fill = "Sobrevivió")

