#' @importFrom xml2 read_xml
#' @importFrom xml2 xml_find_all
#' @importFrom xml2 xml_attr
#' @importFrom purrr map_df
#' @importFrom tibble tibble
#' @importFrom magrittr "%>%"
#' @title Downloads types of authors for bills
#' @return A tibble, of classes \code{tbl_df}, \code{tbl} and \code{data.frame}.
#' @note Requesting data from a long period of time with \code{details = TRUE} will
#' return a large object in terms of memory. It will also be rather unwieldy, with
#' many columns.
#' @author Robert Myles McDonnell, Guilherme Jardim Duarte & Danilo Freire.
#' @examples
#' cam_typeauthors_bills()
#' @export


cam_typeauthors_bills <- function() {
  " This function lists types of author for bills"
  link <- "http://www.camara.leg.br/SitCamaraWS/Proposicoes.asmx/ListarTiposAutores"
  data <- read_xml(link) %>%
    xml_find_all('TipoAutor') %>%
    map_df(extract_types)
  return(data)
}


extract_types <- function(xml) {
  return(
    tibble(
      id_type = xml_attr(xml, "id"),
      desc_type = xml_attr(xml, "descricao" )
    )
  )
}


