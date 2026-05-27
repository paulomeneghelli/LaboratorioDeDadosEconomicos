#install.packages("WDI")  
#install.packages("tidyverse")


library(WDI)
library(dplyr)

VU_PIB <- WDI(  
  country = c("BR", "US"),  
  indicator = "NY.GDP.MKTP.CD",  
  start = 2000,  
  end = 2010  
)

data_info <- WDI_data

data_series <- as.data.frame(data_info$series) %>%
  filter(indicator == "NY.GDP.PCAP.KD")

data_series$description

"O Produto Interno Bruto (PIB) é a renda total obtida por meio da produção de bens e serviços em um território econômico durante um período contábil. 
Ele pode ser medido de três maneiras diferentes: pela abordagem da despesa, pela abordagem da renda ou pela abordagem da produção.
 O indicador principal foi dividido pela população geral para se obter uma estimativa per capita.
 Este indicador é expresso em preços constantes, o que significa que a série foi ajustada para levar em conta as variações de preços ao longo do tempo. O ano de referência para esse ajuste é 2015. Este indicador é expresso em dólares americanos."

VU_POPULACAO <- WDI(  
  country = c("AR", "CL"),  
  indicator = "SP.POP.TOTL",  
  start = 1995,  
  end = 2005  
)
data_info <- WDI_data

data_series <- as.data.frame(data_info$series) %>%
  filter(indicator == "SP.POP.TOTL")

data_series$description

"A população total baseia-se na definição de população de facto, que contabiliza todos os residentes,
independentemente do seu estatuto legal ou cidadania. Os valores apresentados são estimativas de meados do ano."

VU_VIDA <- WDI(  
  country = c("JP", "DE"),  
  indicator = "SP.DYN.LE00.IN",  
  start = 2010,  
  end = 2020  
)

data_info <- WDI_data

data_series <- as.data.frame(data_info$series) %>%
  filter(indicator == "SP.DYN.LE00.IN")

data_series$description

"A expectativa de vida ao nascer indica o número de anos que um recém-nascido viveria se os padrões de
mortalidade vigentes no momento do seu nascimento permanecessem os mesmos ao longo de toda a sua vida."


