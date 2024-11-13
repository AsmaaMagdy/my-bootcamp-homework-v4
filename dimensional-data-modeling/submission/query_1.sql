 CREATE TABLE shalshahrani27117.actors (
  actor VARCHAR,
  actor_id INTEGER,
  films ARRAY(
    ROW(
      film VARCHAR,
      votes INTEGER,
      rating DOUBLE,
      film_id INTEGER
     
    )
  ),
  quality_class VARCHAR,
  is_active BOOLEAN,
  current_year INTEGER
)
