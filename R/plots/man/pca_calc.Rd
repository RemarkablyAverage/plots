\name{pca_calc}
\alias{pca_calc}
\docType{data}
\title{
%%   ~~ data name/kind ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of the dataset. ~~
}
\usage{data("pca_calc")}
\format{
  The format is:
List of 5
 $ sdev    : num [1:11] 136.533 38.148 3.071 1.307 0.906 ...
 $ rotation: num [1:11, 1:11] -0.03812 0.01204 0.89957 0.43478 -0.00266 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:11] "mpg" "cyl" "disp" "hp" ...
  .. ..$ : chr [1:11] "PC1" "PC2" "PC3" "PC4" ...
 $ center  : Named num [1:11] 20.09 6.19 230.72 146.69 3.6 ...
  ..- attr(*, "names")= chr [1:11] "mpg" "cyl" "disp" "hp" ...
 $ scale   : logi FALSE
 $ x       : num [1:32, 1:11] -79.6 -79.6 -133.89 8.52 128.69 ...
  ..- attr(*, "dimnames")=List of 2
  .. ..$ : chr [1:32] "Mazda RX4" "Mazda RX4 Wag" "Datsun 710" "Hornet 4 Drive" ...
  .. ..$ : chr [1:11] "PC1" "PC2" "PC3" "PC4" ...
 - attr(*, "class")= chr "prcomp"
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
data(pca_calc)
## maybe str(pca_calc) ; plot(pca_calc) ...
}
\keyword{datasets}
