CREATE TABLE Member (
  memberID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Team_teamID INTEGER UNSIGNED NOT NULL,
  fname TEXT NULL,
  lname TEXT NULL,
  PRIMARY KEY(memberID, Team_teamID),
  INDEX Member_FKIndex1(Team_teamID)
);

CREATE TABLE Question (
  questionID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  question TEXT NOT NULL,
  PRIMARY KEY(questionID)
);

CREATE TABLE SysUser (
  sysUserID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  fname TEXT NULL,
  lname TEXT NULL,
  userType INTEGER UNSIGNED NULL,
  pword TEXT NULL,
  PRIMARY KEY(sysUserID)
);

CREATE TABLE Team (
  teamID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  teamName TEXT NULL,
  finalScore FLOAT NULL,
  PRIMARY KEY(teamID)
);

CREATE TABLE TeamScore (
  Team_teamID INTEGER UNSIGNED NOT NULL,
  Question_questionID INTEGER UNSIGNED NOT NULL,
  SysUser_sysUserID INTEGER UNSIGNED NOT NULL,
  score INTEGER UNSIGNED NULL,
  PRIMARY KEY(Team_teamID, Question_questionID, SysUser_sysUserID),
  INDEX TeamScore_FKIndex1(Team_teamID),
  INDEX TeamScore_FKIndex2(SysUser_sysUserID),
  INDEX TeamScore_FKIndex3(Question_questionID)
);


