#databse.r

require("RPostgreSQL")

#* @post /load
loadData <- function(){
drv <- dbDriver("PostgreSQL")

con <- dbConnect(drv, dbname = "postgres",
			host = "postgres", port = 5432,
			user = "postgres", password = "password")

df_postgres <- dbGetQuery(con, "select * from sanitas.int_table;")
}

