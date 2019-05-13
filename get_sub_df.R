get_sub_df <- function(df){
    if(sum(df$WD) <= 1){
        return(df)
    }
    subdf <- df[,-c(1, 2, ncol(df)-1, ncol(df))]
    prox <- subdf
    prox$idx <- 1:nrow(df)
    prox$sums <- rowSums(subdf)
    prox <- prox[order(-prox$sums), ]
}