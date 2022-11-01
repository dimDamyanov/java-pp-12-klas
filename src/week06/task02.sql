create table teams (
    teamId int auto_increment,
    teamName varchar(50),
    teamColorHome varchar(20),
    teamColorAway varchar(20),
    captainId int;
    primary key(teamId)
);

create table players (
    playerId int auto_increment;
    teamId int,
    playerName varchar(100),
    birthDate DATE,
    primary key(playerId)
);

create table fans (
    fanId int auto_increment;
    fanName varchar(100);
    ssn varchar(10);
    favouriteTeams JSON,
    favouritePlayers JSON,
    primary key(fanId)
);