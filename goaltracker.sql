\echo 'Delete and recreate goaltracker db?'
\prompt 'Return for yes or control-C to cancel > ' foo

DROP DATABASE goaltracker;
CREATE DATABASE goaltracker;
\connect goaltracker

\i goaltracker-schema.sql
\i goaltracker-seed.sql

\echo 'Delete and recreate goaltracker_test db?'
\prompt 'Return for yes or control-C to cancel > ' foo

DROP DATABASE goaltracker_test;
CREATE DATABASE goaltracker_test;
\connect goaltracker_test

\i goaltracker-schema.sql
