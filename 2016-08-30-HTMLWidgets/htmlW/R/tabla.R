#' <Add Title>
#'
#' <Add Description>
#'
#' @import htmlwidgets
#'
#' @export
tabla <- function(d, n_fil, width = NULL, height = NULL, elementId = NULL) {

  Names = names(d)
  d = rbind(Names,d)


  # forward options using x
  x = list(
    data = as.matrix(d)
   # message = "hola camila",
    #styles = "table {background-color: gray;}"
  )

  # create widget
  htmlwidgets::createWidget(
    name = 'tabla',
    x,
    width = width,
    height = height,
    package = 'htmlW',
    elementId = elementId
  )
}

#' Shiny bindings for tabla
#'
#' Output and render functions for using tabla within Shiny
#' applications and interactive Rmd documents.
#'
#' @param outputId output variable to read from
#' @param width,height Must be a valid CSS unit (like \code{'100\%'},
#'   \code{'400px'}, \code{'auto'}) or a number, which will be coerced to a
#'   string and have \code{'px'} appended.
#' @param expr An expression that generates a tabla
#' @param env The environment in which to evaluate \code{expr}.
#' @param quoted Is \code{expr} a quoted expression (with \code{quote()})? This
#'   is useful if you want to save an expression in a variable.
#'
#' @name tabla-shiny
#'
#' @export
tablaOutput <- function(outputId, width = '100%', height = '400px'){
  htmlwidgets::shinyWidgetOutput(outputId, 'tabla', width, height, package = 'htmlW')
}

#' @rdname tabla-shiny
#' @export
renderTabla <- function(expr, env = parent.frame(), quoted = FALSE) {
  if (!quoted) { expr <- substitute(expr) } # force quoted
  htmlwidgets::shinyRenderWidget(expr, tablaOutput, env, quoted = TRUE)
}
