---
date: 2022-05-13
publish: true
---
There are two groups of concepts that are used in visual design. The [Gestalt principles of visual perception](https://en.wikipedia.org/wiki/Gestalt_psychology#Pr%C3%A4gnanz) and [pre-attentive attributes](https://en.wikipedia.org/wiki/Data_and_information_visualization#Visual_perception_and_data_visualization) These are visual techniques that allow us to work _with_ our audience members' brains instead of against it.

Some of these, known as the gestalt principles of visual perception, include

- **proximity**, where associated elements are physically close to each other;
- **similarity**, where associated elements have the same color or shape;
- **enclosure**, where associated elements are enclosed in a box or area of some kind; and
- **connection**, using physical lines to connect associated elements.

There are other Gestalt principles, but I felt these were the most relevant to visualizing data.

To help grab attention or focus it on specific features, we can use patterns known as preattentive attributes, which are basically a marked difference in a specific attribute. Some are better used for quantitative data, such as

- **intensity of color**, where a darker or bolder element grabs attention first;
- **line length**, where a longer or shorter land stands out;
- **spatial position**, where an element's position shows its relative value;
- **motion**, where speed or distance shows a higher or lower value; and
- **saturation**, where bolder and more muted colors can indicate higher or lower value.

Other preattentive attributes are better for qualitative or categorical data, including

- **shape**, where elements have a shape designated for their category (for example, ♂ and ♀ symbols on a scatterplot for men and women, respectively); and
- **hue**, or color, where different categories use different colors;

## Audience perception follows a few basic rules, with some caveats.

Complex visual inputs are normally processed in a zig-zag pattern, starting with the upper left, moving to the right, then down to the bottom left, and to the right. There have been studies that investigate whether there are differences in gender or culture on this point.

One question I have about this is if this holds true for people who's first or only language is exclusively written from right to left, or top to bottom. For example, Arabic speakers with little to no exposure to written English or any other language written left to right. There have been studies that touch on this theme, but so far I haven't found any that offer any answer. Still, it's a little concerning to me that most guides on visual design assume this processing pattern holds true for everyone despite that fact that we've only studied those exposed to Western education and culture.

#### Avoiding cognitive load helps the audience process the information

The more visual detail presented on the screen, the more likely your audience will experience cognitive overload and tune out. Some types of charts or common design strategies violate this principle, so care must be taken in their design.

### Strategy for putting it all together

When you want to improve a graph, [[@2015knaflic_storytelling|Knaflic (2015)]] suggests putting everything into the background first. This means making all the colors gray, and removing all the labels.

From there, you can add in different elements or change attributes _as needed_ to make the point of the visual evident.

Design choices should be made deliberately. This is even more important when data visuals are made by our software using default settings. Be explicit.

See also: [(Knaflic, 2015) Storytelling with Data](https://www.storytellingwithdata.com/)