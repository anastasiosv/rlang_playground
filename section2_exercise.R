library(ggplot2)

?ggplot()


qplot(data=diamonds, carat, price, colour=clarity, facets=.~clarity)

# financial statement analysis 
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)



# profit for each month
profit_per_month <- revenue - expenses 
# profit after tax for each month (-30%)
profit_after_tax <- profit_per_month * 0.7
# profit margin for each month - equals to profit after tax divided by revenue
profit_margin <- profit_after_tax / revenue
# good months - where profit after tax was > the mean for the year
for(i in profit_after_tax){
  
}
good_months <- profit_after_tax[profit_after_tax>mean(profit_after_tax)]
gm <- profit_after_tax>mean(profit_after_tax)
gm
# bad months - where profit after tax was < the mean for the year
bad_months <- profit_after_tax[profit_after_tax<mean(profit_after_tax)]
bm <- profit_after_tax<mean(profit_after_tax)
bm
# best month - where profit after was the max 
best_month <- profit_after_tax[profit_after_tax==max(profit_after_tax)]
# worst month - where profit after was the min 
worst_month <- profit_after_tax[profit_after_tax==min(profit_after_tax)]


profit_per_month
profit_after_tax 
profit_margin
good_months 
bad_months
best_month
worst_month










