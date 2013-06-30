require(rCharts)

movieTable <- read.table("data/movieTable", header = T)

# Split the list into categories
movieSeries <- lapply(split(movieTable, movieTable$category), function(x) {
    res <- lapply(split(x, rownames(x)), as.list)
    names(res) <- NULL
    return(res)
})

# Create the chart object
a <- rCharts::Highcharts$new()
invisible(sapply(movieSeries, function(x) {
        a$series(data = x, type = "scatter", name = x[[1]]$category)
    }
))

a$chart(backgroundColor = NULL)

a$plotOptions(
  scatter = list(
    cursor = "pointer", 
    point = list(
      events = list(
        click = "#! function() { window.open(this.options.url); } !#")), 
    marker = list(
      symbol = "circle", 
      radius = 5
    )
  )
)

a$xAxis(title = list(text = "Kritikerbetyg"), labels = list(format = "{value} %"))
a$yAxis(title = list(text = "Publikbetyg"), labels = list(format = "{value} %"))

a$tooltip(useHTML = T, formatter = "#! function() { return this.point.name; } !#")

a$colors(
  'rgba(223, 83, 83, .75)', 
  'rgba(60, 179, 113, .75)', 
  'rgba(238, 130, 238, .75)', 
  'rgba(30, 144, 255, .75)', 
  'rgba(139, 139, 131, .75)'
)

a$legend(
#   align = 'right', 
#   verticalAlign = 'middle', 
#   layout = 'vertical', 
  title = list(text = "MPAA-rating")
)

a$title(text = "Topplista DVD-uthyrning")
a$credits(href = "http://developer.rottentomatoes.com/", text = "Källa: Rotten Tomatoes API")
a
