% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/kaya.R
\name{get_kaya_data}
\alias{get_kaya_data}
\title{Get Kaya data for a country or region}
\usage{
get_kaya_data(region_name, gdp = c("MER", "PPP"), quiet = FALSE,
  region_code = NULL)
}
\arguments{
\item{region_name}{The name of a country or region to look up}

\item{gdp}{Use market exchange rates (`MER`) or purchasing power
parity (`PPP`). Default is `MER`.}

\item{quiet}{Suppress warnings if there is no such country or region.}

\item{region_code}{Optional three-letter country or region code to look up
instead of the `region_name`}
}
\value{
a tibble of Kaya identity data for the country or region:
\describe{
  \item{region}{The name of the country or region}
  \item{year}{The year}
  \item{P}{Population, in billions}
  \item{G}{Gross domestic product, in trillions of constant 2010 U.S.
           dollars.}
  \item{E}{Total primary energy consumption, in quads}
  \item{F}{CO2 emissions from fossil fuel consumption, in millions of metric
           tons}
  \item{g}{Per-capita GDP, in thousands of dollars per
           person.}
  \item{e}{Energy intensity of the economy, in quads per trillion dollars.}
  \item{f}{Emissions intensity of the energy supply, in million metric tons
           per quad.}
  \item{ef}{Emissions intensity of the economy, in metric tons per
            million dollars of GDP.}
}
}
\description{
Get Kaya data for a country or region
}
\details{
Units for G, g, e, and ef depend on whether the data is requested
         in MER or PPP dollars: For MER, dollars are constant 2010 U.S.
         dollars. For PPP, dollars are constant 2011 international dollars.

         P and MER values for GDP and related quantities are available from
         1960 onward.

         PPP values for GDP and related quantities are only available from
         1990 onward.

         Energy-related values (E, F, and derived quantities) are
         available from 1965 onward.

         Note that emissions (F, f, and ef) use millions of metric tons of
         carbon dioxide, not carbon.
}
\examples{
get_kaya_data("Brazil")
get_kaya_data("United Kingdom", "PPP")
get_kaya_data(region_name = "United States")
get_kaya_data(region_code = "MYS")
}
