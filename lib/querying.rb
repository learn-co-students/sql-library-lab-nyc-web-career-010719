def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year
  FROM books
  WHERE series_id = 1
  ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto
  FROM characters
  WHERE LENGTH(motto) = (SELECT MAX(LENGTH(motto)) FROM characters);"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) AS occurence
  FROM characters
  GROUP BY species
  ORDER BY occurence DESC
  LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors
  LEFT OUTER JOIN series ON authors.id = series.author_id
  LEFT OUTER JOIN subgenres ON subgenres.id = series.subgenre_id"
end

def select_series_title_with_most_human_characters
  "SELECT title
  FROM series
  JOIN characters ON series.id = characters.series_id
  WHERE characters.species = 'human'
  GROUP BY characters.series_id
  ORDER BY characters.species
  LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(books.title) as num_books
  FROM books
  LEFT OUTER JOIN character_books ON books.id = character_books.book_id
  LEFT OUTER JOIN characters ON character_books.character_id = characters.id
  GROUP BY characters.name
  ORDER BY num_books DESC;"
end
