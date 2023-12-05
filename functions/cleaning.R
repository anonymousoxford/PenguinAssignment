clean_column_names <- function(penguins_data) {
  penguins_data %>%
    clean_names()
}
# This is a function to clean the column names
#Function from Lydia France https://github.com/LydiaFrance/Reproducible_Figures_R/blob/recap_lessons/lesson_notebook01_recapProjects.ipynb

shorten_species <- function(penguins_data) {
  penguins_data %>%
    mutate(species = case_when(
      species == "Adelie Penguin (Pygoscelis adeliae)" ~ "Adelie",
      species == "Chinstrap penguin (Pygoscelis antarctica)" ~ "Chinstrap",
      species == "Gentoo penguin (Pygoscelis papua)" ~ "Gentoo"
    ))
}
# This is a function to shorten the species names
# Function from Lydia France https://github.com/LydiaFrance/Reproducible_Figures_R/blob/recap_lessons/lesson_notebook01_recapProjects.ipynb


remove_empty_columns_rows <- function(penguins_data) {
  penguins_data %>%
    remove_empty(c("rows", "cols"))
}
# This is a function to remove any empty columns or rows
#Function from Lydia France https://github.com/LydiaFrance/Reproducible_Figures_R/blob/recap_lessons/lesson_notebook01_recapProjects.ipynb
