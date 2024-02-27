devtools::source_gist("d51986afea07c9a6f7c7c93f91e5bbbc", sha1 = "59191a4eaca2b0d7e3d695e3660cbff8c55b6fdf")
import(c("tidyverse", "tidytext", "htmlwidgets", "webshot", "magick"))

webshot::install_phantomjs()

devtools::install_github("lchiffon/wordcloud2")
library(wordcloud2)

stop_words <- 
  get_stopwords() %>%
  bind_rows(
    tibble(
      word = c(
        "dont", "im", "page", "also", "statement", "topic", "tags", "can", 
        "one","just", "use", "may", "well", "alias", "date", "type", "like", 
        "know", "think", "notes", "source", "title", "thats", "url", "doi", 
        "ive", "cant", "phd", "going", "want", "make", "really", "get", "youre",
        "summary", "author", "often", "didnt", "theyre", "yeah", "oh"
      ),
      lexicon = "custom"
    )
)

words <- 
  # Start with a list of Markdown files in the vault.
  tibble(filePath = Sys.glob("/home/wjdenny/Documents/antheum/content/*.md")) %>%
  
  # Read in the text of each file.
  mutate(text = sapply(filePath, read_file)) %>%

  # Split the text column into additional rows by line.
  separate_rows(text, sep="\n") %>%

  # Remove non-alpha characters.
  mutate(text = gsub(x = text, pattern = "[0-9]+|[[:punct:]]|\\(.*\\)", replacement = "")) %>%
  
  # Add the line number.
  group_by(filePath) %>%
  mutate(line = row_number()) %>%
  ungroup() %>%
  
  # Split the text column by words.
  unnest_tokens(word, text) %>%
  
  # Remove stop words.
  anti_join(stop_words) %>%
  
  # Count words.
  count(word, sort = TRUE)


cloudDark <- words %>%
  wordcloud2(
    shape = "square",
    size = 1.9,
    fontWeight = "normal",
    widgetsize = c(750, 200), 
    minRotation = -pi/16,
    maxRotation = -pi/16, 
    rotateRatio = 1,
    backgroundColor = "rgb(22, 22, 24)",
    color = "random-light"
  )

cloudLight <- words %>%
  wordcloud2(
    shape = "square",
    size = 1.9,
    fontWeight = "normal",
    widgetsize = c(750, 200), 
    minRotation = -pi/16,
    maxRotation = -pi/16, 
    rotateRatio = 1,
    backgroundColor = "rgb(250, 248, 248)",
    color = "random-dark"
  )

saveWidget(cloudDark, "wordcloud-dark.html", selfcontained = FALSE)
webshot::webshot("wordcloud-dark.html", "wordcloud-dark.png", cliprect = "viewport", vwidth = 750, vheight = 200, delay = 10)

saveWidget(cloudLight, "wordcloud-light", selfcontained = FALSE)
webshot::webshot("wordcloud-light.html", "wordcloud-light.png", cliprect = "viewport", vwidth = 750, vheight = 200, delay = 10)

file.copy(from = "wordcloud.png", to = "/home/wjdenny/Documents/antheum/content/wordcloud.png", overwrite = TRUE)
