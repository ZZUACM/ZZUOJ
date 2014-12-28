set names utf8;
use jol;

CREATE TABLE  `vjudge` (
  `problem_id` int(11) NOT NULL DEFAULT '0',
  `origin_id` int(11) NOT NULL DEFAULT '0',
  `ojtype` int(11) NOT NULL,
  PRIMARY KEY (`problem_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
