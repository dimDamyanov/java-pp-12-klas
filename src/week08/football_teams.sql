create table teams (
    teamId int auto_increment,
    teamName varchar(50),
    teamColorHome varchar(20),
    teamColorAway varchar(20),
    captainId int;
    primary key(teamId),
    CONSTRAINT FK_TeamCaptain FOREIGN KEY (captainId) REFERENCES players(playerId)
);

create table players (
    playerId int auto_increment;
    teamId int,
    playerName varchar(100),
    birthDate DATE,
    primary key(playerId),
    CONSTRAINT FK_PlayerTeam FOREIGN KEY (teamId) REFERENCES teams(teamId)
);

create table fans (
    fanId int auto_increment;
    fanName varchar(100);
    ssn varchar(10);
    favouriteTeamId INT,
    favouritePlayerId INT,
    primary key(fanId),
    CONSTRAINT FK_FanFavouritePlayer FOREIGN KEY (favouritePlayerId) REFERENCES players(playerId),
    CONSTRAINT FK_FanFavouriteTeam FOREIGN KEY (favouriteTeamId) REFERENCES teams(teamId)
);