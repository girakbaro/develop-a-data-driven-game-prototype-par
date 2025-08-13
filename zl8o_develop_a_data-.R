# Define a data model for the game prototype parser

# Game Prototype Data Model
GamePrototype <- list(
  id = "",
  name = "",
  description = "",
  genres = c(),
  mechanics = c(),
  themes = c(),
  platforms = c(),
  release_date = "",
  developer = "",
  publisher = "",
  tags = c()
)

# Game Parsing Function
parse_game <- function(data) {
  game <- GamePrototype
  
  game$id <- data$id
  game$name <- data$name
  game$description <- data$description
  game$genres <- strsplit(data$genres, ",")[[1]]
  game$mechanics <- strsplit(data$mechanics, ",")[[1]]
  game$themes <- strsplit(data$themes, ",")[[1]]
  game$platforms <- strsplit(data$platforms, ",")[[1]]
  game$release_date <- data$release_date
  game$developer <- data$developer
  game$publisher <- data$publishers
  game$tags <- strsplit(data$tags, ",")[[1]]
  
  return(game)
}

# Example Data
example_data <- data.frame(
  id = "1",
  name = "Example Game",
  description = "This is an example game.",
  genres = "Action,Adventure",
  mechanics = "Platforming,Puzzle",
  themes = "Fantasy,Exploration",
  platforms = "PC,Console",
  release_date = "2022-01-01",
  developer = "Example Dev",
  publisher = "Example Pub",
  tags = "Single-player,Multiplayer"
)

# Parse Example Data
game <- parse_game(example_data)

# Output Parsed Game Data
print(game)