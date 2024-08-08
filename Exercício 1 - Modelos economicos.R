install.packages("wooldridge")
library(wooldridge)

dados_c1 <- wage1

?wage1
#####################
#C1
#####################

#i 
min(dados_c1$educ, na.rm = TRUE) #minimo
max(dados_c1$educ, na.rm = TRUE) #máximo
mean(dados_c1$educ, na.rm = TRUE) #Média

#ii
mean(dados_c1$wage, na.rm = TRUE) #media
# R: o salário-hora médio parece baixo

#v
table(dados_c1$female)
# R: mulheres: 252; homens: 274

####################
#C2
####################

dados_c1 <- bwght

?bwght

#i
table(dados_c1$cigs)
1388 - 1176
# R: 1388 mulheres; 212 fumaram durante a gravidez

#ii
mean(dados_c1$cigs, na.rm = TRUE)
#Média de cigarros consumidos por dia: 2.08

#iii
sum(dados_c1$cigs, na.rm = TRUE)/212
# R: media = 13.66, aumentando a média o item ii

#v
mean(dados_c1$faminc, na.rm = TRUE) #renda média
sd(dados_c1$faminc, na.rm = TRUE) #desvio-padrao

####################
#C5
####################

dados_c1 <- fertil2

?fertil2

#i
min(dados_c1$children, na.rm = TRUE) #minimo
max(dados_c1$children, na.rm = TRUE) #máximo
mean(dados_c1$children, na.rm = TRUE) #Média

#ii
table(dados_c1$electric)
611/4361
#14,01%

#iii

install.packages("dplyr")
library(dplyr)

dados_eletricidade <- dados_c1 %>% filter(electric>0)
mean(dados_eletricidade$children, na.rm = TRUE) #media com eletricidade

dados_sem_eletricidade <- dados_c1 %>% filter(electric==0)
mean(dados_sem_eletricidade$children, na.rm = TRUE) #media sem eletricidade


#iv

#sim

######################
#C6
######################

dados_c1 <- countymurders

?countymurders

#i
dados_1996 <- dados_c1 %>% filter(year==1996) #listados no ano de 1996

table(dados_1996$murders) #quantos tiveram 0 assassinados em 1996

(table(dados_1996$execs)/2197)*100 #porcentagem de condenados com 0 execução

#ii
max(dados_1996$murders, na.rm = TRUE) #maior numero de assassinatos
max(dados_1996$execs, na.rm = TRUE) #maior numero de execuções
mean(dados_1996$execs, na.rm = TRUE) #número médio de execuções

#iii

cor(dados_1996$murders, dados_1996$execs) #Coeficiente de correlação


#iv
#Sim, mais execuções causam mais assassinatos. A correlação positiva ocorre pois há pessoas condenadas em que cometeram execuções

##################################
#C7
##################################

dados_c1 <- alcohol

?alcohol

#
table(dados_c1$abuse)/(nrow(dados_c1))*100#Porcentagem de homens que relatou abuso de alcool
i
dados_emprego <- dados_c1 %>% filter(status==3) #Dados emprego
table(dados_emprego$status)/(nrow(dados_c1))*100 #Taxa de emprego

#ii
dados_abuse <- dados_c1 %>% filter(abuse==1) #dados dos homens que abusam de alcool
table(dados_abuse$status)/nrow(dados_abuse)*100 #Taxa de emprego dos homens que abusam de alcool

#iii
dados_noabuse <- dados_c1 %>% filter(abuse==0) #dados dos homens que nao abusam de alcool
(table(dados_noabuse$status))/(nrow(dados_noabuse))*100 #Taxa de emprego dos homens que nao abusam de alcool












