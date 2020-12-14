-- both test users have the password "password"

INSERT INTO users (username, password, first_name, last_name, email, is_admin)
VALUES ('testuser',
        '$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'Test',
        'User',
        'rainbabauta2@gmail.com',
        FALSE),
       ('testadmin',
        '$2b$12$AZH7virni5jlTTiGgEg4zu3lSvAw68qVEfSIOjJ3RqtbJbdW/Oi5q',
        'Test',
        'Admin!',
        'rainbabauta2@gmail.com',
        TRUE);

INSERT INTO goals (title, detail, tier, reward, deadline, goal_owner)
VALUES ('Lose 50 lbs',
        'I want to lose 50 lbs in half a year.',
        'main',
        'Burger and beer',
        TIMESTAMP + '6' month,
        'testuser'),

        ('Lose 17 lbs',
        'I want to lose 17 lbs in 2 months.',
        'milestone',
        'Beer',
        TIMESTAMP + '2' month,
        'testuser'),

        ('Lose 17 lbs',
        'I want to lose another 17 lbs in 2 months.',
        'milestone',
        'Beer',
        TIMESTAMP + '4' month,
        'testuser'),
