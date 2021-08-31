#' Fetch definitions
#'
#' Download TabWIN definitions files from DataSUS.
#'
#' Currently, only SIM, SINASC and SIH are supported.
#'
#'
#' @param information_system Health system abbreviation.
#'
#' @section Warning:
#' A Internet connection is needed to use this function.
#'
#' @examples
#' \dontrun{
#' fetch_definitions(information_system = "SIM")
#' }
fetch_definitions <- function(information_system = c("SIM", "SINASC", "SIH")){

  # Definitions URLs
  definitions_urls <- c(
    "SIM" = "ftp://ftp.datasus.gov.br/dissemin/publicos/SIM/CID10/TAB/OBITOS_CID10_TAB.ZIP",
    "SINASC" = "ftp://ftp.datasus.gov.br/dissemin/publicos/SINASC/1996_/Auxiliar/NASC_NOV_TAB.zip",
    "SIH" = "ftp://ftp.datasus.gov.br/dissemin/publicos/SIHSUS/200801_/Auxiliar/TAB_SIH.zip"
  )

  # Temporary file and dir
  temp_file <- tempfile()
  temp_dir <- tempdir()

  # Download definition file
  tryCatch({
    utils::download.file(url = definitions_urls[information_system], destfile = temp_file, mode = "wb")
  },
  error=function(cond) {
    message(paste("Something went wrong with this URL:", file))
    message("This can be a problem with the Internet or the file does not exist yet.")
  })

  # Unzip definition file
  utils::unzip(zipfile = temp_file, exdir = temp_dir)

  # Returm temp dir with files
  return(temp_dir)
}
