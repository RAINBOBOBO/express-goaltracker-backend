CREATE TABLE users (
  username VARCHAR(25) PRIMARY KEY,
  password TEXT NOT NULL,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT NOT NULL
    CHECK (position('@' IN email) > 1),
  is_admin BOOLEAN NOT NULL DEFAULT FALSE
);

CREATE TABLE goals (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  detail TEXT,
  tier TEXT NOT NULL,
  reward TEXT,
  deadline TIMESTAMP WITH TIME ZONE NOT NULL,
  date_completed TIMESTAMP WITH TIME ZONE,
  goal_owner VARCHAR(25) NOT NULL
    REFERENCES users ON DELETE CASCADE
)
-- tier should be main, milestone, or weekly