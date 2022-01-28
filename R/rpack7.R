#' Reminds the user of the birthday of the creator of this package
#' @export
remind_me <- function(){
  return("The birthday of the owner of this package is 26/10.")
}

#'Allows the user of this package to cheat on assignment 3.2.1 for question 1,2,6,16
#'@export
#'@param number numeric variable
cheat<- function(number){
  schiphol <- read.csv("https://raw.githubusercontent.com/hannesrosenbusch/schiphol_class/master/schiphol_data.csv")
  if (number == 1){
    cat("(boxplot(rnorm(n = 100, mean = 3, sd = 1)))")
  } else {
    if (number == 2){
      cat("schiphol <- read.csv(\"https://raw.githubusercontent.com/hannesrosenbusch/schiphol_class/master/schiphol_data.csv\")
        plot(schiphol$DATE, schiphol$TAVG, main = \"Scatterplot\", xlab = \"time\", ylab = \"average temperature\")")
    } else if (number == 6){
      cat("ggplot(data = Orange, aes(x = factor(Tree, levels = c(\"1\", \"2\", \"3\", \"4\", \"5\")), y = Orange$circumference)) +
          stat_summary(fun = \"max\", geom = \"bar\") +
        labs(x = \"Tree\", y = \"max_circumfrence\")
      (ggplot(data = Orange, aes(x = factor(Tree, levels = c(\"1\", \"2\", \"3\", \"4\", \"5\")), y = circumference)) +
             stat_summary(fun = \"max\", geom = \"bar\")+
             labs(x = \"Tree\",y = \"max_circumfrence\")))")
    } else if (number == 16){
      cat("my_matrix <- rbind((1:3), (4:6) * 2, (7:9) * 3)")
    } else
      print("please type a number that is either 1,2,6 or 16")
  }
}
