\name{p}
\alias{p}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("p")}
\format{
  The format is:
List of 9
 $ data       :'data.frame':	4 obs. of  2 variables:
  ..$ PC_count: int [1:4] 2 3 4 5
  ..$ var     : num [1:4] 1 0.006481 0.001173 0.000565
 $ layers     :List of 1
  ..$ :Classes 'proto', 'environment' <environment: 0x00000000130e9480> 
 $ scales     :Reference class 'Scales' [package "ggplot2"] with 1 field
  ..$ scales:List of 1
  .. ..$ :List of 17
  .. .. ..$ call        : language continuous_scale(aesthetics = c("x", "xmin", "xmax", "xend", "xintercept"),      scale_name = "position_c", palette = identity, breaks = ..1, expand = expand,  ...
  .. .. ..$ aesthetics  : chr [1:5] "x" "xmin" "xmax" "xend" ...
  .. .. ..$ scale_name  : chr "position_c"
  .. .. ..$ palette     :function (x)  
  .. .. ..$ range       :Reference class 'Continuous' [package "scales"] with 1 field
  .. .. .. ..$ range: NULL
  .. .. .. ..and 17 methods, of which 3 are  possibly relevant:
  .. .. .. ..  initialize, reset, train
  .. .. ..$ limits      : NULL
  .. .. ..$ trans       :List of 6
  .. .. .. ..$ name     : chr "identity"
  .. .. .. ..$ transform:function (x)  
  .. .. .. ..$ inverse  :function (x)  
  .. .. .. ..$ breaks   :function (x)  
  .. .. .. ..$ format   :function (x)  
  .. .. .. ..$ domain   : num [1:2] -Inf Inf
  .. .. .. ..- attr(*, "class")= chr "trans"
  .. .. ..$ na.value    : num NA
  .. .. ..$ expand      : list()
  .. .. .. ..- attr(*, "class")= chr "waiver"
  .. .. ..$ rescaler    :function (x, to = c(0, 1), from = range(x, na.rm = TRUE, finite = TRUE))  
  .. .. ..$ oob         :function (x, range = c(0, 1), only.finite = TRUE)  
  .. .. ..$ name        : NULL
  .. .. ..$ breaks      : int [1:11] 1 2 3 4 5 6 7 8 9 10 ...
  .. .. ..$ minor_breaks: list()
  .. .. .. ..- attr(*, "class")= chr "waiver"
  .. .. ..$ labels      : list()
  .. .. .. ..- attr(*, "class")= chr "waiver"
  .. .. ..$ legend      : NULL
  .. .. ..$ guide       : chr "none"
  .. .. ..- attr(*, "class")= chr [1:3] "position_c" "continuous" "scale"
  ..and 23 methods, of which 9 are  possibly relevant:
  ..  add, clone, find, get_scales, has_scale, initialize, input, n,
  ..  non_position_scales
 $ mapping    :List of 2
  ..$ x: symbol PC_count
  ..$ y: symbol var
 $ theme      : list()
 $ coordinates:List of 1
  ..$ limits:List of 2
  .. ..$ x: NULL
  .. ..$ y: NULL
  ..- attr(*, "class")= chr [1:2] "cartesian" "coord"
 $ facet      :List of 1
  ..$ shrink: logi TRUE
  ..- attr(*, "class")= chr [1:2] "null" "facet"
 $ plot_env   :<environment: R_GlobalEnv> 
 $ labels     :List of 2
  ..$ x: chr "Principal Components"
  ..$ y: chr "% of Variance"
 - attr(*, "class")= chr [1:2] "gg" "ggplot"
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(p)
## maybe str(p) ; plot(p) ...
}
\keyword{datasets}
