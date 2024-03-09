---
tags: "source"
alias: "Efficient data visualization with faded raincloud plots"
draft: false
---
# Efficient data visualization with faded raincloud plots

https://dallasnova.rbind.io/post/efficient-data-visualization-with-faded-raincloud-plots-delete-boxplot/

[[Dallas Novakowski]] wrote this article for [[https://dallasnova.rbind.io/]].
> [!summary] Summary
> %% Write a one-sentence summary of the source. %%

## Notes
> Raincloud plots are a recent addition to the collective data science toolbox, allowing for raw data, density distributions, and boxplots to be presented simultaneously.

> I find that in a raincloud plot, a density distribution and boxplot are a bit redundant; both capture the variable’s locality, spread, and skewness.

> Combining the boxplot and density objects might help improve the plot’s efficiency, presenting equivalent information with fewer objects.

> I often need to add extra elements like the mean and confidence intervals.

 Novakowski adds the mean and confidence intervals to his distribution visualizations.

> While these custom rainclouds capture the core features of the raincloud plot, the method is generally better-implemented in packages like {`RainCloudPlots`}.

 The RainCloudPlots package supposedly has a better implementation of raincloud plots than the manual one I've been doing.

> The fading is accomplished through the `fill_ramp` aesthetic, in combination with the .width attribute, which specifies the quantiles you want to shade. I personally like the `c(.50, .95, 1)` setting, which gives an intuitive picture of the inner> and outer> halves, while showing outliers beyond the 95th percentile, but you can change the quantiles to suit your needs. The shading defaults to white, but you can also modify it to ramp towards other colors.

> An alternative to jittering your raw data is the `ggdist::stat_dots` element. To address overplotting, `stat_dots` opts for stacking and resizing points. The resulting raw data looks more “drippy” than “rainy,” but I think the stacking ultimately makes the raw data more useful when trying to identify over/under-populated bins (e.g., many respondents answering at the min, median, or max points of a self-report scale).

> `stat_dots` can be used with large samples as well. You can adjust the quantiles argument to change the granularity of the points; size of points change automatically. Generally, more quantiles will give your raw data fewer, smaller bins, looking more like a noisy histogram. Fewer quantiles will aggregate more data points into fewer bins, and look like a smooth, ‘dotty’ reflection of your density curve.

 I had a problem with making my own raincloud plots where the dot plot was taking too much time to render and looked messy; it looks like if I use the `quantiles` argument of `stat_dots`, I can avoid that and not have to down-sample the data with `sample_frac`.

> Note how the boxes and 50% region are consistent, but the whiskers and 95% shading do not always line up, reflecting different thresholds for identifying outliers. Whereas quantiles are at fixed percentiles, boxplots compute whisker length as $Q1 > 1.5*IQR$ and $Q3 + 1.5*IQR$ (IQR: Inter Quartile Range).

```r
# dot-whisker for means

stat_summary(
	fun.data = "mean_cl_normal",
	show.legend = FALSE,
	size = 0.4,
    position = position_dodge2nudge(x=.06, width = .8)
)
```

 This is the code for the mean and confidence interval layer; I should get to know `stat_summary` and `position` arguments better.

> Seeing the two “whole picture” options side-by-side, the fadecloud does seem to be an improvement over the traditional raincloud. Combining the density slab and boxplot gives a similar amount of information without having to look at another object. Likewise, the stacking of data points makes it easier to identify small-scale concentrations of data.

 Novakowski's fadeclouds are an improvement on rainclouds that combine the redundant density and box plot information using color at specific quantiles.