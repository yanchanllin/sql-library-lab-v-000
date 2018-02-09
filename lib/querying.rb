def select_books_titles_and_years_in_first_series_order_by_year
  "SELECT title, year FROM books WHERE series_id = 1 ORDER BY year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "SELECT name, motto FROM characters ORDER BY LENGTH(motto) DESC LIMIT 1;"
end


def select_value_and_count_of_most_prolific_species
  "SELECT species, COUNT(species) from characters GROUP BY species ORDER BY COUNT(species) DESC LIMIT 1;"
end

def select_name_and_series_subgenres_of_authors
  "SELECT authors.name, subgenres.name FROM series
   JOIN authors ON authors.id = author_id
   INNER JOIN subgenres ON subgenre_id = subgenres.id; "
end

def select_series_title_with_most_human_characters
  "SELECT series.title FROM series
  JOIN characters ON series.id = series_id
  WHERE species = 'human'
  GROUP BY title
  ORDER BY COUNT(*) DESC LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "SELECT name,COUNT(name) FROM characters
  JOIN  character_books ON character_id = characters.id
  INNER JOIN books ON book_id =books.id
  GROUP by characters.name
  ORDER by COUNT(name) DESC;"
end
