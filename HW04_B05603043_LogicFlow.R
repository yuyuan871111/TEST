# Name：楊淯元
# ID：B05603043
# Subject：Grading, Number vs Word
# Date: 3/23, 2017

score <- c( 92, 74, 85, 60, 45, 83, 66, 78, 95, 55 )      # input score data
#score <- -11:110                                          # input score data
score                                                     # show score data
N <- length( score )                                      # calcualte the total number of scores

# use IF
gradeIF <- rep( 0, times = N )

for (k in 1:N)
{
  if( score[ k ]  >=  0 & score[ k ] <= 59 )   { gradeIF[ k ] <- "bad" }           # determine the socre range  0 - 59
  if( score[ k ]  >= 60 & score[ k ] <= 74 )   { gradeIF[ k ] <- "ok"  }           # determine the socre range 60 - 74
  if( score[ k ]  >= 75 & score[ k ] <= 89 )   { gradeIF[ k ] <- "good"}           # determine the socre range 75 - 89
  if( score[ k ]  >= 90 & score[ k ] <=100 )   { gradeIF[ k ] <- "excellent" }     # determine the socre range 90 - 100
  if( score[ k ]  <   0 )   { gradeIF[ k ] <- "ERROR" }                            # determine the socre below  0
  if( score[ k ]  > 100 )   { gradeIF[ k ] <- "WARNING" }                          # determine the socre over 100
}

gradeIF


# use which
gradeWHICH <- rep( 0, times = N )

set.bad <- which( ( score >= 0 ) & ( score <= 59 ) )          # determine the socre range  0 - 59
gradeWHICH[ set.bad ] <- "bad"                                # input the verbal grade "bad"

set.ok <- which( ( score >= 60 ) & ( score <= 74 ) )          # determine the socre range 60 - 74
gradeWHICH[ set.ok ] <- "ok"                                  # input the verbal grade "ok" 

set.good <- which( ( score >= 75 ) & ( score <= 89 ) )        # determine the socre range 60 - 75
gradeWHICH[ set.good ] <- "good"                              # input the verbal grade "good"
  
set.excellent <- which( ( score >= 90 ) & ( score <= 100 ) )  # determine the score range 90 - 100
gradeWHICH[ set.excellent ] <-  "excellent"                   # input the verbal grade "excellent"
  
set.error1 <- which( score < 0 )                              # determine the score below 0
gradeWHICH[ set.error1 ] <- "ERROR"                           # input the verbal grade "ERROR"

set.error2 <- which( score > 100 )                            # determine the score over 100
gradeWHICH[ set.error2 ] <- "WARNING"                         # input the verbal grade "WARNING"
  
gradeWHICH


# use switch
gradeSWITCH <- rep( 0, times = N )
scorelevel <- floor( ( score )/15 ) + 1  # determine the interval and divide into different groups

for (k in 1:N)
{
  if( score[ k ] >= 0 & score[ k ]  <= 100 ){
    gradeSWITCH[ k ] <- switch( scorelevel[ k ], "bad", "bad", "bad", "bad", "ok", "good",  "excellent")
    # use switch to find the correct score level and add the verbal grade 
  }
  if( score[ k ] < 0  ){  
    gradeSWITCH[ k ] <- c("ERROR")
    # use switch to find the correct score level and add the verbal grade 
  }
  if( score[ k ]  > 100 ){
    gradeSWITCH[ k ] <- c("WARNING")
    # use switch to find the correct score level and add the verbal grade
  }
}
gradeSWITCH

# comparison
cbind( gradeIF, gradeWHICH, gradeSWITCH )     # bind the results of three different methods
gradeWHICH  == gradeSWITCH                    # test if "gradeWHICH" is equal to "gradeSWITCH"
gradeWHICH  == gradeIF                        # test if "gradeWHICH" is equal to "gradeIF"
gradeIF     == gradeSWITCH                    # test if "gradeIF" is equal to "gradeSWITCH"
