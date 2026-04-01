# AULA 4

# VAMOS BUSCAR DADOS NO BANCO MUNDIAL

# PACOTE DE R: WDI
# WORLD DEVELOPMENT INDICATORS (WDI)

# INSTALAR O PACOTE
#install.packages('WDI')
# CARREGAR O PACOTE (SEMPRE)
library(WDI)

# BUSCAR DADOS

PIBvar <- WDIsearch('GDP')
# CRIAR OBJETO

# PIB EM DÓLARES NORTE-AMERICANOS
 #NY.GDP.MKTP.CD
 #GDP (current US$)

# PIB EM MOEDA LOCAL
# NY.GDP.MKTP.CN
 #GDP (current LCU)

# BAIXAR OS DADOS
# PIB EM US$
bd1 <- WDI(indicator='NY.GDP.MKTP.CD', 
           country=c('BR'))

# PIB EM MOEDA LOCAL
bd2 <- WDI(indicator='NY.GDP.MKTP.CN', 
           country=c('BR'))

# TIRAR NOTAÇÃO CIENTÍFICA
options(scipen = 999)
