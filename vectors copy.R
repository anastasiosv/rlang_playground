charlie <- 1:5
charlie


names(charlie) <- c('a','b','c','d','e')
names(charlie)
charlie

charlie['a']

names(charlie)


# naming matrix dimensions 

temp.vec <- rep(c("a","B","zZ"),each=3)
temp.vec


bravo <- matrix(temp.vec, 3, 3)
bravo

rownames(bravo)
rownames(bravo)<- c('How','are','you')

colnames(bravo) <- c('X','Y','Z')
bravo
bravo['are','Y'] <- 0
bravo 

rownames(bravo) <- NULL
bravo
