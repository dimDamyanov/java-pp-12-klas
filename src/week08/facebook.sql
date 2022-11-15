CREATE TABLE users(
    userID INT AUTO_INCREMENT,
    userEmail VARCHAR(50),
    userPass VARCHAR(32),
    PRIMARY KEY(userID)
); 

CREATE TABLE friends(
    user1ID INT,
    user2ID INT,
    CONSTRAINT FK_FriendUser1 FOREIGN KEY (user1ID) REFERENCES users(userID),
    CONSTRAINT FK_FriendUser2 FOREIGN KEY (user2ID) REFERENCES users(userID)
); 

CREATE TABLE walls(
    userID INT,
    authorID INT,
    msgText TEXT,
    datePublished DATETIME DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT FK_WallUser FOREIGN KEY (userID) REFERENCES users(userID),
    CONSTRAINT FK_WallAuthor FOREIGN KEY (authorID) REFERENCES users(userID)
); 

CREATE TABLE groups(
    groupID INT AUTO_INCREMENT,
    groupName VARCHAR(50),
    groupDescription TEXT,
    PRIMARY KEY(groupId)
);

CREATE TABLE groupMembers(
    groupID INT, 
    userID INT,
    CONSTRAINT FK_MemberGroup FOREIGN KEY (groupID) REFERENCES groups(groupID),
    CONSTRAINT FK_MemberUser FOREIGN KEY (userID) REFERENCES users(userID)
);