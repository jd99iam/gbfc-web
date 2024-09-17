CREATE TABLE `player` (
	`id`	bigint	NOT NULL,
	`name`	varchar(32)	NULL,
	`uniform_number`	int	NULL,
	`team_id`	bigint	NOT NULL
);

CREATE TABLE `position` (
	`id`	bigint	NOT NULL,
	`name`	varchar(3)	NOT NULL
);

CREATE TABLE `team` (
	`id`	bigint	NOT NULL,
	`name`	varchar(32)	NOT NULL
);

CREATE TABLE `squad` (
	`id`	bigint	NOT NULL,
	`quarter`	int	NOT NULL,
	`formation_id`	bigint	NOT NULL,
	`match_id`	bigint	NOT NULL
);

CREATE TABLE `match` (
	`id`	bigint	NOT NULL,
	`home_team`	bigint	NOT NULL,
	`away_team`	bigint	NOT NULL
);

CREATE TABLE `formation` (
	`id`	bigint	NOT NULL,
	`name`	varchar(32)	NOT NULL,
	`image_url`	varchar(1000)	NOT NULL
);

CREATE TABLE `player_position` (
	`player_id`	bigint	NOT NULL,
	`position_id`	bigint	NOT NULL
);

CREATE TABLE `goal` (
	`Key`	bigint	NOT NULL,
	`assister_id`	bigint	NOT NULL,
	`scorer_id`	bigint	NOT NULL,
	`goal_id`	bigint	NOT NULL
);

CREATE TABLE `player_squad` (
	`player_id`	bigint	NOT NULL,
	`squad_id`	bigint	NOT NULL
);

ALTER TABLE `player` ADD CONSTRAINT `PK_PLAYER` PRIMARY KEY (
	`id`
);

ALTER TABLE `position` ADD CONSTRAINT `PK_POSITION` PRIMARY KEY (
	`id`
);

ALTER TABLE `team` ADD CONSTRAINT `PK_TEAM` PRIMARY KEY (
	`id`
);

ALTER TABLE `squad` ADD CONSTRAINT `PK_SQUAD` PRIMARY KEY (
	`id`
);

ALTER TABLE `match` ADD CONSTRAINT `PK_MATCH` PRIMARY KEY (
	`id`
);

ALTER TABLE `formation` ADD CONSTRAINT `PK_FORMATION` PRIMARY KEY (
	`id`
);

ALTER TABLE `player_position` ADD CONSTRAINT `PK_PLAYER_POSITION` PRIMARY KEY (
	`player_id`,
	`position_id`
);

ALTER TABLE `goal` ADD CONSTRAINT `PK_GOAL` PRIMARY KEY (
	`Key`
);

ALTER TABLE `player_squad` ADD CONSTRAINT `PK_PLAYER_SQUAD` PRIMARY KEY (
	`player_id`,
	`squad_id`
);

ALTER TABLE `player_position` ADD CONSTRAINT `FK_player_TO_player_position_1` FOREIGN KEY (
	`player_id`
)
REFERENCES `player` (
	`id`
);

ALTER TABLE `player_position` ADD CONSTRAINT `FK_position_TO_player_position_1` FOREIGN KEY (
	`position_id`
)
REFERENCES `position` (
	`id`
);

ALTER TABLE `player_squad` ADD CONSTRAINT `FK_player_TO_player_squad_1` FOREIGN KEY (
	`player_id`
)
REFERENCES `player` (
	`id`
);

ALTER TABLE `player_squad` ADD CONSTRAINT `FK_squad_TO_player_squad_1` FOREIGN KEY (
	`squad_id`
)
REFERENCES `squad` (
	`id`
);

