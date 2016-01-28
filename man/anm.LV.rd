\name{anm.LV}
\alias{anm.LVcomp}
\alias{anm.LVexp}
\alias{anm.LVc.tck}
\alias{anm.LVe.tck}
\title{Animated depictions of Lotka-Volterra competition and exploitation models
}
\description{
Creates animated plots of two famous abundance models from ecology; the Lotka-Volterra competition and exploitation models
}
\usage{
anm.LVcomp(n1, n2, r1, r2, K1, K2, a2.1, a1.2, time = seq(0, 200), ylab = 
"Abundance", xlab = "Time", interval = 0.1, ...)

anm.LVexp(nh, np, rh, con, p, d.p, time = seq(0, 200), ylab = "Abundance", 
xlab = "Time", interval = 0.1, circle = FALSE, ...)

anm.LVc.tck()

anm.LVe.tck()
}

\arguments{
\item{n1}{Initial abundance values for species one.  To be used in the competition function \code{anm.LVcomp}, i.e. \eqn{N_1} in the competition equations below.}
\item{n2}{Initial abundance values for species two in the competition function, i.e. \eqn{N_2} in the competition equations below.}
\item{r1}{Maximum intrinsic rate of increase for species one, i.e. \eqn{r_{max1}}.}
\item{r2}{Maximum intrinsic rate of increase for species two in the competition model \code{anm.LVcomp}, i.e. \eqn{r_{max2}}.}
\item{K1}{Carrying capacity for species one, i.e. \eqn{K_1}.} 
\item{K2}{Carrying capacity for species two, i.e. \eqn{K_2} .}
\item{a2.1}{The interspecific effect of species one on species two, i.e. the term \eqn{\alpha_{21}}.} 
\item{a1.2}{The interspecific effect of species two on species one, i.e. the term \eqn{\alpha_{12}}.} 


\item{nh}{Initial abundance values for the host (prey) species.  To be used in the the exploitation model \code{anm.LVexp}, i.e. the term \eqn{n_h}.}
\item{np}{Initial abundance values for the predator species in the the exploitation model, i.e. the term \eqn{h_p}.}
\item{rh}{The intrinsic rate of increase for the host (prey) species, i.e. the term \eqn{r_h}.}
\item{con}{The conversion rate of prey to predator, i.e. the term \eqn{c}.}
\item{p}{The predation rate, i.e. the term \eqn{p}.}
\item{d.p}{The death rate of predators, i.e. the term \eqn{d_p}.} 


\item{time}{A time sequence for which competition or exploitation is to be evaluated.}
\item{ylab}{\emph{Y}-axis label.}
\item{xlab}{\emph{X}-axis label.}
\item{interval}{Animation speed per frame (in seconds).}
\item{circle}{Logical, if \code{TRUE} a circular representation of the relation of prey and predator numbers is drawn.}
\item{\dots}{Additional arguments from \code{\link{plot}}.}
}

\details{
The Lotka-Volterra competition and exploitation models require simultaneous solutions for two differential equations.  These are solved using the function \code{rk4} from \code{odesolve}.  

The interspecific competition model is based on:

\deqn{\frac{dN_1}{dt}=r_{max1}N_1\frac{K_1-N_1-\alpha_{12}}{K_1},}
\deqn{\frac{dN_2}{dt}=r_{max2}N_2\frac{K_2-N_2-\alpha_{21}}{K_2},}

where \eqn{N_1} is the number of individuals from species one, \eqn{K_1} is the carrying capacity for species one, \eqn{r_{max1}} is the maximum intrinsic rate of increase of species one, and \eqn{\alpha_{12}} is the interspecific competitive effect of species two on species one. 

The exploitation model is based on:  

\deqn{\frac{dN_h}{dt} = r_hN_h-pN_hN_p,}
\deqn{\frac{dN_p}{dt} = cpN_hN_p-d_pN_p,}

where \eqn{N_h} is the number of individuals from the host (prey) species, \eqn{N_p} is the number of individuals from the predator species, \eqn{r_h} is the intrinsic rate of increase for the host (prey) species, \eqn{p} is the rate of predation, \eqn{c} is a conversion factor which describes the rate at which prey are converted to new predators, and \eqn{d_p} is the death rate of the predators.  

The term \eqn{r_hN_h} describes exponential growth for the host (prey) species.  This will be opposed by deaths due to predation, i.e. the term \eqn{pN_hN_p}.  The term \eqn{cpN_hN_p} is the rate at which predators destroy prey. This in turn will be opposed by \eqn{d_pN_p}, i.e. predator deaths.  Loading package \pkg{tcltk} allows one to run the GUIs in \code{anm.LVe.tck} and \code{anm.LVc.tck}.
}

\value{The functions return descriptive animated plots}
\references{
Molles, M. C. (2010) \emph{Ecology, Concepts and Applications, 5th edition}.  McGraw Hill.

Crawley, M. J.  (2007) \emph{The R Book}.  Wiley
}

\author{Ken Aho, based on a concept elucidated by M. Crawley}
\examples{
\dontrun{

#---------------------- Competition ---------------------#
##Species 2 drives species 1 to extinction
anm.LVcomp(n1=150,n2=50,r1=.7,r2=.8,K1=200,K2=1000,a2.1=.5,a1.2=.7,time=seq(0,200))
##Species coexist with numbers below carrying capacities
anm.LVcomp(n1=150,n2=50,r1=.7,r2=.8,K1=750,K2=1000,a2.1=.5,a1.2=.7,time=seq(0,200))

#----------------------Exploitation----------------------#
#Fast cycles
anm.LVexp(nh=300,np=50,rh=.7,con=.4,p=.006,d.p=.2,time=seq(0,200))}
}
                                                                                          
\keyword{graphs}
