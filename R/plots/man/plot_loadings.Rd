\name{plot_loadings}
\alias{plot_loadings}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
plot_loadings(obj, use_filtered = TRUE, PC = NULL, gene_count = NULL, bool = FALSE, ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{obj}{
%%     ~~Describe \code{obj} here~~
}
  \item{use_filtered}{
%%     ~~Describe \code{use_filtered} here~~
}
  \item{PC}{
%%     ~~Describe \code{PC} here~~
}
  \item{gene_count}{
%%     ~~Describe \code{gene_count} here~~
}
  \item{bool}{
%%     ~~Describe \code{bool} here~~
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
function (obj, use_filtered = TRUE, PC = NULL, gene_count = NULL, 
    bool = FALSE, ...) 
{
    mat <- obj
    pca_calc <- prcomp(mat, scale = bool)
    if (!is.null(PC)) {
        loadings <- pca_calc$rotation[, PC]
    }
    else {
        loadings <- pca_calc$rotation[, 1]
    }
    if (!is.null(gene_count)) {
        loadings <- loadings[1:gene_count]
    }
    else {
        loadings <- loadings[1:5]
    }
    loadings <- sort(loadings, decreasing = TRUE)
    names <- names(loadings)
    dat <- data.frame(samples = names, loadings = loadings)
    dat$samples <- factor(dat$samples, levels = unique(dat$samples))
    p <- ggplot(dat, aes(x = samples, y = loadings))
    p <- p + geom_point(shape = 1)
    p <- p + xlab("Samples") + ylab("Contribution")
    if (!is.null(PC)) {
        p <- p + ggtitle(PC)
    }
    else {
        p <- p + ggtitle("PC1")
    }
    p
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
