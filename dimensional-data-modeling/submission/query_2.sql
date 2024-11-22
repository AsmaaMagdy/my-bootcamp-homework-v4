INSERT INTO okaforoa.actors
SELECT
  actor,
  actor_id,
  ARRAY_AGG(
    ROW(film, votes, rating, film_id)
  ) AS films,
  CASE
    WHEN AVG(rating) > 8 THEN 'star'
    WHEN AVG(rating) > 7 THEN 'good'
    WHEN AVG(rating) > 6 THEN 'average'
    ELSE 'bad'
  END AS quality_class,
  MAX(current_year) = EXTRACT(YEAR FROM CURRENT_DATE) AS is_active,
  current_year
FROM actor_films
GROUP BY actor, actor_id, current_year;
