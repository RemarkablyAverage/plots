\name{plot_pc_variance}
\alias{plot_pc_variance}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
plot_pc_variance(obj, use_filtered = TRUE, pca_number = NULL, bool = FALSE, PC_relative = NULL, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{
%%     ~~Describe \code{obj} here~~
}
  \item{use_filtered}{
%%     ~~Describe \code{use_filtered} here~~
}
  \item{pca_number}{
%%     ~~Describe \code{pca_number} here~~
}
  \item{bool}{
%%     ~~Describe \code{bool} here~~
}
  \item{PC_relative}{
%%     ~~Describe \code{PC_relative} here~~
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (obj, use_filtered = TRUE, pca_number = NULL, bool = FALSE, 
    PC_relative = NULL, ...) 
{
    mat <- obj
    pca_calc <- prcomp(mat, scale = bool)
    eigenvalues <- (pca_calc$sdev)^2
    var <- eigenvalues * 100/sum(eigenvalues)
    var2 <- eigenvalues * 100/sum(eigenvalues)
    if (!is.null(pca_number)) {
        colsize <- pca_number
        var <- var[1:pca_number]
    }
    else {
        colsize <- 5
        var <- var[1:5]
    }
    pc_asdf <- data.frame(PC_count = 1:colsize, var = var)
    if (!is.null(PC_relative)) {
        pc_asdf <- data.frame(PC_count = 1:length(eigenvalues), 
            var = var2)
        pc_asdf$var <- pc_asdf$var/pc_asdf$var[PC_relative]
        pc_asdf <- pc_asdf[PC_relative:nrow(pc_asdf), ]
        if (!is.null(pca_number) && (PC_relative + pca_number <= 
            length(eigenvalues))) {
            pca_number <- pca_number + 1
            pc_asdf <- pc_asdf[1:pca_number, ]
        }
        else if (PC_relative + 5 <= length(eigenvalues)) {
            pc_asdf <- pc_asdf[1:6, ]
        }
    }
    p <- ggplot(pc_asdf, aes(x = PC_count, y = var)) + geom_bar(stat = "identity")
    p <- p + scale_x_continuous(breaks = 1:length(eigenvalues))
    p <- p + ylab("\% of Variance") + xlab("Principal Components")
    p
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
