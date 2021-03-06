# Rounddf function for export tables

rounddf <- function(x, digits = rep(2, ncol(x))) {
  if (length(digits) == 1) digits = rep(digits, ncol(x))
  for(i in 1:ncol(x)) if(class(x[, i])[1] == 'numeric') x[, i] <- round(x[, i], digits[i])
  return(x)
}
