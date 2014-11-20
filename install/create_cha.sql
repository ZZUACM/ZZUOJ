set names utf8; 
use jol;

CREATE TABLE  `cha` (
  `problem_id` int(11) NOT NULL DEFAULT '0',
  `ischa` bool NOT NULL DEFAULT FALSE,
  PRIMARY KEY (`problem_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

insert into cha(problem_id) select problem_id from problem;
