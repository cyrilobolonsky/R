#opening data
data<-read.table("data.csv", header=TRUE, sep=",")
attach(data)

#variables
company <- c("A", "A", "A", "B", "B", "B", "B")
cash_flow <- c(1000, 4000, 550, 1500, 1100, 750, 6000)
year <- c(1, 3, 4, 1, 2, 4, 5)

#dataframe
cash <- data.frame(company, cash_flow, year)
cash

#cbind
apple <- c(109.49, 109.90, 109.11, 109.95, 111.03)
ibm <- c(159.82, 160.02, 159.84, 160.35, 164.79)
cor_matrix <- cor(cbind(apple, ibm))

# Create a list
portfolio <- list(name, apple, ibm, cor_matrix)

str(cash)
summary(cash)
attributes(cash)

attach(cash)

cash$year
cash$cash_flow*2
cash$quarter_cash <- cash$cash_flow*.25
cash$double_year <- cash$year*2

# Delete the company column
cash$company <- NULL

cash[3,2]
cash[5,"year"]

# Call head() for the first 4 rows
head(cash, n = 4)

# Call tail() for the last 3 rows
tail (cash, n = 4)

# column and row names
colnames(cash) <- c("company", "cash_flow", "year")
rownames(cash) <- c("company", "cash_flow", "year")

#subsets
subset(cash, company == 'B')
subset(cash, year == 1)


