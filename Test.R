Test <- function() {
        dfActivity <- read.csv("activity.csv") 
        str(dfActivity)
        summary(dfActivity$steps)
        
        library(plyr)
        dfDailySummary <- ddply(dfActivity, c("date"), summarize, 
                                Steps = sum(steps))
        barplot(dfDailySummary$Steps, names.arg = dfDailySummary$date, 
                col = "wheat", xlab="Date", ylab = "Total Steps", 
                main = "Total Steps per Day")
        
        mean(dfDailySummary$Steps, na.rm=T)
        median(dfDailySummary$Steps, na.rm=T)
}