rankindex.new<-function (grad, veg, indices = c("matching", "rogers", "jaccard.pa", "sorenson", "kulkczynski.pa", "ochiai", "gower", "steinhaus", "kulkczynski.q", "jaccard.q", "euclidean", 
"rel.euclidean", "manhattan", "czekanowski", "whittaker", "canberra", "chi.metric","chi.dist","morisita", "morisita.horn", "minkowski", "mountford", "raup.crick",
"binomial", "chao"), stepacross = FALSE, method = "pearson", ...) 
{
    grad <- as.data.frame(grad)
    if (any(sapply(grad, is.factor))) {
        require(cluster) || stop("factors in 'grad' need package 'cluster'")
        message("'grad' included factors: used cluster:::daisy")
        span <- daisy(grad)
    }
    else {
        span <- get.dist(grad, "euclidean")
    }
    veg <- as.matrix(veg)
    res <- numeric(length(indices))
    names(res) <- indices
    for (i in indices) {
        y <- get.dist(veg, i)
        if (stepacross) {
            is.na(y) <- no.shared(veg)
            y <- stepacross(y, trace = FALSE, toolong = -1, ...)
        }
        res[i] <- cor(span, y, method = method)
    }
    res<-sort(res)
barplot(res,cex.names=.75,las=2,ylab=expression(paste("Correlation (",r[s],")")),cex.axis=.75)
res
}
