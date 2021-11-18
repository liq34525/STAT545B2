#' @title calculate Average By Group
#'
#' @description
#' Group the data using the parameter "groupBy" first,
#' then calculate the average of the parameter "calculateAve" for each groups.
#' The  parameter "calculateAve" should be a numeric column.
#' The first argument should be a data frame,
#' otherwise, the function return 'this function need a data frame as the first argument'.
#'
#' @param data data frame, the data we are working on
#' @param groupBy the variable we are using to group by
#' @param calculateAve the variable we want to get the mean
#' @param na.rm remove NA value or not, default is TRUE
#' @return return the average for each group
#'
#' @export
#'
#' @import dplyr
#' @importFrom magrittr %>%
#'
#' @examples
#' average(palmerpenguins::penguins,"year",body_mass_g, TRUE)
#' average(palmerpenguins::penguins,c("year","island"),body_mass_g, TRUE)
#'
#' \dontrun{
#' average(palmerpenguins::penguins,"island",species,TRUE)
#' }
#'
#'
average <- function(data,groupBy,calculateAve, na.rm = TRUE){
  if(!is.data.frame(data))
    return('this function need a data frame as the first argument')

  calculate <- deparse(substitute(calculateAve))
  if(!is.numeric(data[[calculate]]))
    return('You can only calculate the average of a numeric column')

  data %>%
    group_by(data[groupBy]) %>%
    summarise(mean = mean({{calculateAve}}, na.rm = na.rm))
}
