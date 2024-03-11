---
tags:
  - source
  - topic/data/visualization
alias:  "Making Excellent Visualizations"
---
# Making Excellent Visualizations
[[Mike Mahoney]] wrote this article for [[mm218.dev]].

```bibtex
@article{2020mahoney_making,
  title = {Making Excellent Visualizations},
  author = {Mahoney, Mike},
  publisher = {mm218.dev}
  url = {https://www.mm218.dev/posts/2020/04/making-excellent-viz/},
  year = {2020},
  month = apr
}
```
> [!summary] Summary
> This is the third and final part of a series on data visualization. This article discusses the problems of overplotting and visual clutter. Solutions include using summaries of abundant data, transparency, and faceting.

## Notes
> Unfortunately, it seems like 54,000 points is a few too many for this plot to do us much good! This is a clear case of what’s called overplotting – we simply have too much data on a single graph.

[[Overplotting is a situation where there are too much data represented which causes elements to overlap and become unreadable]]

> we could decide simply that we want to refactor our chart, and instead show how a metric – such as average sale price – changes at different carats, rather than how our data is distributed

[[Plot data that is summarized by useful metrics to avoid the overplotting problem]]

> The second solution solves this problem much more effectively – make all your points semi-transparent

[[Make data geometries semi-transparent to lessen the overplotting problem]]

> We can also see some dark stripes at “round-number” values for carat – that indicates to me that our data has some integrity issues, if appraisers are more likely to give a stone a rounded number.

[[The pooling of data points around specific numbers might suggest data integrity issues]]

> the sheer number of points drowns out most of the variance in color and shape on the graphic. In this case, our best option may be to turn to option number three and facet our plots – that is, to split our one large plot into several small multiples

[[Splitting data visualizations into separate plots along a categorical variable is called faceting]]

[[Faceting plots avoids the overplotting problem]]

> one major drawback of facet charts is that they can make comparisons much harder – if, in our line chart, it’s more important to know that most clarities are similar in price at 2 carats than it is to know how the price for each clarity changes with carat, then the first chart is likely the more effective option. In those cases, however, it’s worth reassessing how many lines you actually need on your graph – if you only care about a few clarities, then only include those lines, and if you only care about a narrow band of prices or carats, window your data so that’s all you show. The goal is to make making comparisons easy, with the understanding that some comparisons are more important than others

[[Faceting can make it difficult to compare the values of faceted groups]]

> the distracting elements – the colored background and grid lines – and changed the other elements to make the overall graphic more effective. The objective is to have no extraneous element on the graph, so that it might be as expressive and effective as possible.

> Those extraneous elements are known as _chartjunk_. You see this a lot with graphs made in Excel – they’ll have dark backgrounds, dark lines, special shading effects or gradients that don’t encode information, or – worst of all – those “3D” bar/line/pie charts, because these things can be added with a single click. However, they tend to make your graphics less effective as they force the user to spend more time separating data from ornamentation.

[[Chartjunk is extra decoration on a chart that does not communicate information about the data]]