library(rvest)
library(dplyr)

voces_ausencia <- read_html("https://fridaguerrera.blogspot.com/?view=classic") %>%
  html_nodes("p @MsoNormal span") %>%
  html_text()

voces_ausencia

class(voces_ausencia)
voces_ausencia

voces_ausencia <- read_html("https://fridaguerrera.blogspot.com/?view=timeslide") %>%
  html_nodes(xpath = "//*[contains(concat( " ", @class, " " ), concat( " ", "entry-summary", " " ))] | //*[contains(concat( " ", @class, " " ), concat( " ", "attribution", " " ))]") %>%
  html_text()


ejemplo <- read_html("https://news.un.org/es/story/2021/02/1487402") %>%
  html_nodes("p") %>%
  html_text()

ejemplo
----------------------------------------------------------------------------------------


