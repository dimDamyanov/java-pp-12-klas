-- Task 01
CREATE TABLE users(0
    userID INT AUTO_INCREMENT,
    userEmail VARCHAR(50),
    userPass VARCHAR(32),
    PRIMARY KEY(userID)
); 

CREATE TABLE friends(user1ID INT, user2ID INT); 

CREATE TABLE walls(
    userID INT,
    authorID INT,
    msgText TEXT,
    datePublished DATETIME DEFAULT CURRENT_TIMESTAMP
); 

CREATE TABLE groups(
    groupID INT AUTO_INCREMENT,
    groupName VARCHAR(50),
    groupDescription TEXT,
    PRIMARY KEY(groupID)
); 

CREATE TABLE groupMembers(groupID INT, userID INT);

-- Task02
ALTER TABLE users ADD COLUMN registrationDate DATETIME DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE groups ALTER groupDescription SET DEFAULT '';

--Task03
INSERT INTO users (userEmail, userPass) VALUES ('ivan.georgiev@abv.bg', 'ivan_e_velik');
INSERT INTO users (userEmail, userPass) VALUES ('georgi.ivanov@mail.bg', 'dqdoto_na_ivan');
INSERT INTO users (userEmail, userPass) VALUES ('maria.stefanova@gmail.com', 'maria, maria');

INSERT INTO friends (user1ID, user2ID) VALUES (1, 2);
INSERT INTO friends (user1ID, user2ID) VALUES (1, 3);

INSERT INTO walls (userID, authorID, msgText) VALUES (1, 2, 'Chestit rozhden den Ivane!');
INSERT INTO walls (userID, authorID, msgText) VALUES (3, 1, 'Chestito zavurshvane Mimi!');

INSERT INTO groups (groupName) VALUES ("Mladezhi");

INSERT INTO groupMembers (groupID, userID) VALUES (1, 1);
INSERT INTO groupMembers (groupID, userID) VALUES (1, 3);