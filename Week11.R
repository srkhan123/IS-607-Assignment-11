
#install.packages("RJSONIO")

library(RCurl)
library(RJSONIO)
library(plyr)


url = "http://api.nytimes.com/svc/topstories/v1/home.json?api-key=f78e800d9099bf98755938ae6b5a01c4:13:71825362"

list1 <- fromJSON(url)
list1

class(list1) # list1 is a list

list1$results

unList1 <- unlist(list1$results)
df <- as.data.frame(unList1)
df

class(df)
View(df)
