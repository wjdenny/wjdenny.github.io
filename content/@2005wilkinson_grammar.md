---
tags:
  - "source"
alias: "The Grammar of Graphics"
draft: false
---
# The Grammar of Graphics
[[Leland Wilkinson]] wrote this book for [[Springer]].
[[D. Wills]], [[D. Rope]], [[A. Norton]], and [[R. Dubbs]] contributed.

> [!summary] Summary
> %% Write a one-sentence summary of the source. %%

## Notes
### Introduction
> Elegant design requires us to think about a theory of graphics, not charts.

Making a theory of something is a part of elegant design. The same way, studying the complex theories of language in linguistics gave me a strong background in designing systems.

Check out [[1995 Gamma et al.]] for a taxonomy of object patterns in Object-Oriented Design.

> Bad programmers ignored details and bad designers get lost in details -- [[Nate Kirby]]

> If none of this work appeared on a computer, however, we would still find the effort worthwhile. Defining objects help organize thoughts.

So, there are multiple aesthetic traits that can be mapped to data; x and y are the most common, but there's also fill, color, size, and probably more that I can't think of right now.

Page 11 shows an example of a contour map with x=birth_rate, y=death_rate, and uses a color hue as a function of density of the count of countries at the x and y. I'm not sure how I could recreate this in ggplot2, but it would be a worthwhile challenge.

```r
data %>%
ggplot(aes(birth_rate, death_rate)) +
  geom_density(color=count)
```

Not quite. There are [several 2D density functions](https://r-graph-gallery.com/2d-density-plot-with-ggplot2.html) in ggplot2. I want something more like:

```r
data %>% 
  ggplot(aes(birht_rate, death_rate)) + 
    stat_density_2d(aes(fill=..level..), geom="polygon")
```
I might be able to use that to visualize how long it takes students with academic dishonesty holds to get them removed. No, that wouldn't work because these 2d density contours require 2 continuous variables; I only have one. I could use the start date and end date, but that would not utilize the full 2d space (since one cannot have an end date before its start date).

```r
acadist %>% 
  select(adh_start, adh_end) %>% 
  filter(!is.na(adh_end)) %>% 
  ggplot(aes())
```

Stop by the office and get better race/ethn data.

Check out [[1993 Foley, et al.]] about graphics piplines.
Check out [[1989 Upson et al.]] about how pipline architecture is used in scientific visualization.

Key definitions I need to practice and study
- `R` denotes the set of real numbers
- real numbers are numbers except infinity and the square root of -1 (so, it includes fractions and irrational numbers like pi)
- `Z` denotes the set of integers 
- integers are whole numbers
- How do we denote that an element is a member of a set?
- How do we denote all members of a set?
- `N` denotes natural numbers
- natural numbers are integers greater than 0
- how do we denote the statement: "A is a subset of B"
- how do we denote the statement: "A is a proper subset of B"
- a proper subset is a subset that is not equal to the other set
- more on page 26