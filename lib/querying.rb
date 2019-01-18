def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT books.title, year
  FROM books
  WHERE series_id = 1
  ORDER BY year"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT characters.name, motto
  FROM characters
  ORDER BY length(motto) DESC limit 1"
end

def select_value_and_count_of_most_prolific_species
  "SELECT species,
   COUNT (species)
   FROM characters
   GROUP BY species
   ORDER BY COUNT(*)
   DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name
  FROM authors, subgenres
  JOIN series
  WHERE (subgenre_id == subgenres.id) & (author_id == authors.id);"

end

def select_series_title_with_most_human_characters
   "SELECT series.title
   FROM series
   JOIN characters ON series.id = characters.series_id
   GROUP BY series.title
   HAVING species = 'human'
   ORDER BY COUNT(species = 'human');"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT characters.name, COUNT(*) as book_count
  FROM character_books
  JOIN characters
  WHERE character_books.character_id = characters.id
  GROUP BY characters.name
  ORDER BY book_count DESC"
end
