matplot(FieldGoals)

# transposing 
FieldGoals_trans <- t(FieldGoals/Games)

matplot(FieldGoals_trans, type='b', pch=15:18, col=c(1:4,6))
legend("bottomright",inset=0.1, legend=Players,col=c(1:4,6),pch=15:18,horiz=F)

accuracy <- t(FieldGoals/FieldGoalAttempts)

matplot(accuracy, type='b', pch=15:18, col=c(1:4,6))
legend("bottomleft",inset=0.1, legend=Players,col=c(1:4,6),pch=15:18,horiz=F)
