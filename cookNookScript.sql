CREATE TABLE users (
UserID INTEGER PRIMARY KEY, 
isAdmin BIT, 
Password VARCHAR(50), 
isActive BIT
);

CREATE TABLE admin (
UserId INTEGER  PRIMARY KEY, 
isAdmin BIT,
canDeleteUser BIT,  
canDeleteComments BIT, 
FOREIGN KEY (UserID) REFERENCES users (UserID)
);

CREATE TABLE recipes (
RecipeID INTEGER PRIMARY KEY, 
UserID INTEGER,
Type BIT, 
Description VARCHAR(200),
Instructions VARCHAR(200), 
Deleted BIT
);

CREATE TABLE recipe_books (
Type BIT PRIMARY KEY, 
UserID INTEGER, 
RecipeID INTEGER, 
FOREIGN KEY (UserID) REFERENCES users (UserID),
FOREIGN KEY (RecipeID) REFERENCES recipes (RecipeID)
);