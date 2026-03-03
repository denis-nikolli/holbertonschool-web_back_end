-- Show existing records in the table users 
SELECT * FROM users;

-- Insert new users 
INSERT INTO users (email, name) VALUES ('bob@dylan.com', 'Bob');
INSERT INTO users (email, name) VALUES ('sylvie@dylan.com', 'Sylvie');

-- tregon te gjitha te dhenate nga tabela users
SELECT * FROM users;

-- provojme te insertojme nje email te njejt me ate te Bob, qe duhet te jete i pamundur per shkak te kufizimit UNIQUE
INSERT INTO users (email, name) VALUES ('bob@dylan.com', 'Jean');  -- Should fail because of the UNIQUE constraint

-- tregon te gjitha te dhenat e tabeles
SELECT * FROM users;

