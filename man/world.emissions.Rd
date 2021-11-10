\name{world.emissions}
\alias{world.emissions}
\docType{data}
\title{
Greenhouse gas emissions from Our World in Data
}
\description{
A subset of the complete CO\eqn{_2} and Greenhouse Gas Emissions dataset maintained by Our World in Data (\url{https://ourworldindata.org/}) through 2019. The data follow a format of 1 row per ``country'' per year.
}
\usage{data("world.emissions")}
\format{
  A data frame with 23708 observations on the following 15 variables.
  \describe{
    \item{\code{iso_code}}{Three-letter summary code for countries (ISO 3166-1 alpha-3). }
    \item{\code{country}}{A character vector identifying country.}
    \item{\code{year}}{Year data were collected, 1750-2019}
    \item{\code{co2}}{Annual production-based emissions of carbon dioxide (CO\eqn{_2}), measured in million tonnes. This is based on territorial emissions, which do not account for emissions from traded goods.}
    \item{\code{coal_co2}}{Annual production-based emissions of CO\eqn{_2} from coal, measured in million tonnes. }
    \item{\code{flaring_co2}}{Annual production-based emissions of CO\eqn{_2} from flaring, measured in million tonnes. }
    \item{\code{gas_co2}}{Annual production-based emissions of CO\eqn{_2} from gas, measured in million tonnes. }
    \item{\code{oil_co2}}{Annual production-based emissions of CO\eqn{_2} from oil, measured in million tonnes. }
    \item{\code{other_industry_co2}}{Annual production-based emissions of CO\eqn{_2} from other industry sources, measured in million tonnes. Based on territorial emissions,.}
    \item{\code{total_ghg}}{Total greenhouse gas emissions, including land use change and forestry, measured in million tonnes of CO\eqn{_2}-equivalents.}
    \item{\code{methane}}{Total methane emissions, measured in million tonnes of CO\eqn{_2}-equivalents.}
    \item{\code{nitrous_oxide}}{Total nitrous oxide emissions, measured in million tonnes of CO\eqn{_2}-equivalents.}
    \item{\code{primary_energy_consumption}}{Primary energy consumption, measured in terawatt-hours per year.}
    \item{\code{population}}{Population by country, available from 1800 to 2021 based on Gapminder data, HYDE, and UN Population Division (2019) estimates.}
    \item{\code{gdp}}{Gross domestic product measured in international-$ using 2011 prices to adjust for price changes over time (inflation) and price differences between countries. Calculated by multiplying GDP per capita with population.}
        \item{\code{continent}}{Continent.  Caribbean countries are distinguished from other North American countries.  Additionally a level called \code{"Redundant"} is included to parse redundant entries in the \code{country} column, e.g., the ``countries'' \code{Libya} and \code{Africa} contain redundant information.}
}
}
\details{
Thanks to BIOL 6651 students at ISU who annotated these data: Laurel Faurot, Sawyer Finley, Spencer Roop, Therese Balkenbush, Lauren Tucker, Jessica Call and Riley Lanfear. 
}
\source{
\url{https://github.com/owid/co2-data} 
}
\references{
According to Our World in Data (\url{https://ourworldindata.org/}), CO\eqn{_2} data are sourced from the Global Carbon Project (\url{https://www.globalcarbonproject.org}) which releases updates of CO\eqn{_2} emissions data annually. Greenhouse gas emissions (including methane, and nitrous oxide) are sourced from the CAIT Climate Data Explorer (\url{http://cait.wri.org/}), and downloaded from the Climate Watch Portal (\url{https://www.climatewatchdata.org}. Energy consumption data this data are sourced from a combination of two sources The Statistical Review of World Energy 
\url{https://www.bp.com/en/global/corporate/energy-economics/statistical-review-of-world-energy.html} and World Bank Development Indicators 
\url{https://databank.worldbank.org/source/world-development-indicators}.  Although The Statistical Review of World Energy is published annually, it does not provide data for all countries. For countries absent from this dataset, we calculated primary energy by multiplying the World Bank, World Development Indicators metric Energy use per capita by total population figures. The World Bank sources its metric from the International Energy Agency (IEA). Other variables were collected from a variety of sources including the United Nations, Gapminder, and the Maddison Project Database.
}
\examples{
data(world.emissions)
}
\keyword{datasets}

