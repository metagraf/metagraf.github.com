---
title: Metagraf AB
author: Thomas Reinholdsson
github: {user: metagraf, repo: metagraf.github.com, branch: "gh-pages"}
framework: bootplus
layout: post
mode: selfcontained
ext_widgets: {rCharts: "libraries/highcharts"}
highlighter: prettify
hitheme: twitter-bootstrap
lead : >
  metagraf
---

# Om oss





Om Metagraf AB.

---
### Exempelgraf

Nedan är ett exempel på graf.


```r
require(rCharts)
a <- Highcharts$new()
a$chart(type = "spline")
a$series(data = c(0, 3, 2, 4, NA), 
  dashStyle = "longdash")
a$series(data = c(NA, 4, 1, 3, 1), 
  dashStyle = "shortdot")
a$print("line")
```


<div id='line' class='rChart highcharts'></div>
<script type='text/javascript'>
    (function($){
        $(function () {
            var chart = new Highcharts.Chart({
 "dom": "line",
"width":    600,
"height":    400,
"credits": {
 "href": null,
"text": null 
},
"title": {
 "text": null 
},
"yAxis": {
 "title": {
 "text": null 
} 
},
"chart": {
 "type": "spline",
"renderTo": "line" 
},
"series": [
 {
 "data": [
      0,
     3,
     2,
     4,
null 
],
"dashStyle": "longdash" 
},
{
 "data": [
 null,
     4,
     1,
     3,
     1 
],
"dashStyle": "shortdot" 
} 
],
"id": "line" 
});
        });
    })(jQuery);
</script>

---

### Contacts

...
