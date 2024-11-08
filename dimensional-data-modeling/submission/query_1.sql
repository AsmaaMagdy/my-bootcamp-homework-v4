CREATE TABLE actors (
    actor_id INT PRIMARY KEY,                -- Unique identifier for the actor
    actor VARCHAR(255) NOT NULL,             -- Name of the actor
    films ARRAY<STRUCT<
        film VARCHAR(255),                   -- Name of the film
        votes INT,                           -- Number of votes the film received
        rating DECIMAL(3, 1),                -- Rating of the film with one decimal precision
        film_id INT                          -- Unique identifier for each film
    >>,
    quality_class ENUM('star', 'good', 'average', 'bad'),  -- Categorical bucketing based on average rating
    is_active BOOLEAN,                       -- Indicates if the actor is currently active
    current_year INT                         -- The year this row represents for the actor
);
