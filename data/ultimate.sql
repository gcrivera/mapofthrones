SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: scenes; Type: TABLE; Schema: public; Owner: ntmuowfdmifwtt
--

CREATE TABLE episodes (
    seasonnum integer NOT NULL,
    episodenum integer NOT NULL,
    episodetitle text,
    episodelink text,
    episodeairdate DATE,
    episodedescription text
);


ALTER TABLE episodes OWNER TO ntmuowfdmifwtt;


--
-- Name: scenes; Type: TABLE; Schema: public; Owner: ntmuowfdmifwtt
--

CREATE TABLE scenes (
    seasonnum integer NOT NULL,
    episodenum integer NOT NULL,
    scenestart TIME,
    sceneend TIME,
    location character varying(80),
    sublocation character varying(80) NULL,
    characters JSON
);


ALTER TABLE scenes OWNER TO ntmuowfdmifwtt;

COPY episodes (seasonnum, episodenum, episodetitle, episodelink, episodeairdate, episodedescription) FROM stdin;
1	1	Winter Is Coming	/title/tt1480055/	2011-04-17	Jon Arryn, the Hand of the King, is dead. King Robert Baratheon plans to ask his oldest friend, Eddard Stark, to take Jon's place. Across the sea, Viserys Targaryen plans to wed his sister to a nomadic warlord in exchange for an army.
1	2	The Kingsroad	/title/tt1668746/	2011-04-24	While Bran recovers from his fall, Ned takes only his daughters to King's Landing. Jon Snow goes with his uncle Benjen to The Wall. Tyrion joins them.
1	3	Lord Snow	/title/tt1829962/	2011-05-01	Lord Stark and his daughters arrive at King's Landing to discover the intrigues of the king's realm.
1	4	Cripples, Bastards, and Broken Things	/title/tt1829963/	2011-05-08	Eddard investigates Jon Arryn's murder. Jon befriends Samwell Tarly, a coward who has come to join the Night's Watch.
1	5	The Wolf and the Lion	/title/tt1829964/	2011-05-15	Catelyn has captured Tyrion and plans to bring him to her sister, Lysa Arryn, at The Vale, to be tried for his, supposed, crimes against Bran. Robert plans to have Daenerys killed, but Eddard refuses to be a part of it and quits.
1	6	A Golden Crown	/title/tt1837862/	2011-05-22	While recovering from his battle with Jaime, Eddard is forced to run the kingdom while Robert goes hunting. Tyrion demands a trial by combat for his freedom. Viserys is losing his patience with Drogo.
1	7	You Win or You Die	/title/tt1837863/	2011-05-29	Robert has been injured while hunting and is dying. Jon and the others finally take their vows to the Night's Watch. A man, sent by Robert, is captured for trying to poison Daenerys. Furious, Drogo vows to attack the Seven Kingdoms.
1	8	The Pointy End	/title/tt1837864/	2011-06-05	Eddard and his men are betrayed and captured by the Lannisters. When word reaches Robb, he plans to go to war to rescue them. The White Walkers attack The Wall. Tyrion returns to his father with some new friends.
1	9	Baelor	/title/tt1851398/	2011-06-12	Robb goes to war against the Lannisters. Jon finds himself struggling on deciding if his place is with Robb or the Night's Watch. Drogo has fallen ill from a fresh battle wound. Daenerys is desperate to save him.
1	10	Fire and Blood	/title/tt1851397/	2011-06-19	With Ned dead, Robb vows to get revenge on the Lannisters. Jon must officially decide if his place is with Robb or the Night's Watch. Daenerys says her final goodbye to Drogo.
2	1	The North Remembers	/title/tt1971833/	2012-04-01	Tyrion arrives at King's Landing to take his father's place as Hand of the King. Stannis Baratheon plans to take the Iron Throne for his own. Robb tries to decide his next move in the war. The Night's Watch arrive at the house of Craster.
2	2	The Night Lands	/title/tt2069318/	2012-04-08	Arya makes friends with Gendry. Tyrion tries to take control of the small council. Theon arrives at his home, Pyke, in order to persuade his father into helping Robb with the war. Jon tries to investigate Craster's secret.
2	3	What Is Dead May Never Die	/title/tt2070135/	2012-04-15	Tyrion tries to see who he can trust in the small council. Catelyn visits Renly to try and persuade him to join Robb in the war. Theon must decide if his loyalties lie with his own family or with Robb.
2	4	Garden of Bones	/title/tt2069319/	2012-04-22	Lord Baelish arrives at Renly's camp just before he faces off against Stannis. Daenerys and her company are welcomed into the city of Qarth. Arya, Gendry, and Hot Pie find themselves imprisoned at Harrenhal.
2	5	The Ghost of Harrenhal	/title/tt2074658/	2012-04-29	Tyrion investigates a secret weapon that King Joffrey plans to use against Stannis. Meanwhile, as a token for saving his life, Jaqen H'ghar offers to kill three people that Arya chooses.
2	6	The Old Gods and the New	/title/tt2085238/	2012-05-06	Theon seizes control of Winterfell. Jon captures a wildling, named Ygritte. The people of King's Landing begin to turn against King Joffrey. Daenerys looks to buy ships to sail for the Seven Kingdoms.
2	7	A Man Without Honor	/title/tt2085239/	2012-05-13	Bran and Rickon have escaped Winterfell. Theon tries to hunt them down. Daenerys' dragons have been stolen. Jon travels through the wilderness with Ygritte as his prisoner. Sansa has bled and is now ready to have Joffrey's children.
2	8	The Prince of Winterfell	/title/tt2085240/	2012-05-20	Stannis is just days from King's Landing. Tyrion prepares for his arrival. Jon and Qhorin are taken prisoner by the wildlings. Catelyn is arrested for releasing Jaime. Arya, Gendry, and Hot Pie plan to escape from Harrenhal.
2	9	Blackwater	/title/tt2084342/	2012-05-27	Stannis Baratheon's fleet and army arrive at King's Landing and the battle for the city begins. Cersei plans for her and her children's future.
2	10	Valar Morghulis	/title/tt2112510/	2012-06-03	Joffrey puts Sansa aside for Margaery Tyrell. Robb marries Talisa Maegyr. Jon prepares to meet Mance Rayder. Arya says farewell to Jaqen H'ghar. Daenerys tries to rescue her dragons.
3	1	Valar Dohaeris	/title/tt2178782/	2013-03-31	Jon is brought before Mance Rayder, the King Beyond the Wall, while the Night's Watch survivors retreat south. In King's Landing, Tyrion asks for his reward. Littlefinger offers Sansa a way out.
3	2	Dark Wings, Dark Words	/title/tt2178772/	2013-04-07	Bran and company meet Jojen and Meera Reed. Arya, Gendry, and Hot Pie meet the Brotherhood. Jaime travels through the wilderness with Brienne. Sansa confesses her true feelings about Joffrey to Margaery.
3	3	Walk of Punishment	/title/tt2178802/	2013-04-14	Robb and Catelyn arrive at Riverrun for Lord Hoster Tully's funeral. Tywin names Tyrion the new Master of Coin. Arya says goodbye to Hot Pie. The Night's Watch returns to Craster's. Brienne and Jaime are taken prisoner.
3	4	And Now His Watch Is Ended	/title/tt2178798/	2013-04-21	Jaime mopes over his lost hand. Cersei is growing uncomfortable with the Tyrells. The Night's Watch is growing impatient with Craster. Daenerys buys the Unsullied.
3	5	Kissed by Fire	/title/tt2178788/	2013-04-28	Robb's army is falling apart. Jaime reveals a story, to Brienne, that he has never told anyone. Jon breaks his vows. The Hound is granted his freedom. The Lannisters hatch a new plan.
3	6	The Climb	/title/tt2178812/	2013-05-05	Jon and the wildlings scale The Wall. The Brotherhood sells Gendry to Melisandre. Robb does what he can to win back the Freys. Tyrion tells Sansa about their engagement.
3	7	The Bear and the Maiden Fair	/title/tt2178814/	2013-05-12	Jon and the wildlings travel south of The Wall. Talisa tells Robb that she's pregnant. Arya runs away from the Brotherhood. Daenerys arrives at Yunkai. Jaime leaves Brienne behind at Harrenhal.
3	8	Second Sons	/title/tt2178806/	2013-05-19	Daenerys tries to persuade the Second Sons to join her against Yunkai. Stannis releases Davos from the dungeons. Sam and Gilly are attacked by a White Walker. Sansa and Tyrion wed.
3	9	The Rains of Castamere	/title/tt2178784/	2013-06-02	Robb and Catelyn arrive at the Twins for the wedding. Jon is put to the test to see where his loyalties truly lie. Bran's group decides to split up. Daenerys plans an invasion of Yunkai.
3	10	Mhysa	/title/tt2178796/	2013-06-09	Bran and company travel beyond The Wall. Sam returns to Castle Black. Jon says good bye to Ygritte. Jaime returns to King's Landing. The Night's Watch asks for help from Stannis.
4	1	Two Swords	/title/tt2816136/	2014-04-06	Tyrion welcomes a guest to King's Landing. At Castle Black, Jon stands trial. Daenerys is pointed to Meereen, the mother of all slave cities. Arya runs into an old enemy.
4	2	The Lion and the Rose	/title/tt2832378/	2014-04-13	Joffrey and Margaery's wedding has come. Tyrion breaks up with Shae. Ramsay tries to prove his worth to his father. Bran and company find a Weirwood tree.
4	3	Breaker of Chains	/title/tt2972426/	2014-04-20	Tyrion is arrested for the murder of Joffrey and awaits trial. Sansa escapes King's Landing. Sam sends Gilly to Mole's Town as the Night's Watch finds itself in a tight spot. Meereen challenges Daenerys.
4	4	Oathkeeper	/title/tt2972428/	2014-04-27	Jaime entrusts a task to Brienne. Daenerys frees Meereen. Jon is given permission to lead a group of Night's Watchmen to Craster's Keep. Bran and company are taken hostage.
4	5	First of His Name	/title/tt3060856/	2014-05-04	Tommen is crowned King of the Seven Kingdoms. Cersei builds her case against Tyrion. Sansa and Lord Baelish arrive at the Eyrie. The Night's Watch attacks Craster's Keep.
4	6	The Laws of Gods and Men	/title/tt3060910/	2014-05-11	Tyrion's trial has come. Yara and her troops storm the Dreadfort to free Theon. Daenerys meets Hizdar zo Loraq. Stannis makes a deal with the Iron Bank of Braavos.
4	7	Mockingbird	/title/tt3060876/	2014-05-18	Tyrion tries to find a champion. Daenerys sleeps with Daario. The Hound becomes wounded. Jon's advice is ignored at Castle Black. Brienne and Podrick receive a tip on Arya's whereabouts.
4	8	The Mountain and the Viper	/title/tt3060782/	2014-06-01	Theon helps Ramsay seize Moat Cailin. The wildlings attack Mole's Town. Sansa comes up with a story to protect Lord Baelish. Daenerys finds out a secret about Ser Jorah. Oberyn Martell faces Ser Gregor Clegane.
4	9	The Watchers on the Wall	/title/tt3060858/	2014-06-08	The battle between the Night's Watch and the Wildlings has come.
4	10	The Children	/title/tt3060860/	2014-06-15	The Night's Watch story continues, with surprising developments. Daenerys experiences new consequences. Brienne and Podrick have an unexpected encounter. Bran achieves a goal, while Tyrion makes an important discovery.
5	1	The Wars to Come	/title/tt3658012/	2015-03-29	Cersei and Jaime adjust to a world without Tywin. Tyrion and Varys arrive at Pentos. In Meereen, a new enemy emerges. Jon is caught between two kings.
5	2	The House of Black and White	/title/tt3846626/	2015-04-19	Arya arrives in Braavos. Jaime takes on a secret mission. Ellaria Sand seeks revenge for Oberyn's death. Stannis makes Jon a generous offer as the Night's Watch elects a new Lord Commander. Daenerys is faced with a difficult decision.
5	3	High Sparrow	/title/tt3866836/	2015-04-26	Tommen and Margaery wed. Arya has trouble adapting to her new life. Littlefinger reveals his plans to Sansa. Jon gives his first orders as Lord Commander. Tyrion and Varys arrive in Volantis.
5	4	Sons of the Harpy	/title/tt3866838/	2015-05-03	Jorah Mormont sets sail alongside his prisoner, Tyrion. Cersei makes a move against the Tyrells. Jaime and Bronn sneak into Dorne. Ellaria and the Sand Snakes make their plans. Melisandre tempts Jon. The Harpies attack.
5	5	Kill the Boy	/title/tt3866840/	2015-05-10	Daenerys arrests the heads of Meereen's great families. Jon makes a difficult decision. Theon is forced to face Sansa. Stannis rides south. Tyrion and Jorah enter the ruins of Old Valyria.
5	6	Unbowed, Unbent, Unbroken	/title/tt3866842/	2015-05-17	Arya is put to the test. Tyrion and Jorah are captured by slavers. Loras Tyrell is judged by the Sparrows. Jaime and Bronn face the Sand Snakes. Sansa marries Ramsay Bolton.
5	7	The Gift	/title/tt3866846/	2015-05-24	Jon heads east as trouble begins to stir for Sam and Gilly at Castle Black. Sansa asks Theon for help. Tyrion and Jorah are sold as slaves. Cersei savors her triumph over the Tyrells as new plots are developed in the shadows.
5	8	Hardhome	/title/tt3866850/	2015-05-31	Tyrion advises Daenerys. Sansa forces Theon to tell her a secret. Cersei remains stubborn. Arya meets her first target. Jon and Tormund meet with the Wildling Elders.
5	9	The Dance of Dragons	/title/tt3866826/	2015-06-07	Jon and the Wildlings return to Castle Black. Jaime meets with Doran Martell. Stannis makes a hard choice. Arya runs into Ser Meryn Trant. Daenerys attends the grand reopening of the fighting pits.
5	10	Mother's Mercy	/title/tt3866862/	2015-06-14	Stannis arrives at Winterfell. Tyrion runs Meereen as Daario and Jorah go after Daenerys. Jaime and Myrcella leave Dorne. Jon sends Sam and Gilly to Oldtown. Arya challenges the Many-Faced God. Cersei confesses her sins.
6	1	The Red Woman	/title/tt3658014/	2016-04-24	The fate of Jon Snow is revealed. Daenerys is brought before Khal Moro. Tyrion gets used to living in Meereen. Ramsay sends his dogs after Theon and Sansa. Ellaria and the Sand Snakes make their move. Cersei mourns for Myrcella.
6	2	Home	/title/tt4077554/	2016-05-01	Bran trains with the Three-Eyed Raven. Tommen meets with Cersei. Tyrion makes a bold move. Theon leaves while at Pyke new issues arise. Ramsay's brother is born. Davos asks Melisandre for a miracle.
6	3	Oathbreaker	/title/tt4131606/	2016-05-08	Daenerys arrives at Vaes Dothrak. Sam and Gilly sail for Horn Hill. Arya trains as No One. Varys finds information on the Sons of the Harpy. Ramsay receives a gift. Tommen meets with the High Sparrow. At Castle Black, a miracle occurs.
6	4	Book of the Stranger	/title/tt4283016/	2016-05-15	Sansa arrives at Castle Black. Tyrion makes a deal with the Slave Masters. Jorah and Daario sneak into Vaes Dothrak. Ramsay sends a letter to Jon. Theon arrives at Pyke. Cersei and Olenna Tyrell plot against the High Sparrow.
6	5	The Door	/title/tt4283028/	2016-05-22	Sansa and Jon make plans. Arya is given another chance to prove herself. Jorah confesses a secret to Daenerys. Tyrion meets with a Red Priestess. Yara finds her rule tested. Bran discovers the origin of the White Walkers.
6	6	Blood of My Blood	/title/tt4283054/	2016-05-29	Bran and Meera find a new ally. Gilly meets Sam's family. Arya makes a difficult choice. The Lannisters and Tyrells march against the High Sparrow.
6	7	The Broken Man	/title/tt4283060/	2016-06-05	Jon and Sansa gather troops. Jaime arrives at Riverrun. Olenna Tyrell plans to leave King's Landing. Theon and Yara plan a destination. Arya makes plans to leave.
6	8	No One	/title/tt4283074/	2016-06-12	Brienne arrives at Riverrun. Arya seeks shelter. Jaime meets with Edmure Tully. Cersei challenges the Faith. Sandor Clegane hunts for revenge. Tyrion faces the consequences of earlier decisions.
6	9	Battle of the Bastards	/title/tt4283088/	2016-06-19	Jon and Sansa face Ramsay Bolton on the fields of Winterfell. Daenerys strikes back at her enemies. Theon and Yara arrive in Meereen.
6	10	The Winds of Winter	/title/tt4283094/	2016-06-26	Cersei and Loras Tyrell stand trial by the gods. Daenerys prepares to set sail for Westeros. Davos confronts Melisandre. Sam and Gilly arrive in Oldtown. Bran discovers a long kept secret. Lord Frey has an uninvited guest.
7	1	Dragonstone	/title/tt5654088/	2017-07-16	Jon organizes the North's defenses. Cersei tries to even the odds. Daenerys comes home. Arya reminds the Freys "The North remembers". Sam adapts to life in Oldtown. Night King makes his way south.
7	2	Stormborn	/title/tt5655178/	2017-07-23	Daenerys receives an unexpected visitor. Jon faces resistance. Tyrion plans the conquest of Westeros. Cersei gathers her allies. Arya has a reunion with old friends. Sam risks his career and life.
7	3	The Queen's Justice	/title/tt5775840/	2017-07-30	Daenerys and Jon meet. Cersei gains a new ally. Sansa receives an unexpected visitor. Sam is confronted for his actions.
7	4	The Spoils of War	/title/tt5775846/	2017-08-06	Daenerys takes matters into her own hands. Arya reaches her destination. Jaime and Bronn collect the spoils from the war with the Tyrells.
7	5	Eastwatch	/title/tt5775854/	2017-08-13	Daenerys demands loyalty from the surviving Lannister soldiers; Jon heeds Bran's warning about White Walkers on the move; Cersei vows to vanquish anyone or anything that stands in her way.
7	6	Beyond the Wall	/title/tt5775864/	2017-08-20	Jon and his team go beyond the wall to capture a wight. Daenerys has to make a tough decision.
7	7	The Dragon and the Wolf	/title/tt5775874/	2017-08-27	Season finale of the epic series.
\.

COPY scenes (seasonnum, episodenum, scenestart, sceneend, location, sublocation, characters) FROM stdin;
1	1	0:00:40	0:01:45	The Wall	Castle Black	{"characters": [{"name": "Gared"}, {"name": "Waymar Royce"}, {"name": "Will"}]}
1	1	0:01:45	0:03:24	North of the Wall	The Haunted Forest	{"characters": [{"name": "Gared"}, {"name": "Waymar Royce"}, {"name": "Will"}]}
1	1	0:03:24	0:03:31	North of the Wall	The Haunted Forest	{"characters": [{"name": "Will"}, {"name": "Wight Wildling Girl", "alive": false}]}
1	1	0:03:31	0:03:38	North of the Wall	The Haunted Forest	{"characters": [{"name": "Will"}]}
1	1	0:03:38	0:03:44	North of the Wall	The Haunted Forest	{"characters": []}
1	1	0:03:44	0:05:36	North of the Wall	The Haunted Forest	{"characters": [{"name": "Gared"}, {"name": "Waymar Royce"}, {"name": "Will"}]}
1	1	0:05:36	0:05:41	North of the Wall	The Haunted Forest	{"characters": [{"name": "Will"}]}
1	1	0:05:41	0:05:48	North of the Wall	The Haunted Forest	{"characters": [{"name": "Gared"}, {"name": "Waymar Royce"}]}
1	1	0:05:48	0:05:58	North of the Wall	The Haunted Forest	{"characters": [{"name": "Will"}]}
1	1	0:05:58	0:06:21	North of the Wall	The Haunted Forest	{"characters": [{"name": "Gared"}, {"name": "Waymar Royce", "alive": false, "mannerOfDeath": "Back stab", "killedBy": ["White Walker"]}, {"name": "White Walker"}]}
1	1	0:06:21	0:06:39	North of the Wall	The Haunted Forest	{"characters": [{"name": "Will"}]}
1	1	0:06:39	0:06:49	North of the Wall	The Haunted Forest	{"characters": [{"name": "Will"}, {"name": "Wight Wildling Girl"}]}
1	1	0:06:49	0:07:45	North of the Wall	The Haunted Forest	{"characters": [{"name": "Will"}, {"name": "Gared", "alive": false, "mannerOfDeath": "Decapitation", "killedBy": ["White Walker"]}, {"name": "White Walker"}]}
1	1	0:09:27	0:12:38	The North	Winterfell	{"characters": [{"name": "Will"}, {"name": "Jon Snow"}, {"name": "Bran Stark"}, {"name": "Robb Stark"}, {"name": "Eddard Stark"}, {"name": "Catelyn Stark"}, {"name": "Rickon Stark"}, {"name": "Sansa Stark"}, {"name": "Arya Stark"}, {"name": "Theon Greyjoy"}, {"name": "Rodrik Cassel"}, {"name": "Septa Mordane"}]}
1	1	0:12:38	0:15:41	The North	Outside Winterfell	{"characters": [{"name": "Will", "alive": false, "mannerOfDeath": "Decapitation", "killedBy": ["Eddard Stark"]}, {"name": "Eddard Stark", "weapon": [{"action": "has", "name": "Ice"}]}, {"name": "Robb Stark"}, {"name": "Theon Greyjoy"}, {"name": "Bran Stark"}, {"name": "Rodrik Cassel"}, {"name": "Jory Cassel"}, {"name": "Jon Snow"}]}
1	1	0:15:41	0:18:44	The North	Outside Winterfell	{"characters": [{"name": "Jon Snow"}, {"name": "Eddard Stark", "weapon": [{"action": "has", "name": "Ice"}]}, {"name": "Theon Greyjoy"}, {"name": "Bran Stark"}, {"name": "Robb Stark"}, {"name": "Rodrik Cassel"}, {"name": "Jory Cassel"}, {"name": "Grey Wind"}, {"name": "Lady"}, {"name": "Nymeria"}, {"name": "Summer"}, {"name": "Shaggydog"}, {"name": "Ghost"}]}
1	1	0:18:44	0:20:45	The Crownlands	King's Landing	{"characters": [{"name": "Jon Arryn", "alive": false, "title": "Hand", "mannerOfDeath": "Poison", "killedBy": ["Lysa Arryn"]}, {"name": "Cersei Lannister"}, {"name": "Jaime Lannister"}]}
1	1	0:20:45	0:22:43	The North	Winterfell	{"characters": [{"name": "Catelyn Stark"}, {"name": "Eddard Stark", "weapon": [{"action": "has", "name": "Ice"}]}]}
1	1	0:22:43	0:23:09	The North	Winterfell	{"characters": [{"name": "Catelyn Stark"}, {"name": "Maester Luwin"}]}
1	1	0:23:09	0:23:39	The North	Winterfell	{"characters": [{"name": "Robb Stark"}, {"name": "Theon Greyjoy"}, {"name": "Jon Snow"}]}
1	1	0:23:39	0:29:16	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Catelyn Stark"}, {"name": "Maester Luwin"}, {"name": "Summer"}, {"name": "Arya Stark"}, {"name": "Joffrey Baratheon", "weapon": [{"action": "has", "name": "Lion's Tooth"}]}, {"name": "Sandor Clegane"}, {"name": "Rickon Stark"}, {"name": "Eddard Stark"}, {"name": "Sansa Stark"}, {"name": "Theon Greyjoy"}, {"name": "Jon Snow"}, {"name": "Jory Cassel"}, {"name": "Hodor"}, {"name": "Rodrik Cassel"}, {"name": "Robert Baratheon", "title": "King"}, {"name": "Cersei Lannister"}, {"name": "Jaime Lannister"}, {"name": "Myrcella Baratheon"}, {"name": "Tommen Baratheon"}]}
1	1	0:29:16	0:30:47	The North	Winterfell	{"characters": [{"name": "Robert Baratheon", "title": "King"}, {"name": "Eddard Stark"}]}
1	1	0:30:47	0:32:57	The North	Winterfell	{"characters": [{"name": "Jaime Lannister"}, {"name": "Tyrion Lannister", "sex": {"with": ["Ros"], "type": "paid", "when": "present"}}, {"name": "Ros", "sex": {"with": ["Tyrion Lannister"], "type": "paid", "when": "present"}}]}
1	1	0:32:57	0:33:45	The North	Winterfell	{"characters": [{"name": "Robert Baratheon", "title": "King"}, {"name": "Eddard Stark"}]}
1	1	0:33:45	0:36:17	Pentos	NULL	{"characters": [{"name": "Daenerys Targaryen"}, {"name": "Viserys Targaryen"}]}
1	1	0:36:17	0:38:23	Pentos	NULL	{"characters": [{"name": "Daenerys Targaryen"}, {"name": "Viserys Targaryen"}, {"name": "Illyrio Mopatis"}, {"name": "Khal Drogo", "title": "Khal"}, {"name": "Qotho"}]}
1	1	0:38:23	0:40:05	Pentos	NULL	{"characters": [{"name": "Viserys Targaryen"}, {"name": "Illyrio Mopatis"}, {"name": "Daenerys Targaryen"}]}
1	1	0:40:05	0:40:56	The North	Winterfell	{"characters": [{"name": "Catelyn Stark"}, {"name": "Sansa Stark"}]}
1	1	0:40:56	0:41:19	The North	Winterfell	{"characters": [{"name": "Robert Baratheon", "title": "King"}, {"name": "Catelyn Stark"}, {"name": "Cersei Lannister"}, {"name": "Rodrik Cassel"}]}
1	1	0:41:19	0:44:14	The North	Winterfell	{"characters": [{"name": "Jon Snow"}, {"name": "Benjen Stark"}, {"name": "Tyrion Lannister"}]}
1	1	0:44:14	0:47:28	The North	Winterfell	{"characters": [{"name": "Rodrik Cassel"}, {"name": "Benjen Stark"}, {"name": "Eddard Stark"}, {"name": "Robb Stark"}, {"name": "Robert Baratheon", "title": "King"}, {"name": "Catelyn Stark"}, {"name": "Cersei Lannister"}, {"name": "Sansa Stark"}, {"name": "Joffrey Baratheon"}, {"name": "Jaime Lannister"}, {"name": "Arya Stark"}, {"name": "Theon Greyjoy"}]}
1	1	0:47:28	0:50:29	The North	Winterfell	{"characters": [{"name": "Eddard Stark"}, {"name": "Catelyn Stark"}, {"name": "Maester Luwin"}]}
1	1	0:50:29	0:56:05	Pentos	NULL	{"characters": [{"name": "Khal Drogo", "title": "Khal", "married": {"to": "Daenerys Targaryen", "when": "present", "type": "arranged", "consummated": true}}, {"name": "Daenerys Targaryen", "title": "Khaleesi", "married": {"to": "Khal Drogo", "when": "present", "type": "arranged", "consummated": true}}, {"name": "Viserys Targaryen"}, {"name": "Illyrio Mopatis"}, {"name": "Qotho"}, {"name": "Jorah Mormont"}, {"name": "Drogon", "born": false}, {"name": "Rhaegal", "born": false}, {"name": "Viserion", "born": false}]}
1	1	0:56:05	0:57:48	Pentos	NULL	{"characters": [{"name": "Khal Drogo", "title": "Khal", "sex": {"with": ["Daenerys Targaryen"], "when": "present", "type": "rape"}}, {"name": "Daenerys Targaryen", "title": "Khaleesi", "sex": {"with": ["Khal Drogo"], "when": "present", "type": "rape"}}]}
1	1	0:57:48	0:59:06	The North	Winterfell	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Sandor Clegane"}, {"name": "Theon Greyjoy"}, {"name": "Eddard Stark"}, {"name": "Benjen Stark"}, {"name": "Robb Stark"}, {"name": "Robert Baratheon", "title": "King"}, {"name": "Bran Stark"}, {"name": "Summer"}]}
1	1	0:59:06	1:00:57	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Summer"}, {"name": "Jaime Lannister", "sex": {"with": ["Cersei Lannister"], "when": "present", "type": "love"}}, {"name": "Cersei Lannister", "sex": {"with": ["Jaime Lannister"], "when": "present", "type": "love"}}]}
1	2	0:02:22	0:05:28	The Dothraki Sea	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Khal Drogo", "title": "Khal"}, {"name": "Viserys Targaryen"}, {"name": "Doreah"}, {"name": "Irri"}, {"name": "Jhiqui"}]}
1	2	0:05:28	0:07:05	The North	Winterfell	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Joffrey Baratheon", "weapon": [{"action": "has", "name": "Lion's Tooth"}]}, {"name": "Sandor Clegane"}]}
1	2	0:07:05	0:09:18	The North	Winterfell	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Jaime Lannister"}, {"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}, {"name": "Myrcella Baratheon"}]}
1	2	0:09:18	0:11:44	The North	Winterfell	{"characters": [{"name": "Catelyn Stark"}, {"name": "Bran Stark"}, {"name": "Cersei Lannister"}]}
1	2	0:11:44	0:13:26	The North	Winterfell	{"characters": [{"name": "Jon Snow"}, {"name": "Jaime Lannister"}]}
1	2	0:13:26	0:15:43	The North	Winterfell	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "receives", "name": "Needle"}]}, {"name": "Nymeria"}, {"name": "Jon Snow", "weapon": [{"action": "gives", "name": "Needle"}]}]}
1	2	0:15:43	0:19:22	The North	Winterfell	{"characters": [{"name": "Catelyn Stark"}, {"name": "Jon Snow"}, {"name": "Bran Stark"}, {"name": "Eddard Stark"}]}
1	2	0:19:22	0:20:07	The North	Winterfell	{"characters": [{"name": "Jon Snow"}, {"name": "Robb Stark"}]}
1	2	0:20:07	0:21:51	The North	Winterfell	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Benjen Stark"}, {"name": "Eddard Stark"}, {"name": "Jon Snow"}]}
1	2	0:21:51	0:25:10	The North	The Kingsroad South to King's Landing	{"characters": [{"name": "Robert Baratheon", "title": "King"}, {"name": "Eddard Stark"}]}
1	2	0:25:10	0:25:56	The Dothraki Sea	Dothraki Camp	{"characters": [{"name": "Khal Drogo", "title": "Khal", "sex": {"with": ["Daenerys Targaryen"], "when": "present", "type": "rape"}}, {"name": "Daenerys Targaryen", "title": "Khaleesi", "sex": {"with": ["Khal Drogo"], "when": "present", "type": "rape"}}, {"name": "Drogon", "born": false}, {"name": "Rhaegal", "born": false}, {"name": "Viserion", "born": false}]}
1	2	0:25:56	0:29:16	The North	North to the Wall	{"characters": [{"name": "Jon Snow"}, {"name": "Ghost"}, {"name": "Benjen Stark"}, {"name": "Tyrion Lannister"}, {"name": "Rast"}]}
1	2	0:29:16	0:32:28	The North	Winterfell	{"characters": [{"name": "Catelyn Stark"}, {"name": "Bran Stark"}, {"name": "Maester Luwin"}, {"name": "Robb Stark"}, {"name": "Catspaw Assassin", "alive": false, "mannerOfDeath": "Mauling", "killedBy": ["Summer"], "weapon": [{"action": "has", "name": "Valyrian Steel Dagger"}]}, {"name": "Summer"}]}
1	2	0:32:28	0:34:21	The Dothraki Sea	Dothraki Camp	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Doreah"}, {"name": "Irri"}, {"name": "Jhiqui"}, {"name": "Drogon", "born": false}, {"name": "Rhaegal", "born": false}, {"name": "Viserion", "born": false}]}
1	2	0:34:21	0:34:53	The Wall	The Gift	{"characters": [{"name": "Benjen Stark"}, {"name": "Jon Snow"}, {"name": "Tyrion Lannister"}]}
1	2	0:34:53	0:36:12	The North	Winterfell	{"characters": [{"name": "Catelyn Stark"}]}
1	2	0:36:12	0:38:01	The North	Winterfell	{"characters": [{"name": "Catelyn Stark"}, {"name": "Robb Stark"}, {"name": "Maester Luwin"}, {"name": "Rodrik Cassel"}, {"name": "Theon Greyjoy"}]}
1	2	0:38:01	0:38:54	The North	Winterfell	{"characters": [{"name": "Catelyn Stark"}, {"name": "Bran Stark"}]}
1	2	0:38:54	0:40:37	The Dothraki Sea	Dothraki Camp	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Doreah"}]}
1	2	0:40:37	0:42:47	The Dothraki Sea	Dothraki Camp	{"characters": [{"name": "Drogon", "born": false}, {"name": "Rhaegal", "born": false}, {"name": "Viserion", "born": false}, {"name": "Khal Drogo", "title": "Khal", "sex": {"with": ["Daenerys Targaryen"], "when": "present", "type": "love"}}, {"name": "Daenerys Targaryen", "title": "Khaleesi", "sex": {"with": ["Khal Drogo"], "when": "present", "type": "love"}}]}
1	2	0:42:47	0:44:38	The Riverlands	Crossroads Inn	{"characters": [{"name": "Sansa Stark"}, {"name": "Lady"}, {"name": "Joffrey Baratheon", "weapon": [{"action": "has", "name": "Lion's Tooth"}]}, {"name": "Sandor Clegane"}, {"name": "Ilyn Payne"}]}
1	2	0:44:38	0:47:21	The Riverlands	Crossroads Inn	{"characters": [{"name": "Arya Stark"}, {"name": "Mycah"}, {"name": "Joffrey Baratheon", "weapon": [{"action": "loses", "name": "Lion's Tooth"}]}, {"name": "Sansa Stark"}, {"name": "Nymeria"}]}
1	2	0:47:21	0:48:12	The Riverlands	Crossroads Inn	{"characters": [{"name": "Arya Stark"}, {"name": "Nymeria"}]}
1	2	0:48:12	0:48:50	The Riverlands	Crossroads Inn	{"characters": [{"name": "Eddard Stark"}, {"name": "Jory Cassel"}]}
1	2	0:48:50	0:52:59	The Riverlands	Crossroads Inn	{"characters": [{"name": "Eddard Stark"}, {"name": "Arya Stark"}, {"name": "Joffrey Baratheon"}, {"name": "Cersei Lannister"}, {"name": "Robert Baratheon", "title": "King"}, {"name": "Ilyn Payne"}, {"name": "Sansa Stark"}, {"name": "Jory Cassel"}]}
1	2	0:52:59	0:53:30	The Riverlands	Crossroads Inn	{"characters": [{"name": "Sandor Clegane"}, {"name": "Mycah", "alive": false, "mannerOfDeath": "Horse", "killedBy": ["Sandor Clegane"]}, {"name": "Eddard Stark"}]}
1	2	0:53:30	0:53:41	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Summer"}]}
1	2	0:53:41	0:54:09	The Riverlands	Crossroads Inn	{"characters": [{"name": "Lady"}, {"name": "Eddard Stark"}]}
1	2	0:54:09	0:54:25	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Summer"}]}
1	2	0:54:25	0:54:35	The Riverlands	Crossroads Inn	{"characters": [{"name": "Eddard Stark"}, {"name": "Lady", "alive": false, "mannerOfDeath": "Stab", "killedBy": ["Eddard Stark"]}]}
1	2	0:54:35	0:54:44	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Summer"}]}
1	3	0:01:47	0:02:42	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark"}, {"name": "Sansa Stark"}, {"name": "Arya Stark"}, {"name": "Jory Cassel"}, {"name": "Septa Mordane"}]}
1	3	0:02:42	0:05:17	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark"}, {"name": "Jaime Lannister"}]}
1	3	0:05:17	0:08:11	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Lord Varys"}, {"name": "Grand Maester Pycelle"}, {"name": "Renly Baratheon"}, {"name": "Petyr Baelish"}]}
1	3	0:08:11	0:10:50	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon"}, {"name": "Cersei Lannister"}]}
1	3	0:10:50	0:12:11	The Crownlands	King's Landing	{"characters": [{"name": "Arya Stark"}, {"name": "Sansa Stark"}, {"name": "Septa Mordane"}, {"name": "Eddard Stark", "title": "Hand"}]}
1	3	0:12:11	0:15:48	The Crownlands	King's Landing	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Eddard Stark", "title": "Hand"}]}
1	3	0:15:48	0:18:50	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Old Nan"}, {"name": "Robb Stark"}]}
1	3	0:18:50	0:21:42	The Crownlands	King's Landing	{"characters": [{"name": "Rodrik Cassel", "weapon": [{"action": "gives", "name": "Valyrian Steel Dagger"}]}, {"name": "Catelyn Stark"}, {"name": "Petyr Baelish"}, {"name": "Lord Varys", "weapon": [{"action": "receives", "name": "Valyrian Steel Dagger"}]}]}
1	3	0:21:42	0:23:18	The Wall	Castle Black	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Jeor Mormont"}, {"name": "Alliser Thorne"}, {"name": "Jon Snow"}, {"name": "Pypar"}, {"name": "Grenn"}, {"name": "Rast"}]}
1	3	0:23:18	0:24:07	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Grand Maester Pycelle"}, {"name": "Petyr Baelish"}]}
1	3	0:24:07	0:24:42	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Petyr Baelish"}, {"name": "Catelyn Stark"}]}
1	3	0:24:42	0:26:42	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Rast"}, {"name": "Grenn"}, {"name": "Pypar"}, {"name": "Tyrion Lannister"}]}
1	3	0:26:42	0:27:19	The Crownlands	King's Landing	{"characters": [{"name": "Petyr Baelish"}, {"name": "Catelyn Stark"}, {"name": "Eddard Stark", "title": "Hand"}]}
1	3	0:27:19	0:28:28	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Jaime Lannister"}]}
1	3	0:28:28	0:30:07	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Catelyn Stark"}, {"name": "Rodrik Cassel"}, {"name": "Jory Cassel"}]}
1	3	0:30:07	0:34:39	The Crownlands	King's Landing	{"characters": [{"name": "Robert Baratheon", "title": "King"}, {"name": "Barristan Selmy"}, {"name": "Lancel Lannister"}, {"name": "Jaime Lannister"}]}
1	3	0:34:39	0:38:17	The Dothraki Sea	NULL	{"characters": [{"name": "Khal Drogo", "title": "Khal"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Viserys Targaryen"}, {"name": "Rakharo"}, {"name": "Irri"}]}
1	3	0:38:17	0:41:52	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Benjen Stark"}]}
1	3	0:41:52	0:45:46	The Wall	Castle Black	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Yoren"}, {"name": "Benjen Stark"}]}
1	3	0:45:46	0:46:24	The Dothraki Sea	Dothraki Camp	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Irri"}]}
1	3	0:46:24	0:48:38	The Dothraki Sea	Dothraki Camp	{"characters": [{"name": "Jorah Mormont"}, {"name": "Rakharo"}, {"name": "Irri"}]}
1	3	0:48:38	0:50:41	The Wall	Castle Black	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Jon Snow"}, {"name": "Pypar"}, {"name": "Grenn"}, {"name": "Rast"}, {"name": "Maester Aemon"}, {"name": "Jeor Mormont"}]}
1	3	0:50:41	0:51:30	The Dothraki Sea	Dothraki Camp	{"characters": [{"name": "Drogon", "born": false}, {"name": "Rhaegal", "born": false}, {"name": "Viserion", "born": false}, {"name": "Daenerys Targaryen", "title": "Khaleesi", "sex": {"with": ["Khal Drogo"], "when": "past", "type": "love"}}, {"name": "Khal Drogo", "title": "Khal", "sex": {"with": ["Daenerys Targaryen"], "when": "past", "type": "love"}}]}
1	3	0:51:30	0:52:32	The Wall	Castle Black	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Jon Snow"}]}
1	3	0:52:32	0:56:04	The Crownlands	King's Landing	{"characters": [{"name": "Arya Stark"}, {"name": "Syrio Forel"}, {"name": "Eddard Stark", "title": "Hand"}]}
1	4	0:01:47	0:02:36	The North	Winterfell	{"characters": [{"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}]}
1	4	0:02:36	0:03:30	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Summer"}, {"name": "Old Nan"}, {"name": "Theon Greyjoy"}, {"name": "Hodor"}]}
1	4	0:03:30	0:05:13	The North	Winterfell	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Robb Stark"}, {"name": "Maester Luwin"}, {"name": "Yoren"}, {"name": "Grey Wind"}, {"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Theon Greyjoy"}]}
1	4	0:05:13	0:06:40	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Tyrion Lannister"}]}
1	4	0:06:40	0:10:11	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Grenn"}, {"name": "Alliser Thorne"}, {"name": "Samwell Tarly"}, {"name": "Pypar"}, {"name": "Rast"}]}
1	4	0:10:11	0:11:21	Vaes Dothrak	NULL	{"characters": [{"name": "Khal Drogo", "title": "Khal"}, {"name": "Jorah Mormont"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Viserys Targaryen"}]}
1	4	0:11:21	0:12:17	Vaes Dothrak	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
1	4	0:12:17	0:17:10	Vaes Dothrak	NULL	{"characters": [{"name": "Viserys Targaryen", "sex": {"with": ["Doreah"], "when": "present", "type": "paid"}}, {"name": "Doreah", "sex": {"with": ["Viserys Targaryen"], "when": "present", "type": "paid"}}]}
1	4	0:17:10	0:18:53	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Septa Mordane"}]}
1	4	0:18:53	0:21:17	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Petyr Baelish"}, {"name": "Renly Baratheon"}, {"name": "Grand Maester Pycelle"}, {"name": "Janos Slynt"}, {"name": "Lord Varys"}]}
1	4	0:21:17	0:23:42	The Crownlands	King's Landing	{"characters": [{"name": "Grand Maester Pycelle"}, {"name": "Eddard Stark", "title": "Hand"}]}
1	4	0:23:42	0:25:30	The Crownlands	King's Landing	{"characters": [{"name": "Arya Stark"}, {"name": "Eddard Stark", "title": "Hand"}]}
1	4	0:25:30	0:27:42	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Samwell Tarly"}]}
1	4	0:27:42	0:29:30	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Petyr Baelish"}]}
1	4	0:29:30	0:30:03	The Crownlands	King's Landing	{"characters": [{"name": "Hugh of the Vale"}, {"name": "Jory Cassel"}]}
1	4	0:30:03	0:30:24	The Crownlands	King's Landing	{"characters": [{"name": "Jory Cassel"}, {"name": "Eddard Stark", "title": "Hand"}]}
1	4	0:30:24	0:32:21	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Gendry"}, {"name": "Tobho Mott"}]}
1	4	0:32:21	0:32:30	The Crownlands	King's Landing	{"characters": [{"name": "Jory Cassel"}, {"name": "Eddard Stark", "title": "Hand"}]}
1	4	0:32:30	0:34:27	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Jory Cassel"}]}
1	4	0:34:27	0:35:28	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Pypar"}, {"name": "Grenn"}, {"name": "Rast"}]}
1	4	0:35:28	0:35:54	The Wall	Castle Black	{"characters": [{"name": "Rast"}, {"name": "Jon Snow"}, {"name": "Grenn"}, {"name": "Pypar"}, {"name": "Ghost"}]}
1	4	0:35:54	0:37:12	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Alliser Thorne"}, {"name": "Rast"}, {"name": "Jon Snow"}, {"name": "Pypar"}, {"name": "Grenn"}]}
1	4	0:37:12	0:38:33	Vaes Dothrak	NULL	{"characters": [{"name": "Viserys Targaryen"}, {"name": "Doreah"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Irri"}]}
1	4	0:38:33	0:44:32	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Jon Snow"}, {"name": "Alliser Thorne"}]}
1	4	0:44:32	0:45:38	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}]}
1	4	0:45:38	0:49:47	The Crownlands	King's Landing	{"characters": [{"name": "Robert Baratheon"}, {"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}, {"name": "Myrcella Baratheon"}, {"name": "Barristan Selmy"}, {"name": "Joffrey Baratheon"}, {"name": "Sansa Stark"}, {"name": "Petyr Baelish"}, {"name": "Septa Mordane"}, {"name": "Arya Stark"}, {"name": "Sandor Clegane"}, {"name": "Gregor Clegane"}, {"name": "Hugh of the Vale", "alive": false, "mannerOfDeath": "Throat stab", "killedBy": ["Gregor Clegane"]}, {"name": "Renly Baratheon"}]}
1	4	0:49:47	0:51:27	The Crownlands	King's Landing	{"characters": [{"name": "Jory Cassel"}, {"name": "Cersei Lannister"}, {"name": "Eddard Stark", "title": "Hand", "weapon": [{"action": "has", "name": "Valyrian Steel Dagger"}]}]}
1	4	0:51:27	0:54:31	The Riverlands	Crossroads Inn	{"characters": [{"name": "Catelyn Stark"}, {"name": "Rodrik Cassel"}, {"name": "Marillion"}, {"name": "Tyrion Lannister"}, {"name": "Yoren"}, {"name": "Bronn"}]}
1	5	0:01:53	0:02:18	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}]}
1	5	0:02:18	0:02:55	The Crownlands	King's Landing	{"characters": [{"name": "Hugh of the Vale", "alive": false}, {"name": "Eddard Stark", "title": "Hand"}, {"name": "Barristan Selmy"}]}
1	5	0:02:55	0:03:50	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Barristan Selmy"}]}
1	5	0:03:50	0:06:23	The Crownlands	King's Landing	{"characters": [{"name": "Robert Baratheon", "title": "King"}, {"name": "Lancel Lannister"}, {"name": "Eddard Stark", "title": "Hand"}]}
1	5	0:06:23	0:10:22	The Crownlands	King's Landing	{"characters": [{"name": "Gregor Clegane"}, {"name": "Joffrey Baratheon"}, {"name": "Eddard Stark", "title": "Hand"}, {"name": "Sansa Stark"}, {"name": "Petyr Baelish"}, {"name": "Septa Mordane"}, {"name": "Renly Baratheon"}, {"name": "Grand Maester Pycelle"}, {"name": "Loras Tyrell"}, {"name": "Robert Baratheon", "title": "King"}, {"name": "Sandor Clegane"}, {"name": "Barristan Selmy"}, {"name": "Myrcella Baratheon"}, {"name": "Tommen Baratheon"}]}
1	5	0:10:22	0:13:40	The Vale	Eastern Road	{"characters": [{"name": "Marillion"}, {"name": "Tyrion Lannister"}, {"name": "Catelyn Stark"}, {"name": "Rodrik Cassel"}, {"name": "Bronn"}]}
1	5	0:13:40	0:16:15	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Maester Luwin"}, {"name": "Theon Greyjoy"}]}
1	5	0:16:15	0:17:59	The North	Winterfell	{"characters": [{"name": "Ros", "sex": {"with": ["Theon Greyjoy"], "when": "present", "type": "paid"}}, {"name": "Theon Greyjoy", "sex": {"with": ["Ros"], "when": "present", "type": "paid"}}]}
1	5	0:17:59	0:18:13	The Crownlands	King's Landing	{"characters": [{"name": "Arya Stark"}]}
1	5	0:18:13	0:20:47	The Crownlands	King's Landing	{"characters": [{"name": "Lord Varys"}, {"name": "Eddard Stark", "title": "Hand"}, {"name": "Jory Cassel"}]}
1	5	0:20:47	0:22:17	The Crownlands	King's Landing	{"characters": [{"name": "Arya Stark"}, {"name": "Lord Varys"}, {"name": "Illyrio Mopatis"}]}
1	5	0:22:17	0:25:50	The Crownlands	King's Landing	{"characters": [{"name": "Petyr Baelish"}, {"name": "Lord Varys"}, {"name": "Renly Baratheon"}]}
1	5	0:25:50	0:26:51	The Crownlands	King's Landing	{"characters": [{"name": "Arya Stark"}]}
1	5	0:26:51	0:28:35	The Crownlands	King's Landing	{"characters": [{"name": "Arya Stark"}, {"name": "Eddard Stark", "title": "Hand"}, {"name": "Jory Cassel"}, {"name": "Yoren"}]}
1	5	0:28:35	0:28:50	The Crownlands	King's Landing	{"characters": [{"name": "Arya Stark"}, {"name": "Jory Cassel"}]}
1	5	0:28:50	0:29:03	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Yoren"}]}
1	5	0:29:03	0:30:13	The Vale	Eastern Road	{"characters": [{"name": "Catelyn Stark"}, {"name": "Tyrion Lannister"}, {"name": "Rodrik Cassel"}, {"name": "Bronn"}, {"name": "Vardis Egen"}]}
1	5	0:30:13	0:30:31	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}]}
1	5	0:30:31	0:34:06	The Crownlands	King's Landing	{"characters": [{"name": "Robert Baratheon", "title": "King"}, {"name": "Eddard Stark", "title": "Hand"}, {"name": "Renly Baratheon"}, {"name": "Grand Maester Pycelle"}, {"name": "Lord Varys"}, {"name": "Petyr Baelish"}]}
1	5	0:34:06	0:34:15	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark"}]}
1	5	0:34:15	0:35:13	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "weapon": [{"action": "has", "name": "Valyrian Steel Dagger"}]}, {"name": "Jory Cassel"}, {"name": "Petyr Baelish"}]}
1	5	0:35:13	0:37:12	The Vale	The Eyrie	{"characters": [{"name": "Catelyn Stark"}, {"name": "Tyrion Lannister"}, {"name": "Lysa Arryn"}, {"name": "Robin Arryn"}, {"name": "Vardis Egen"}]}
1	5	0:37:12	0:37:53	The Vale	The Eyrie	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Mord"}]}
1	5	0:37:53	0:41:50	The Crownlands	King's Landing	{"characters": [{"name": "Renly Baratheon", "sex": {"with": ["Loras Tyrell"], "when": "present", "type": "love"}}, {"name": "Loras Tyrell", "sex": {"with": ["Renly Baratheon"], "when": "present", "type": "love"}}]}
1	5	0:41:50	0:48:09	The Crownlands	King's Landing	{"characters": [{"name": "Robert Baratheon", "title": "King"}, {"name": "Cersei Lannister"}]}
1	5	0:48:09	0:49:05	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark"}, {"name": "Mhaegen"}]}
1	5	0:49:05	0:49:53	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark"}, {"name": "Petyr Baelish"}, {"name": "Jory Cassel"}]}
1	5	0:49:53	0:53:06	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark"}, {"name": "Jory Cassel", "alive": false, "mannerOfDeath": "Eye stab", "killedBy": ["Jaime Lannister"]}, {"name": "Jaime Lannister"}, {"name": "Petyr Baelish"}]}
1	6	0:01:53	0:06:22	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Cersei Lannister"}, {"name": "Robert Baratheon", "title": "King"}]}
1	6	0:06:22	0:07:50	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon", "born": false}, {"name": "Rhaegal", "born": false}, {"name": "Viserion", "born": false}, {"name": "Irri"}]}
1	6	0:07:50	0:08:25	The North	Winterfell	{"characters": [{"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}]}
1	6	0:08:25	0:08:36	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Hodor"}]}
1	6	0:08:36	0:09:42	The North	The Wolfswood	{"characters": [{"name": "Bran Stark"}, {"name": "Theon Greyjoy"}, {"name": "Robb Stark"}]}
1	6	0:09:42	0:13:09	The North	The Wolfswood	{"characters": [{"name": "Bran Stark"}, {"name": "Osha"}, {"name": "Stiv", "alive": false, "mannerOfDeath": "Arrow", "killedBy": ["Theon Greyjoy"]}, {"name": "Wallen", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Robb Stark"]}, {"name": "Robb Stark"}, {"name": "Theon Greyjoy"}]}
1	6	0:13:09	0:14:16	The Vale	The Eyrie	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Mord"}]}
1	6	0:14:16	0:16:08	The Crownlands	King's Landing	{"characters": [{"name": "Syrio Forel"}, {"name": "Arya Stark"}]}
1	6	0:16:08	0:19:39	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Khal Drogo", "title": "Khal"}, {"name": "Viserys Targaryen"}, {"name": "Jorah Mormont"}, {"name": "Irri"}, {"name": "Dothraki Crone"}, {"name": "Doreah"}, {"name": "Rhaego", "born": false}]}
1	6	0:19:39	0:21:54	Vaes Dothrak	NULL	{"characters": [{"name": "Drogon", "born": false}, {"name": "Rhaegal", "born": false}, {"name": "Viserion", "born": false}, {"name": "Viserys Targaryen"}, {"name": "Jorah Mormont"}]}
1	6	0:21:54	0:23:52	The Vale	The Eyrie	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Mord"}]}
1	6	0:23:52	0:29:27	The Vale	The Eyrie	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lysa Arryn"}, {"name": "Catelyn Stark"}, {"name": "Robin Arryn"}, {"name": "Vardis Egen"}, {"name": "Bronn"}, {"name": "Rodrik Cassel"}]}
1	6	0:29:27	0:31:20	The Crownlands	The Kingswood	{"characters": [{"name": "Robert Baratheon", "title": "King"}, {"name": "Lancel Lannister"}, {"name": "Renly Baratheon"}, {"name": "Barristan Selmy"}]}
1	6	0:31:20	0:35:25	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Grand Maester Pycelle"}, {"name": "Petyr Baelish"}, {"name": "Beric Dondarrion"}, {"name": "Joss"}]}
1	6	0:35:25	0:39:52	The Vale	The Eyrie	{"characters": [{"name": "Bronn"}, {"name": "Vardis Egen", "alive": false, "mannerOfDeath": "Neck stab", "killedBy": ["Bronn"]}, {"name": "Tyrion Lannister"}, {"name": "Lysa Arryn"}, {"name": "Robin Arryn"}, {"name": "Catelyn Stark"}, {"name": "Mord"}, {"name": "Rodrik Cassel"}]}
1	6	0:39:52	0:42:45	The Crownlands	King's Landing	{"characters": [{"name": "Septa Mordane"}, {"name": "Sansa Stark"}, {"name": "Joffrey Baratheon"}]}
1	6	0:42:45	0:44:18	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Ros"}]}
1	6	0:44:18	0:46:45	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Sansa Stark"}, {"name": "Arya Stark"}]}
1	6	0:46:45	0:51:30	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Khal Drogo", "title": "Khal"}, {"name": "Doreah"}, {"name": "Jorah Mormont"}, {"name": "Viserys Targaryen", "alive": false, "mannerOfDeath": "Molten gold", "killedBy": ["Khal Drogo"]}, {"name": "Irri"}, {"name": "Qotho"}]}
1	7	0:01:52	0:06:35	The Westerlands	Lannister Camp	{"characters": [{"name": "Jaime Lannister"}, {"name": "Tywin Lannister"}]}
1	7	0:06:35	0:09:36	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Cersei Lannister"}]}
1	7	0:09:36	0:14:40	The Crownlands	King's Landing	{"characters": [{"name": "Petyr Baelish"}, {"name": "Ros", "sex": {"with": ["Armeca"], "when": "present", "type": "paid"}}, {"name": "Armeca", "sex": {"with": ["Ros"], "when": "present", "type": "paid"}}]}
1	7	0:14:40	0:18:22	The North	Winterfell	{"characters": [{"name": "Osha"}, {"name": "Theon Greyjoy"}, {"name": "Maester Luwin"}]}
1	7	0:18:22	0:19:14	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Samwell Tarly"}]}
1	7	0:19:14	0:19:59	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Samwell Tarly"}, {"name": "Jeor Mormont"}]}
1	7	0:19:59	0:20:13	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Renly Baratheon"}]}
1	7	0:20:13	0:25:08	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon"}, {"name": "Robert Baratheon", "title": "King"}, {"name": "Cersei Lannister"}, {"name": "Grand Maester Pycelle"}, {"name": "Renly Baratheon"}, {"name": "Eddard Stark", "title": "Hand"}, {"name": "Barristan Selmy"}]}
1	7	0:25:08	0:26:45	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Barristan Selmy"}, {"name": "Grand Maester Pycelle"}, {"name": "Renly Baratheon"}, {"name": "Lord Varys"}]}
1	7	0:26:45	0:28:08	Vaes Dothrak	NULL	{"characters": [{"name": "Khal Drogo", "title": "Khal"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
1	7	0:28:08	0:29:12	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Doreah"}, {"name": "Rakharo"}, {"name": "Irri"}]}
1	7	0:29:12	0:29:45	Vaes Dothrak	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Little Bird"}]}
1	7	0:29:45	0:32:56	Vaes Dothrak	NULL	{"characters": [{"name": "Wine Merchant"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Doreah"}, {"name": "Irri"}, {"name": "Rakharo"}, {"name": "Jorah Mormont"}]}
1	7	0:32:56	0:38:26	The Wall	Castle Black	{"characters": [{"name": "Jeor Mormont", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Jon Snow"}, {"name": "Pypar"}, {"name": "Samwell Tarly"}, {"name": "Grenn"}, {"name": "Rast"}, {"name": "Alliser Thorne"}, {"name": "Maester Aemon"}, {"name": "Othell Yarwyck"}]}
1	7	0:38:26	0:40:12	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Samwell Tarly"}, {"name": "Pypar"}]}
1	7	0:40:12	0:42:19	The Crownlands	King's Landing	{"characters": [{"name": "Renly Baratheon"}, {"name": "Eddard Stark", "title": "Hand"}]}
1	7	0:42:19	0:45:49	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Tomard"}, {"name": "Petyr Baelish"}]}
1	7	0:45:49	0:46:27	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Samwell Tarly"}, {"name": "Ghost"}]}
1	7	0:46:27	0:47:57	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow"}, {"name": "Samwell Tarly"}, {"name": "Othell Yarwyck"}, {"name": "Ghost"}]}
1	7	0:47:57	0:51:36	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Wine Merchant"}, {"name": "Rakharo"}, {"name": "Khal Drogo", "title": "Khal"}]}
1	7	0:51:36	0:51:57	Vaes Dothrak	NULL	{"characters": [{"name": "Khal Drogo", "title": "Khal"}, {"name": "Jorah Mormont"}, {"name": "Qotho"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Wine Merchant"}]}
1	7	0:51:57	0:52:17	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Royal Steward"}, {"name": "Robert Baratheon", "alive": false, "mannerOfDeath": "Boar", "killedBy": ["Boar"]}]}
1	7	0:52:17	0:52:58	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Petyr Baelish"}, {"name": "Lord Varys"}]}
1	7	0:52:58	0:53:12	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Petyr Baelish"}, {"name": "Lord Varys"}]}
1	7	0:53:12	0:56:41	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Petyr Baelish"}, {"name": "Lord Varys"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Cersei Lannister"}, {"name": "Barristan Selmy"}, {"name": "Sandor Clegane"}]}
1	8	0:01:53	0:02:00	The Crownlands	King's Landing	{"characters": [{"name": "Syrio Forel"}, {"name": "Arya Stark"}]}
1	8	0:02:00	0:02:14	The Crownlands	King's Landing	{"characters": []}
1	8	0:02:14	0:02:22	The Crownlands	King's Landing	{"characters": [{"name": "Syrio Forel"}, {"name": "Arya Stark"}]}
1	8	0:02:22	0:02:37	The Crownlands	King's Landing	{"characters": [{"name": "Vayon Poole", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Lannister Guard"]}]}
1	8	0:02:37	0:03:19	The Crownlands	King's Landing	{"characters": [{"name": "Septa Mordane"}, {"name": "Sansa Stark"}]}
1	8	0:03:19	0:05:53	The Crownlands	King's Landing	{"characters": [{"name": "Syrio Forel", "alive": false, "killedBy": ["Meryn Trant"]}, {"name": "Arya Stark"}, {"name": "Meryn Trant"}]}
1	8	0:05:53	0:06:14	The Crownlands	King's Landing	{"characters": [{"name": "Arya Stark"}]}
1	8	0:06:14	0:06:35	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Sandor Clegane"}]}
1	8	0:06:35	0:07:12	The Crownlands	King's Landing	{"characters": [{"name": "Arya Stark"}, {"name": "Red Keep Stableboy", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Arya Stark"]}]}
1	8	0:07:12	0:10:14	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Lord Varys"}]}
1	8	0:10:14	0:11:30	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Jeor Mormont"}, {"name": "Jon Snow"}, {"name": "Othor", "alive": false}, {"name": "Jafer Flowers", "alive": false}, {"name": "Othell Yarwyck"}]}
1	8	0:11:30	0:12:59	The Wall	Castle Black	{"characters": [{"name": "Jeor Mormont"}, {"name": "Jon Snow"}]}
1	8	0:12:59	0:15:11	The Crownlands	King's Landing	{"characters": [{"name": "Grand Maester Pycelle"}, {"name": "Cersei Lannister"}, {"name": "Lord Varys"}, {"name": "Petyr Baelish"}, {"name": "Sansa Stark"}]}
1	8	0:15:11	0:16:24	The North	Winterfell	{"characters": [{"name": "Robb Stark"}, {"name": "Maester Luwin"}, {"name": "Theon Greyjoy"}]}
1	8	0:16:24	0:16:37	The North	Winterfell	{"characters": []}
1	8	0:16:37	0:18:31	The Vale	The Eyrie	{"characters": [{"name": "Catelyn Stark"}, {"name": "Lysa Arryn"}, {"name": "Robin Arryn"}]}
1	8	0:18:31	0:19:54	The Vale	To the Westerlands	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Bronn"}]}
1	8	0:19:54	0:22:45	The Vale	To the Westerlands	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Bronn"}, {"name": "Shagga"}]}
1	8	0:22:45	0:23:53	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Pypar"}, {"name": "Jon Snow"}, {"name": "Alliser Thorne"}, {"name": "Grenn"}, {"name": "Jeor Mormont"}]}
1	8	0:23:53	0:24:48	The Wall	Castle Black	{"characters": [{"name": "Ghost"}, {"name": "Jon Snow"}]}
1	8	0:24:48	0:26:14	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Ghost"}, {"name": "Othor", "alive": false, "mannerOfDeath": "Burning", "killedBy": ["Jon Snow"]}, {"name": "Jeor Mormont"}]}
1	8	0:26:14	0:28:20	The Dothraki Sea	Lhazareen Village	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Rakharo"}, {"name": "Doreah"}, {"name": "Irri"}, {"name": "Mirri Maz Duur"}, {"name": "Mago"}]}
1	8	0:28:20	0:32:33	The Dothraki Sea	Lhazareen Village	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Doreah"}, {"name": "Irri"}, {"name": "Rakharo"}, {"name": "Khal Drogo", "title": "Khal"}, {"name": "Mago", "alive": false, "mannerOfDeath": "Tongue removal", "killedBy": ["Khal Drogo"]}, {"name": "Qotho"}, {"name": "Mirri Maz Duur"}]}
1	8	0:32:33	0:34:17	The North	Winterfell	{"characters": [{"name": "Grey Wind"}, {"name": "Greatjon Umber"}, {"name": "Bran Stark"}, {"name": "Theon Greyjoy"}, {"name": "Robb Stark"}]}
1	8	0:34:17	0:36:19	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Robb Stark"}, {"name": "Rickon Stark"}]}
1	8	0:36:19	0:38:35	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Osha"}, {"name": "Hodor"}]}
1	8	0:38:35	0:39:45	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Pypar"}, {"name": "Grenn"}, {"name": "Rast"}, {"name": "Samwell Tarly"}]}
1	8	0:39:45	0:40:10	The North	The Neck	{"characters": [{"name": "Catelyn Stark"}, {"name": "Rodrik Cassel"}]}
1	8	0:40:10	0:41:18	The North	The Neck	{"characters": [{"name": "Robb Stark"}, {"name": "Greatjon Umber"}, {"name": "Theon Greyjoy"}, {"name": "Catelyn Stark"}, {"name": "Rodrik Cassel"}]}
1	8	0:41:18	0:43:21	The North	The Neck	{"characters": [{"name": "Catelyn Stark"}, {"name": "Robb Stark"}]}
1	8	0:43:21	0:44:34	The Westerlands	Lannister Camp	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Bronn"}, {"name": "Shagga"}, {"name": "Timett"}]}
1	8	0:44:34	0:47:52	The Westerlands	Lannister Camp	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Tywin Lannister"}, {"name": "Bronn"}, {"name": "Shagga"}, {"name": "Kevan Lannister"}, {"name": "Timett"}, {"name": "Chella"}, {"name": "Lannister Messenger"}]}
1	8	0:47:52	0:48:25	The North	The Neck	{"characters": [{"name": "Rodrik Cassel"}, {"name": "Catelyn Stark"}, {"name": "Greatjon Umber"}, {"name": "Robb Stark"}, {"name": "Theon Greyjoy"}]}
1	8	0:48:25	0:48:32	The North	The Neck	{"characters": [{"name": "Lannister Scout"}]}
1	8	0:48:32	0:50:40	The North	The Neck	{"characters": [{"name": "Robb Stark"}, {"name": "Theon Greyjoy"}, {"name": "Greatjon Umber"}, {"name": "Rodrik Cassel"}, {"name": "Catelyn Stark"}, {"name": "Lannister Scout"}]}
1	8	0:50:40	0:50:50	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}]}
1	8	0:50:50	0:56:59	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Cersei Lannister"}, {"name": "Sandor Clegane"}, {"name": "Janos Slynt"}, {"name": "Grand Maester Pycelle"}, {"name": "Lord Varys"}, {"name": "Petyr Baelish"}, {"name": "Barristan Selmy"}, {"name": "Royal Steward"}, {"name": "Meryn Trant"}]}
1	9	0:02:24	0:06:25	The Crownlands	King's Landing	{"characters": [{"name": "Eddard Stark", "title": "Hand"}, {"name": "Lord Varys"}]}
1	9	0:06:25	0:08:12	The Riverlands	The Twins	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Robb Stark"}, {"name": "Catelyn Stark"}, {"name": "Greatjon Umber"}, {"name": "Rodrik Cassel"}]}
1	9	0:08:12	0:09:48	The Riverlands	The Twins	{"characters": [{"name": "Walder Frey"}, {"name": "Joyeuse Erenford"}, {"name": "Catelyn Stark"}, {"name": "Stevron Frey"}, {"name": "Ryger Rivers"}]}
1	9	0:09:48	0:11:41	The Riverlands	The Twins	{"characters": [{"name": "Catelyn Stark"}, {"name": "Walder Frey"}]}
1	9	0:11:41	0:13:56	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "receives", "name": "Longclaw"}]}, {"name": "Jeor Mormont", "weapon": [{"action": "gives", "name": "Longclaw"}]}]}
1	9	0:13:56	0:14:12	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
1	9	0:14:12	0:15:35	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Pypar"}, {"name": "Samwell Tarly"}, {"name": "Grenn"}, {"name": "Rast"}]}
1	9	0:15:35	0:15:49	The Riverlands	The Twins	{"characters": [{"name": "Catelyn Stark"}]}
1	9	0:15:49	0:17:31	The Riverlands	The Twins	{"characters": [{"name": "Robb Stark"}, {"name": "Theon Greyjoy"}, {"name": "Catelyn Stark"}, {"name": "Rodrik Cassel"}, {"name": "Greatjon Umber"}]}
1	9	0:17:31	0:17:58	The Riverlands	The Twins	{"characters": []}
1	9	0:17:58	0:21:38	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Maester Aemon"}]}
1	9	0:21:38	0:23:19	The Red Waste	The Desert	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Khal Drogo", "title": "Khal"}, {"name": "Qotho"}, {"name": "Rakharo"}]}
1	9	0:23:19	0:25:07	The Riverlands	Lannister Camp	{"characters": [{"name": "Tywin Lannister"}, {"name": "Tyrion Lannister"}, {"name": "Kevan Lannister"}]}
1	9	0:25:07	0:27:41	The Riverlands	Lannister Camp	{"characters": [{"name": "Tyrion Lannister", "sex": {"with": ["Shae"], "when": "present", "type": "paid"}}, {"name": "Bronn"}, {"name": "Shae", "sex": {"with": ["Tyrion Lannister"], "when": "present", "type": "paid"}}]}
1	9	0:27:41	0:35:26	The Red Waste	NULL	{"characters": [{"name": "Khal Drogo", "title": "Khal"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Doreah"}, {"name": "Mirri Maz Duur"}, {"name": "Qotho", "alive": false, "mannerOfDeath": "Face stab", "killedBy": ["Jorah Mormont"]}, {"name": "Irri"}, {"name": "Rakharo"}]}
1	9	0:35:26	0:42:44	The Riverlands	Lannister Camp	{"characters": [{"name": "Tyrion Lannister", "sex": {"with": ["Shae"], "when": "future", "type": "paid"}}, {"name": "Shae", "sex": {"with": ["Tyrion Lannister"], "when": "future", "type": "paid"}}, {"name": "Bronn"}]}
1	9	0:42:44	0:43:40	The Riverlands	Lannister Camp	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Shae"}, {"name": "Bronn"}]}
1	9	0:43:40	0:44:04	The Riverlands	Lannister Camp	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Bronn"}]}
1	9	0:44:04	0:44:52	The Riverlands	Lannister Camp	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Bronn"}, {"name": "Timett"}, {"name": "Chella"}, {"name": "Shagga"}]}
1	9	0:44:52	0:46:31	The Riverlands	Battlefield	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Bronn"}, {"name": "Tywin Lannister"}]}
1	9	0:46:31	0:46:52	The Riverlands	Riverrun	{"characters": [{"name": "Catelyn Stark"}, {"name": "Rodrik Cassel"}]}
1	9	0:46:52	0:47:23	The Riverlands	Riverrun	{"characters": [{"name": "Robb Stark"}, {"name": "Catelyn Stark"}, {"name": "Rodrik Cassel"}]}
1	9	0:47:23	0:49:26	The Riverlands	Riverrun	{"characters": [{"name": "Jaime Lannister"}, {"name": "Robb Stark"}, {"name": "Catelyn Stark"}, {"name": "Rodrik Cassel"}, {"name": "Theon Greyjoy"}, {"name": "Greatjon Umber"}]}
1	9	0:49:26	0:50:24	The Crownlands	King's Landing	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "King's Landing Baker"}]}
1	9	0:50:24	0:55:54	The Crownlands	King's Landing	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Eddard Stark", "title": "Hand", "alive": false, "mannerOfDeath": "Decapitation", "killedBy": ["Ilyn Payne"]}, {"name": "Yoren"}, {"name": "Sansa Stark"}, {"name": "Petyr Baelish"}, {"name": "Cersei Lannister"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Grand Maester Pycelle"}, {"name": "Lord Varys"}, {"name": "Sandor Clegane"}, {"name": "Ilyn Payne", "weapon": [{"action": "has", "name": "Ice"}]}]}
1	10	0:02:17	0:03:03	The Crownlands	King's Landing	{"characters": [{"name": "Sandor Clegane"}, {"name": "Ilyn Payne", "weapon": [{"action": "has", "name": "Ice"}]}, {"name": "Eddard Stark", "alive": false}, {"name": "Arya Stark"}, {"name": "Yoren"}, {"name": "Sansa Stark"}, {"name": "Lord Varys"}]}
1	10	0:03:03	0:03:25	The Crownlands	King's Landing	{"characters": [{"name": "Arya Stark"}, {"name": "Yoren"}]}
1	10	0:03:25	0:03:53	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Three-Eyed Raven"}]}
1	10	0:03:53	0:04:24	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Osha"}, {"name": "Hodor"}]}
1	10	0:04:24	0:05:40	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Osha"}, {"name": "Shaggydog"}, {"name": "Rickon Stark"}]}
1	10	0:05:40	0:06:07	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Osha"}, {"name": "Maester Luwin"}]}
1	10	0:06:07	0:08:07	The Riverlands	Camp of the North	{"characters": [{"name": "Catelyn Stark"}, {"name": "Robb Stark"}]}
1	10	0:08:07	0:10:52	The Crownlands	King's Landing	{"characters": [{"name": "Marillion"}, {"name": "Sansa Stark"}, {"name": "Cersei Lannister"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Sandor Clegane"}, {"name": "Ilyn Payne", "weapon": [{"action": "has", "name": "Ice"}]}, {"name": "Meryn Trant"}]}
1	10	0:10:52	0:13:32	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Sandor Clegane"}, {"name": "Sansa Stark"}, {"name": "Meryn Trant"}, {"name": "Eddard Stark", "alive": false}, {"name": "Septa Mordane", "alive": false, "mannerOfDeath": "Decapitation"}]}
1	10	0:13:32	0:15:48	The Riverlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Catelyn Stark"}, {"name": "Rodrik Cassel"}, {"name": "Theon Greyjoy"}, {"name": "Greatjon Umber"}, {"name": "Rickard Karstark"}]}
1	10	0:15:48	0:18:51	The Riverlands	Camp of the North	{"characters": [{"name": "Catelyn Stark"}, {"name": "Jaime Lannister"}]}
1	10	0:18:51	0:19:23	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister", "sex": {"with": ["Lancel Lannister"], "when": "past", "type": "incest"}}, {"name": "Lancel Lannister", "sex": {"with": ["Cersei Lannister"], "when": "past", "type": "incest"}}]}
1	10	0:19:23	0:20:39	The Riverlands	Lannister Camp	{"characters": [{"name": "Tywin Lannister"}, {"name": "Kevan Lannister"}, {"name": "Tyrion Lannister"}, {"name": "Leo Lefford"}]}
1	10	0:20:39	0:22:37	The Riverlands	Lannister Camp	{"characters": [{"name": "Tywin Lannister"}, {"name": "Tyrion Lannister"}]}
1	10	0:22:37	0:24:30	The Red Waste	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Rhaego", "alive": false, "mannerOfDeath": "Malformed Birth"}, {"name": "Mirri Maz Duur"}]}
1	10	0:24:30	0:26:07	The Red Waste	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Mirri Maz Duur"}, {"name": "Rakharo"}, {"name": "Irri"}, {"name": "Khal Drogo", "title": "Khal"}]}
1	10	0:26:07	0:27:31	The Red Waste	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Mirri Maz Duur"}]}
1	10	0:27:31	0:28:28	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Samwell Tarly"}, {"name": "Ghost"}]}
1	10	0:28:28	0:29:52	The Riverlands	Lannister Camp	{"characters": [{"name": "Shae", "sex": {"with": ["Tyrion Lannister"], "when": "future", "type": "paid"}}, {"name": "Tyrion Lannister", "sex": {"with": ["Shae"], "when": "future", "type": "paid"}}]}
1	10	0:29:52	0:31:55	The North	The Gift	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ghost"}, {"name": "Pypar"}, {"name": "Samwell Tarly"}, {"name": "Grenn"}]}
1	10	0:31:55	0:33:02	The Red Waste	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Khal Drogo", "title": "Khal"}]}
1	10	0:33:02	0:34:28	The Red Waste	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Khal Drogo", "title": "Khal", "alive": false, "mannerOfDeath": "Suffocation", "killedBy": ["Daenerys Targaryen"]}]}
1	10	0:34:28	0:37:33	The Crownlands	King's Landing	{"characters": [{"name": "Grand Maester Pycelle", "sex": {"with": ["Ros"], "when": "past", "type": "paid"}}, {"name": "Ros", "sex": {"with": ["Grand Maester Pycelle"], "when": "past", "type": "paid"}}]}
1	10	0:37:33	0:37:52	The Crownlands	King's Landing	{"characters": [{"name": "Grand Maester Pycelle"}]}
1	10	0:37:52	0:39:58	The Crownlands	King's Landing	{"characters": [{"name": "Petyr Baelish"}, {"name": "Lord Varys"}, {"name": "Joffrey Baratheon", "title": "King"}]}
1	10	0:39:58	0:40:38	The Crownlands	King's Landing	{"characters": [{"name": "Yoren"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
1	10	0:40:38	0:40:48	The Crownlands	King's Landing	{"characters": [{"name": "Yoren"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
1	10	0:40:48	0:43:03	The Crownlands	King's Landing	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Hot Pie"}, {"name": "Lommy Greenhands"}, {"name": "Gendry"}, {"name": "Yoren"}]}
1	10	0:43:03	0:45:00	The Wall	Castle Black	{"characters": [{"name": "Jeor Mormont"}, {"name": "Jon Snow"}]}
1	10	0:45:00	0:45:46	The Wall	Castle Black	{"characters": [{"name": "Jeor Mormont"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
1	10	0:45:46	0:50:09	The Red Waste	NULL	{"characters": [{"name": "Khal Drogo", "title": "Khal", "alive": false}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Rakharo"}, {"name": "Drogon", "born": false}, {"name": "Rhaegal", "born": false}, {"name": "Viserion", "born": false}, {"name": "Jorah Mormont"}, {"name": "Mirri Maz Duur", "alive": false, "mannerOfDeath": "Burning", "killedBy": ["Daenerys Targaryen"]}]}
1	10	0:50:09	0:51:57	The Red Waste	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Rakharo"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Rhaegal"}, {"name": "Viserion"}]}
2	1	0:02:29	0:03:08	The Crownlands	King's Landing	{"characters": [{"name": "Sandor Clegane"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Sansa Stark"}, {"name": "Meryn Trant"}]}
2	1	0:03:08	0:03:12	The Crownlands	King's Landing	{"characters": []}
2	1	0:03:12	0:06:54	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Tommen Baratheon"}, {"name": "Myrcella Baratheon"}, {"name": "Sansa Stark"}, {"name": "Dontos Hollard"}, {"name": "Sandor Clegane"}, {"name": "Meryn Trant"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Bronn"}]}
2	1	0:06:54	0:09:13	The Crownlands	King's Landing	{"characters": [{"name": "Lord Varys"}, {"name": "Grand Maester Pycelle"}, {"name": "Cersei Lannister"}, {"name": "Petyr Baelish"}, {"name": "Janos Slynt"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
2	1	0:09:13	0:10:50	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Cersei Lannister"}]}
2	1	0:10:50	0:12:46	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Maester Luwin"}, {"name": "Lord Portan"}, {"name": "Northern Lord"}]}
2	1	0:12:46	0:13:19	The North	Winterfell	{"characters": [{"name": "Summer"}]}
2	1	0:13:19	0:13:26	The North	Winterfell	{"characters": [{"name": "Bran Stark"}]}
2	1	0:13:26	0:14:50	The North	Winterfell	{"characters": [{"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Osha"}]}
2	1	0:14:50	0:17:55	The Red Waste	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Doreah"}, {"name": "Rakharo"}, {"name": "Jorah Mormont"}, {"name": "Aggo"}, {"name": "Kovarro"}]}
2	1	0:17:55	0:18:48	The Red Waste	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Rakharo"}]}
2	1	0:18:48	0:19:23	North of the Wall	Craster's Keep	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Samwell Tarly"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}]}
2	1	0:19:23	0:20:31	North of the Wall	Craster's Keep	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Eddison Tollett"}, {"name": "Samwell Tarly"}, {"name": "Grenn"}]}
2	1	0:20:31	0:24:30	North of the Wall	Craster's Keep	{"characters": [{"name": "Jeor Mormont"}, {"name": "Craster"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gilly"}]}
2	1	0:24:30	0:25:02	North of the Wall	Craster's Keep	{"characters": [{"name": "Jeor Mormont"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
2	1	0:25:02	0:28:11	The Crownlands	Dragonstone	{"characters": [{"name": "Melisandre"}, {"name": "Maester Cressen"}, {"name": "Davos Seaworth"}, {"name": "Matthos Seaworth"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "receives", "name": "Lightbringer"}]}, {"name": "Selyse Baratheon"}]}
2	1	0:28:11	0:29:10	The Crownlands	Dragonstone	{"characters": [{"name": "Davos Seaworth"}, {"name": "Maester Cressen"}]}
2	1	0:29:10	0:32:14	The Crownlands	Dragonstone	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Matthos Seaworth"}, {"name": "Davos Seaworth"}, {"name": "Melisandre"}, {"name": "Maester Cressen", "alive": false, "mannerOfDeath": "Poison", "killedBy": ["Maester Cressen"]}]}
2	1	0:32:14	0:35:42	The Riverlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Jaime Lannister"}, {"name": "Grey Wind"}]}
2	1	0:35:42	0:37:21	The Crownlands	King's Landing	{"characters": [{"name": "Shae"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
2	1	0:37:21	0:40:06	The Crownlands	King's Landing	{"characters": [{"name": "Petyr Baelish"}, {"name": "Cersei Lannister"}]}
2	1	0:40:06	0:41:38	The Riverlands	Camp of the North	{"characters": [{"name": "Alton Lannister"}, {"name": "Robb Stark", "title": "King"}, {"name": "Rodrik Cassel"}, {"name": "Theon Greyjoy"}]}
2	1	0:41:38	0:42:46	The Riverlands	Camp of the North	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Robb Stark", "title": "King"}]}
2	1	0:42:46	0:45:37	The Riverlands	Camp of the North	{"characters": [{"name": "Catelyn Stark"}, {"name": "Robb Stark", "title": "King"}]}
2	1	0:45:37	0:48:02	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Joffrey Baratheon", "title": "King"}]}
2	1	0:48:02	0:48:27	The Crownlands	King's Landing	{"characters": [{"name": "Ros"}, {"name": "Armeca"}, {"name": "Daisy"}]}
2	1	0:48:27	0:50:32	The Crownlands	King's Landing	{"characters": [{"name": "Ros"}, {"name": "Daisy"}, {"name": "Janos Slynt"}, {"name": "Mhaegen"}, {"name": "Barra", "alive": false, "killedBy": ["Janos Slynt"]}]}
2	1	0:50:32	0:51:00	The Crownlands	King's Landing	{"characters": []}
2	1	0:51:00	0:51:23	The Crownlands	King's Landing	{"characters": [{"name": "Janos Slynt"}, {"name": "Tobho Mott"}]}
2	1	0:51:23	0:51:52	The Riverlands	The Kingsroad	{"characters": [{"name": "Gendry"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Hot Pie"}, {"name": "Lommy Greenhands"}]}
2	2	0:01:55	0:02:08	The Riverlands	The Kingsroad	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
2	2	0:02:08	0:03:33	The Riverlands	The Kingsroad	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Jaqen H'ghar"}, {"name": "Rorge"}, {"name": "Biter"}, {"name": "Gendry"}]}
2	2	0:03:33	0:05:46	The Riverlands	The Kingsroad	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Gendry"}, {"name": "Yoren"}, {"name": "Goldcloak"}]}
2	2	0:05:46	0:08:16	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Shae"}, {"name": "Lord Varys"}]}
2	2	0:08:16	0:09:05	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Alton Lannister"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Grand Maester Pycelle"}, {"name": "Lord Varys"}, {"name": "Petyr Baelish"}]}
2	2	0:09:05	0:10:22	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Grand Maester Pycelle"}, {"name": "Lord Varys"}, {"name": "Petyr Baelish"}, {"name": "Janos Slynt"}]}
2	2	0:10:22	0:11:51	North of the Wall	Craster's Keep	{"characters": [{"name": "Samwell Tarly"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}]}
2	2	0:11:51	0:12:37	North of the Wall	Craster's Keep	{"characters": [{"name": "Samwell Tarly"}, {"name": "Gilly"}, {"name": "Ghost"}]}
2	2	0:12:37	0:14:40	North of the Wall	Craster's Keep	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Samwell Tarly"}, {"name": "Gilly"}]}
2	2	0:14:40	0:17:31	The Red Waste	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Irri"}, {"name": "Rakharo", "alive": false, "mannerOfDeath": "Decapitation"}]}
2	2	0:17:31	0:17:54	The Sunset Sea	NULL	{"characters": [{"name": "Theon Greyjoy"}]}
2	2	0:17:54	0:19:53	The Sunset Sea	NULL	{"characters": [{"name": "Theon Greyjoy", "sex": {"with": ["Captain's Daughter"], "when": "present", "type": "fun"}}, {"name": "Captain's Daughter", "sex": {"with": ["Theon Greyjoy"], "when": "present", "type": "fun"}}]}
2	2	0:19:53	0:20:48	The Crownlands	King's Landing	{"characters": [{"name": "Petyr Baelish"}, {"name": "Brothel Customer", "sex": {"with": ["Armeca"], "when": "future", "type": "paid"}}, {"name": "Armeca", "sex": {"with": ["Brothel Customer"], "when": "future", "type": "paid"}}]}
2	2	0:20:48	0:24:17	The Crownlands	King's Landing	{"characters": [{"name": "Petyr Baelish"}, {"name": "Ros"}]}
2	2	0:24:17	0:24:32	The Crownlands	King's Landing	{"characters": [{"name": "Podrick Payne"}, {"name": "Janos Slynt"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
2	2	0:24:32	0:27:32	The Crownlands	King's Landing	{"characters": [{"name": "Janos Slynt"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Bronn"}]}
2	2	0:27:32	0:28:03	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Bronn"}]}
2	2	0:28:03	0:29:31	The Riverlands	The Kingsroad	{"characters": [{"name": "Gendry"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Hot Pie"}, {"name": "Lommy Greenhands"}]}
2	2	0:29:31	0:31:59	The Riverlands	The Kingsroad	{"characters": [{"name": "Gendry"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
2	2	0:31:59	0:33:18	The Iron Islands	Lordsport	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Lordsport Dockhand"}]}
2	2	0:33:18	0:33:53	The Iron Islands	Lordsport	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Yara Greyjoy"}]}
2	2	0:33:53	0:35:01	The Iron Islands	Pyke	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Yara Greyjoy"}]}
2	2	0:35:01	0:37:47	The Iron Islands	Pyke	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Balon Greyjoy"}]}
2	2	0:37:47	0:39:12	The Iron Islands	Pyke	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Balon Greyjoy", "title": "King"}, {"name": "Yara Greyjoy"}]}
2	2	0:39:12	0:42:24	The Crownlands	Dragonstone	{"characters": [{"name": "Davos Seaworth"}, {"name": "Matthos Seaworth"}, {"name": "Salladhor Saan"}]}
2	2	0:42:24	0:43:32	The Crownlands	Dragonstone	{"characters": [{"name": "Davos Seaworth"}, {"name": "Matthos Seaworth"}]}
2	2	0:43:32	0:46:03	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Cersei Lannister"}]}
2	2	0:46:03	0:47:16	The Crownlands	Dragonstone	{"characters": [{"name": "Davos Seaworth"}, {"name": "Matthos Seaworth"}, {"name": "Stannis Baratheon", "title": "King"}, {"name": "Melisandre"}]}
2	2	0:47:16	0:49:57	The Crownlands	Dragonstone	{"characters": [{"name": "Stannis Baratheon", "title": "King", "sex": {"with": ["Melisandre"], "when": "present", "type": "ambition"}}, {"name": "Melisandre", "sex": {"with": ["Stannis Baratheon"], "when": "present", "type": "ambition"}}]}
2	2	0:49:57	0:51:39	North of the Wall	Craster's Keep	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Craster"}]}
2	2	0:51:39	0:52:09	North of the Wall	Craster's Keep	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "White Walker"}, {"name": "Craster"}]}
2	3	0:01:53	0:02:30	North of the Wall	Craster's Keep	{"characters": [{"name": "Craster", "weapon": [{"action": "gives", "name": "Longclaw"}]}, {"name": "Jeor Mormont", "weapon": [{"action": "receives", "name": "Longclaw"}]}, {"name": "Jon Snow"}]}
2	3	0:02:30	0:04:24	North of the Wall	Craster's Keep	{"characters": [{"name": "Jeor Mormont", "weapon": [{"action": "gives", "name": "Longclaw"}]}, {"name": "Samwell Tarly"}, {"name": "Jon Snow", "weapon": [{"action": "receives", "name": "Longclaw"}]}]}
2	3	0:04:24	0:05:53	North of the Wall	Craster's Keep	{"characters": [{"name": "Samwell Tarly"}, {"name": "Gilly"}]}
2	3	0:05:53	0:06:11	The North	Winterfell	{"characters": [{"name": "Hodor"}, {"name": "Maester Luwin"}]}
2	3	0:06:11	0:06:44	The North	Winterfell	{"characters": [{"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Summer"}]}
2	3	0:06:44	0:09:16	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Maester Luwin"}]}
2	3	0:09:16	0:13:24	The Stormlands	Storm's End	{"characters": [{"name": "Renly Baratheon", "title": "King", "married": {"to": "Margaery Tyrell", "when": "past", "type": "arranged", "consummated": false}}, {"name": "Margaery Tyrell", "married": {"to": "Renly Baratheon", "when": "past", "type": "arranged", "consummated": false}}, {"name": "Brienne of Tarth"}, {"name": "Catelyn Stark"}, {"name": "Loras Tyrell"}]}
2	3	0:13:24	0:14:19	The Stormlands	Storm's End	{"characters": [{"name": "Catelyn Stark"}, {"name": "Renly Baratheon", "title": "King"}, {"name": "Brienne of Tarth"}, {"name": "Gerald"}]}
2	3	0:14:19	0:14:45	The Stormlands	Storm's End	{"characters": [{"name": "Brienne of Tarth"}, {"name": "Catelyn Stark"}]}
2	3	0:14:45	0:18:40	The Iron Islands	Pyke	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Yara Greyjoy"}, {"name": "Balon Greyjoy", "title": "King"}]}
2	3	0:18:40	0:19:03	The Iron Islands	Pyke	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Yara Greyjoy"}]}
2	3	0:19:03	0:20:43	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Shae"}]}
2	3	0:20:43	0:22:11	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}, {"name": "Myrcella Baratheon"}, {"name": "Sansa Stark"}]}
2	3	0:22:11	0:24:24	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}]}
2	3	0:24:24	0:25:43	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Grand Maester Pycelle"}]}
2	3	0:25:43	0:26:24	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lord Varys"}]}
2	3	0:26:24	0:28:21	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Petyr Baelish"}]}
2	3	0:28:21	0:30:26	The Stormlands	Storm's End	{"characters": [{"name": "Renly Baratheon", "title": "King", "sex": {"with": ["Loras Tyrell"], "when": "present", "type": "love"}}, {"name": "Loras Tyrell", "sex": {"with": ["Renly Baratheon"], "when": "present", "type": "love"}}]}
2	3	0:30:26	0:33:39	The Stormlands	Storm's End	{"characters": [{"name": "Renly Baratheon", "title": "King"}, {"name": "Margaery Tyrell"}]}
2	3	0:33:39	0:35:01	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Cersei Lannister"}]}
2	3	0:35:01	0:35:37	The Iron Islands	Pyke	{"characters": [{"name": "Theon Greyjoy"}]}
2	3	0:35:37	0:36:58	The Iron Islands	Pyke	{"characters": [{"name": "Balon Greyjoy", "title": "King"}, {"name": "Yara Greyjoy"}, {"name": "Theon Greyjoy"}, {"name": "Drowned Priest"}]}
2	3	0:36:58	0:38:12	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Petyr Baelish"}, {"name": "Bronn"}]}
2	3	0:38:12	0:40:20	The Crownlands	King's Landing	{"characters": [{"name": "Grand Maester Pycelle", "sex": {"with": ["Daisy"], "when": "past", "type": "paid"}}, {"name": "Daisy", "sex": {"with": ["Grand Maester Pycelle"], "when": "past", "type": "paid"}}, {"name": "Bronn"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
2	3	0:40:20	0:42:11	The Crownlands	King's Landing	{"characters": [{"name": "Lord Varys"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
2	3	0:42:11	0:46:28	The Riverlands	The Kingsroad	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Yoren"}, {"name": "Gendry"}]}
2	3	0:46:28	0:47:01	The Riverlands	The Kingsroad	{"characters": [{"name": "Yoren"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Gendry"}, {"name": "Hot Pie"}, {"name": "Lommy Greenhands"}]}
2	3	0:47:01	0:48:33	The Riverlands	The Kingsroad	{"characters": [{"name": "Yoren", "alive": false, "mannerOfDeath": "Back stab", "killedBy": ["Amory Lorch"]}, {"name": "Amory Lorch"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Gendry"}, {"name": "Polliver"}]}
2	3	0:48:33	0:50:32	The Riverlands	The Kingsroad	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "loses", "name": "Needle"}]}, {"name": "Gendry"}, {"name": "Hot Pie"}, {"name": "Lommy Greenhands", "alive": false, "mannerOfDeath": "Neck stab", "killedBy": ["Polliver"]}, {"name": "Jaqen H'ghar"}, {"name": "Polliver", "weapon": [{"action": "has", "name": "Needle"}]}]}
2	3	0:50:32	0:51:22	The Riverlands	The Kingsroad	{"characters": [{"name": "Arya Stark"}, {"name": "Gendry"}, {"name": "Amory Lorch"}, {"name": "Hot Pie"}, {"name": "Yoren", "alive": false}, {"name": "Lommy Greenhands", "alive": false}]}
2	4	0:01:53	0:03:42	The Westerlands	Oxcross	{"characters": [{"name": "Rennick", "alive": false, "mannerOfDeath": "Mauling", "killedBy": ["Grey Wind"]}, {"name": "Lannister Guard"}, {"name": "Grey Wind"}]}
2	4	0:03:42	0:03:55	The Westerlands	Oxcross	{"characters": [{"name": "Robb Stark", "title": "King"}]}
2	4	0:03:55	0:04:59	The Westerlands	Oxcross	{"characters": [{"name": "Rennick", "alive": false}, {"name": "Robb Stark", "title": "King"}, {"name": "Roose Bolton"}]}
2	4	0:04:59	0:05:18	The Westerlands	Oxcross	{"characters": [{"name": "Talisa Maegyr"}, {"name": "Wounded Lannister"}]}
2	4	0:05:18	0:05:49	The Westerlands	Oxcross	{"characters": [{"name": "Talisa Maegyr"}, {"name": "Robb Stark", "title": "King"}, {"name": "Wounded Lannister"}, {"name": "Roose Bolton"}]}
2	4	0:05:49	0:06:00	The Westerlands	Oxcross	{"characters": []}
2	4	0:06:00	0:07:47	The Westerlands	Oxcross	{"characters": [{"name": "Talisa Maegyr"}, {"name": "Robb Stark", "title": "King"}]}
2	4	0:07:47	0:09:03	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Sansa Stark"}, {"name": "Sandor Clegane"}, {"name": "Lancel Lannister"}, {"name": "Meryn Trant"}]}
2	4	0:09:03	0:10:39	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Sansa Stark"}, {"name": "Sandor Clegane"}, {"name": "Lancel Lannister"}, {"name": "Meryn Trant"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Bronn"}]}
2	4	0:10:39	0:11:04	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Bronn"}]}
2	4	0:11:04	0:11:28	The Crownlands	King's Landing	{"characters": [{"name": "Sandor Clegane"}, {"name": "Joffrey Baratheon", "title": "King"}]}
2	4	0:11:28	0:14:44	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Ros", "sex": {"with": ["Daisy"], "when": "present", "type": "paid"}}, {"name": "Daisy", "sex": {"with": ["Ros"], "when": "present", "type": "paid"}}]}
2	4	0:14:44	0:14:56	The Stormlands	Storm's End	{"characters": []}
2	4	0:14:56	0:15:09	The Stormlands	Storm's End	{"characters": [{"name": "Renly Baratheon", "title": "King"}, {"name": "Brienne of Tarth"}, {"name": "Petyr Baelish"}]}
2	4	0:15:09	0:16:44	The Stormlands	Storm's End	{"characters": [{"name": "Renly Baratheon", "title": "King"}, {"name": "Brienne of Tarth"}, {"name": "Petyr Baelish"}]}
2	4	0:16:44	0:17:20	The Stormlands	Storm's End	{"characters": [{"name": "Petyr Baelish"}, {"name": "Margaery Tyrell"}, {"name": "Loras Tyrell"}]}
2	4	0:17:20	0:18:37	The Stormlands	Storm's End	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Petyr Baelish"}]}
2	4	0:18:37	0:19:42	The Red Waste	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Kovarro"}, {"name": "Doreah"}]}
2	4	0:19:42	0:20:29	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Hot Pie"}, {"name": "Gendry"}]}
2	4	0:20:29	0:21:30	The Riverlands	Harrenhal	{"characters": [{"name": "Old Woman Prisoner"}, {"name": "Arya Stark"}, {"name": "Gendry"}, {"name": "Hot Pie"}]}
2	4	0:21:30	0:21:58	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}]}
2	4	0:21:58	0:25:46	The Stormlands	Storm's End	{"characters": [{"name": "Catelyn Stark"}, {"name": "Petyr Baelish"}]}
2	4	0:25:46	0:27:07	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Gendry"}, {"name": "Hot Pie"}, {"name": "Gregor Clegane"}, {"name": "Tortured Prisoner"}]}
2	4	0:27:07	0:28:26	The Riverlands	Harrenhal	{"characters": [{"name": "Tortured Prisoner"}, {"name": "The Tickler"}, {"name": "Gendry"}, {"name": "Arya Stark"}, {"name": "Lannister Guard"}]}
2	4	0:28:26	0:28:47	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Old Woman Prisoner"}]}
2	4	0:28:47	0:32:00	The Stormlands	Storm's End	{"characters": [{"name": "Renly Baratheon", "title": "King"}, {"name": "Catelyn Stark"}, {"name": "Brienne of Tarth"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Davos Seaworth"}, {"name": "Melisandre"}, {"name": "Loras Tyrell"}]}
2	4	0:32:00	0:37:27	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Spice King"}, {"name": "Xaro Xhoan Daxos"}, {"name": "Pyat Pree"}, {"name": "Silk King"}]}
2	4	0:37:27	0:38:15	The Riverlands	Harrenhal	{"characters": [{"name": "Tortured Prisoner", "alive": false, "mannerOfDeath": "Decapitation", "killedBy": ["The Tickler"]}, {"name": "Hot Pie"}, {"name": "Gregor Clegane"}, {"name": "Gendry"}, {"name": "The Tickler"}, {"name": "Lannister Guard"}]}
2	4	0:38:15	0:39:50	The Riverlands	Harrenhal	{"characters": [{"name": "Tywin Lannister"}, {"name": "Arya Stark"}, {"name": "Hot Pie"}, {"name": "Gregor Clegane"}, {"name": "Gendry"}, {"name": "The Tickler"}, {"name": "Amory Lorch"}]}
2	4	0:39:50	0:43:41	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lancel Lannister"}]}
2	4	0:43:41	0:45:34	The Stormlands	Storm's End	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Davos Seaworth"}]}
2	4	0:45:34	0:46:42	The Stormlands	Storm's End	{"characters": [{"name": "Melisandre"}, {"name": "Davos Seaworth"}]}
2	4	0:46:42	0:49:18	The Stormlands	Storm's End	{"characters": [{"name": "Melisandre"}, {"name": "Davos Seaworth"}]}
2	5	0:01:54	0:05:17	The Stormlands	Storm's End	{"characters": [{"name": "Catelyn Stark"}, {"name": "Brienne of Tarth"}, {"name": "Renly Baratheon", "title": "King", "alive": false, "mannerOfDeath": "Shadow baby", "killedBy": ["Melisandre"]}]}
2	5	0:05:17	0:05:34	The Stormlands	Storm's End	{"characters": [{"name": "Petyr Baelish"}]}
2	5	0:05:34	0:08:03	The Stormlands	Storm's End	{"characters": [{"name": "Loras Tyrell"}, {"name": "Renly Baratheon", "title": "King", "alive": false}, {"name": "Margaery Tyrell"}, {"name": "Petyr Baelish"}]}
2	5	0:08:03	0:08:07	The Crownlands	King's Landing	{"characters": [{"name": "Myrcella Baratheon"}]}
2	5	0:08:07	0:09:45	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
2	5	0:09:45	0:11:23	The Crownlands	King's Landing	{"characters": [{"name": "Bronn"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lancel Lannister"}]}
2	5	0:11:23	0:11:48	The Stormlands	Storm's End	{"characters": [{"name": "Davos Seaworth"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
2	5	0:11:48	0:14:06	The Stormlands	Storm's End	{"characters": [{"name": "Davos Seaworth"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
2	5	0:14:06	0:14:46	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Bronn"}]}
2	5	0:14:46	0:15:43	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Bronn"}, {"name": "Protestor"}]}
2	5	0:15:43	0:16:13	The Iron Islands	Lordsport	{"characters": [{"name": "Theon Greyjoy"}]}
2	5	0:16:13	0:18:08	The Iron Islands	Lordsport	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Black Lorren"}, {"name": "Yara Greyjoy"}, {"name": "Dagmer Cleftjaw"}]}
2	5	0:18:08	0:18:14	The Iron Islands	Lordsport	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Dagmer Cleftjaw"}, {"name": "Yara Greyjoy"}]}
2	5	0:18:14	0:19:27	The Iron Islands	Lordsport	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Dagmer Cleftjaw"}]}
2	5	0:19:27	0:22:37	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Tywin Lannister"}, {"name": "Reginald Lannister"}]}
2	5	0:22:37	0:22:57	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
2	5	0:22:57	0:25:14	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
2	5	0:25:14	0:26:07	North of the Wall	Fist of the First Men	{"characters": [{"name": "Jeor Mormont"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Samwell Tarly"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}]}
2	5	0:26:07	0:26:28	North of the Wall	Fist of the First Men	{"characters": [{"name": "Grenn"}]}
2	5	0:26:28	0:28:15	North of the Wall	Fist of the First Men	{"characters": [{"name": "Samwell Tarly"}, {"name": "Eddison Tollett"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Grenn"}, {"name": "Ghost"}]}
2	5	0:28:15	0:31:16	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Hallyne", "weapon": [{"action": "has", "name": "Wildfire"}]}, {"name": "Bronn"}]}
2	5	0:31:16	0:31:54	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Doreah"}, {"name": "Drogon"}]}
2	5	0:31:54	0:33:16	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Doreah"}, {"name": "Drogon"}, {"name": "Irri"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
2	5	0:33:16	0:33:44	Qarth	NULL	{"characters": [{"name": "Irri"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Doreah"}, {"name": "Qartheen Woman"}]}
2	5	0:33:44	0:34:29	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Kovarro"}, {"name": "Jorah Mormont"}]}
2	5	0:34:29	0:34:40	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}]}
2	5	0:34:40	0:36:01	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Pyat Pree"}, {"name": "Xaro Xhoan Daxos"}]}
2	5	0:36:01	0:36:25	Qarth	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Quaithe"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
2	5	0:36:25	0:36:48	Qarth	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Quaithe"}]}
2	5	0:36:48	0:39:56	The Stormlands	The Woods	{"characters": [{"name": "Brienne of Tarth"}, {"name": "Catelyn Stark"}]}
2	5	0:39:56	0:40:52	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Rickon Stark"}, {"name": "Maester Luwin"}, {"name": "Winterfell Shepherd"}, {"name": "Hodor"}]}
2	5	0:40:52	0:41:33	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Rickon Stark"}, {"name": "Maester Luwin"}, {"name": "Hodor"}, {"name": "Rodrik Cassel"}, {"name": "Osha"}]}
2	5	0:41:33	0:43:25	The North	Winterfell	{"characters": [{"name": "Osha"}, {"name": "Hodor"}, {"name": "Bran Stark"}]}
2	5	0:43:25	0:46:11	North of the Wall	Fist of the First Men	{"characters": [{"name": "Samwell Tarly"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}, {"name": "Jeor Mormont"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Qhorin Halfhand"}]}
2	5	0:46:11	0:47:33	Qarth	NULL	{"characters": [{"name": "Xaro Xhoan Daxos"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
2	5	0:47:33	0:49:04	Qarth	NULL	{"characters": [{"name": "Xaro Xhoan Daxos"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
2	5	0:49:04	0:51:35	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}]}
2	5	0:51:35	0:52:48	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Gendry"}, {"name": "The Tickler", "alive": false, "mannerOfDeath": "Falling", "killedBy": ["Jaqen H'ghar"]}, {"name": "Hot Pie"}, {"name": "Jaqen H'ghar"}]}
2	6	0:01:54	0:02:33	The North	Winterfell	{"characters": [{"name": "Maester Luwin"}]}
2	6	0:02:33	0:03:13	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Bran Stark"}, {"name": "Dagmer Cleftjaw"}]}
2	6	0:03:13	0:04:03	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Bran Stark"}]}
2	6	0:04:03	0:05:35	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Theon Greyjoy"}, {"name": "Hodor"}, {"name": "Maester Luwin"}, {"name": "Dagmer Cleftjaw"}, {"name": "Farlen"}, {"name": "Osha"}, {"name": "Rickon Stark"}]}
2	6	0:05:35	0:06:27	The North	Winterfell	{"characters": [{"name": "Osha"}, {"name": "Theon Greyjoy"}, {"name": "Hodor"}, {"name": "Dagmer Cleftjaw"}, {"name": "Bran Stark"}]}
2	6	0:06:27	0:10:03	The North	Winterfell	{"characters": [{"name": "Rodrik Cassel", "alive": false, "mannerOfDeath": "Decapitation", "killedBy": ["Theon Greyjoy"]}, {"name": "Black Lorren"}, {"name": "Osha"}, {"name": "Bran Stark"}, {"name": "Maester Luwin"}, {"name": "Hodor"}, {"name": "Theon Greyjoy"}, {"name": "Dagmer Cleftjaw"}, {"name": "Rickon Stark"}]}
2	6	0:10:03	0:12:44	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Ghost"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Qhorin Halfhand"}]}
2	6	0:12:44	0:14:22	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Tywin Lannister"}]}
2	6	0:14:22	0:17:20	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Tywin Lannister"}, {"name": "Petyr Baelish"}]}
2	6	0:17:20	0:20:38	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Qhorin Halfhand"}, {"name": "Ygritte"}]}
2	6	0:20:38	0:22:12	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte"}]}
2	6	0:22:12	0:23:41	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte"}]}
2	6	0:23:41	0:24:38	The Crownlands	King's Landing	{"characters": [{"name": "Myrcella Baratheon"}, {"name": "High Septon"}, {"name": "Cersei Lannister"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Sandor Clegane"}, {"name": "Tommen Baratheon"}]}
2	6	0:24:38	0:25:01	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Sansa Stark"}, {"name": "Meryn Trant"}]}
2	6	0:25:01	0:25:12	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Meryn Trant"}, {"name": "Tommen Baratheon"}, {"name": "Cersei Lannister"}, {"name": "Sandor Clegane"}, {"name": "Sansa Stark"}]}
2	6	0:25:12	0:25:39	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Sandor Clegane"}, {"name": "Sansa Stark"}, {"name": "Meryn Trant"}, {"name": "Cersei Lannister"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Tommen Baratheon"}]}
2	6	0:25:39	0:27:09	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Sandor Clegane"}, {"name": "Sansa Stark"}, {"name": "Meryn Trant"}, {"name": "Cersei Lannister"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "High Septon", "alive": false, "mannerOfDeath": "Torn apart", "killedBy": ["King's Landing Mob"]}]}
2	6	0:27:09	0:27:13	The Crownlands	King's Landing	{"characters": [{"name": "Meryn Trant"}, {"name": "Joffrey Baratheon", "title": "King"}]}
2	6	0:27:13	0:27:18	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
2	6	0:27:18	0:27:28	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "King's Landing Rioter #1"}, {"name": "King's Landing Rioter #2"}, {"name": "King's Landing Rioter #3"}]}
2	6	0:27:28	0:28:11	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Meryn Trant"}]}
2	6	0:28:11	0:28:25	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "King's Landing Rioter #1"}, {"name": "King's Landing Rioter #2"}, {"name": "King's Landing Rioter #3"}]}
2	6	0:28:25	0:28:34	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Meryn Trant"}]}
2	6	0:28:34	0:29:15	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "King's Landing Rioter #1", "alive": false, "mannerOfDeath": "Gutted", "killedBy": ["Sandor Clegane"]}, {"name": "King's Landing Rioter #2", "alive": false, "mannerOfDeath": "Back stab", "killedBy": ["Sandor Clegane"]}, {"name": "King's Landing Rioter #3", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Sandor Clegane"]}, {"name": "Sandor Clegane"}]}
2	6	0:29:15	0:29:24	The Crownlands	King's Landing	{"characters": []}
2	6	0:29:24	0:29:43	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Meryn Trant"}, {"name": "Sandor Clegane"}, {"name": "Sansa Stark"}]}
2	6	0:29:43	0:30:23	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Xaro Xhoan Daxos"}, {"name": "Kovarro"}]}
2	6	0:30:23	0:34:23	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Xaro Xhoan Daxos"}, {"name": "Kovarro"}, {"name": "Spice King"}]}
2	6	0:34:23	0:36:53	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Tywin Lannister"}]}
2	6	0:36:53	0:37:11	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}]}
2	6	0:37:11	0:38:12	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Amory Lorch"}]}
2	6	0:38:12	0:38:41	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
2	6	0:38:41	0:38:51	The Riverlands	Harrenhal	{"characters": [{"name": "Tywin Lannister"}, {"name": "Amory Lorch", "alive": false, "mannerOfDeath": "Poison dart", "killedBy": ["Jaqen H'ghar"]}]}
2	6	0:38:51	0:39:27	The Westerlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King"}]}
2	6	0:39:27	0:41:04	The Westerlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Talisa Maegyr"}]}
2	6	0:41:04	0:41:50	The Westerlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Talisa Maegyr"}, {"name": "Catelyn Stark"}, {"name": "Brienne of Tarth"}]}
2	6	0:41:50	0:42:24	The Westerlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Catelyn Stark"}, {"name": "Brienne of Tarth"}, {"name": "Roose Bolton"}]}
2	6	0:42:24	0:45:08	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte"}]}
2	6	0:45:08	0:46:29	The Westerlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Catelyn Stark"}, {"name": "Roose Bolton"}]}
2	6	0:46:29	0:48:17	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy", "sex": {"with": ["Osha"], "when": "future", "type": "served"}}, {"name": "Osha", "sex": {"with": ["Theon Greyjoy"], "when": "future", "type": "served"}}]}
2	6	0:48:17	0:49:10	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}]}
2	6	0:49:10	0:49:43	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Osha"}]}
2	6	0:49:43	0:50:24	The North	Winterfell	{"characters": [{"name": "Osha"}, {"name": "Drennan", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Osha"]}]}
2	6	0:50:24	0:50:43	The North	Winterfell	{"characters": [{"name": "Osha"}, {"name": "Rickon Stark"}, {"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Summer"}, {"name": "Shaggydog"}]}
2	6	0:50:43	0:51:33	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Xaro Xhoan Daxos"}, {"name": "Kovarro"}]}
2	6	0:51:33	0:52:17	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Xaro Xhoan Daxos"}, {"name": "Kovarro"}, {"name": "Irri", "alive": false, "killedBy": ["Doreah"]}]}
2	6	0:52:17	0:52:37	Qarth	NULL	{"characters": [{"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
2	7	0:01:54	0:02:08	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}]}
2	7	0:02:08	0:03:08	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Black Lorren"}, {"name": "Dagmer Cleftjaw"}, {"name": "Drennan", "alive": false}]}
2	7	0:03:08	0:04:29	The North	Outside Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Maester Luwin"}, {"name": "Dagmer Cleftjaw"}]}
2	7	0:04:29	0:05:30	The North	Outside Winterfell	{"characters": [{"name": "Osha"}, {"name": "Rickon Stark"}, {"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Summer"}, {"name": "Shaggydog"}]}
2	7	0:05:30	0:07:02	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte"}]}
2	7	0:07:02	0:08:59	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte"}]}
2	7	0:08:59	0:10:18	The Riverlands	Harrenhal	{"characters": [{"name": "Tywin Lannister"}, {"name": "Gregor Clegane"}, {"name": "Arya Stark"}]}
2	7	0:10:18	0:15:02	The Riverlands	Harrenhal	{"characters": [{"name": "Tywin Lannister"}, {"name": "Arya Stark"}]}
2	7	0:15:02	0:16:00	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Sandor Clegane"}]}
2	7	0:16:00	0:16:55	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Xaro Xhoan Daxos"}]}
2	7	0:16:55	0:18:32	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte"}]}
2	7	0:18:32	0:18:54	The Westerlands	Camp of the North	{"characters": []}
2	7	0:18:54	0:19:56	The Westerlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Alton Lannister"}, {"name": "Rickard Karstark"}, {"name": "Roose Bolton"}]}
2	7	0:19:56	0:20:19	The Westerlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Roose Bolton"}, {"name": "Talisa Maegyr"}]}
2	7	0:20:19	0:21:38	The Westerlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Talisa Maegyr"}]}
2	7	0:21:38	0:23:17	The North	Outside Winterfell	{"characters": [{"name": "Dagmer Cleftjaw"}, {"name": "Theon Greyjoy"}, {"name": "Maester Luwin"}, {"name": "Winterfell Shepherd"}]}
2	7	0:23:17	0:25:44	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}]}
2	7	0:25:44	0:28:01	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte"}]}
2	7	0:28:01	0:28:21	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte"}]}
2	7	0:28:21	0:28:27	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}]}
2	7	0:28:27	0:28:39	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "King's Landing Rioter #1", "alive": false}, {"name": "King's Landing Rioter #2", "alive": false}, {"name": "King's Landing Rioter #3", "alive": false}]}
2	7	0:28:39	0:29:30	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}, {"name": "Handmaid"}]}
2	7	0:29:30	0:29:49	The Crownlands	King's Landing	{"characters": [{"name": "Shae"}, {"name": "Handmaid"}]}
2	7	0:29:49	0:30:01	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}, {"name": "Sandor Clegane"}]}
2	7	0:30:01	0:32:47	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Sansa Stark"}]}
2	7	0:32:47	0:39:00	The Westerlands	Camp of the North	{"characters": [{"name": "Jaime Lannister"}, {"name": "Alton Lannister", "alive": false, "mannerOfDeath": "Head crush", "killedBy": ["Jaime Lannister"]}, {"name": "Torrhen Karstark"}]}
2	7	0:39:00	0:39:24	The Westerlands	Camp of the North	{"characters": [{"name": "Jaime Lannister"}, {"name": "Alton Lannister", "alive": false}, {"name": "Torrhen Karstark", "alive": false, "mannerOfDeath": "Neck snap", "killedBy": ["Jaime Lannister"]}]}
2	7	0:39:24	0:40:50	Qarth	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Quaithe"}]}
2	7	0:40:50	0:43:05	Qarth	NULL	{"characters": [{"name": "Xaro Xhoan Daxos"}, {"name": "Spice King", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Pyat Pree"]}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Silk King", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Pyat Pree"]}, {"name": "Pyat Pree"}, {"name": "Kovarro"}]}
2	7	0:43:05	0:43:33	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Pyat Pree"}, {"name": "Kovarro"}, {"name": "Jorah Mormont"}]}
2	7	0:43:33	0:43:54	The Westerlands	Camp of the North	{"characters": [{"name": "Catelyn Stark"}, {"name": "Brienne of Tarth"}, {"name": "Jacks"}]}
2	7	0:43:54	0:44:35	The Westerlands	Camp of the North	{"characters": [{"name": "Jaime Lannister"}]}
2	7	0:44:35	0:45:49	The Westerlands	Camp of the North	{"characters": [{"name": "Jaime Lannister"}, {"name": "Rickard Karstark"}, {"name": "Catelyn Stark"}, {"name": "Brienne of Tarth"}, {"name": "Jacks"}]}
2	7	0:45:49	0:46:06	The Westerlands	Camp of the North	{"characters": [{"name": "Jaime Lannister"}, {"name": "Catelyn Stark"}, {"name": "Brienne of Tarth"}, {"name": "Jacks"}]}
2	7	0:46:06	0:49:28	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
2	7	0:49:28	0:49:58	The Westerlands	Camp of the North	{"characters": [{"name": "Catelyn Stark"}, {"name": "Brienne of Tarth"}]}
2	7	0:49:58	0:53:03	The Westerlands	Camp of the North	{"characters": [{"name": "Catelyn Stark"}, {"name": "Brienne of Tarth"}, {"name": "Jaime Lannister"}]}
2	7	0:53:03	0:53:49	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Maester Luwin"}, {"name": "Dagmer Cleftjaw"}]}
2	8	0:01:55	0:02:34	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Dagmer Cleftjaw"}, {"name": "Yara Greyjoy"}]}
2	8	0:02:34	0:05:53	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Yara Greyjoy"}]}
2	8	0:05:53	0:07:00	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow"}, {"name": "Ygritte", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Rattleshirt"}, {"name": "Qhorin Halfhand"}]}
2	8	0:07:00	0:07:11	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Ygritte", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Jon Snow"}]}
2	8	0:07:11	0:07:45	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow"}, {"name": "Qhorin Halfhand"}]}
2	8	0:07:45	0:09:59	The Westerlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Talisa Maegyr"}]}
2	8	0:09:59	0:10:17	The Westerlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Talisa Maegyr"}, {"name": "Stark Messenger"}]}
2	8	0:10:17	0:11:58	The Westerlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Rickard Karstark"}, {"name": "Catelyn Stark"}]}
2	8	0:11:58	0:12:05	The Westerlands	To King's Landing	{"characters": []}
2	8	0:12:05	0:14:28	The Westerlands	To King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth"}]}
2	8	0:14:28	0:16:15	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Tywin Lannister"}, {"name": "Kevan Lannister"}, {"name": "Gregor Clegane"}]}
2	8	0:16:15	0:16:57	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Rorge"}, {"name": "Biter"}]}
2	8	0:16:57	0:17:30	The Riverlands	Harrenhal	{"characters": [{"name": "Hot Pie"}, {"name": "Gendry"}, {"name": "Arya Stark"}]}
2	8	0:17:30	0:17:35	The Riverlands	Harrenhal	{"characters": [{"name": "Tywin Lannister"}, {"name": "Arya Stark"}, {"name": "Hot Pie"}, {"name": "Gendry"}]}
2	8	0:17:35	0:17:46	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}]}
2	8	0:17:46	0:18:33	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow"}, {"name": "Qhorin Halfhand"}, {"name": "Ygritte", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Rattleshirt"}]}
2	8	0:18:33	0:20:04	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Bronn"}]}
2	8	0:20:04	0:22:15	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Bronn"}, {"name": "Lord Varys"}]}
2	8	0:22:15	0:24:38	North of the Wall	Fist of the First Men	{"characters": [{"name": "Grenn", "weapon": [{"action": "finds", "name": "Dragonglass"}]}, {"name": "Samwell Tarly", "weapon": [{"action": "receives", "name": "Dragonglass"}]}, {"name": "Eddison Tollett"}]}
2	8	0:24:38	0:24:55	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}]}
2	8	0:24:55	0:26:57	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
2	8	0:26:57	0:27:11	The Crownlands	King's Landing	{"characters": [{"name": "Podrick Payne"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Cersei Lannister"}]}
2	8	0:27:11	0:27:51	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Cersei Lannister"}]}
2	8	0:27:51	0:27:53	The Crownlands	King's Landing	{"characters": [{"name": "Podrick Payne"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Cersei Lannister"}]}
2	8	0:27:53	0:30:55	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Cersei Lannister"}]}
2	8	0:30:55	0:31:52	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Ros"}, {"name": "Cersei Lannister"}, {"name": "Podrick Payne"}]}
2	8	0:31:52	0:32:21	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
2	8	0:32:21	0:33:50	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Shae"}]}
2	8	0:33:50	0:34:38	The Westerlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Roose Bolton"}]}
2	8	0:34:38	0:34:59	The Westerlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Roose Bolton"}, {"name": "Talisa Maegyr"}]}
2	8	0:34:59	0:40:52	The Westerlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King", "sex": {"with": ["Talisa Maegyr"], "when": "present", "type": "love"}}, {"name": "Talisa Maegyr", "sex": {"with": ["Robb Stark"], "when": "present", "type": "love"}}]}
2	8	0:40:52	0:42:07	The Riverlands	Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Hot Pie"}, {"name": "Gendry"}]}
2	8	0:42:07	0:42:32	The Crownlands	Blackwater Bay	{"characters": [{"name": "Davos Seaworth"}, {"name": "Stannis Baratheon", "title": "King"}, {"name": "Matthos Seaworth"}]}
2	8	0:42:32	0:45:03	The Crownlands	Blackwater Bay	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}, {"name": "Stannis Baratheon", "title": "King"}]}
2	8	0:45:03	0:46:07	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lord Varys"}]}
2	8	0:46:07	0:48:15	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lord Varys"}]}
2	8	0:48:15	0:48:37	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Kovarro"}]}
2	8	0:48:37	0:50:02	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}]}
2	8	0:50:02	0:50:34	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Dagmer Cleftjaw"}]}
2	8	0:50:34	0:50:44	The North	Winterfell	{"characters": [{"name": "Maester Luwin"}, {"name": "Osha"}]}
2	8	0:50:44	0:50:48	The North	Winterfell	{"characters": [{"name": "Maester Luwin"}, {"name": "Theon Greyjoy"}, {"name": "Dagmer Cleftjaw"}]}
2	8	0:50:48	0:51:04	The North	Winterfell	{"characters": [{"name": "Maester Luwin"}]}
2	8	0:51:04	0:52:00	The North	Winterfell	{"characters": [{"name": "Osha"}, {"name": "Maester Luwin"}, {"name": "Bran Stark"}, {"name": "Rickon Stark"}, {"name": "Hodor"}]}
2	9	0:01:54	0:02:41	The Crownlands	Blackwater Bay	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}]}
2	9	0:02:41	0:02:57	The Crownlands	Blackwater Bay	{"characters": [{"name": "Stannis Baratheon", "title": "King"}]}
2	9	0:02:57	0:03:25	The Crownlands	Blackwater Bay	{"characters": []}
2	9	0:03:25	0:04:46	The Crownlands	Blackwater Bay	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}, {"name": "Matthos Seaworth"}]}
2	9	0:04:46	0:06:30	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand", "sex": {"with": ["Shae"], "when": "past", "type": "love"}}, {"name": "Shae", "sex": {"with": ["Tyrion Lannister"], "when": "past", "type": "love"}}]}
2	9	0:06:30	0:08:03	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Grand Maester Pycelle"}]}
2	9	0:08:03	0:09:37	The Crownlands	King's Landing	{"characters": [{"name": "Bronn"}, {"name": "Armeca"}, {"name": "Singing Lannister Soldier"}]}
2	9	0:09:37	0:12:08	The Crownlands	King's Landing	{"characters": [{"name": "Sandor Clegane"}, {"name": "Bronn"}, {"name": "Armeca"}, {"name": "Singing Lannister Soldier"}]}
2	9	0:12:08	0:15:00	The Crownlands	King's Landing	{"characters": [{"name": "Lord Varys"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Podrick Payne"}]}
2	9	0:15:00	0:15:07	The Crownlands	Blackwater Bay	{"characters": []}
2	9	0:15:07	0:15:23	The Crownlands	Blackwater Bay	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}, {"name": "Matthos Seaworth"}]}
2	9	0:15:23	0:15:41	The Crownlands	Blackwater Bay	{"characters": []}
2	9	0:15:42	0:15:46	The Crownlands	Blackwater Bay	{"characters": [{"name": "Stannis Baratheon", "title": "King"}]}
2	9	0:15:46	0:16:22	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Bronn"}, {"name": "Podrick Payne"}]}
2	9	0:16:22	0:16:47	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
2	9	0:16:47	0:17:13	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Sandor Clegane"}]}
2	9	0:17:13	0:17:15	The Crownlands	King's Landing	{"characters": [{"name": "Podrick Payne"}, {"name": "Shae"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
2	9	0:17:15	0:18:18	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Sandor Clegane"}, {"name": "Sansa Stark"}]}
2	9	0:18:18	0:18:40	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}]}
2	9	0:18:40	0:18:46	The Crownlands	King's Landing	{"characters": []}
2	9	0:18:46	0:19:02	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Sandor Clegane"}, {"name": "Lancel Lannister"}]}
2	9	0:19:02	0:19:12	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Podrick Payne"}]}
2	9	0:19:12	0:20:12	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Podrick Payne"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Sandor Clegane"}, {"name": "Lancel Lannister"}]}
2	9	0:20:12	0:20:34	The Crownlands	Blackwater Bay	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}, {"name": "Matthos Seaworth"}]}
2	9	0:20:34	0:20:44	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}, {"name": "Ilyn Payne", "weapon": [{"action": "has", "name": "Ice"}]}]}
2	9	0:20:44	0:21:05	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}, {"name": "Ilyn Payne", "weapon": [{"action": "has", "name": "Ice"}]}, {"name": "Sansa Stark"}, {"name": "Shae"}]}
2	9	0:21:05	0:21:52	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Sansa Stark"}, {"name": "Shae"}, {"name": "Ilyn Payne", "weapon": [{"action": "has", "name": "Ice"}]}, {"name": "Tommen Baratheon"}]}
2	9	0:21:52	0:22:20	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Sansa Stark"}, {"name": "Shae"}, {"name": "Ilyn Payne", "weapon": [{"action": "has", "name": "Ice"}]}, {"name": "Tommen Baratheon"}, {"name": "Mandon Moore"}]}
2	9	0:22:20	0:22:34	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Sansa Stark"}]}
2	9	0:22:34	0:22:39	The Crownlands	King's Landing	{"characters": []}
2	9	0:22:39	0:22:57	The Crownlands	King's Landing	{"characters": [{"name": "Sandor Clegane"}, {"name": "Lancel Lannister"}, {"name": "Podrick Payne"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Captain of the Archers"}]}
2	9	0:22:57	0:23:01	The Crownlands	King's Landing	{"characters": []}
2	9	0:23:01	0:23:06	The Crownlands	Blackwater Bay	{"characters": [{"name": "Stannis Baratheon", "title": "King"}]}
2	9	0:23:06	0:23:22	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister"}, {"name": "Captain of the Archers"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Tyrion Lannister", "title": "Hand"}]}
2	9	0:23:22	0:23:25	The Crownlands	King's Landing	{"characters": []}
2	9	0:23:25	0:23:31	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Podrick Payne"}, {"name": "Captain of the Archers"}, {"name": "Lancel Lannister"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
2	9	0:23:31	0:24:13	The Crownlands	Blackwater Bay	{"characters": [{"name": "Matthos Seaworth"}, {"name": "Davos Seaworth", "title": "Hand"}]}
2	9	0:24:13	0:24:17	The Crownlands	King's Landing	{"characters": [{"name": "Hallyne"}]}
2	9	0:24:17	0:24:26	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Hallyne"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Podrick Payne"}, {"name": "Sandor Clegane"}]}
2	9	0:24:26	0:24:45	The Crownlands	Blackwater Bay	{"characters": [{"name": "Matthos Seaworth"}, {"name": "Davos Seaworth", "title": "Hand"}]}
2	9	0:24:45	0:24:47	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Hallyne"}]}
2	9	0:24:47	0:24:50	The Crownlands	King's Landing	{"characters": [{"name": "Bronn"}]}
2	9	0:24:50	0:24:51	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Hallyne"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Podrick Payne"}]}
2	9	0:24:51	0:24:58	The Crownlands	King's Landing	{"characters": [{"name": "Bronn"}]}
2	9	0:24:58	0:25:16	The Crownlands	Blackwater Bay	{"characters": [{"name": "Matthos Seaworth", "alive": false, "mannerOfDeath": "Wildfire", "killedBy": ["Bronn"]}, {"name": "Davos Seaworth", "title": "Hand"}, {"name": "Stannis Baratheon", "title": "King"}]}
2	9	0:25:16	0:25:20	The Crownlands	King's Landing	{"characters": []}
2	9	0:25:20	0:25:24	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Hallyne"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Sandor Clegane"}]}
2	9	0:25:24	0:25:31	The Crownlands	King's Landing	{"characters": []}
2	9	0:25:31	0:25:36	The Crownlands	King's Landing	{"characters": [{"name": "Bronn"}]}
2	9	0:25:36	0:25:43	The Crownlands	King's Landing	{"characters": []}
2	9	0:25:43	0:25:44	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Hallyne"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Podrick Payne"}]}
2	9	0:25:44	0:26:09	The Crownlands	King's Landing	{"characters": []}
2	9	0:26:09	0:26:22	The Crownlands	King's Landing	{"characters": [{"name": "Sandor Clegane"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Hallyne"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Podrick Payne"}]}
2	9	0:26:22	0:26:25	The Crownlands	King's Landing	{"characters": []}
2	9	0:26:25	0:26:33	The Crownlands	Blackwater Bay	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
2	9	0:26:33	0:26:43	The Crownlands	King's Landing	{"characters": []}
2	9	0:26:43	0:27:26	The Crownlands	Blackwater Bay	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
2	9	0:27:26	0:27:47	The Crownlands	King's Landing	{"characters": [{"name": "Dontos Hollard"}, {"name": "Cersei Lannister"}, {"name": "Sansa Stark"}]}
2	9	0:27:47	0:30:39	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Sansa Stark"}]}
2	9	0:30:39	0:30:42	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Sansa Stark"}, {"name": "Shae"}]}
2	9	0:30:42	0:31:05	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Sansa Stark"}]}
2	9	0:31:05	0:31:20	The Crownlands	King's Landing	{"characters": []}
2	9	0:31:20	0:31:24	The Crownlands	King's Landing	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
2	9	0:31:24	0:31:47	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Sandor Clegane"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Captain of the Archers"}]}
2	9	0:31:47	0:31:55	The Crownlands	King's Landing	{"characters": [{"name": "Podrick Payne"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
2	9	0:31:55	0:32:07	The Crownlands	King's Landing	{"characters": [{"name": "Sandor Clegane"}, {"name": "Lancel Lannister"}, {"name": "Captain of the Archers"}]}
2	9	0:32:07	0:32:10	The Crownlands	King's Landing	{"characters": []}
2	9	0:32:10	0:32:13	The Crownlands	King's Landing	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
2	9	0:32:13	0:32:24	The Crownlands	King's Landing	{"characters": [{"name": "Captain of the Archers"}]}
2	9	0:32:24	0:32:33	The Crownlands	King's Landing	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
2	9	0:32:33	0:32:37	The Crownlands	King's Landing	{"characters": [{"name": "Captain of the Archers"}]}
2	9	0:32:37	0:32:46	The Crownlands	King's Landing	{"characters": []}
2	9	0:32:46	0:32:51	The Crownlands	King's Landing	{"characters": [{"name": "Captain of the Archers"}]}
2	9	0:32:50	0:32:55	The Crownlands	King's Landing	{"characters": []}
2	9	0:32:55	0:32:57	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Hallyne"}, {"name": "Podrick Payne"}]}
2	9	0:32:57	0:33:07	The Crownlands	King's Landing	{"characters": []}
2	9	0:33:07	0:33:10	The Crownlands	King's Landing	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
2	9	0:33:10	0:33:15	The Crownlands	King's Landing	{"characters": []}
2	9	0:33:15	0:33:17	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Hallyne"}, {"name": "Podrick Payne"}]}
2	9	0:33:17	0:33:25	The Crownlands	King's Landing	{"characters": []}
2	9	0:33:25	0:33:29	The Crownlands	King's Landing	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
2	9	0:33:29	0:33:35	The Crownlands	King's Landing	{"characters": []}
2	9	0:33:35	0:33:40	The Crownlands	King's Landing	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
2	9	0:33:40	0:33:49	The Crownlands	King's Landing	{"characters": [{"name": "Sandor Clegane"}, {"name": "Lancel Lannister"}]}
2	9	0:33:49	0:34:00	The Crownlands	King's Landing	{"characters": []}
2	9	0:34:00	0:34:20	The Crownlands	King's Landing	{"characters": [{"name": "Sandor Clegane"}, {"name": "Lancel Lannister"}]}
2	9	0:34:20	0:35:00	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}, {"name": "Sansa Stark"}, {"name": "Shae"}]}
2	9	0:35:00	0:36:22	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Sansa Stark"}, {"name": "Shae"}]}
2	9	0:36:22	0:37:09	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Sansa Stark"}, {"name": "Shae"}, {"name": "Lancel Lannister"}]}
2	9	0:37:09	0:37:33	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Sansa Stark"}, {"name": "Ilyn Payne", "weapon": [{"action": "has", "name": "Ice"}]}]}
2	9	0:37:33	0:38:32	The Crownlands	King's Landing	{"characters": [{"name": "Sandor Clegane"}, {"name": "Bronn"}]}
2	9	0:38:32	0:38:34	The Crownlands	King's Landing	{"characters": []}
2	9	0:38:34	0:38:36	The Crownlands	King's Landing	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
2	9	0:38:36	0:38:44	The Crownlands	King's Landing	{"characters": []}
2	9	0:38:44	0:39:09	The Crownlands	King's Landing	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
2	9	0:39:09	0:39:36	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Captain of the Archers"}, {"name": "Sandor Clegane"}, {"name": "Singing Lannister Soldier"}]}
2	9	0:39:36	0:40:21	The Crownlands	King's Landing	{"characters": [{"name": "Sandor Clegane"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}]}
2	9	0:40:21	0:41:26	The Crownlands	King's Landing	{"characters": []}
2	9	0:41:26	0:42:14	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Lancel Lannister"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Mandon Moore"}]}
2	9	0:42:14	0:42:19	The Crownlands	King's Landing	{"characters": []}
2	9	0:42:19	0:43:16	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Podrick Payne"}, {"name": "Mandon Moore"}, {"name": "Singing Lannister Soldier"}]}
2	9	0:43:16	0:43:21	The Crownlands	King's Landing	{"characters": []}
2	9	0:43:21	0:43:46	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Mandon Moore"}, {"name": "Podrick Payne"}]}
2	9	0:43:46	0:43:52	The Crownlands	King's Landing	{"characters": []}
2	9	0:43:52	0:44:18	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Mandon Moore"}, {"name": "Podrick Payne"}]}
2	9	0:44:18	0:44:43	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon"}, {"name": "Cersei Lannister"}, {"name": "Lancel Lannister"}]}
2	9	0:44:43	0:45:41	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}, {"name": "Ilyn Payne", "weapon": [{"action": "has", "name": "Ice"}]}]}
2	9	0:45:41	0:46:07	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}]}
2	9	0:46:07	0:48:05	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Sandor Clegane"}]}
2	9	0:48:05	0:48:15	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}]}
2	9	0:48:15	0:48:25	The Crownlands	King's Landing	{"characters": []}
2	9	0:48:25	0:49:12	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}]}
2	9	0:49:12	0:49:25	The Crownlands	King's Landing	{"characters": []}
2	9	0:49:25	0:49:35	The Crownlands	King's Landing	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
2	9	0:49:35	0:50:02	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Mandon Moore", "alive": false, "mannerOfDeath": "Face stab", "killedBy": ["Podrick Payne"]}, {"name": "Podrick Payne"}]}
2	9	0:50:02	0:50:51	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}]}
2	9	0:50:51	0:50:54	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Podrick Payne"}]}
2	9	0:50:54	0:51:01	The Crownlands	King's Landing	{"characters": []}
2	9	0:51:01	0:51:02	The Crownlands	King's Landing	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
2	9	0:51:02	0:51:14	The Crownlands	King's Landing	{"characters": [{"name": "Loras Tyrell"}]}
2	9	0:51:14	0:51:41	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}]}
2	9	0:51:41	0:51:47	The Crownlands	King's Landing	{"characters": []}
2	9	0:51:47	0:51:58	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}]}
2	9	0:51:58	0:52:02	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Podrick Payne"}]}
2	9	0:52:02	0:52:08	The Crownlands	King's Landing	{"characters": []}
2	9	0:52:08	0:52:13	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Podrick Payne"}]}
2	9	0:52:13	0:52:26	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}]}
2	9	0:52:26	0:52:32	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}, {"name": "Loras Tyrell"}]}
2	9	0:52:32	0:52:36	The Crownlands	King's Landing	{"characters": []}
2	9	0:52:36	0:52:39	The Crownlands	King's Landing	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
2	9	0:52:39	0:52:42	The Crownlands	King's Landing	{"characters": []}
2	9	0:52:42	0:52:45	The Crownlands	King's Landing	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
2	9	0:52:45	0:53:04	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}, {"name": "Loras Tyrell"}, {"name": "Tywin Lannister"}]}
2	10	0:01:54	0:02:45	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Grand Maester Pycelle"}, {"name": "Podrick Payne"}]}
2	10	0:02:45	0:03:34	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Grand Maester Pycelle"}]}
2	10	0:03:34	0:04:37	The Crownlands	King's Landing	{"characters": [{"name": "Tywin Lannister", "title": "Hand"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Sansa Stark"}, {"name": "Cersei Lannister"}, {"name": "Lord Varys"}, {"name": "Petyr Baelish"}, {"name": "Margaery Tyrell"}, {"name": "Loras Tyrell"}, {"name": "Grand Maester Pycelle"}]}
2	10	0:04:37	0:08:07	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Sansa Stark"}, {"name": "Cersei Lannister"}, {"name": "Lord Varys"}, {"name": "Petyr Baelish"}, {"name": "Margaery Tyrell"}, {"name": "Loras Tyrell"}, {"name": "Grand Maester Pycelle"}]}
2	10	0:08:07	0:09:22	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
2	10	0:09:22	0:11:49	The Crownlands	King's Landing	{"characters": [{"name": "Ros"}, {"name": "Lord Varys"}]}
2	10	0:11:49	0:13:24	The Riverlands	East to King's Landing	{"characters": [{"name": "Brienne of Tarth"}, {"name": "Jaime Lannister"}]}
2	10	0:13:24	0:16:47	The Riverlands	East to King's Landing	{"characters": [{"name": "Brienne of Tarth"}, {"name": "Jaime Lannister"}, {"name": "Soldier Tom", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Brienne of Tarth"]}, {"name": "Stark Soldier", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Brienne of Tarth"]}]}
2	10	0:16:47	0:18:31	The Westerlands	Camp of the North	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Catelyn Stark"}]}
2	10	0:18:31	0:22:05	The Crownlands	Dragonstone	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Melisandre"}]}
2	10	0:22:05	0:26:49	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Maester Luwin"}]}
2	10	0:26:49	0:28:28	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Dagmer Cleftjaw"}, {"name": "Black Lorren"}]}
2	10	0:28:28	0:28:54	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Dagmer Cleftjaw"}, {"name": "Black Lorren"}, {"name": "Maester Luwin"}]}
2	10	0:28:54	0:30:11	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}, {"name": "Podrick Payne"}]}
2	10	0:30:11	0:30:46	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}, {"name": "Podrick Payne"}, {"name": "Shae"}]}
2	10	0:30:46	0:33:32	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Shae"}]}
2	10	0:33:32	0:34:23	The Westerlands	Camp of the North	{"characters": [{"name": "Septon"}, {"name": "Robb Stark", "title": "King", "married": {"to": "Talisa Maegyr", "when": "present", "type": "love", "consummated": true}}, {"name": "Talisa Maegyr", "married": {"to": "Robb Stark", "when": "present", "type": "love", "consummated": true}}]}
2	10	0:34:23	0:35:26	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Kovarro"}]}
2	10	0:35:26	0:35:41	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}]}
2	10	0:35:41	0:36:04	Qarth	NULL	{"characters": [{"name": "Kovarro"}, {"name": "Jorah Mormont"}]}
2	10	0:36:04	0:36:31	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
2	10	0:36:31	0:36:43	The Riverlands	Outside Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Hot Pie"}, {"name": "Gendry"}]}
2	10	0:36:43	0:37:00	The Riverlands	Outside Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Hot Pie"}, {"name": "Gendry"}, {"name": "Jaqen H'ghar"}]}
2	10	0:37:00	0:39:12	The Riverlands	Outside Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
2	10	0:39:12	0:39:36	The Riverlands	Outside Harrenhal	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}, {"name": "Jaqen's Disguise"}]}
2	10	0:39:36	0:40:49	The North	Winterfell	{"characters": [{"name": "Osha"}, {"name": "Bran Stark"}, {"name": "Hodor"}, {"name": "Rickon Stark"}, {"name": "Summer"}, {"name": "Shaggydog"}]}
2	10	0:40:49	0:42:29	The North	Winterfell	{"characters": [{"name": "Maester Luwin"}, {"name": "Osha"}, {"name": "Bran Stark"}, {"name": "Hodor"}, {"name": "Rickon Stark"}]}
2	10	0:42:29	0:43:08	The North	Winterfell	{"characters": [{"name": "Maester Luwin", "alive": false, "killedBy": ["Osha"]}, {"name": "Osha"}]}
2	10	0:43:08	0:43:35	The North	Winterfell	{"characters": [{"name": "Shaggydog"}, {"name": "Summer"}, {"name": "Osha"}, {"name": "Hodor"}, {"name": "Rickon Stark"}, {"name": "Bran Stark"}]}
2	10	0:43:35	0:44:28	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
2	10	0:44:28	0:46:11	Qarth	King's Landing	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
2	10	0:46:11	0:46:51	Qarth	The Wall	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
2	10	0:46:51	0:49:31	Qarth	Vaes Dothrak	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Khal Drogo", "title": "Khal", "alive": false}, {"name": "Rhaego"}]}
2	10	0:49:31	0:51:47	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}, {"name": "Pyat Pree", "alive": false, "mannerOfDeath": "Dragon", "killedBy": ["Daenerys Targaryen"]}]}
2	10	0:51:47	0:54:51	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "receives", "name": "Longclaw"}]}, {"name": "Ygritte", "weapon": [{"action": "gives", "name": "Longclaw"}]}, {"name": "Qhorin Halfhand", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Jon Snow"]}, {"name": "Rattleshirt", "weapon": [{"action": "takes", "name": "Longclaw"}]}]}
2	10	0:54:51	0:55:31	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow"}, {"name": "Ygritte"}]}
2	10	0:55:31	0:56:05	Qarth	NULL	{"characters": [{"name": "Xaro Xhoan Daxos", "sex": {"with": ["Doreah"], "when": "past", "type": "coerced"}}, {"name": "Kovarro"}, {"name": "Jorah Mormont"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Doreah", "sex": {"with": ["Xaro Xhoan Daxos"], "when": "past", "type": "coerced"}}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
2	10	0:56:05	0:57:08	Qarth	NULL	{"characters": [{"name": "Xaro Xhoan Daxos", "alive": false, "mannerOfDeath": "Safe", "killedBy": ["Daenerys Targaryen"]}, {"name": "Kovarro"}, {"name": "Jorah Mormont"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Doreah", "alive": false, "mannerOfDeath": "Safe", "killedBy": ["Daenerys Targaryen"]}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
2	10	0:57:08	0:57:20	Qarth	NULL	{"characters": [{"name": "Kovarro"}, {"name": "Jorah Mormont"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
2	10	0:57:20	0:57:53	Qarth	NULL	{"characters": [{"name": "Kovarro"}, {"name": "Jorah Mormont"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
2	10	0:57:53	0:58:11	Qarth	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
2	10	0:58:11	0:59:54	North of the Wall	Fist of the First Men	{"characters": [{"name": "Samwell Tarly"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}]}
2	10	0:59:54	1:00:24	North of the Wall	Fist of the First Men	{"characters": [{"name": "Samwell Tarly"}]}
2	10	1:00:24	1:01:23	North of the Wall	Fist of the First Men	{"characters": [{"name": "Samwell Tarly"}, {"name": "White Walker"}]}
2	10	1:01:23	1:02:04	North of the Wall	Fist of the First Men	{"characters": [{"name": "White Walker"}]}
3	1	0:00:06	0:00:17	North of the Wall	Fist of the First Men	{"characters": []}
3	1	0:00:17	0:01:03	North of the Wall	Fist of the First Men	{"characters": [{"name": "Samwell Tarly"}]}
3	1	0:01:03	0:01:28	North of the Wall	Fist of the First Men	{"characters": [{"name": "Samwell Tarly"}, {"name": "Man of the Nightswatch", "alive": false, "mannerOfDeath": "Decapitation", "killedBy": ["White Walker"]}]}
3	1	0:01:28	0:01:50	North of the Wall	Fist of the First Men	{"characters": [{"name": "Samwell Tarly"}, {"name": "White Walker"}]}
3	1	0:01:50	0:02:06	North of the Wall	Fist of the First Men	{"characters": [{"name": "Samwell Tarly"}, {"name": "White Walker"}, {"name": "Ghost"}]}
3	1	0:02:06	0:02:19	North of the Wall	Fist of the First Men	{"characters": [{"name": "Samwell Tarly"}, {"name": "White Walker", "alive": false, "mannerOfDeath": "Burning", "killedBy": ["Jeor Mormont"]}, {"name": "Ghost"}, {"name": "Jeor Mormont"}]}
3	1	0:02:19	0:03:17	North of the Wall	Fist of the First Men	{"characters": [{"name": "Samwell Tarly"}, {"name": "White Walker", "alive": false}, {"name": "Jeor Mormont"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}, {"name": "Rast"}, {"name": "Ghost"}]}
3	1	0:05:05	0:05:39	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Rattleshirt", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Jon Snow"}, {"name": "Ygritte"}]}
3	1	0:05:39	0:05:47	North of the Wall	Frostfang Mountains	{"characters": []}
3	1	0:05:47	0:06:40	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow"}, {"name": "Ygritte"}, {"name": "Dongo the Giant"}]}
3	1	0:06:40	0:07:40	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow"}, {"name": "Rattleshirt", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte"}]}
3	1	0:07:40	0:09:37	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow"}, {"name": "Rattleshirt", "weapon": [{"action": "gives", "name": "Longclaw"}]}, {"name": "Ygritte", "weapon": [{"action": "receives", "name": "Longclaw"}]}, {"name": "Tormund Giantsbane"}, {"name": "Mance Rayder", "title": "King"}]}
3	1	0:09:37	0:12:28	North of the Wall	Frostfang Mountains	{"characters": [{"name": "Jon Snow"}, {"name": "Tormund Giantsbane"}, {"name": "Mance Rayder", "title": "King"}]}
3	1	0:12:28	0:12:34	The Crownlands	King's Landing	{"characters": []}
3	1	0:12:34	0:13:16	The Crownlands	King's Landing	{"characters": [{"name": "Bronn"}, {"name": "Mirelle"}]}
3	1	0:13:16	0:13:36	The Crownlands	King's Landing	{"characters": [{"name": "Bronn"}, {"name": "Mirelle"}, {"name": "Podrick Payne"}]}
3	1	0:13:36	0:17:04	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Cersei Lannister"}]}
3	1	0:17:04	0:17:57	The Crownlands	King's Landing	{"characters": [{"name": "Bronn"}, {"name": "Meryn Trant"}, {"name": "Podrick Payne"}, {"name": "Cersei Lannister"}]}
3	1	0:17:57	0:18:00	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Bronn"}, {"name": "Podrick Payne"}]}
3	1	0:18:00	0:18:51	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Bronn"}, {"name": "Podrick Payne"}]}
3	1	0:18:51	0:19:58	The Crownlands	Blackwater Bay	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}]}
3	1	0:19:58	0:20:39	The Crownlands	Blackwater Bay	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}, {"name": "Boat Commander"}]}
3	1	0:20:39	0:23:32	The Crownlands	Blackwater Bay	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}, {"name": "Salladhor Saan"}]}
3	1	0:23:32	0:24:07	The Riverlands	Harrenhal	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Roose Bolton"}]}
3	1	0:24:07	0:24:37	The Riverlands	Harrenhal	{"characters": [{"name": "Robb Stark", "title": "King"}]}
3	1	0:24:37	0:25:00	The Riverlands	Harrenhal	{"characters": [{"name": "Roose Bolton"}, {"name": "Rickard Karstark"}]}
3	1	0:25:00	0:26:45	The Riverlands	Harrenhal	{"characters": [{"name": "Roose Bolton"}, {"name": "Rickard Karstark"}, {"name": "Catelyn Stark"}, {"name": "Robb Stark", "title": "King"}, {"name": "Talisa Maegyr"}, {"name": "Qyburn"}]}
3	1	0:26:45	0:31:42	The Crownlands	King's Landing	{"characters": [{"name": "Tywin Lannister", "title": "Hand"}, {"name": "Tyrion Lannister"}]}
3	1	0:31:42	0:32:45	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}]}
3	1	0:32:45	0:33:19	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}, {"name": "Petyr Baelish"}, {"name": "Ros"}]}
3	1	0:33:19	0:34:13	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
3	1	0:34:13	0:35:23	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}, {"name": "Petyr Baelish"}, {"name": "Ros"}]}
3	1	0:35:23	0:35:48	Astapor	Slaver's Bay	{"characters": [{"name": "Drogon"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
3	1	0:35:48	0:36:13	Astapor	Slaver's Bay	{"characters": [{"name": "Drogon"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}]}
3	1	0:36:13	0:37:12	Astapor	Slaver's Bay	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}]}
3	1	0:37:12	0:37:31	The Crownlands	Dragonstone	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}]}
3	1	0:37:31	0:40:13	The Crownlands	Dragonstone	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Davos Seaworth", "title": "Hand"}, {"name": "Melisandre"}]}
3	1	0:40:13	0:40:26	The Crownlands	King's Landing	{"characters": [{"name": "Meryn Trant"}]}
3	1	0:40:26	0:40:30	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}]}
3	1	0:40:30	0:40:45	The Crownlands	King's Landing	{"characters": []}
3	1	0:40:45	0:41:15	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Margaery Tyrell"}, {"name": "Margaery's Handmaiden"}]}
3	1	0:41:15	0:41:30	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Margaery's Handmaiden"}]}
3	1	0:41:30	0:41:39	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}, {"name": "Meryn Trant"}]}
3	1	0:41:39	0:42:56	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Margaery's Handmaiden"}, {"name": "Orphan Kid"}]}
3	1	0:42:56	0:43:18	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Hearteater"}]}]}
3	1	0:43:18	0:45:50	The Crownlands	King's Landing	{"characters": [{"name": "Loras Tyrell"}, {"name": "Margaery Tyrell"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Cersei Lannister"}]}
3	1	0:45:50	0:46:04	Astapor	Slaver's Bay	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
3	1	0:46:04	0:50:09	Astapor	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Kraznys mo Nakloz"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Unsullied"}]}
3	1	0:50:09	0:51:57	Astapor	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Warlock"}, {"name": "Barristan Selmy"}]}
3	1	0:51:57	0:53:06	Astapor	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Barristan Selmy"}]}
3	2	0:01:54	0:02:42	The North	Outside Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Three-Eyed Raven"}]}
3	2	0:02:42	0:02:59	The North	Outside Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Three-Eyed Raven"}, {"name": "Jon Snow"}, {"name": "Robb Stark"}]}
3	2	0:02:59	0:03:07	The North	Outside Winterfell	{"characters": [{"name": "Bran Stark"}]}
3	2	0:03:07	0:03:20	The North	Outside Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Jojen Reed"}, {"name": "Three-Eyed Raven"}]}
3	2	0:03:20	0:04:28	The North	North to the Wall	{"characters": [{"name": "Bran Stark"}, {"name": "Rickon Stark"}, {"name": "Shaggydog"}, {"name": "Summer"}, {"name": "Hodor"}, {"name": "Osha"}]}
3	2	0:04:28	0:05:05	The Riverlands	Harrenhal	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Talisa Maegyr"}]}
3	2	0:05:05	0:05:28	The Riverlands	Harrenhal	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Talisa Maegyr"}, {"name": "Roose Bolton"}]}
3	2	0:05:28	0:06:30	The Riverlands	Harrenhal	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Catelyn Stark"}]}
3	2	0:06:30	0:07:13	The North	The Dreadfort	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Master Torturer"}]}
3	2	0:07:13	0:09:50	The Riverlands	East to King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth"}]}
3	2	0:09:50	0:10:51	The Riverlands	East to King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth"}, {"name": "Riverlands Traveller"}]}
3	2	0:10:51	0:11:20	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "King's Landing Tailor"}, {"name": "Cersei Lannister"}]}
3	2	0:11:20	0:12:50	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Cersei Lannister"}]}
3	2	0:12:50	0:13:02	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "King's Landing Tailor"}, {"name": "Cersei Lannister"}]}
3	2	0:13:02	0:14:13	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}]}
3	2	0:14:13	0:14:33	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}, {"name": "Loras Tyrell"}]}
3	2	0:14:33	0:15:00	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Loras Tyrell"}]}
3	2	0:15:00	0:15:18	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Loras Tyrell"}, {"name": "Margaery Tyrell"}]}
3	2	0:15:18	0:18:09	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Margaery Tyrell"}, {"name": "Olenna Tyrell"}]}
3	2	0:18:09	0:18:31	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Margaery Tyrell"}, {"name": "Olenna Tyrell"}, {"name": "Tyrell Servant"}]}
3	2	0:18:31	0:19:47	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Margaery Tyrell"}, {"name": "Olenna Tyrell"}]}
3	2	0:19:47	0:19:54	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Margaery Tyrell"}, {"name": "Olenna Tyrell"}, {"name": "Tyrell Servant"}]}
3	2	0:19:54	0:21:00	The Riverlands	To Riverrun	{"characters": [{"name": "Grey Wind"}, {"name": "Robb Stark", "title": "King"}, {"name": "Rickard Karstark"}, {"name": "Talisa Maegyr"}]}
3	2	0:21:00	0:24:23	The Riverlands	To Riverrun	{"characters": [{"name": "Catelyn Stark"}, {"name": "Talisa Maegyr"}]}
3	2	0:24:23	0:25:29	North of the Wall	Wildlings March South	{"characters": [{"name": "Jon Snow"}, {"name": "Mance Rayder", "title": "King"}]}
3	2	0:25:29	0:26:46	North of the Wall	Wildlings March South	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Mance Rayder", "title": "King"}, {"name": "Tormund Giantsbane"}, {"name": "Ygritte"}, {"name": "Orell"}]}
3	2	0:26:46	0:27:37	North of the Wall	Nightswatch March South	{"characters": [{"name": "Samwell Tarly"}, {"name": "Rast"}]}
3	2	0:27:37	0:27:49	North of the Wall	Nightswatch March South	{"characters": [{"name": "Samwell Tarly"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}, {"name": "Jeor Mormont"}, {"name": "Rast"}]}
3	2	0:27:49	0:29:26	North of the Wall	Nightswatch March South	{"characters": [{"name": "Samwell Tarly"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}, {"name": "Rast"}, {"name": "Jeor Mormont"}]}
3	2	0:29:26	0:30:00	The North	North to the Wall	{"characters": [{"name": "Bran Stark"}, {"name": "Osha"}, {"name": "Summer"}]}
3	2	0:30:00	0:30:14	The North	North to the Wall	{"characters": [{"name": "Bran Stark"}, {"name": "Summer"}]}
3	2	0:30:14	0:30:43	The North	North to the Wall	{"characters": [{"name": "Bran Stark"}, {"name": "Summer"}, {"name": "Jojen Reed"}]}
3	2	0:30:43	0:32:00	The North	North to the Wall	{"characters": [{"name": "Bran Stark"}, {"name": "Summer"}, {"name": "Jojen Reed"}, {"name": "Osha"}, {"name": "Meera Reed"}]}
3	2	0:32:00	0:32:57	The Riverlands	North to the Red Fork	{"characters": [{"name": "Arya Stark"}, {"name": "Gendry"}, {"name": "Hot Pie"}]}
3	2	0:32:57	0:36:06	The Riverlands	North to the Red Fork	{"characters": [{"name": "Arya Stark"}, {"name": "Gendry"}, {"name": "Hot Pie"}, {"name": "Thoros of Myr"}, {"name": "Anguy"}]}
3	2	0:36:06	0:39:27	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "sex": {"with": ["Shae"], "when": "future", "type": "love"}}, {"name": "Shae", "sex": {"with": ["Tyrion Lannister"], "when": "future", "type": "love"}}]}
3	2	0:39:27	0:39:35	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}]}
3	2	0:39:35	0:44:21	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Joffrey Baratheon", "title": "King"}]}
3	2	0:44:21	0:45:43	The North	The Dreadfort	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Master Torturer"}]}
3	2	0:45:43	0:46:23	The North	The Dreadfort	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Ramsay Snow"}]}
3	2	0:46:23	0:47:22	The North	North to the Wall	{"characters": [{"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Rickon Stark"}, {"name": "Jojen Reed"}, {"name": "Meera Reed"}, {"name": "Osha"}, {"name": "Summer"}]}
3	2	0:47:22	0:47:46	The North	North to the Wall	{"characters": [{"name": "Meera Reed"}, {"name": "Osha"}]}
3	2	0:47:46	0:47:50	The North	North to the Wall	{"characters": [{"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Jojen Reed"}, {"name": "Meera Reed"}, {"name": "Osha"}]}
3	2	0:47:50	0:48:39	The North	North to the Wall	{"characters": [{"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Jojen Reed"}]}
3	2	0:48:39	0:48:46	The North	North to the Wall	{"characters": [{"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Jojen Reed"}, {"name": "Meera Reed"}, {"name": "Osha"}]}
3	2	0:48:46	0:50:38	The Riverlands	Crossroads Inn	{"characters": [{"name": "Arya Stark"}, {"name": "Gendry"}, {"name": "Hot Pie"}, {"name": "Thoros of Myr"}]}
3	2	0:50:38	0:51:30	The Riverlands	Crossroads Inn	{"characters": [{"name": "Arya Stark"}, {"name": "Gendry"}, {"name": "Hot Pie"}, {"name": "Thoros of Myr"}, {"name": "Anguy"}, {"name": "Sandor Clegane"}]}
3	2	0:51:30	0:54:45	The Riverlands	East to King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth"}]}
3	2	0:54:45	0:55:43	The Riverlands	East to King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth"}, {"name": "Locke"}, {"name": "Riverlands Traveller"}]}
3	3	0:01:55	0:04:06	The Riverlands	Riverrun	{"characters": [{"name": "Hoster Tully", "alive": false, "mannerOfDeath": "Old age"}, {"name": "Robb Stark", "title": "King"}, {"name": "Brynden Tully"}, {"name": "Catelyn Stark"}, {"name": "Talisa Maegyr"}, {"name": "Edmure Tully"}]}
3	3	0:04:06	0:06:29	The Riverlands	Riverrun	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Brynden Tully"}, {"name": "Edmure Tully"}]}
3	3	0:06:29	0:10:33	The Crownlands	King's Landing	{"characters": [{"name": "Tywin Lannister", "title": "Hand"}, {"name": "Grand Maester Pycelle"}, {"name": "Petyr Baelish"}, {"name": "Lord Varys"}, {"name": "Tyrion Lannister"}, {"name": "Cersei Lannister"}]}
3	3	0:10:33	0:10:50	The Riverlands	To Harrenhal	{"characters": [{"name": "Locke"}]}
3	3	0:10:50	0:12:22	The Riverlands	To Harrenhal	{"characters": [{"name": "Locke"}, {"name": "Brienne of Tarth"}, {"name": "Jaime Lannister"}]}
3	3	0:12:22	0:13:02	The Riverlands	Crossroads Inn	{"characters": [{"name": "Gendry"}, {"name": "Thoros of Myr"}, {"name": "Arya Stark"}]}
3	3	0:13:02	0:13:27	The Riverlands	Crossroads Inn	{"characters": [{"name": "Arya Stark"}, {"name": "Sandor Clegane"}, {"name": "Anguy"}]}
3	3	0:13:27	0:15:01	The Riverlands	Crossroads Inn	{"characters": [{"name": "Arya Stark"}, {"name": "Hot Pie"}, {"name": "Gendry"}]}
3	3	0:15:01	0:15:21	The Riverlands	Crossroads Inn	{"characters": [{"name": "Arya Stark"}, {"name": "Thoros of Myr"}, {"name": "Hot Pie"}]}
3	3	0:15:21	0:17:50	The Riverlands	Riverrun	{"characters": [{"name": "Catelyn Stark"}, {"name": "Brynden Tully"}]}
3	3	0:17:50	0:18:37	The Riverlands	Riverrun	{"characters": [{"name": "Talisa Maegyr"}, {"name": "Martyn Lannister"}, {"name": "Willem Lannister"}]}
3	3	0:18:37	0:20:53	North of the Wall	Fist of the First Men	{"characters": [{"name": "Mance Rayder", "title": "King"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Tormund Giantsbane"}, {"name": "Ygritte"}, {"name": "Orell"}]}
3	3	0:20:53	0:21:30	North of the Wall	Craster's Keep	{"characters": [{"name": "Jeor Mormont"}, {"name": "Ghost"}, {"name": "Samwell Tarly"}, {"name": "Karl Tanner"}]}
3	3	0:21:30	0:22:11	North of the Wall	Craster's Keep	{"characters": [{"name": "Jeor Mormont"}, {"name": "Craster"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}, {"name": "Karl Tanner"}]}
3	3	0:22:11	0:24:03	North of the Wall	Craster's Keep	{"characters": [{"name": "Samwell Tarly"}, {"name": "Karl Tanner"}, {"name": "Craster"}, {"name": "Grenn"}, {"name": "Jeor Mormont"}, {"name": "Eddison Tollett"}]}
3	3	0:24:03	0:24:27	North of the Wall	Craster's Keep	{"characters": [{"name": "Samwell Tarly"}]}
3	3	0:24:27	0:25:02	North of the Wall	Craster's Keep	{"characters": [{"name": "Samwell Tarly"}, {"name": "Gilly"}, {"name": "Craster's Wife"}, {"name": "Craster's Younger Wife"}, {"name": "Baby Sam"}]}
3	3	0:25:02	0:26:09	The North	The Dreadfort	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Ramsay Snow"}]}
3	3	0:26:09	0:26:31	The North	The Dreadfort	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Ramsay Snow"}]}
3	3	0:26:31	0:28:25	The Crownlands	Dragonstone	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Melisandre"}]}
3	3	0:28:25	0:29:22	Astapor	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Barristan Selmy"}, {"name": "Tortured Slave"}]}
3	3	0:29:22	0:30:52	Astapor	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Barristan Selmy"}]}
3	3	0:30:52	0:33:48	Astapor	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Barristan Selmy"}, {"name": "Missandei"}, {"name": "Kraznys mo Nakloz"}, {"name": "Greizhen mo Ullhor"}]}
3	3	0:33:48	0:34:10	Astapor	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Barristan Selmy"}]}
3	3	0:34:10	0:34:23	Astapor	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Barristan Selmy"}, {"name": "Missandei"}]}
3	3	0:34:23	0:34:40	Astapor	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}]}
3	3	0:34:40	0:35:15	Astapor	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Barristan Selmy"}, {"name": "Missandei"}]}
3	3	0:35:15	0:35:57	The Crownlands	King's Landing	{"characters": [{"name": "Ros"}, {"name": "Podrick Payne"}, {"name": "Tyrion Lannister"}, {"name": "Petyr Baelish"}]}
3	3	0:35:57	0:37:22	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Petyr Baelish"}]}
3	3	0:37:22	0:37:39	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Bronn"}, {"name": "Podrick Payne"}]}
3	3	0:37:39	0:38:11	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Bronn"}, {"name": "Podrick Payne"}]}
3	3	0:38:11	0:39:25	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Bronn"}, {"name": "Podrick Payne", "sex": {"with": ["Genna", "Marei", "Kayla"], "when": "present", "type": "fun"}}, {"name": "Genna", "sex": {"with": ["Podrick Payne"], "when": "present", "type": "fun"}}, {"name": "Marei", "sex": {"with": ["Podrick Payne"], "when": "present", "type": "fun"}}, {"name": "Kayla", "sex": {"with": ["Podrick Payne"], "when": "present", "type": "fun"}}]}
3	3	0:39:25	0:40:46	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Bronn"}]}
3	3	0:40:46	0:42:05	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Bronn"}, {"name": "Podrick Payne"}]}
3	3	0:42:05	0:44:56	The North	The Dreadfort	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Master Torturer"}]}
3	3	0:44:56	0:45:42	The North	The Dreadfort	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Master Torturer", "alive": false, "mannerOfDeath": "Arrow", "killedBy": ["Ramsay Snow"]}, {"name": "Ramsay Snow"}]}
3	3	0:45:42	0:46:51	The Riverlands	To Harrenhal	{"characters": [{"name": "Brienne of Tarth"}, {"name": "Jaime Lannister"}, {"name": "Locke"}]}
3	3	0:46:51	0:48:05	The Riverlands	To Harrenhal	{"characters": [{"name": "Jaime Lannister"}, {"name": "Locke"}]}
3	3	0:48:05	0:48:49	The Riverlands	To Harrenhal	{"characters": [{"name": "Brienne of Tarth"}, {"name": "Jaime Lannister"}, {"name": "Locke"}]}
3	3	0:48:49	0:49:30	The Riverlands	To Harrenhal	{"characters": [{"name": "Jaime Lannister"}, {"name": "Locke"}]}
3	3	0:49:30	0:50:15	The Riverlands	To Harrenhal	{"characters": [{"name": "Brienne of Tarth"}, {"name": "Jaime Lannister"}, {"name": "Locke"}]}
3	3	0:50:15	0:51:27	The Riverlands	To Harrenhal	{"characters": [{"name": "Jaime Lannister"}, {"name": "Locke"}]}
3	4	0:01:54	0:04:40	The Riverlands	To Harrenhal	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth"}, {"name": "Locke"}]}
3	4	0:04:40	0:08:25	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}]}
3	4	0:08:25	0:08:45	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}, {"name": "Sorcerer"}]}
3	4	0:08:45	0:10:02	North of the Wall	Craster's Keep	{"characters": [{"name": "Grenn"}, {"name": "Eddison Tollett"}, {"name": "Rast"}]}
3	4	0:10:02	0:10:11	North of the Wall	Craster's Keep	{"characters": [{"name": "Gilly"}, {"name": "Baby Sam"}]}
3	4	0:10:11	0:11:09	North of the Wall	Craster's Keep	{"characters": [{"name": "Gilly"}, {"name": "Baby Sam"}, {"name": "Samwell Tarly"}]}
3	4	0:11:09	0:11:58	The North	North to the Wall	{"characters": [{"name": "Bran Stark"}, {"name": "Jojen Reed"}]}
3	4	0:11:58	0:12:14	The North	North to the Wall	{"characters": [{"name": "Bran Stark"}, {"name": "Catelyn Stark"}]}
3	4	0:12:14	0:12:28	The North	North to the Wall	{"characters": [{"name": "Bran Stark"}, {"name": "Jojen Reed"}]}
3	4	0:12:28	0:14:17	The Crownlands	King's Landing	{"characters": [{"name": "Lord Varys"}, {"name": "Ros"}]}
3	4	0:14:17	0:14:34	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Margaery Tyrell"}]}
3	4	0:14:34	0:15:37	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Olenna Tyrell"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Margaery Tyrell"}]}
3	4	0:15:37	0:16:42	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Olenna Tyrell"}]}
3	4	0:16:42	0:17:54	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Margaery Tyrell"}]}
3	4	0:17:44	0:18:16	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Olenna Tyrell"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Margaery Tyrell"}]}
3	4	0:18:16	0:18:32	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Margaery Tyrell"}, {"name": "Cersei Lannister"}]}
3	4	0:18:32	0:19:32	The North	The Dreadfort	{"characters": [{"name": "Ramsay Snow"}, {"name": "Theon Greyjoy"}]}
3	4	0:19:32	0:22:14	The North	The Dreadfort	{"characters": [{"name": "Ramsay Snow"}, {"name": "Theon Greyjoy"}]}
3	4	0:22:14	0:22:53	The North	The Dreadfort	{"characters": [{"name": "Ramsay Snow"}, {"name": "Theon Greyjoy"}]}
3	4	0:22:53	0:23:06	The Riverlands	To Harrenhal	{"characters": [{"name": "Locke"}, {"name": "Jaime Lannister"}, {"name": "Brienne of Tarth"}]}
3	4	0:23:06	0:25:07	The Riverlands	To Harrenhal	{"characters": [{"name": "Brienne of Tarth"}, {"name": "Jaime Lannister"}]}
3	4	0:25:07	0:27:54	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}]}
3	4	0:27:54	0:28:33	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Tyrell Lady"}]}
3	4	0:28:33	0:28:55	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Tyrell Lady"}, {"name": "Lord Varys"}]}
3	4	0:28:55	0:30:11	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Lord Varys"}]}
3	4	0:30:11	0:31:57	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Lord Varys"}]}
3	4	0:31:57	0:34:45	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Margaery Tyrell"}]}
3	4	0:34:45	0:35:46	North of the Wall	Craster's Keep	{"characters": [{"name": "Bannen", "alive": false, "mannerOfDeath": "Broken foot"}, {"name": "Jeor Mormont"}, {"name": "Eddison Tollett"}, {"name": "Samwell Tarly"}, {"name": "Grenn"}, {"name": "Rast"}]}
3	4	0:35:46	0:36:28	North of the Wall	Craster's Keep	{"characters": [{"name": "Samwell Tarly"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}, {"name": "Rast"}]}
3	4	0:36:28	0:36:49	North of the Wall	Craster's Keep	{"characters": [{"name": "Craster"}, {"name": "Jeor Mormont"}]}
3	4	0:36:49	0:38:36	North of the Wall	Craster's Keep	{"characters": [{"name": "Craster"}, {"name": "Jeor Mormont"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}, {"name": "Samwell Tarly"}, {"name": "Rast"}, {"name": "Karl Tanner"}]}
3	4	0:38:36	0:38:54	North of the Wall	Craster's Keep	{"characters": [{"name": "Karl Tanner"}, {"name": "Craster"}, {"name": "Samwell Tarly"}]}
3	4	0:38:54	0:39:11	North of the Wall	Craster's Keep	{"characters": [{"name": "Jeor Mormont"}, {"name": "Karl Tanner"}, {"name": "Craster", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Karl Tanner"]}, {"name": "Samwell Tarly"}, {"name": "Rast"}]}
3	4	0:39:11	0:39:29	North of the Wall	Craster's Keep	{"characters": [{"name": "Grenn"}, {"name": "Karl Tanner"}, {"name": "Samwell Tarly"}, {"name": "Jeor Mormont"}, {"name": "Rast"}, {"name": "Eddison Tollett"}]}
3	4	0:39:29	0:39:32	North of the Wall	Craster's Keep	{"characters": [{"name": "Samwell Tarly"}]}
3	4	0:39:32	0:39:59	North of the Wall	Craster's Keep	{"characters": [{"name": "Craster", "alive": false}, {"name": "Jeor Mormont", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Rast"]}, {"name": "Rast"}]}
3	4	0:39:59	0:40:23	North of the Wall	Craster's Keep	{"characters": [{"name": "Samwell Tarly", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
3	4	0:40:23	0:40:29	North of the Wall	Craster's Keep	{"characters": [{"name": "Rast"}]}
3	4	0:40:29	0:41:08	The Riverlands	Hollow Hill	{"characters": [{"name": "Thoros of Myr"}, {"name": "Arya Stark"}, {"name": "Anguy"}, {"name": "Gendry"}]}
3	4	0:41:08	0:41:57	The Riverlands	Hollow Hill	{"characters": [{"name": "Thoros of Myr"}, {"name": "Arya Stark"}, {"name": "Anguy"}, {"name": "Gendry"}, {"name": "Sandor Clegane"}]}
3	4	0:41:57	0:45:31	The Riverlands	Hollow Hill	{"characters": [{"name": "Beric Dondarrion"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Arya Stark"}, {"name": "Gendry"}, {"name": "Anguy"}]}
3	4	0:45:31	0:46:40	Astapor	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}, {"name": "Missandei"}, {"name": "Jorah Mormont"}, {"name": "Kraznys mo Nakloz"}, {"name": "Greizhen mo Ullhor"}]}
3	4	0:46:40	0:49:06	Astapor	NULL	{"characters": [{"name": "Drogon"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Kraznys mo Nakloz"}, {"name": "Missandei"}, {"name": "Barristan Selmy"}, {"name": "Greizhen mo Ullhor"}]}
3	4	0:49:06	0:49:23	Astapor	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Barristan Selmy"}, {"name": "Kraznys mo Nakloz", "alive": false, "mannerOfDeath": "Dragon", "killedBy": ["Daenerys Targaryen"]}]}
3	4	0:49:23	0:49:30	Astapor	NULL	{"characters": [{"name": "Drogon"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
3	4	0:49:30	0:50:01	Astapor	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}]}
3	4	0:50:01	0:50:13	Astapor	NULL	{"characters": []}
3	4	0:50:13	0:51:24	Astapor	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Jorah Mormont"}, {"name": "Barristan Selmy"}]}
3	4	0:51:24	0:51:43	Astapor	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Jorah Mormont"}]}
3	4	0:51:43	0:52:01	Astapor	NULL	{"characters": [{"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
3	5	0:01:54	0:04:53	The Riverlands	Hollow Hill	{"characters": [{"name": "Thoros of Myr"}, {"name": "Sandor Clegane"}, {"name": "Arya Stark"}, {"name": "Anguy"}, {"name": "Beric Dondarrion", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Sandor Clegane"]}, {"name": "Gendry"}]}
3	5	0:04:53	0:05:31	The Riverlands	Hollow Hill	{"characters": [{"name": "Thoros of Myr"}, {"name": "Sandor Clegane"}, {"name": "Arya Stark"}, {"name": "Anguy"}, {"name": "Beric Dondarrion"}, {"name": "Gendry"}]}
3	5	0:05:31	0:07:43	North of the Wall	Wildling Camp	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte"}, {"name": "Orell"}, {"name": "Tormund Giantsbane"}]}
3	5	0:07:43	0:08:15	North of the Wall	Wildling Camp	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "loses", "name": "Longclaw"}]}, {"name": "Ygritte", "weapon": [{"action": "takes", "name": "Longclaw"}]}]}
3	5	0:08:15	0:11:50	North of the Wall	Cave Outside Wildling Camp	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "receives", "name": "Longclaw"}], "sex": {"with": ["Ygritte"], "when": "present", "type": "love"}}, {"name": "Ygritte", "weapon": [{"action": "gives", "name": "Longclaw"}], "sex": {"with": ["Jon Snow"], "when": "present", "type": "love"}}]}
3	5	0:11:50	0:12:24	The Riverlands	Hollow Hill	{"characters": [{"name": "Beric Dondarrion"}, {"name": "Thoros of Myr"}, {"name": "Sandor Clegane"}, {"name": "Anguy"}, {"name": "Arya Stark"}, {"name": "Gendry"}]}
3	5	0:12:24	0:14:16	The Riverlands	Harrenhal	{"characters": [{"name": "Locke"}, {"name": "Brienne of Tarth"}, {"name": "Jaime Lannister"}, {"name": "Roose Bolton"}]}
3	5	0:14:16	0:15:55	The Riverlands	Harrenhal	{"characters": [{"name": "Qyburn"}, {"name": "Jaime Lannister"}]}
3	5	0:15:55	0:16:47	The Crownlands	King's Landing	{"characters": [{"name": "Petyr Baelish"}, {"name": "Cersei Lannister"}]}
3	5	0:16:47	0:17:05	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Olenna Tyrell"}, {"name": "Podrick Payne"}]}
3	5	0:17:05	0:18:46	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Olenna Tyrell"}]}
3	5	0:18:46	0:19:10	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Olenna Tyrell"}, {"name": "Podrick Payne"}]}
3	5	0:19:10	0:20:38	The Riverlands	Hollow Hill	{"characters": [{"name": "Gendry"}, {"name": "Arya Stark"}]}
3	5	0:20:38	0:21:07	The Riverlands	Riverrun	{"characters": [{"name": "Martyn Lannister", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Rickard Karstark"]}, {"name": "Willem Lannister", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Rickard Karstark"]}, {"name": "Rickard Karstark"}]}
3	5	0:21:07	0:21:20	The Riverlands	Riverrun	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Talisa Maegyr"}, {"name": "Brynden Tully"}, {"name": "Edmure Tully"}, {"name": "Catelyn Stark"}]}
3	5	0:21:20	0:23:04	The Riverlands	Riverrun	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Talisa Maegyr"}, {"name": "Brynden Tully"}, {"name": "Edmure Tully"}, {"name": "Catelyn Stark"}, {"name": "Rickard Karstark"}, {"name": "Karstark Lookout"}]}
3	5	0:23:04	0:24:16	The Riverlands	Riverrun	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Talisa Maegyr"}, {"name": "Edmure Tully"}, {"name": "Catelyn Stark"}]}
3	5	0:24:16	0:25:41	The Riverlands	Riverrun	{"characters": [{"name": "Rickard Karstark", "alive": false, "mannerOfDeath": "Decapitation", "killedBy": ["Robb Stark"]}, {"name": "Robb Stark", "title": "King"}, {"name": "Talisa Maegyr"}, {"name": "Edmure Tully"}, {"name": "Catelyn Stark"}, {"name": "Brynden Tully"}]}
3	5	0:25:41	0:26:33	The Riverlands	Hollow Hill	{"characters": [{"name": "Arya Stark"}, {"name": "Thoros of Myr"}]}
3	5	0:26:33	0:28:43	The Riverlands	Hollow Hill	{"characters": [{"name": "Arya Stark"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
3	5	0:28:43	0:29:16	The Crownlands	Dragonstone	{"characters": [{"name": "Selyse Baratheon"}]}
3	5	0:29:16	0:32:05	The Crownlands	Dragonstone	{"characters": [{"name": "Selyse Baratheon"}, {"name": "Stannis Baratheon", "title": "King"}]}
3	5	0:32:05	0:32:11	The Crownlands	Dragonstone	{"characters": [{"name": "Stannis Baratheon", "title": "King"}]}
3	5	0:32:11	0:33:48	The Crownlands	Dragonstone	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Shireen Baratheon"}]}
3	5	0:33:48	0:40:30	The Riverlands	Harrenhal	{"characters": [{"name": "Brienne of Tarth"}, {"name": "Jaime Lannister"}]}
3	5	0:40:30	0:42:02	The Crownlands	Dragonstone	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}, {"name": "Shireen Baratheon"}]}
3	5	0:42:02	0:42:12	Yunkai	Outside Yunkai	{"characters": []}
3	5	0:42:12	0:42:16	Yunkai	Outside Yunkai	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
3	5	0:42:16	0:43:32	Yunkai	Outside Yunkai	{"characters": [{"name": "Jorah Mormont"}, {"name": "Barristan Selmy"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
3	5	0:43:32	0:45:15	Yunkai	Outside Yunkai	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Grey Worm"}]}
3	5	0:45:15	0:46:53	Yunkai	Outside Yunkai	{"characters": [{"name": "Jorah Mormont"}, {"name": "Barristan Selmy"}]}
3	5	0:46:53	0:49:02	The Riverlands	Riverrun	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Talisa Maegyr"}]}
3	5	0:49:02	0:49:48	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Margaery Tyrell"}, {"name": "Loras Tyrell"}, {"name": "Olyvar"}]}
3	5	0:49:48	0:50:28	The Crownlands	King's Landing	{"characters": [{"name": "Loras Tyrell", "sex": {"with": ["Olyvar"], "when": "present", "type": "fun"}}, {"name": "Olyvar", "sex": {"with": ["Loras Tyrell"], "when": "present", "type": "fun"}}]}
3	5	0:50:28	0:50:44	The Crownlands	King's Landing	{"characters": [{"name": "Petyr Baelish"}, {"name": "Olyvar"}]}
3	5	0:50:44	0:52:25	The Crownlands	King's Landing	{"characters": [{"name": "Petyr Baelish"}, {"name": "Sansa Stark"}]}
3	5	0:52:25	0:56:03	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}]}
3	6	0:01:54	0:05:13	North of the Wall	South to the Wall	{"characters": [{"name": "Samwell Tarly", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
3	6	0:05:13	0:08:14	The North	North to the Wall	{"characters": [{"name": "Osha"}, {"name": "Meera Reed"}, {"name": "Bran Stark"}, {"name": "Hodor"}, {"name": "Jojen Reed"}, {"name": "Rickon Stark"}]}
3	6	0:08:14	0:08:37	North of the Wall	The Wall	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Orell"}, {"name": "Ygritte"}]}
3	6	0:08:37	0:11:38	North of the Wall	The Wall	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte"}]}
3	6	0:11:38	0:12:12	North of the Wall	The Wall	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte"}]}
3	6	0:12:12	0:13:36	The Riverlands	Hollow Hill	{"characters": [{"name": "Arya Stark"}, {"name": "Anguy"}, {"name": "Thoros of Myr"}]}
3	6	0:13:36	0:14:53	The Riverlands	Hollow Hill	{"characters": [{"name": "Arya Stark"}, {"name": "Anguy"}, {"name": "Thoros of Myr"}, {"name": "Melisandre"}]}
3	6	0:14:53	0:18:03	The Riverlands	Hollow Hill	{"characters": [{"name": "Beric Dondarrion"}, {"name": "Thoros of Myr"}, {"name": "Melisandre"}]}
3	6	0:18:03	0:20:38	The Riverlands	Hollow Hill	{"characters": [{"name": "Gendry"}, {"name": "Arya Stark"}, {"name": "Anguy"}, {"name": "Melisandre"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
3	6	0:20:38	0:22:07	North of the Wall	The Wall	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Jon Snow"}, {"name": "Ygritte"}]}
3	6	0:22:07	0:27:39	The North	The Dreadfort	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Ramsay Snow"}]}
3	6	0:27:39	0:29:42	The Riverlands	Riverrun	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Black Walder Rivers"}, {"name": "Lothar Frey"}, {"name": "Catelyn Stark"}, {"name": "Brynden Tully"}, {"name": "Edmure Tully"}]}
3	6	0:29:42	0:31:25	The Riverlands	Riverrun	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Catelyn Stark"}, {"name": "Brynden Tully"}, {"name": "Edmure Tully"}]}
3	6	0:31:25	0:33:43	The Riverlands	Harrenhal	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth"}, {"name": "Roose Bolton"}]}
3	6	0:33:43	0:37:28	The Crownlands	King's Landing	{"characters": [{"name": "Tywin Lannister", "title": "Hand"}, {"name": "Olenna Tyrell"}]}
3	6	0:37:28	0:40:07	North of the Wall	The Wall	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Jon Snow"}, {"name": "Ygritte"}, {"name": "Orell"}]}
3	6	0:40:07	0:41:41	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Loras Tyrell"}]}
3	6	0:41:41	0:44:33	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tyrion Lannister"}]}
3	6	0:44:33	0:45:14	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}]}
3	6	0:45:14	0:45:18	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}, {"name": "Handmaid"}, {"name": "Tyrion Lannister"}]}
3	6	0:45:18	0:46:15	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}, {"name": "Tyrion Lannister"}]}
3	6	0:46:15	0:48:39	The Crownlands	King's Landing	{"characters": [{"name": "Lord Varys"}, {"name": "Petyr Baelish"}]}
3	6	0:48:39	0:48:58	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Ros", "alive": false, "mannerOfDeath": "Arrow", "killedBy": ["Joffrey Baratheon"]}]}
3	6	0:48:58	0:49:22	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}]}
3	6	0:49:21	0:50:59	The Wall	Top of the Wall	{"characters": [{"name": "Ygritte"}, {"name": "Tormund Giantsbane"}, {"name": "Orell"}, {"name": "Jon Snow"}]}
3	6	0:50:59	0:52:00	The Wall	Top of the Wall	{"characters": [{"name": "Ygritte"}, {"name": "Jon Snow"}]}
3	7	0:01:54	0:02:06	The Wall	The Gift	{"characters": [{"name": "Tormund Giantsbane"}]}
3	7	0:02:06	0:03:22	The Wall	The Gift	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte"}]}
3	7	0:03:22	0:04:14	The Wall	The Gift	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Orell"}]}
3	7	0:04:14	0:05:19	The Riverlands	Camp of the North	{"characters": [{"name": "Talisa Maegyr"}, {"name": "Robb Stark", "title": "King"}, {"name": "Catelyn Stark"}, {"name": "Brynden Tully"}, {"name": "Edmure Tully"}]}
3	7	0:05:19	0:05:27	The Riverlands	Camp of the North	{"characters": [{"name": "Talisa Maegyr"}, {"name": "Robb Stark", "title": "King"}, {"name": "Catelyn Stark"}]}
3	7	0:05:27	0:09:22	The Riverlands	Camp of the North	{"characters": [{"name": "Talisa Maegyr", "sex": {"with": ["Robb Stark"], "when": "present", "type": "love"}}, {"name": "Robb Stark", "title": "King", "sex": {"with": ["Talisa Maegyr"], "when": "present", "type": "love"}}]}
3	7	0:09:22	0:09:28	The Riverlands	Camp of the North	{"characters": []}
3	7	0:09:28	0:10:03	The North	The Gift	{"characters": [{"name": "Ygritte"}, {"name": "Tormund Giantsbane"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
3	7	0:10:03	0:10:08	The North	The Gift	{"characters": [{"name": "Ygritte"}, {"name": "Tormund Giantsbane"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Orell"}]}
3	7	0:10:08	0:11:23	The North	The Gift	{"characters": [{"name": "Ygritte"}, {"name": "Orell"}]}
3	7	0:11:23	0:14:32	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Margaery Tyrell"}]}
3	7	0:14:32	0:15:53	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Bronn"}]}
3	7	0:15:53	0:19:21	The Crownlands	King's Landing	{"characters": [{"name": "Tywin Lannister", "title": "Hand"}, {"name": "Joffrey Baratheon", "title": "King"}]}
3	7	0:19:21	0:20:35	Yunkai	Outside Yunkai	{"characters": [{"name": "Jorah Mormont"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}, {"name": "Grey Worm"}]}
3	7	0:20:35	0:21:01	Yunkai	Outside Yunkai	{"characters": []}
3	7	0:21:01	0:21:31	Yunkai	Outside Yunkai	{"characters": [{"name": "Razdal mo Eraz"}]}
3	7	0:21:31	0:21:39	Yunkai	Outside Yunkai	{"characters": []}
3	7	0:21:39	0:21:42	Yunkai	Outside Yunkai	{"characters": [{"name": "Missandei"}]}
3	7	0:21:42	0:25:24	Yunkai	Outside Yunkai	{"characters": [{"name": "Missandei"}, {"name": "Jorah Mormont"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Razdal mo Eraz"}, {"name": "Grey Worm"}, {"name": "Barristan Selmy"}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
3	7	0:25:24	0:25:43	Yunkai	Outside Yunkai	{"characters": [{"name": "Jorah Mormont"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}]}
3	7	0:25:43	0:25:54	Yunkai	Outside Yunkai	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}]}
3	7	0:25:54	0:28:09	The Crownlands	King's Landing	{"characters": [{"name": "Shae"}, {"name": "Tyrion Lannister"}]}
3	7	0:28:09	0:28:23	The Crownlands	Blackwater Bay	{"characters": []}
3	7	0:28:23	0:30:01	The Crownlands	Blackwater Bay	{"characters": [{"name": "Melisandre"}, {"name": "Gendry"}]}
3	7	0:30:01	0:30:59	The Riverlands	Hollow Hill	{"characters": [{"name": "Arya Stark"}, {"name": "Beric Dondarrion"}, {"name": "Thoros of Myr"}]}
3	7	0:30:59	0:31:16	The Riverlands	Hollow Hill	{"characters": [{"name": "Arya Stark"}, {"name": "Beric Dondarrion"}, {"name": "Thoros of Myr"}, {"name": "Anguy"}]}
3	7	0:31:16	0:31:45	The Riverlands	Hollow Hill	{"characters": [{"name": "Arya Stark"}, {"name": "Beric Dondarrion"}, {"name": "Thoros of Myr"}]}
3	7	0:31:45	0:31:47	The Riverlands	Hollow Hill	{"characters": [{"name": "Beric Dondarrion"}]}
3	7	0:31:47	0:32:06	The Riverlands	Hollow Hill	{"characters": [{"name": "Arya Stark"}]}
3	7	0:32:06	0:32:19	The Riverlands	Hollow Hill	{"characters": [{"name": "Arya Stark"}, {"name": "Sandor Clegane"}]}
3	7	0:32:19	0:33:51	The Riverlands	Harrenhal	{"characters": [{"name": "Brienne of Tarth"}, {"name": "Jaime Lannister"}]}
3	7	0:33:51	0:34:39	The Riverlands	Harrenhal	{"characters": [{"name": "Roose Bolton"}, {"name": "Jaime Lannister"}, {"name": "Qyburn"}]}
3	7	0:34:39	0:35:01	The Riverlands	Harrenhal	{"characters": [{"name": "Jaime Lannister"}, {"name": "Locke"}, {"name": "Qyburn"}]}
3	7	0:35:01	0:38:52	The North	The Dreadfort	{"characters": [{"name": "Theon Greyjoy", "sex": {"with": ["Myranda", "Violet"], "when": "present", "type": "torture"}}, {"name": "Myranda", "sex": {"with": ["Theon Greyjoy"], "when": "present", "type": "torture"}}, {"name": "Violet", "sex": {"with": ["Theon Greyjoy"], "when": "present", "type": "torture"}}]}
3	7	0:38:52	0:40:24	The North	The Dreadfort	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Myranda"}, {"name": "Violet"}, {"name": "Ramsay Snow"}]}
3	7	0:40:24	0:40:42	The North	The Gift	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte"}]}
3	7	0:40:42	0:40:53	The North	The Gift	{"characters": [{"name": "Tormund Giantsbane"}]}
3	7	0:40:53	0:44:21	The North	The Gift	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte"}]}
3	7	0:44:21	0:48:19	The North	North to the Wall	{"characters": [{"name": "Meera Reed"}, {"name": "Hodor"}, {"name": "Osha"}, {"name": "Bran Stark"}, {"name": "Rickon Stark"}, {"name": "Jojen Reed"}]}
3	7	0:48:19	0:51:03	The Riverlands	South to King's Landing	{"characters": [{"name": "Qyburn"}, {"name": "Jaime Lannister"}]}
3	7	0:51:03	0:52:11	The Riverlands	South to King's Landing	{"characters": [{"name": "Qyburn"}, {"name": "Jaime Lannister"}, {"name": "Steelshanks Walton"}]}
3	7	0:52:11	0:52:40	The Riverlands	Harrenhal	{"characters": [{"name": "Jaime Lannister"}, {"name": "Steelshanks Walton"}]}
3	7	0:52:40	0:52:43	The Riverlands	Harrenhal	{"characters": [{"name": "Jaime Lannister"}]}
3	7	0:52:43	0:54:01	The Riverlands	Harrenhal	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth"}, {"name": "The Bear"}, {"name": "Locke"}, {"name": "Qyburn"}]}
3	7	0:54:01	0:54:56	The Riverlands	Harrenhal	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth"}, {"name": "The Bear"}, {"name": "Locke"}, {"name": "Qyburn"}, {"name": "Steelshanks Walton"}]}
3	7	0:54:56	0:55:51	The Riverlands	Harrenhal	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth"}, {"name": "Locke"}]}
3	7	0:55:51	0:56:11	The Riverlands	Harrenhal	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth"}, {"name": "Locke"}, {"name": "Qyburn"}, {"name": "Steelshanks Walton"}]}
3	7	0:56:11	0:56:16	The Riverlands	Harrenhal	{"characters": [{"name": "The Bear"}]}
3	8	0:01:54	0:02:49	The Riverlands	Red Fork	{"characters": [{"name": "Arya Stark"}, {"name": "Sandor Clegane"}]}
3	8	0:02:49	0:04:41	The Riverlands	Red Fork	{"characters": [{"name": "Arya Stark"}, {"name": "Sandor Clegane"}]}
3	8	0:04:41	0:04:50	Yunkai	Outside Yunkai	{"characters": []}
3	8	0:04:50	0:05:56	Yunkai	Outside Yunkai	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Barristan Selmy"}, {"name": "Grey Worm"}]}
3	8	0:05:56	0:09:01	Yunkai	Outside Yunkai	{"characters": [{"name": "Barristan Selmy"}, {"name": "Missandei"}, {"name": "Mero"}, {"name": "Prendahl na Ghezn"}, {"name": "Daario Naharis"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Grey Worm"}]}
3	8	0:09:01	0:09:05	Yunkai	Outside Yunkai	{"characters": [{"name": "Barristan Selmy"}, {"name": "Missandei"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Grey Worm"}]}
3	8	0:09:05	0:09:32	The Crownlands	Dragonstone	{"characters": [{"name": "Gendry"}, {"name": "Melisandre"}]}
3	8	0:09:32	0:10:16	The Crownlands	Dragonstone	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Gendry"}, {"name": "Melisandre"}]}
3	8	0:10:16	0:10:56	The Crownlands	Dragonstone	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Melisandre"}]}
3	8	0:10:56	0:11:43	The Crownlands	Dragonstone	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}]}
3	8	0:11:43	0:15:36	The Crownlands	Dragonstone	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}, {"name": "Stannis Baratheon", "title": "King"}]}
3	8	0:15:36	0:15:54	Yunkai	Outside Yunkai	{"characters": []}
3	8	0:15:54	0:17:58	Yunkai	Outside Yunkai	{"characters": [{"name": "Mero"}, {"name": "Prendahl na Ghezn"}, {"name": "Daario Naharis"}, {"name": "Yunkai'i Whore"}]}
3	8	0:17:58	0:18:59	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}, {"name": "Tyrion Lannister"}, {"name": "Podrick Payne"}]}
3	8	0:18:59	0:20:24	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}]}
3	8	0:20:24	0:20:27	The Crownlands	King's Landing	{"characters": []}
3	8	0:20:27	0:21:09	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Margaery Tyrell"}, {"name": "Loras Tyrell"}]}
3	8	0:21:09	0:22:26	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Margaery Tyrell"}]}
3	8	0:22:26	0:25:31	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark", "married": {"to": "Tyrion Lannister", "when": "present", "type": "arranged", "consummated": false}}, {"name": "Tyrion Lannister", "married": {"to": "Sansa Stark", "when": "present", "type": "arranged", "consummated": false}}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Bronn"}, {"name": "Margaery Tyrell"}, {"name": "Loras Tyrell"}, {"name": "Olenna Tyrell"}, {"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Grand Maester Pycelle"}, {"name": "Lord Varys"}, {"name": "High Septon"}]}
3	8	0:25:31	0:31:05	The Crownlands	Dragonstone	{"characters": [{"name": "Gendry", "sex": {"with": ["Melisandre"], "when": "present", "type": "magic"}}, {"name": "Melisandre", "sex": {"with": ["Gendry"], "when": "present", "type": "magic"}}]}
3	8	0:31:05	0:32:19	The Crownlands	Dragonstone	{"characters": [{"name": "Gendry"}, {"name": "Melisandre"}, {"name": "Davos Seaworth", "title": "Hand"}, {"name": "Stannis Baratheon", "title": "King"}]}
3	8	0:32:19	0:32:24	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Grand Maester Pycelle"}]}
3	8	0:32:24	0:32:35	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}]}
3	8	0:32:35	0:33:08	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Margaery Tyrell"}, {"name": "Loras Tyrell"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Tyrion Lannister"}, {"name": "Sansa Stark"}]}
3	8	0:33:08	0:33:34	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Tyrion Lannister"}, {"name": "Sansa Stark"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Cersei Lannister"}]}
3	8	0:33:34	0:33:50	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Cersei Lannister"}, {"name": "Margaery Tyrell"}]}
3	8	0:33:50	0:34:01	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
3	8	0:34:01	0:34:05	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Sansa Stark"}, {"name": "Lord Varys"}, {"name": "Shae"}]}
3	8	0:34:01	0:35:06	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}]}
3	8	0:35:06	0:35:15	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Olenna Tyrell"}, {"name": "Grand Maester Pycelle"}, {"name": "Tyrion Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}]}
3	8	0:35:15	0:35:26	The Crownlands	King's Landing	{"characters": [{"name": "Loras Tyrell"}, {"name": "Tyrion Lannister"}]}
3	8	0:35:26	0:36:00	The Crownlands	King's Landing	{"characters": [{"name": "Loras Tyrell"}, {"name": "Cersei Lannister"}]}
3	8	0:36:00	0:36:05	The Crownlands	King's Landing	{"characters": [{"name": "Lord Varys"}]}
3	8	0:36:05	0:36:20	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}, {"name": "Joffrey Baratheon", "title": "King"}]}
3	8	0:36:20	0:36:52	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Joffrey Baratheon", "title": "King"}]}
3	8	0:36:52	0:38:44	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}, {"name": "Margaery Tyrell"}, {"name": "Tywin Lannister", "title": "King"}]}
3	8	0:38:44	0:38:49	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}, {"name": "Grand Maester Pycelle"}]}
3	8	0:38:49	0:42:53	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}]}
3	8	0:42:53	0:43:05	Yunkai	Outside Yunkai	{"characters": []}
3	8	0:43:05	0:43:24	Yunkai	Outside Yunkai	{"characters": [{"name": "Daario Naharis"}]}
3	8	0:43:24	0:44:12	Yunkai	Outside Yunkai	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}]}
3	8	0:44:12	0:45:14	Yunkai	Outside Yunkai	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Daario Naharis"}]}
3	8	0:45:14	0:45:19	Yunkai	Outside Yunkai	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Daario Naharis"}, {"name": "Mero", "alive": false, "mannerOfDeath": "Decapitation", "killedBy": ["Daario Naharis"]}, {"name": "Prendahl na Ghezn", "alive": false, "mannerOfDeath": "Decapitation", "killedBy": ["Daario Naharis"]}]}
3	8	0:45:19	0:47:02	Yunkai	Outside Yunkai	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Daario Naharis"}]}
3	8	0:47:02	0:47:55	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Shae"}, {"name": "Tyrion Lannister"}]}
3	8	0:47:55	0:52:48	North of the Wall	Destroyed Cabin	{"characters": [{"name": "Samwell Tarly", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
3	8	0:52:48	0:53:22	North of the Wall	Destroyed Cabin	{"characters": [{"name": "Samwell Tarly", "weapon": [{"action": "has", "name": "Dragonglass"}]}]}
3	8	0:53:22	0:53:41	North of the Wall	Destroyed Cabin	{"characters": [{"name": "Samwell Tarly", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
3	8	0:53:41	0:54:44	North of the Wall	Destroyed Cabin	{"characters": [{"name": "Samwell Tarly", "weapon": [{"action": "loses", "name": "Dragonglass"}]}, {"name": "Gilly"}, {"name": "Baby Sam"}, {"name": "White Walker", "alive": false, "mannerOfDeath": "Back stab", "killedBy": ["Samwell Tarly"]}]}
3	8	0:54:44	0:55:00	North of the Wall	Destroyed Cabin	{"characters": [{"name": "Samwell Tarly", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
3	9	0:01:54	0:03:50	The Riverlands	The Twins	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Catelyn Stark"}]}
3	9	0:03:50	0:04:12	The Riverlands	The Twins	{"characters": [{"name": "Grey Wind"}]}
3	9	0:04:12	0:09:19	The Riverlands	The Twins	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Catelyn Stark"}, {"name": "Brynden Tully"}, {"name": "Talisa Maegyr"}, {"name": "Walder Frey"}, {"name": "Lothar Frey"}, {"name": "Black Walder Rivers"}, {"name": "Edmure Tully"}, {"name": "Joyeuse Erenford"}, {"name": "Merry Frey"}]}
3	9	0:09:19	0:09:28	Yunkai	Outside Yunkai	{"characters": []}
3	9	0:09:28	0:11:01	Yunkai	Outside Yunkai	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Barristan Selmy"}, {"name": "Grey Worm"}, {"name": "Daario Naharis"}]}
3	9	0:11:01	0:11:21	Yunkai	Outside Yunkai	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Barristan Selmy"}]}
3	9	0:11:21	0:12:59	North of the Wall	Near Nightfort	{"characters": [{"name": "Samwell Tarly", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
3	9	0:12:59	0:14:44	The Riverlands	To The Twins	{"characters": [{"name": "Sandor Clegane"}, {"name": "Arya Stark"}, {"name": "Hog Farmer"}]}
3	9	0:14:44	0:15:43	The North	The Gift	{"characters": [{"name": "Rickon Stark"}, {"name": "Osha"}, {"name": "Meera Reed"}, {"name": "Jojen Reed"}, {"name": "Hodor"}, {"name": "Bran Stark"}]}
3	9	0:15:43	0:15:52	The North	The Gift	{"characters": [{"name": "Old Man"}]}
3	9	0:15:52	0:17:20	The North	The Gift	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Ygritte"}, {"name": "Orell"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
3	9	0:17:20	0:17:25	The North	The Gift	{"characters": [{"name": "Old Man"}]}
3	9	0:17:25	0:17:38	The North	The Gift	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Ygritte"}, {"name": "Orell"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Old Man"}]}
3	9	0:17:38	0:17:45	The North	The Gift	{"characters": [{"name": "Ygritte"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
3	9	0:17:45	0:20:14	The Riverlands	To The Twins	{"characters": [{"name": "Arya Stark"}, {"name": "Sandor Clegane"}]}
3	9	0:20:14	0:21:51	The North	The Gift	{"characters": [{"name": "Rickon Stark"}, {"name": "Osha"}, {"name": "Meera Reed"}, {"name": "Jojen Reed"}, {"name": "Hodor"}, {"name": "Bran Stark"}]}
3	9	0:21:51	0:21:55	The North	The Gift	{"characters": [{"name": "Orell"}]}
3	9	0:21:55	0:22:09	The North	The Gift	{"characters": [{"name": "Rickon Stark"}, {"name": "Osha"}, {"name": "Meera Reed"}, {"name": "Jojen Reed"}, {"name": "Hodor"}, {"name": "Bran Stark"}]}
3	9	0:22:09	0:22:14	The North	The Gift	{"characters": [{"name": "Orell"}]}
3	9	0:22:14	0:22:46	The North	The Gift	{"characters": [{"name": "Rickon Stark"}, {"name": "Osha"}, {"name": "Meera Reed"}, {"name": "Jojen Reed"}, {"name": "Hodor"}, {"name": "Bran Stark"}]}
3	9	0:22:46	0:23:41	The North	The Gift	{"characters": [{"name": "Ygritte"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Old Man"}, {"name": "Orell"}, {"name": "Tormund Giantsbane"}]}
3	9	0:23:41	0:23:45	The North	The Gift	{"characters": [{"name": "Summer"}, {"name": "Shaggydog"}]}
3	9	0:23:45	0:24:03	The North	The Gift	{"characters": [{"name": "Ygritte"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Old Man"}, {"name": "Orell"}, {"name": "Tormund Giantsbane"}]}
3	9	0:24:03	0:24:26	The North	The Gift	{"characters": [{"name": "Bran Stark"}, {"name": "Jojen Reed"}]}
3	9	0:24:26	0:25:08	The North	The Gift	{"characters": [{"name": "Ygritte"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Old Man", "alive": false, "mannerOfDeath": "Arrow", "killedBy": ["Ygritte"]}, {"name": "Orell"}, {"name": "Tormund Giantsbane"}]}
3	9	0:25:08	0:25:34	The North	The Gift	{"characters": [{"name": "Ygritte"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Orell"}, {"name": "Tormund Giantsbane"}]}
3	9	0:25:34	0:25:52	The North	The Gift	{"characters": [{"name": "Ygritte"}, {"name": "Tormund Giantsbane"}]}
3	9	0:25:52	0:26:05	The North	The Gift	{"characters": [{"name": "Bran Stark"}, {"name": "Jojen Reed"}, {"name": "Rickon Stark"}, {"name": "Osha"}, {"name": "Meera Reed"}]}
3	9	0:26:05	0:26:47	The North	The Gift	{"characters": [{"name": "Summer"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Orell", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Jon Snow"]}, {"name": "Shaggydog"}]}
3	9	0:26:47	0:27:07	The North	The Gift	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Tormund Giantsbane"}, {"name": "Ygritte"}]}
3	9	0:27:07	0:27:17	Yunkai	NULL	{"characters": []}
3	9	0:27:17	0:27:30	Yunkai	NULL	{"characters": [{"name": "Daario Naharis"}, {"name": "Jorah Mormont"}, {"name": "Grey Worm"}]}
3	9	0:27:30	0:27:37	Yunkai	NULL	{"characters": [{"name": "Daario Naharis"}]}
3	9	0:27:37	0:28:00	Yunkai	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Grey Worm"}]}
3	9	0:28:00	0:29:09	Yunkai	NULL	{"characters": [{"name": "Daario Naharis"}, {"name": "Jorah Mormont"}, {"name": "Grey Worm"}]}
3	9	0:29:09	0:29:25	The Riverlands	The Twins	{"characters": []}
3	9	0:29:25	0:32:02	The Riverlands	The Twins	{"characters": [{"name": "Walder Frey"}, {"name": "Septon"}, {"name": "Robb Stark", "title": "King"}, {"name": "Talisa Maegyr"}, {"name": "Wendel Manderly"}, {"name": "Brynden Tully"}, {"name": "Catelyn Stark"}, {"name": "Roose Bolton"}, {"name": "Edmure Tully", "married": {"to": "Roslin Frey", "when": "present", "type": "arranged", "consummated": true}}, {"name": "Roslin Frey", "married": {"to": "Edmure Tully", "when": "present", "type": "arranged", "consummated": true}}]}
3	9	0:32:02	0:35:13	The North	The Gift	{"characters": [{"name": "Bran Stark"}, {"name": "Jojen Reed"}, {"name": "Rickon Stark"}, {"name": "Osha"}, {"name": "Meera Reed"}, {"name": "Hodor"}]}
3	9	0:35:13	0:35:22	The North	The Gift	{"characters": [{"name": "Rickon Stark"}, {"name": "Osha"}, {"name": "Shaggydog"}]}
3	9	0:35:22	0:35:25	Yunkai	Outside Yunkai	{"characters": []}
3	9	0:35:25	0:35:40	Yunkai	NULL	{"characters": [{"name": "Barristan Selmy"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}]}
3	9	0:35:40	0:36:14	Yunkai	NULL	{"characters": [{"name": "Barristan Selmy"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Jorah Mormont"}, {"name": "Grey Worm"}]}
3	9	0:36:14	0:36:35	Yunkai	NULL	{"characters": [{"name": "Barristan Selmy"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Jorah Mormont"}, {"name": "Grey Worm"}, {"name": "Daario Naharis"}]}
3	9	0:36:35	0:37:12	The Riverlands	The Twins	{"characters": [{"name": "Walder Frey"}, {"name": "Roslin Frey"}, {"name": "Edmure Tully"}, {"name": "Joyeuse Erenford"}, {"name": "Talisa Maegyr"}, {"name": "Lothar Frey"}, {"name": "Robb Stark", "title": "King"}, {"name": "Catelyn Stark"}, {"name": "Roose Bolton"}, {"name": "Brynden Tully"}, {"name": "Wendel Manderly"}, {"name": "Black Walder Rivers"}]}
3	9	0:37:12	0:38:02	The Riverlands	The Twins	{"characters": [{"name": "Roslin Frey"}, {"name": "Edmure Tully"}, {"name": "Catelyn Stark"}, {"name": "Roose Bolton"}, {"name": "Brynden Tully"}]}
3	9	0:38:02	0:38:09	The Riverlands	The Twins	{"characters": [{"name": "Talisa Maegyr"}, {"name": "Robb Stark", "title": "King"}, {"name": "Catelyn Stark"}, {"name": "Roose Bolton"}, {"name": "Brynden Tully"}]}
3	9	0:38:09	0:38:47	The Riverlands	The Twins	{"characters": [{"name": "Talisa Maegyr"}, {"name": "Robb Stark", "title": "King"}, {"name": "Lothar Frey"}, {"name": "Catelyn Stark"}, {"name": "Roose Bolton"}, {"name": "Roslin Frey"}, {"name": "Edmure Tully"}, {"name": "Walder Frey"}]}
3	9	0:38:47	0:39:44	The Riverlands	The Twins	{"characters": [{"name": "Roslin Frey"}, {"name": "Edmure Tully"}, {"name": "Walder Frey"}, {"name": "Talisa Maegyr"}, {"name": "Robb Stark", "title": "King"}, {"name": "Lothar Frey"}, {"name": "Catelyn Stark"}, {"name": "Roose Bolton"}, {"name": "Joyeuse Erenford"}]}
3	9	0:39:44	0:40:24	The Riverlands	The Twins	{"characters": [{"name": "Talisa Maegyr"}, {"name": "Robb Stark", "title": "King"}, {"name": "Catelyn Stark"}, {"name": "Roose Bolton"}, {"name": "Roslin Frey"}, {"name": "Edmure Tully"}, {"name": "Walder Frey"}, {"name": "Lothar Frey"}]}
3	9	0:40:24	0:40:31	The Riverlands	The Twins	{"characters": [{"name": "Talisa Maegyr"}, {"name": "Robb Stark", "title": "King"}, {"name": "Catelyn Stark"}, {"name": "Roose Bolton"}]}
3	9	0:40:31	0:40:49	The Riverlands	The Twins	{"characters": [{"name": "Catelyn Stark"}, {"name": "Roose Bolton"}]}
3	9	0:40:49	0:41:46	The Riverlands	The Twins	{"characters": [{"name": "Talisa Maegyr"}, {"name": "Robb Stark", "title": "King"}]}
3	9	0:41:46	0:41:58	The Riverlands	The Twins	{"characters": [{"name": "Talisa Maegyr"}, {"name": "Robb Stark", "title": "King"}, {"name": "Catelyn Stark"}]}
3	9	0:41:58	0:42:30	The Riverlands	The Twins	{"characters": [{"name": "Catelyn Stark"}]}
3	9	0:42:30	0:42:39	The Riverlands	The Twins	{"characters": [{"name": "Grey Wind"}]}
3	9	0:42:39	0:43:02	The Riverlands	The Twins	{"characters": [{"name": "Arya Stark"}, {"name": "Sandor Clegane"}]}
3	9	0:43:02	0:43:25	The Riverlands	The Twins	{"characters": [{"name": "Arya Stark"}, {"name": "Sandor Clegane"}, {"name": "Frey Guard"}]}
3	9	0:43:25	0:43:32	The Riverlands	The Twins	{"characters": [{"name": "Sandor Clegane"}, {"name": "Frey Guard"}]}
3	9	0:43:32	0:44:14	The Riverlands	The Twins	{"characters": [{"name": "Catelyn Stark"}, {"name": "Robb Stark", "title": "King"}, {"name": "Walder Frey"}, {"name": "Joyeuse Erenford"}, {"name": "Talisa Maegyr"}, {"name": "Roose Bolton"}]}
3	9	0:44:14	0:44:34	The Riverlands	The Twins	{"characters": [{"name": "Talisa Maegyr"}, {"name": "Lothar Frey"}, {"name": "Robb Stark", "title": "King"}, {"name": "Walder Frey"}, {"name": "Wendel Manderly", "alive": false, "mannerOfDeath": "Arrow", "killedBy": ["Walder Frey"]}]}
3	9	0:44:34	0:44:44	The Riverlands	The Twins	{"characters": [{"name": "Catelyn Stark"}, {"name": "Walder Frey"}, {"name": "Joyeuse Erenford"}]}
3	9	0:44:44	0:44:50	The Riverlands	The Twins	{"characters": []}
3	9	0:44:50	0:44:53	The Riverlands	The Twins	{"characters": [{"name": "Walder Frey"}]}
3	9	0:44:53	0:45:28	The Riverlands	The Twins	{"characters": [{"name": "Arya Stark"}]}
3	9	0:45:28	0:46:09	The Riverlands	The Twins	{"characters": [{"name": "Arya Stark"}, {"name": "Grey Wind", "alive": false, "mannerOfDeath": "Arrow", "killedBy": ["Frey Soldiers"]}]}
3	9	0:46:09	0:46:33	The Riverlands	The Twins	{"characters": [{"name": "Arya Stark"}, {"name": "Sandor Clegane"}]}
3	9	0:46:33	0:46:44	The Riverlands	The Twins	{"characters": [{"name": "Catelyn Stark"}, {"name": "Walder Frey"}, {"name": "Joyeuse Erenford"}]}
3	9	0:46:44	0:47:12	The Riverlands	The Twins	{"characters": [{"name": "Robb Stark", "title": "King"}, {"name": "Talisa Maegyr", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Lothar Frey"]}, {"name": "Walder Frey"}]}
3	9	0:47:12	0:48:38	The Riverlands	The Twins	{"characters": [{"name": "Catelyn Stark"}, {"name": "Joyeuse Erenford"}, {"name": "Walder Frey"}, {"name": "Robb Stark", "title": "King"}, {"name": "Talisa Maegyr", "alive": false}]}
3	9	0:48:38	0:48:56	The Riverlands	The Twins	{"characters": [{"name": "Catelyn Stark"}, {"name": "Joyeuse Erenford"}, {"name": "Robb Stark", "title": "King", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Roose Bolton"]}, {"name": "Roose Bolton"}]}
3	9	0:48:56	0:49:25	The Riverlands	The Twins	{"characters": [{"name": "Catelyn Stark", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Black Walder Rivers"]}, {"name": "Walder Frey"}, {"name": "Joyeuse Erenford", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Catelyn Stark"]}, {"name": "Black Walder Rivers"}]}
3	10	0:01:55	0:02:13	The Riverlands	The Twins	{"characters": [{"name": "Roose Bolton"}]}
3	10	0:02:13	0:02:33	The Riverlands	The Twins	{"characters": []}
3	10	0:02:33	0:02:48	The Riverlands	The Twins	{"characters": [{"name": "Sandor Clegane"}, {"name": "Arya Stark"}]}
3	10	0:02:48	0:03:09	The Riverlands	The Twins	{"characters": [{"name": "Sandor Clegane"}, {"name": "Arya Stark"}, {"name": "Robb Stark", "title": "King", "alive": false}, {"name": "Grey Wind", "alive": false}]}
3	10	0:03:09	0:03:24	The Riverlands	The Twins	{"characters": [{"name": "Sandor Clegane"}, {"name": "Arya Stark"}]}
3	10	0:03:24	0:03:47	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}, {"name": "Shae"}, {"name": "Desmond Crakehall"}, {"name": "Eldrick Sarsfield"}]}
3	10	0:03:47	0:05:07	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}, {"name": "Shae"}]}
3	10	0:05:07	0:05:16	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}, {"name": "Podrick Payne"}]}
3	10	0:05:16	0:08:36	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Cersei Lannister"}, {"name": "Lord Varys"}, {"name": "Grand Maester Pycelle"}]}
3	10	0:08:36	0:08:54	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Lord Varys"}]}
3	10	0:08:54	0:12:20	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}]}
3	10	0:12:20	0:12:54	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Sansa Stark"}]}
3	10	0:12:54	0:13:09	The Wall	Nightfort	{"characters": [{"name": "Meera Reed"}, {"name": "Jojen Reed"}, {"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Summer"}]}
3	10	0:13:09	0:14:52	The Wall	Nightfort	{"characters": [{"name": "Meera Reed"}, {"name": "Jojen Reed"}, {"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Summer"}]}
3	10	0:14:52	0:17:12	The Riverlands	The Twins	{"characters": [{"name": "Walder Frey"}, {"name": "Roose Bolton"}]}
3	10	0:17:12	0:20:50	The North	The Dreadfort	{"characters": [{"name": "Ramsay Snow"}, {"name": "Theon Greyjoy"}]}
3	10	0:20:50	0:21:38	The Wall	Nightfort	{"characters": [{"name": "Bran Stark"}, {"name": "Summer"}, {"name": "Hodor"}, {"name": "Meera Reed"}, {"name": "Jojen Reed"}]}
3	10	0:21:38	0:23:49	The Wall	Nightfort	{"characters": [{"name": "Bran Stark"}, {"name": "Summer"}, {"name": "Hodor"}, {"name": "Meera Reed"}, {"name": "Jojen Reed"}, {"name": "Samwell Tarly", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
3	10	0:23:49	0:23:56	The Iron Islands	Pyke	{"characters": []}
3	10	0:23:56	0:26:39	The Iron Islands	Pyke	{"characters": [{"name": "Balon Greyjoy", "title": "King"}, {"name": "Yara Greyjoy"}]}
3	10	0:26:39	0:27:05	The Iron Islands	Pyke	{"characters": [{"name": "Yara Greyjoy"}]}
3	10	0:27:05	0:29:02	The Wall	Nightfort	{"characters": [{"name": "Bran Stark", "weapon": [{"action": "receives", "name": "Dragonglass"}]}, {"name": "Hodor", "weapon": [{"action": "receives", "name": "Dragonglass"}]}, {"name": "Meera Reed", "weapon": [{"action": "receives", "name": "Dragonglass"}]}, {"name": "Jojen Reed", "weapon": [{"action": "receives", "name": "Dragonglass"}]}, {"name": "Samwell Tarly", "weapon": [{"action": "gives", "name": "Dragonglass"}]}, {"name": "Gilly"}, {"name": "Baby Sam"}, {"name": "Summer"}]}
3	10	0:29:02	0:32:27	The Crownlands	Dragonstone	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}, {"name": "Gendry"}]}
3	10	0:32:27	0:35:22	The Crownlands	King's Landing	{"characters": [{"name": "Shae"}, {"name": "Lord Varys"}]}
3	10	0:35:22	0:35:43	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Podrick Payne"}]}
3	10	0:35:43	0:35:50	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Podrick Payne"}, {"name": "Cersei Lannister"}]}
3	10	0:35:50	0:38:45	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Cersei Lannister"}]}
3	10	0:38:45	0:40:55	The Riverlands	Away from the Twins	{"characters": [{"name": "Sandor Clegane"}, {"name": "Arya Stark"}, {"name": "Frey Soldier #1", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Arya Stark"]}, {"name": "Frey Soldier #2", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Sandor Clegane"]}]}
3	10	0:40:55	0:42:41	The North	The Gift	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte"}]}
3	10	0:42:41	0:42:46	The Wall	Castle Black	{"characters": []}
3	10	0:42:46	0:45:33	The Wall	Castle Black	{"characters": [{"name": "Maester Aemon"}, {"name": "Samwell Tarly"}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
3	10	0:45:33	0:47:23	The Crownlands	Dragonstone	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}, {"name": "Shireen Baratheon"}]}
3	10	0:47:23	0:49:54	The Crownlands	Dragonstone	{"characters": [{"name": "Melisandre"}, {"name": "Stannis Baratheon", "title": "King"}, {"name": "Davos Seaworth", "title": "Hand"}]}
3	10	0:49:54	0:50:11	The Crownlands	Dragonstone	{"characters": [{"name": "Gendry"}, {"name": "Davos Seaworth", "title": "Hand"}]}
3	10	0:50:11	0:51:25	The Crownlands	Dragonstone	{"characters": [{"name": "Gendry"}, {"name": "Davos Seaworth", "title": "Hand"}]}
3	10	0:51:25	0:51:38	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Todder"}]}
3	10	0:51:38	0:52:19	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Samwell Tarly"}, {"name": "Pypar"}]}
3	10	0:52:19	0:52:28	The Crownlands	King's Landing	{"characters": []}
3	10	0:52:28	0:52:48	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth"}, {"name": "Qyburn"}, {"name": "Fruit Vendor"}]}
3	10	0:52:48	0:53:04	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth"}, {"name": "Qyburn"}]}
3	10	0:53:04	0:53:49	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Jaime Lannister"}]}
3	10	0:53:49	0:56:40	The Crownlands	Dragonstone	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Davos Seaworth", "title": "Hand"}, {"name": "Melisandre"}]}
3	10	0:56:40	0:59:27	Yunkai	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Daario Naharis"}, {"name": "Barristan Selmy"}, {"name": "Jorah Mormont"}]}
3	10	0:59:27	0:59:59	Yunkai	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Daario Naharis"}, {"name": "Barristan Selmy"}, {"name": "Jorah Mormont"}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
3	10	0:59:59	1:01:07	Yunkai	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Jorah Mormont"}, {"name": "Daario Naharis"}, {"name": "Barristan Selmy"}]}
3	10	1:01:07	1:01:10	Yunkai	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}]}
3	10	1:01:10	1:01:20	Yunkai	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
4	1	0:00:07	0:01:47	The Crownlands	King's Landing	{"characters": [{"name": "Tywin Lannister", "title": "Hand", "weapon": [{"action": "destroys", "name": "Ice"}]}]}
4	1	0:03:36	0:06:29	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Tywin Lannister", "title": "Hand"}]}
4	1	0:06:29	0:08:02	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Podrick Payne"}, {"name": "Bronn"}]}
4	1	0:08:02	0:09:25	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Podrick Payne"}, {"name": "Bronn"}, {"name": "Lord Blackmont"}]}
4	1	0:09:25	0:11:11	The Crownlands	King's Landing	{"characters": [{"name": "Oberyn Martell"}, {"name": "Olyvar"}, {"name": "Ellaria Sand"}, {"name": "Marei"}, {"name": "Whore #1"}, {"name": "Whore #2"}]}
4	1	0:11:11	0:12:10	The Crownlands	King's Landing	{"characters": [{"name": "Oberyn Martell"}, {"name": "Olyvar"}, {"name": "Ellaria Sand"}, {"name": "Marei"}]}
4	1	0:12:10	0:13:54	The Crownlands	King's Landing	{"characters": [{"name": "Oberyn Martell"}, {"name": "Morgan"}, {"name": "Morgan's Friend"}, {"name": "Olyvar"}, {"name": "Ellaria Sand"}]}
4	1	0:13:54	0:14:04	The Crownlands	King's Landing	{"characters": [{"name": "Oberyn Martell"}, {"name": "Morgan"}, {"name": "Morgan's Friend"}, {"name": "Olyvar"}, {"name": "Ellaria Sand"}, {"name": "Tyrion Lannister"}, {"name": "Bronn"}]}
4	1	0:14:04	0:14:42	The Crownlands	King's Landing	{"characters": [{"name": "Oberyn Martell"}, {"name": "Olyvar"}, {"name": "Ellaria Sand"}, {"name": "Tyrion Lannister"}, {"name": "Bronn"}]}
4	1	0:14:42	0:14:53	The Crownlands	King's Landing	{"characters": [{"name": "Oberyn Martell"}, {"name": "Ellaria Sand"}, {"name": "Tyrion Lannister"}, {"name": "Bronn"}]}
4	1	0:14:53	0:16:59	The Crownlands	King's Landing	{"characters": [{"name": "Oberyn Martell"}, {"name": "Tyrion Lannister"}]}
4	1	0:16:59	0:17:23	Meereen	Outside Meereen	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
4	1	0:17:23	0:18:09	Meereen	Outside Meereen	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}, {"name": "Jorah Mormont"}]}
4	1	0:18:09	0:18:24	Meereen	Outside Meereen	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}]}
4	1	0:18:24	0:19:07	Meereen	Outside Meereen	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Barristan Selmy"}]}
4	1	0:19:07	0:19:28	Meereen	Outside Meereen	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}]}
4	1	0:19:28	0:20:05	Meereen	Outside Meereen	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Daario Naharis"}, {"name": "Grey Worm"}]}
4	1	0:20:05	0:20:19	Meereen	Outside Meereen	{"characters": [{"name": "Daario Naharis"}, {"name": "Grey Worm"}]}
4	1	0:20:19	0:20:39	The Crownlands	King's Landing	{"characters": [{"name": "Shae"}, {"name": "Sansa Stark"}, {"name": "Handmaid"}]}
4	1	0:20:39	0:21:20	The Crownlands	King's Landing	{"characters": [{"name": "Shae"}, {"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}]}
4	1	0:21:20	0:23:08	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}]}
4	1	0:23:08	0:25:06	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Shae"}]}
4	1	0:25:06	0:25:13	The Crownlands	King's Landing	{"characters": [{"name": "Handmaid"}, {"name": "Shae"}]}
4	1	0:25:13	0:26:18	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Qyburn"}, {"name": "Cersei Lannister"}]}
4	1	0:26:18	0:28:20	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Cersei Lannister"}]}
4	1	0:28:20	0:28:28	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Cersei Lannister"}, {"name": "Handmaid"}]}
4	1	0:28:28	0:29:35	The Wall	The Gift	{"characters": [{"name": "Ygritte"}, {"name": "Tormund Giantsbane"}]}
4	1	0:29:35	0:29:44	The Wall	The Gift	{"characters": [{"name": "Ygritte"}, {"name": "Tormund Giantsbane"}]}
4	1	0:29:44	0:31:53	The Wall	The Gift	{"characters": [{"name": "Ygritte"}, {"name": "Tormund Giantsbane"}, {"name": "Styr"}, {"name": "Thenn Warg"}]}
4	1	0:31:53	0:32:18	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Ser Endrew Tarth"}]}
4	1	0:32:18	0:33:21	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Jon Snow"}]}
4	1	0:33:21	0:35:52	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Alliser Thorne"}, {"name": "Janos Slynt"}, {"name": "Maester Aemon"}, {"name": "Othell Yarwyck"}]}
4	1	0:35:52	0:36:17	The Wall	Castle Black	{"characters": [{"name": "Alliser Thorne"}, {"name": "Janos Slynt"}, {"name": "Maester Aemon"}, {"name": "Othell Yarwyck"}]}
4	1	0:36:17	0:37:15	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Margaery Tyrell"}]}
4	1	0:37:15	0:37:47	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Margaery Tyrell"}, {"name": "Brienne of Tarth"}]}
4	1	0:37:47	0:38:23	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Brienne of Tarth"}]}
4	1	0:38:23	0:40:18	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Meryn Trant"}]}
4	1	0:40:18	0:40:27	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}]}
4	1	0:40:27	0:40:31	Meereen	Outside Meereen	{"characters": []}
4	1	0:40:31	0:40:48	Meereen	Outside Meereen	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}]}
4	1	0:40:48	0:41:22	Meereen	Outside Meereen	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Daario Naharis"}]}
4	1	0:41:22	0:42:23	Meereen	Outside Meereen	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}]}
4	1	0:42:23	0:42:30	Meereen	Outside Meereen	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}]}
4	1	0:42:30	0:43:13	Meereen	Outside Meereen	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Barristan Selmy"}, {"name": "Missandei"}, {"name": "Grey Worm"}, {"name": "Daario Naharis"}]}
4	1	0:43:13	0:43:24	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Jaime Lannister"}, {"name": "Brienne of Tarth"}]}
4	1	0:43:24	0:44:22	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth"}]}
4	1	0:44:22	0:45:04	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}]}
4	1	0:45:04	0:46:36	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Dontos Hollard"}]}
4	1	0:46:36	0:48:07	The Riverlands	To The Eyrie	{"characters": [{"name": "Sandor Clegane"}, {"name": "Arya Stark"}]}
4	1	0:48:07	0:48:49	The Riverlands	To The Eyrie	{"characters": [{"name": "Sandor Clegane"}, {"name": "Arya Stark"}, {"name": "Polliver", "weapon": [{"action": "has", "name": "Needle"}]}]}
4	1	0:48:49	0:49:07	The Riverlands	To The Eyrie	{"characters": [{"name": "Sandor Clegane"}, {"name": "Arya Stark"}]}
4	1	0:49:07	0:50:12	The Riverlands	To The Eyrie	{"characters": [{"name": "Sandor Clegane"}, {"name": "Arya Stark"}, {"name": "Polliver", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Innkeeper's Daughter"}, {"name": "Innkeeper"}]}
4	1	0:50:12	0:50:42	The Riverlands	To The Eyrie	{"characters": [{"name": "Sandor Clegane"}, {"name": "Arya Stark"}, {"name": "Polliver", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Innkeeper"}]}
4	1	0:50:42	0:55:29	The Riverlands	To The Eyrie	{"characters": [{"name": "Sandor Clegane"}, {"name": "Arya Stark", "weapon": [{"action": "takes", "name": "Needle"}]}, {"name": "Polliver", "weapon": [{"action": "loses", "name": "Needle"}]}]}
4	1	0:55:29	0:56:24	The Riverlands	To The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Polliver", "alive": false, "mannerOfDeath": "Neck stab", "killedBy": ["Arya Stark"]}]}
4	1	0:56:24	0:56:51	The Riverlands	To The Eyrie	{"characters": [{"name": "Sandor Clegane"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
4	2	0:01:54	0:04:15	The North	The Dreadfort	{"characters": [{"name": "Tansy", "alive": false, "mannerOfDeath": "Mauling", "killedBy": ["Ramsay's hounds"]}, {"name": "Ramsay Snow"}, {"name": "Myranda"}, {"name": "Theon Greyjoy"}]}
4	2	0:04:15	0:05:00	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Jaime Lannister"}, {"name": "Podrick Payne"}]}
4	2	0:05:00	0:05:56	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Jaime Lannister"}]}
4	2	0:05:56	0:07:31	The Crownlands	King's Landing	{"characters": [{"name": "Bronn"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
4	2	0:07:31	0:07:47	The North	The Dreadfort	{"characters": []}
4	2	0:07:47	0:08:23	The North	The Dreadfort	{"characters": [{"name": "Roose Bolton", "married": {"to": "Walda Bolton", "when": "past", "type": "arranged", "consummated": true}}, {"name": "Locke"}, {"name": "Ramsay Snow"}, {"name": "Walda Bolton", "married": {"to": "Ramsay Snow", "when": "past", "type": "arranged", "consummated": true}}]}
4	2	0:08:23	0:08:35	The North	The Dreadfort	{"characters": [{"name": "Roose Bolton"}, {"name": "Ramsay Snow"}]}
4	2	0:08:35	0:08:45	The North	The Dreadfort	{"characters": [{"name": "Roose Bolton"}, {"name": "Ramsay Snow"}, {"name": "Locke"}]}
4	2	0:08:45	0:13:40	The North	The Dreadfort	{"characters": [{"name": "Roose Bolton"}, {"name": "Locke"}, {"name": "Ramsay Snow"}, {"name": "Theon Greyjoy"}]}
4	2	0:13:40	0:14:43	The Crownlands	King's Landing	{"characters": [{"name": "Lord Varys"}, {"name": "Tyrion Lannister"}, {"name": "Podrick Payne"}]}
4	2	0:14:43	0:15:02	The Crownlands	King's Landing	{"characters": [{"name": "Mace Tyrell"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Cersei Lannister"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Tyrion Lannister"}, {"name": "Sansa Stark"}, {"name": "Tommen Baratheon"}]}
4	2	0:15:02	0:15:23	The Crownlands	King's Landing	{"characters": [{"name": "Shae"}, {"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Tyrion Lannister"}, {"name": "Sansa Stark"}, {"name": "Mace Tyrell"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Grand Maester Pycelle"}, {"name": "Tommen Baratheon"}]}
4	2	0:15:23	0:16:04	The Crownlands	King's Landing	{"characters": [{"name": "Podrick Payne"}, {"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Tyrion Lannister"}, {"name": "Sansa Stark"}, {"name": "Mace Tyrell"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Grand Maester Pycelle"}, {"name": "Tommen Baratheon"}]}
4	2	0:16:04	0:16:06	The Crownlands	King's Landing	{"characters": [{"name": "Shae"}]}
4	2	0:16:06	0:16:48	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand", "weapon": [{"action": "gives", "name": "Widow's Wail"}]}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "receives", "name": "Widow's Wail"}]}, {"name": "Mace Tyrell"}, {"name": "Grand Maester Pycelle"}, {"name": "Tommen Baratheon"}, {"name": "Tyrion Lannister"}, {"name": "Sansa Stark"}]}
4	2	0:16:48	0:16:50	The Crownlands	King's Landing	{"characters": [{"name": "Shae"}]}
4	2	0:16:50	0:17:15	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Mace Tyrell"}, {"name": "Grand Maester Pycelle"}, {"name": "Tommen Baratheon"}, {"name": "Tyrion Lannister"}, {"name": "Sansa Stark"}, {"name": "Podrick Payne"}]}
4	2	0:17:15	0:17:18	The Crownlands	King's Landing	{"characters": [{"name": "Shae"}]}
4	2	0:17:18	0:17:27	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}]}
4	2	0:17:27	0:19:22	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Shae"}]}
4	2	0:19:22	0:19:48	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Shae"}, {"name": "Bronn"}]}
4	2	0:19:48	0:20:01	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}]}
4	2	0:20:01	0:20:34	The Crownlands	Dragonstone	{"characters": [{"name": "Melisandre"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Davos Seaworth", "title": "Hand"}, {"name": "Axell Florent", "alive": false, "mannerOfDeath": "Burning", "killedBy": ["Melisandre"]}, {"name": "Selyse Baratheon"}]}
4	2	0:20:34	0:20:54	The Crownlands	Dragonstone	{"characters": [{"name": "Melisandre"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Davos Seaworth", "title": "Hand"}, {"name": "Selyse Baratheon"}]}
4	2	0:20:54	0:21:18	The Crownlands	Dragonstone	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Davos Seaworth", "title": "Hand"}]}
4	2	0:21:18	0:21:33	The Crownlands	Dragonstone	{"characters": [{"name": "Melisandre"}, {"name": "Davos Seaworth", "title": "Hand"}, {"name": "Selyse Baratheon"}]}
4	2	0:21:33	0:23:15	The Crownlands	Dragonstone	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Selyse Baratheon"}, {"name": "Melisandre"}]}
4	2	0:23:15	0:24:41	The Crownlands	Dragonstone	{"characters": [{"name": "Shireen Baratheon"}, {"name": "Melisandre"}]}
4	2	0:24:41	0:25:16	North of the Wall	The Haunted Forest	{"characters": [{"name": "Summer"}]}
4	2	0:25:16	0:26:22	North of the Wall	The Haunted Forest	{"characters": [{"name": "Bran Stark"}, {"name": "Hodor"}, {"name": "Jojen Reed"}, {"name": "Meera Reed"}]}
4	2	0:26:22	0:26:39	North of the Wall	The Haunted Forest	{"characters": [{"name": "Bran Stark"}, {"name": "Hodor"}, {"name": "Jojen Reed"}, {"name": "Meera Reed"}]}
4	2	0:26:39	0:26:49	North of the Wall	The Haunted Forest	{"characters": [{"name": "Bran Stark"}, {"name": "Hodor"}, {"name": "Jojen Reed"}, {"name": "Meera Reed"}, {"name": "Summer"}]}
4	2	0:26:49	0:27:30	North of the Wall	The Haunted Forest	{"characters": [{"name": "Bran Stark"}, {"name": "Hodor"}, {"name": "Jojen Reed"}, {"name": "Meera Reed"}]}
4	2	0:27:30	0:28:04	North of the Wall	The Haunted Forest	{"characters": [{"name": "Three-Eyed Raven"}, {"name": "Eddard Stark", "weapon": [{"action": "has", "name": "Ice"}]}, {"name": "Wight Wildling Girl"}, {"name": "White Walker"}, {"name": "Bran Stark"}]}
4	2	0:28:04	0:28:17	North of the Wall	The Haunted Forest	{"characters": [{"name": "Bran Stark"}, {"name": "Hodor"}, {"name": "Jojen Reed"}, {"name": "Meera Reed"}]}
4	2	0:28:17	0:28:22	The Crownlands	King's Landing	{"characters": []}
4	2	0:28:22	0:29:00	The Crownlands	King's Landing	{"characters": [{"name": "Lord Varys"}, {"name": "Margaery Tyrell"}, {"name": "Mace Tyrell"}, {"name": "High Septon"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}]}
4	2	0:28:56	0:29:03	The Crownlands	King's Landing	{"characters": [{"name": "Lord Varys"}, {"name": "Margaery Tyrell"}, {"name": "Mace Tyrell"}, {"name": "High Septon"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}, {"name": "Tyrion Lannister"}, {"name": "Grand Maester Pycelle"}, {"name": "Jaime Lannister"}, {"name": "Oberyn Martell"}, {"name": "Ellaria Sand"}]}
4	2	0:29:03	0:29:06	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Margaery Tyrell"}, {"name": "High Septon"}]}
4	2	0:29:06	0:29:11	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Mace Tyrell"}, {"name": "High Septon"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Joffrey Baratheon", "title": "King"}, {"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}, {"name": "Tyrion Lannister"}, {"name": "Grand Maester Pycelle"}, {"name": "Jaime Lannister"}, {"name": "Oberyn Martell"}, {"name": "Ellaria Sand"}]}
4	2	0:29:11	0:29:14	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Margaery Tyrell"}, {"name": "High Septon"}]}
4	2	0:29:14	0:29:19	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Olenna Tyrell"}, {"name": "Loras Tyrell"}, {"name": "Oberyn Martell"}, {"name": "Ellaria Sand"}, {"name": "Grand Maester Pycelle"}]}
4	2	0:29:19	0:29:30	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Margaery Tyrell"}, {"name": "High Septon"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Olenna Tyrell"}]}
4	2	0:29:30	0:29:41	The Crownlands	King's Landing	{"characters": [{"name": "Mace Tyrell"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}, {"name": "Tyrion Lannister"}, {"name": "Grand Maester Pycelle"}, {"name": "Jaime Lannister"}, {"name": "Oberyn Martell"}, {"name": "Ellaria Sand"}, {"name": "Olenna Tyrell"}, {"name": "Loras Tyrell"}]}
4	2	0:29:41	0:29:48	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "married": {"to": "Margaery Tyrell", "when": "present", "type": "arranged", "consummated": false}}, {"name": "Margaery Tyrell", "married": {"to": "Joffrey Baratheon", "when": "present", "type": "arranged", "consummated": false}}]}
4	2	0:29:48	0:29:54	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}]}
4	2	0:29:54	0:30:00	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King"}, {"name": "Margaery Tyrell"}, {"name": "High Septon"}]}
4	2	0:30:00	0:30:12	The Crownlands	King's Landing	{"characters": [{"name": "Tywin Lannister", "title": "Hand"}, {"name": "Olenna Tyrell"}]}
4	2	0:30:12	0:30:25	The Crownlands	King's Landing	{"characters": [{"name": "Tywin Lannister", "title": "Hand"}, {"name": "Olenna Tyrell"}, {"name": "Mace Tyrell"}]}
4	2	0:30:25	0:31:00	The Crownlands	King's Landing	{"characters": [{"name": "Tywin Lannister", "title": "Hand"}, {"name": "Olenna Tyrell"}]}
4	2	0:31:00	0:31:43	The Crownlands	King's Landing	{"characters": [{"name": "Bronn"}, {"name": "Podrick Payne"}, {"name": "Tyrion Lannister"}]}
4	2	0:31:43	0:31:58	The Crownlands	King's Landing	{"characters": [{"name": "Podrick Payne"}, {"name": "Tyrion Lannister"}, {"name": "Oberyn Martell"}, {"name": "Ellaria Sand"}, {"name": "Kayla"}]}
4	2	0:31:58	0:32:12	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Olenna Tyrell"}, {"name": "Sansa Stark"}, {"name": "Tommen Baratheon"}, {"name": "Cersei Lannister"}]}
4	2	0:32:12	0:32:28	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Sansa Stark"}]}
4	2	0:32:28	0:32:30	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}]}
4	2	0:32:30	0:32:33	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}, {"name": "Meryn Trant"}, {"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Margaery Tyrell"}]}
4	2	0:32:33	0:32:52	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}, {"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}]}
4	2	0:32:52	0:32:59	The Crownlands	King's Landing	{"characters": [{"name": "Musician #1"}, {"name": "Musician #2"}, {"name": "Musician #3"}]}
4	2	0:32:59	0:33:06	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Margaery Tyrell"}]}
4	2	0:33:06	0:33:08	The Crownlands	King's Landing	{"characters": [{"name": "Musician #1"}, {"name": "Musician #2"}, {"name": "Musician #3"}]}
4	2	0:33:08	0:33:22	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Margaery Tyrell"}, {"name": "Musician #1"}, {"name": "Musician #2"}, {"name": "Musician #3"}, {"name": "Tyrion Lannister"}, {"name": "Sansa Stark"}]}
4	2	0:33:22	0:33:25	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
4	2	0:33:25	0:33:31	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Margaery Tyrell"}, {"name": "Olenna Tyrell"}, {"name": "Cersei Lannister"}, {"name": "Tommen Baratheon"}]}
4	2	0:33:31	0:33:40	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Margaery Tyrell"}, {"name": "Tommen Baratheon"}, {"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}, {"name": "Oberyn Martell"}, {"name": "Ellaria Sand"}]}
4	2	0:33:40	0:34:18	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Tyrion Lannister"}, {"name": "Olenna Tyrell"}, {"name": "Tommen Baratheon"}, {"name": "Cersei Lannister"}, {"name": "Lord Varys"}, {"name": "Grand Maester Pycelle"}, {"name": "Meryn Trant"}, {"name": "Sansa Stark"}]}
4	2	0:34:18	0:34:32	The Crownlands	King's Landing	{"characters": [{"name": "Loras Tyrell"}, {"name": "Oberyn Martell"}, {"name": "Ellaria Sand"}]}
4	2	0:34:32	0:35:26	The Crownlands	King's Landing	{"characters": [{"name": "Loras Tyrell"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Meryn Trant"}, {"name": "Margaery Tyrell"}, {"name": "Cersei Lannister"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
4	2	0:35:26	0:36:11	The Crownlands	King's Landing	{"characters": [{"name": "Brienne of Tarth"}, {"name": "Margaery Tyrell"}, {"name": "Cersei Lannister"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Tommen Baratheon"}, {"name": "Tyrion Lannister"}, {"name": "Sansa Stark"}, {"name": "Olenna Tyrell"}, {"name": "Mace Tyrell"}]}
4	2	0:36:11	0:36:18	The Crownlands	King's Landing	{"characters": [{"name": "Brienne of Tarth"}, {"name": "Margaery Tyrell"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Cersei Lannister"}]}
4	2	0:36:18	0:37:21	The Crownlands	King's Landing	{"characters": [{"name": "Brienne of Tarth"}, {"name": "Cersei Lannister"}, {"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}, {"name": "Podrick Payne"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Lord Varys"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
4	2	0:37:21	0:37:26	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Cersei Lannister"}, {"name": "Tyrion Lannister"}, {"name": "Sansa Stark"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
4	2	0:37:26	0:38:25	The Crownlands	King's Landing	{"characters": [{"name": "Grand Maester Pycelle"}, {"name": "Cersei Lannister"}]}
4	2	0:38:25	0:38:52	The Crownlands	King's Landing	{"characters": [{"name": "Dontos Hollard"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Margaery Tyrell"}, {"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}, {"name": "Tommen Baratheon"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
4	2	0:38:52	0:40:22	The Crownlands	King's Landing	{"characters": [{"name": "Tywin Lannister", "title": "Hand"}, {"name": "Cersei Lannister"}, {"name": "Oberyn Martell"}, {"name": "Ellaria Sand"}]}
4	2	0:40:22	0:40:55	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Margaery Tyrell"}, {"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}, {"name": "Tommen Baratheon"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Meryn Trant"}, {"name": "Olenna Tyrell"}, {"name": "Mace Tyrell"}, {"name": "Loras Tyrell"}, {"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}]}
4	2	0:40:55	0:45:27	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "King Joffrey Baratheon Dwarf"}, {"name": "King Stannis Baratheon Dwarf"}, {"name": "King Renly Baratheon Dwarf"}, {"name": "King Robb Stark Dwarf"}, {"name": "King Balon Greyjoy Dwarf"}, {"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Lord Varys"}, {"name": "Grand Maester Pycelle"}, {"name": "Margaery Tyrell"}, {"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}, {"name": "Tommen Baratheon"}, {"name": "Loras Tyrell"}, {"name": "Mace Tyrell"}, {"name": "Olenna Tyrell"}, {"name": "Podrick Payne"}, {"name": "Oberyn Martell"}]}
4	2	0:45:27	0:46:28	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Margaery Tyrell"}, {"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}, {"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Tommen Baratheon"}, {"name": "Mace Tyrell"}, {"name": "Olenna Tyrell"}]}
4	2	0:46:28	0:49:15	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Tyrion Lannister"}, {"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Tommen Baratheon"}, {"name": "Margaery Tyrell"}, {"name": "Mace Tyrell"}, {"name": "Olenna Tyrell"}, {"name": "Sansa Stark"}]}
4	2	0:49:15	0:49:36	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Joffrey Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Tommen Baratheon"}, {"name": "Mace Tyrell"}, {"name": "Olenna Tyrell"}, {"name": "Sansa Stark"}, {"name": "Tyrion Lannister"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
4	2	0:49:36	0:49:38	The Crownlands	King's Landing	{"characters": [{"name": "Dontos Hollard"}, {"name": "Sansa Stark"}]}
4	2	0:49:38	0:50:43	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Tyrion Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Dontos Hollard"}, {"name": "Sansa Stark"}, {"name": "Joffrey Baratheon", "title": "King", "alive": false, "mannerOfDeath": "Poison", "killedBy": ["Olenna Tyrell", "Petyr Baelish"]}, {"name": "Cersei Lannister"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Olenna Tyrell"}]}
4	2	0:50:43	0:51:10	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "alive": false}, {"name": "Cersei Lannister"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Tyrion Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Meryn Trant"}]}
4	3	0:01:55	0:02:07	The Crownlands	King's Landing	{"characters": [{"name": "Joffrey Baratheon", "title": "King", "alive": false}, {"name": "Cersei Lannister"}, {"name": "Tyrion Lannister"}, {"name": "Podrick Payne"}, {"name": "Dontos Hollard"}, {"name": "Meryn Trant"}]}
4	3	0:02:07	0:02:13	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}]}
4	3	0:02:13	0:02:16	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Dontos Hollard"}]}
4	3	0:02:16	0:02:21	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}]}
4	3	0:02:21	0:02:25	The Crownlands	King's Landing	{"characters": []}
4	3	0:02:25	0:03:07	The Crownlands	King's Landing	{"characters": [{"name": "Sansa Stark"}, {"name": "Dontos Hollard"}]}
4	3	0:03:07	0:03:59	The Crownlands	Blackwater Bay	{"characters": [{"name": "Sansa Stark"}, {"name": "Dontos Hollard"}]}
4	3	0:03:59	0:04:40	The Crownlands	Blackwater Bay	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}, {"name": "Dontos Hollard", "alive": false, "mannerOfDeath": "Arrow", "killedBy": ["Petyr Baelish"]}]}
4	3	0:04:40	0:05:04	The Crownlands	Blackwater Bay	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
4	3	0:05:04	0:06:03	The Crownlands	Blackwater Bay	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}, {"name": "Dontos Hollard", "alive": false}]}
4	3	0:06:03	0:06:15	The Crownlands	Blackwater Bay	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
4	3	0:06:15	0:07:54	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Olenna Tyrell"}]}
4	3	0:07:54	0:09:38	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon"}, {"name": "Cersei Lannister"}, {"name": "Joffrey Baratheon", "title": "King", "alive": false, "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Tywin Lannister", "title": "Hand"}]}
4	3	0:09:38	0:09:43	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon"}, {"name": "Cersei Lannister"}, {"name": "Joffrey Baratheon", "title": "King", "alive": false, "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "High Septon"}]}
4	3	0:09:43	0:11:55	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon"}, {"name": "Cersei Lannister"}, {"name": "Joffrey Baratheon", "title": "King", "alive": false, "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Tywin Lannister", "title": "Hand"}]}
4	3	0:11:45	0:12:14	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Joffrey Baratheon", "title": "King", "alive": false, "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "High Septon"}, {"name": "Tommen Baratheon"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Jaime Lannister"}]}
4	3	0:12:14	0:12:25	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Joffrey Baratheon", "title": "King", "alive": false, "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "High Septon"}, {"name": "Jaime Lannister"}]}
4	3	0:12:25	0:15:31	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister", "sex": {"with": ["Jaime Lannister"], "when": "present", "type": "rape"}}, {"name": "Joffrey Baratheon", "title": "King", "alive": false, "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Jaime Lannister", "sex": {"with": ["Cersei Lannister"], "when": "present", "type": "rape"}}]}
4	3	0:15:31	0:16:34	The Riverlands	To The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sandor Clegane"}]}
4	3	0:16:34	0:17:38	The Riverlands	To The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sandor Clegane"}, {"name": "Farmer Hamlet"}, {"name": "Farmer's Daughter"}]}
4	3	0:17:38	0:20:48	The Riverlands	To The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sandor Clegane"}, {"name": "Farmer Hamlet"}, {"name": "Farmer's Daughter"}]}
4	3	0:20:48	0:21:14	The Riverlands	To The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sandor Clegane"}, {"name": "Farmer Hamlet"}, {"name": "Farmer's Daughter"}]}
4	3	0:21:14	0:21:52	The Riverlands	To The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sandor Clegane"}]}
4	3	0:21:52	0:22:14	The Wall	Castle Black	{"characters": [{"name": "Night's Watchman"}, {"name": "Samwell Tarly"}, {"name": "Alliser Thorne"}, {"name": "Janos Slynt"}]}
4	3	0:22:14	0:25:05	The Wall	Castle Black	{"characters": [{"name": "Gilly"}, {"name": "Samwell Tarly"}, {"name": "Baby Sam"}]}
4	3	0:25:05	0:25:30	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Baby Sam"}]}
4	3	0:25:30	0:27:20	The Crownlands	Dragonstone	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Davos Seaworth", "title": "Hand"}]}
4	3	0:27:20	0:29:27	The Crownlands	Dragonstone	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}, {"name": "Shireen Baratheon"}]}
4	3	0:29:27	0:29:42	The Wall	Mole's Town	{"characters": [{"name": "Samwell Tarly"}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
4	3	0:29:42	0:30:49	The Wall	Mole's Town	{"characters": [{"name": "Gilly"}, {"name": "Baby Sam"}, {"name": "Mole's Town Whore"}, {"name": "Mole's Town Madam"}, {"name": "Samwell Tarly"}]}
4	3	0:30:49	0:31:54	The Wall	Mole's Town	{"characters": [{"name": "Gilly"}, {"name": "Samwell Tarly"}, {"name": "Baby Sam"}]}
4	3	0:31:54	0:31:58	The Wall	Mole's Town	{"characters": [{"name": "Gilly"}, {"name": "Baby Sam"}]}
4	3	0:31:58	0:34:00	The Crownlands	King's Landing	{"characters": [{"name": "Ellaria Sand", "sex": {"with": ["Olyvar", "Marei", "King's Landing Whore", "Oberyn Martell"], "when": "present", "type": "paid"}}, {"name": "Olyvar", "sex": {"with": ["Ellaria Sand", "Marei", "King's Landing Whore", "Oberyn Martell"], "when": "present", "type": "paid"}}, {"name": "Marei", "sex": {"with": ["Ellaria Sand", "Olyvar", "King's Landing Whore", "Oberyn Martell"], "when": "present", "type": "paid"}}, {"name": "King's Landing Whore", "sex": {"with": ["Ellaria Sand", "Olyvar", "Marei", "Oberyn Martell"], "when": "present", "type": "paid"}}, {"name": "Oberyn Martell", "sex": {"with": ["Ellaria Sand", "Olyvar", "Marei", "King's Landing Whore"], "when": "present", "type": "paid"}}]}
4	3	0:34:00	0:34:26	The Crownlands	King's Landing	{"characters": [{"name": "Ellaria Sand"}, {"name": "Olyvar"}, {"name": "Marei"}, {"name": "King's Landing Whore"}, {"name": "Oberyn Martell"}, {"name": "Tywin Lannister", "title": "Hand"}]}
4	3	0:34:26	0:38:14	The Crownlands	King's Landing	{"characters": [{"name": "Oberyn Martell"}, {"name": "Tywin Lannister", "title": "Hand"}]}
4	3	0:38:14	0:43:16	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Podrick Payne"}]}
4	3	0:43:16	0:43:30	The Wall	The Gift	{"characters": []}
4	3	0:43:30	0:43:42	The Wall	The Gift	{"characters": [{"name": "Olly"}, {"name": "Guymon", "alive": false, "mannerOfDeath": "Arrow", "killedBy": ["Ygritte"]}]}
4	3	0:43:42	0:43:56	The Wall	The Gift	{"characters": [{"name": "Ygritte"}, {"name": "Olly"}, {"name": "Olly's Mother", "alive": false, "mannerOfDeath": "Back stab", "killedBy": ["Styr"]}, {"name": "Guymon", "alive": false}, {"name": "Styr"}]}
4	3	0:43:56	0:44:53	The Wall	The Gift	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Olly"}, {"name": "Ygritte"}, {"name": "Styr"}, {"name": "Thenn Warg"}]}
4	3	0:44:53	0:45:25	The Wall	The Gift	{"characters": [{"name": "Olly"}, {"name": "Styr"}]}
4	3	0:45:25	0:46:44	The Wall	Castle Black	{"characters": [{"name": "Olly"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Othell Yarwyck"}, {"name": "Janos Slynt"}, {"name": "Alliser Thorne"}, {"name": "Maester Aemon"}, {"name": "Pypar"}]}
4	3	0:46:44	0:46:57	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Eddison Tollett"}, {"name": "Grenn"}]}
4	3	0:46:57	0:48:07	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Alliser Thorne"}, {"name": "Janos Slynt"}, {"name": "Grenn"}, {"name": "Pypar"}, {"name": "Eddison Tollett"}]}
4	3	0:48:07	0:48:31	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Barristan Selmy"}, {"name": "Jorah Mormont"}]}
4	3	0:48:31	0:48:54	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Barristan Selmy"}, {"name": "Jorah Mormont"}, {"name": "Hizdahr zo Loraq"}]}
4	3	0:48:54	0:49:33	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Barristan Selmy"}, {"name": "Jorah Mormont"}, {"name": "Oznak zo Pahl"}]}
4	3	0:49:33	0:49:56	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Barristan Selmy"}, {"name": "Jorah Mormont"}, {"name": "Oznak zo Pahl"}, {"name": "Daario Naharis"}]}
4	3	0:49:56	0:49:59	Meereen	NULL	{"characters": [{"name": "Hizdahr zo Loraq"}]}
4	3	0:49:59	0:50:23	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Barristan Selmy"}, {"name": "Jorah Mormont"}, {"name": "Oznak zo Pahl"}, {"name": "Daario Naharis"}]}
4	3	0:50:23	0:51:36	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Barristan Selmy"}, {"name": "Jorah Mormont"}, {"name": "Oznak zo Pahl"}, {"name": "Daario Naharis"}, {"name": "Grey Worm"}]}
4	3	0:51:36	0:51:53	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}, {"name": "Oznak zo Pahl"}]}
4	3	0:51:53	0:52:35	Meereen	NULL	{"characters": [{"name": "Daario Naharis"}, {"name": "Oznak zo Pahl"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}, {"name": "Missandei"}]}
4	3	0:52:35	0:52:41	Meereen	NULL	{"characters": [{"name": "Daario Naharis"}, {"name": "Oznak zo Pahl", "alive": false, "mannerOfDeath": "Decapitation", "killedBy": ["Daario Naharis"]}]}
4	3	0:52:41	0:55:30	Meereen	NULL	{"characters": [{"name": "Daario Naharis"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Hizdahr zo Loraq"}]}
4	4	0:01:54	0:03:48	Meereen	NULL	{"characters": [{"name": "Grey Worm"}, {"name": "Missandei"}]}
4	4	0:03:48	0:04:11	Meereen	NULL	{"characters": [{"name": "Grey Worm"}, {"name": "Missandei"}, {"name": "Barristan Selmy"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
4	4	0:04:11	0:04:18	Meereen	NULL	{"characters": []}
4	4	0:04:18	0:05:12	Meereen	NULL	{"characters": [{"name": "Grey Worm"}]}
4	4	0:05:12	0:05:45	Meereen	NULL	{"characters": [{"name": "Mossador"}, {"name": "Elder Meereen Slave"}, {"name": "Valyrian Slave"}]}
4	4	0:05:45	0:07:06	Meereen	NULL	{"characters": [{"name": "Mossador"}, {"name": "Elder Meereen Slave"}, {"name": "Valyrian Slave"}, {"name": "Grey Worm"}]}
4	4	0:07:06	0:07:52	Meereen	NULL	{"characters": [{"name": "Great Master #1", "alive": false, "mannerOfDeath": "Multiple stabs"}]}
4	4	0:07:52	0:08:56	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Barristan Selmy"}]}
4	4	0:08:56	0:09:10	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Barristan Selmy"}, {"name": "Grey Worm"}, {"name": "Missandei"}]}
4	4	0:09:10	0:09:29	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}]}
4	4	0:09:29	0:09:51	Meereen	NULL	{"characters": []}
4	4	0:09:51	0:10:09	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
4	4	0:10:09	0:12:21	The Crownlands	King's Landing	{"characters": [{"name": "Bronn"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
4	4	0:12:21	0:15:02	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Jaime Lannister"}]}
4	4	0:15:02	0:18:04	The Vale	To The Vale	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
4	4	0:18:04	0:20:28	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Margaery Tyrell"}]}
4	4	0:20:28	0:20:45	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Grenn"}]}
4	4	0:20:45	0:22:11	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Grenn"}, {"name": "Olly"}, {"name": "Locke"}]}
4	4	0:22:11	0:22:58	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Grenn"}, {"name": "Locke"}, {"name": "Alliser Thorne"}, {"name": "Janos Slynt"}, {"name": "Olly"}]}
4	4	0:22:58	0:23:35	The Wall	Castle Black	{"characters": [{"name": "Alliser Thorne"}, {"name": "Janos Slynt"}, {"name": "Jon Snow"}]}
4	4	0:23:35	0:24:34	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Locke"}]}
4	4	0:24:34	0:24:41	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Locke"}, {"name": "Alliser Thorne"}]}
4	4	0:24:41	0:27:15	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Jaime Lannister"}]}
4	4	0:27:15	0:27:53	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon"}]}
4	4	0:27:53	0:30:51	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon"}, {"name": "Margaery Tyrell"}]}
4	4	0:30:51	0:33:06	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "gives", "name": "Oathkeeper"}]}, {"name": "Brienne of Tarth", "weapon": [{"action": "receives", "name": "Oathkeeper"}]}]}
4	4	0:33:06	0:35:17	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}, {"name": "Bronn"}]}
4	4	0:35:17	0:36:38	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Jon Snow"}]}
4	4	0:36:38	0:36:46	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Jon Snow"}, {"name": "Locke"}]}
4	4	0:36:46	0:37:10	The Wall	Castle Black	{"characters": [{"name": "Alliser Thorne"}, {"name": "Jon Snow"}, {"name": "Janos Slynt"}]}
4	4	0:37:10	0:39:44	The Wall	Castle Black	{"characters": [{"name": "Alliser Thorne"}, {"name": "Jon Snow"}, {"name": "Janos Slynt"}, {"name": "Eddison Tollett"}, {"name": "Grenn"}, {"name": "Olly"}, {"name": "Locke"}, {"name": "Pypar"}]}
4	4	0:39:44	0:42:05	North of the Wall	Craster's Keep	{"characters": [{"name": "Karl Tanner"}, {"name": "Sissy"}, {"name": "Rast"}]}
4	4	0:42:05	0:43:31	North of the Wall	Craster's Keep	{"characters": [{"name": "Karl Tanner"}, {"name": "Sissy"}, {"name": "Craster's Wife #2"}, {"name": "Craster's Wife #3"}, {"name": "Rast"}, {"name": "Morag"}]}
4	4	0:43:31	0:44:35	North of the Wall	Craster's Keep	{"characters": [{"name": "Rast"}]}
4	4	0:44:35	0:45:49	North of the Wall	Craster's Keep	{"characters": [{"name": "Rast"}, {"name": "Ghost"}]}
4	4	0:45:49	0:46:38	North of the Wall	Craster's Keep	{"characters": [{"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Jojen Reed"}, {"name": "Meera Reed"}, {"name": "Summer"}]}
4	4	0:46:38	0:47:02	North of the Wall	Craster's Keep	{"characters": [{"name": "Summer"}, {"name": "Ghost"}]}
4	4	0:47:02	0:47:18	North of the Wall	Craster's Keep	{"characters": [{"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Jojen Reed"}, {"name": "Meera Reed"}]}
4	4	0:47:18	0:48:02	North of the Wall	Craster's Keep	{"characters": [{"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Jojen Reed"}, {"name": "Meera Reed"}]}
4	4	0:48:02	0:48:15	North of the Wall	Craster's Keep	{"characters": [{"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Jojen Reed"}, {"name": "Meera Reed"}]}
4	4	0:48:15	0:48:41	North of the Wall	Craster's Keep	{"characters": [{"name": "Hodor"}, {"name": "Rast"}]}
4	4	0:48:41	0:51:15	North of the Wall	Craster's Keep	{"characters": [{"name": "Bran Stark"}, {"name": "Jojen Reed"}, {"name": "Meera Reed"}, {"name": "Karl Tanner"}, {"name": "Sissy"}, {"name": "Rast"}]}
4	4	0:51:15	0:52:51	North of the Wall	The Lands of Always Winter	{"characters": [{"name": "White Walker"}]}
4	4	0:52:51	0:53:43	North of the Wall	The Lands of Always Winter	{"characters": [{"name": "White Walker"}, {"name": "The Night King", "title": "King"}]}
4	5	0:01:55	0:02:54	The Crownlands	King's Landing	{"characters": [{"name": "Tywin Lannister", "title": "Hand"}, {"name": "Tommen Baratheon", "title": "King"}, {"name": "High Septon"}, {"name": "Jaime Lannister"}, {"name": "Cersei Lannister"}, {"name": "Lord Varys"}, {"name": "Grand Maester Pycelle"}, {"name": "Margaery Tyrell"}, {"name": "Mace Tyrell"}]}
4	5	0:02:54	0:03:38	The Crownlands	King's Landing	{"characters": [{"name": "Mace Tyrell"}, {"name": "Lord Varys"}, {"name": "Grand Maester Pycelle"}, {"name": "Tommen Baratheon", "title": "King"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Margaery Tyrell"}, {"name": "Cersei Lannister"}]}
4	5	0:03:38	0:04:20	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Cersei Lannister"}, {"name": "Tommen Baratheon", "title": "King"}, {"name": "Tywin Lannister", "title": "Hand"}]}
4	5	0:04:20	0:05:11	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Cersei Lannister"}]}
4	5	0:05:11	0:05:19	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Cersei Lannister"}, {"name": "Tommen Baratheon", "title": "King"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Jaime Lannister"}]}
4	5	0:05:19	0:06:07	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Cersei Lannister"}]}
4	5	0:06:07	0:06:16	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Cersei Lannister"}, {"name": "Mace Tyrell"}]}
4	5	0:06:16	0:06:21	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Cersei Lannister"}, {"name": "Tommen Baratheon", "title": "King"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Jaime Lannister"}]}
4	5	0:06:21	0:06:34	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Cersei Lannister"}]}
4	5	0:06:34	0:06:40	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Cersei Lannister"}, {"name": "Tommen Baratheon", "title": "King"}]}
4	5	0:06:40	0:08:41	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}, {"name": "Missandei"}, {"name": "Jorah Mormont"}, {"name": "Grey Worm"}, {"name": "Daario Naharis"}]}
4	5	0:08:41	0:10:19	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}]}
4	5	0:10:19	0:11:48	The Vale	The Eyrie	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
4	5	0:11:48	0:12:22	The Vale	The Eyrie	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}, {"name": "Donnel Waynwood"}]}
4	5	0:12:22	0:14:56	The Vale	The Eyrie	{"characters": [{"name": "Robin Arryn"}, {"name": "Lysa Arryn"}, {"name": "Petyr Baelish"}, {"name": "Sansa Stark"}]}
4	5	0:14:56	0:17:01	The Vale	The Eyrie	{"characters": [{"name": "Lysa Arryn", "sex": {"with": ["Petyr Baelish"], "when": "future", "type": "married"}, "married": {"to": "Petyr Baelish", "when": "future", "type": "scheme", "consummated": true}}, {"name": "Petyr Baelish", "sex": {"with": ["Lysa Arryn"], "when": "future", "type": "married"}, "married": {"to": "Lysa Arryn", "when": "future", "type": "scheme", "consummated": true}}]}
4	5	0:17:01	0:17:23	The Vale	The Eyrie	{"characters": [{"name": "Sansa Stark"}]}
4	5	0:17:23	0:20:56	The Crownlands	King's Landing	{"characters": [{"name": "Tywin Lannister", "title": "Hand"}, {"name": "Cersei Lannister"}]}
4	5	0:20:56	0:22:36	The Riverlands	To The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sandor Clegane"}]}
4	5	0:22:36	0:25:51	The Vale	The Eyrie	{"characters": [{"name": "Lysa Arryn"}, {"name": "Sansa Stark"}]}
4	5	0:25:51	0:27:21	The Riverlands	The Kingsroad	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}]}
4	5	0:27:21	0:27:35	The Riverlands	To The Eyrie	{"characters": [{"name": "Sandor Clegane"}]}
4	5	0:27:35	0:28:08	The Riverlands	To The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
4	5	0:28:08	0:29:55	The Riverlands	To The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sandor Clegane"}]}
4	5	0:29:55	0:33:15	The Crownlands	King's Landing	{"characters": [{"name": "Oberyn Martell"}, {"name": "Cersei Lannister"}]}
4	5	0:33:15	0:35:54	The Riverlands	The Kingsroad	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}]}
4	5	0:35:54	0:36:18	North of the Wall	Craster's Keep	{"characters": [{"name": "Rast"}, {"name": "Locke"}]}
4	5	0:36:18	0:36:57	North of the Wall	Craster's Keep	{"characters": [{"name": "Locke"}]}
4	5	0:36:57	0:37:57	North of the Wall	Craster's Keep	{"characters": [{"name": "Meera Reed"}, {"name": "Bran Stark"}, {"name": "Jojen Reed"}, {"name": "Hodor"}]}
4	5	0:37:57	0:38:23	North of the Wall	Craster's Keep	{"characters": [{"name": "Bran Stark"}, {"name": "Jojen Reed"}]}
4	5	0:38:23	0:39:09	North of the Wall	Craster's Keep	{"characters": [{"name": "Bran Stark"}, {"name": "Jojen Reed"}, {"name": "Meera Reed"}]}
4	5	0:39:09	0:40:09	North of the Wall	Craster's Keep	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Eddison Tollett"}, {"name": "Locke"}, {"name": "Grenn"}]}
4	5	0:40:09	0:42:46	North of the Wall	Craster's Keep	{"characters": [{"name": "Karl Tanner"}, {"name": "Meera Reed"}, {"name": "Jojen Reed"}, {"name": "Bran Stark"}, {"name": "Hodor"}]}
4	5	0:42:46	0:42:50	North of the Wall	Craster's Keep	{"characters": [{"name": "Karl Tanner"}, {"name": "Meera Reed"}, {"name": "Jojen Reed"}, {"name": "Bran Stark"}, {"name": "Hodor"}, {"name": "Rast"}]}
4	5	0:42:50	0:43:19	North of the Wall	Craster's Keep	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Grenn"}, {"name": "Locke"}]}
4	5	0:43:19	0:43:56	North of the Wall	Craster's Keep	{"characters": [{"name": "Meera Reed"}, {"name": "Jojen Reed"}, {"name": "Bran Stark"}, {"name": "Hodor"}, {"name": "Locke"}]}
4	5	0:43:56	0:44:06	North of the Wall	Craster's Keep	{"characters": [{"name": "Grenn"}, {"name": "Eddison Tollett"}]}
4	5	0:44:06	0:44:31	North of the Wall	Craster's Keep	{"characters": [{"name": "Meera Reed"}, {"name": "Jojen Reed"}, {"name": "Bran Stark"}, {"name": "Hodor"}, {"name": "Locke"}]}
4	5	0:44:31	0:44:43	North of the Wall	Craster's Keep	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
4	5	0:44:43	0:45:22	North of the Wall	Craster's Keep	{"characters": [{"name": "Bran Stark"}, {"name": "Locke", "alive": false, "mannerOfDeath": "Neck snap", "killedBy": ["Hodor", "Bran Stark"]}, {"name": "Hodor"}]}
4	5	0:45:22	0:45:33	North of the Wall	Craster's Keep	{"characters": [{"name": "Bran Stark"}, {"name": "Hodor"}]}
4	5	0:45:33	0:45:45	North of the Wall	Craster's Keep	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Bran Stark"}]}
4	5	0:45:45	0:46:25	North of the Wall	Craster's Keep	{"characters": [{"name": "Meera Reed"}, {"name": "Jojen Reed"}, {"name": "Bran Stark"}, {"name": "Hodor"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
4	5	0:46:25	0:47:49	North of the Wall	Craster's Keep	{"characters": [{"name": "Karl Tanner"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
4	5	0:47:49	0:48:20	North of the Wall	Craster's Keep	{"characters": [{"name": "Karl Tanner", "alive": false, "mannerOfDeath": "Face stab", "killedBy": ["Jon Snow"]}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Sissy"}]}
4	5	0:48:20	0:48:42	North of the Wall	Craster's Keep	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Sissy"}]}
4	5	0:48:42	0:49:16	North of the Wall	Craster's Keep	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Grenn"}, {"name": "Sissy"}, {"name": "Locke", "alive": false}, {"name": "Eddison Tollett"}]}
4	5	0:49:16	0:49:54	North of the Wall	Craster's Keep	{"characters": [{"name": "Rast", "alive": false, "mannerOfDeath": "Mauling", "killedBy": ["Ghost"]}, {"name": "Ghost"}]}
4	5	0:49:54	0:51:13	North of the Wall	Craster's Keep	{"characters": [{"name": "Grenn"}, {"name": "Jon Snow"}, {"name": "Ghost"}, {"name": "Eddison Tollett"}, {"name": "Morag"}, {"name": "Sissy"}]}
4	5	0:51:13	0:51:51	North of the Wall	Craster's Keep	{"characters": [{"name": "Jon Snow"}, {"name": "Eddison Tollett"}, {"name": "Grenn"}, {"name": "Morag"}, {"name": "Sissy"}]}
4	6	0:01:54	0:02:41	Braavos	NULL	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Davos Seaworth", "title": "Hand"}]}
4	6	0:02:41	0:03:26	Braavos	NULL	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Davos Seaworth", "title": "Hand"}]}
4	6	0:03:26	0:07:49	Braavos	NULL	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Davos Seaworth", "title": "Hand"}, {"name": "Tycho Nestoris"}]}
4	6	0:07:49	0:08:15	Braavos	NULL	{"characters": [{"name": "Salladhor Saan"}, {"name": "Lhara"}, {"name": "Bathhouse Prostitute"}]}
4	6	0:08:15	0:10:14	Braavos	NULL	{"characters": [{"name": "Salladhor Saan"}, {"name": "Lhara"}, {"name": "Bathhouse Prostitute"}, {"name": "Davos Seaworth", "title": "Hand"}]}
4	6	0:10:14	0:10:36	The North	The Dreadfort	{"characters": [{"name": "Yara Greyjoy"}]}
4	6	0:10:36	0:10:47	The North	The Dreadfort	{"characters": [{"name": "Myranda", "sex": {"with": ["Ramsay Snow"], "when": "present", "type": "love"}}, {"name": "Ramsay Snow", "sex": {"with": ["Myranda"], "when": "present", "type": "love"}}]}
4	6	0:10:47	0:10:53	The North	The Dreadfort	{"characters": [{"name": "Yara Greyjoy"}]}
4	6	0:10:53	0:11:05	The North	The Dreadfort	{"characters": [{"name": "Myranda", "sex": {"with": ["Ramsay Snow"], "when": "present", "type": "love"}}, {"name": "Ramsay Snow", "sex": {"with": ["Myranda"], "when": "present", "type": "love"}}]}
4	6	0:11:05	0:11:18	The North	The Dreadfort	{"characters": [{"name": "Yara Greyjoy"}]}
4	6	0:11:18	0:11:23	The North	The Dreadfort	{"characters": [{"name": "Myranda", "sex": {"with": ["Ramsay Snow"], "when": "present", "type": "love"}}, {"name": "Ramsay Snow", "sex": {"with": ["Myranda"], "when": "present", "type": "love"}}]}
4	6	0:11:23	0:11:30	The North	The Dreadfort	{"characters": [{"name": "Yara Greyjoy"}]}
4	6	0:11:30	0:11:34	The North	The Dreadfort	{"characters": [{"name": "Myranda", "sex": {"with": ["Ramsay Snow"], "when": "present", "type": "love"}}, {"name": "Ramsay Snow", "sex": {"with": ["Myranda"], "when": "present", "type": "love"}}]}
4	6	0:11:34	0:12:10	The North	The Dreadfort	{"characters": [{"name": "Yara Greyjoy"}, {"name": "Bolton Guard"}]}
4	6	0:12:10	0:12:40	The North	The Dreadfort	{"characters": [{"name": "Theon Greyjoy"}, {"name": "First Mate"}, {"name": "Yara Greyjoy"}, {"name": "Bolton Guard"}]}
4	6	0:12:40	0:13:34	The North	The Dreadfort	{"characters": [{"name": "Theon Greyjoy"}, {"name": "First Mate"}, {"name": "Yara Greyjoy"}]}
4	6	0:13:34	0:14:56	The North	The Dreadfort	{"characters": [{"name": "Ramsay Snow"}, {"name": "Theon Greyjoy"}, {"name": "First Mate"}, {"name": "Yara Greyjoy"}]}
4	6	0:14:56	0:15:07	The North	The Dreadfort	{"characters": [{"name": "First Mate"}, {"name": "Yara Greyjoy"}, {"name": "Ironborn in Skiff"}]}
4	6	0:15:07	0:18:44	The North	The Dreadfort	{"characters": [{"name": "Ramsay Snow"}, {"name": "Theon Greyjoy"}]}
4	6	0:18:44	0:19:48	Meereen	Outside Meereen	{"characters": [{"name": "Goatherd"}, {"name": "Goatherd's Son"}, {"name": "Drogon"}]}
4	6	0:19:48	0:21:32	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Grey Worm"}, {"name": "Goatherd"}]}
4	6	0:21:32	0:24:39	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Grey Worm"}, {"name": "Hizdahr zo Loraq"}, {"name": "Manservant"}]}
4	6	0:24:39	0:24:59	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Grey Worm"}]}
4	6	0:24:59	0:25:18	The Crownlands	King's Landing	{"characters": [{"name": "Oberyn Martell"}, {"name": "Cersei Lannister"}, {"name": "Mace Tyrell"}, {"name": "Grand Maester Pycelle"}, {"name": "Lord Varys"}]}
4	6	0:25:18	0:27:46	The Crownlands	King's Landing	{"characters": [{"name": "Oberyn Martell"}, {"name": "Cersei Lannister"}, {"name": "Mace Tyrell"}, {"name": "Grand Maester Pycelle"}, {"name": "Lord Varys"}, {"name": "Tywin Lannister", "title": "Hand"}]}
4	6	0:27:46	0:30:11	The Crownlands	King's Landing	{"characters": [{"name": "Lord Varys"}, {"name": "Oberyn Martell"}]}
4	6	0:30:11	0:30:59	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Tyrion Lannister"}]}
4	6	0:30:59	0:32:51	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Tyrion Lannister"}, {"name": "Tommen Baratheon", "title": "King"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Mace Tyrell"}, {"name": "Oberyn Martell"}, {"name": "Margaery Tyrell"}, {"name": "Loras Tyrell"}, {"name": "Cersei Lannister"}]}
4	6	0:32:51	0:33:43	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Tyrion Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Mace Tyrell"}, {"name": "Oberyn Martell"}, {"name": "Cersei Lannister"}]}
4	6	0:33:43	0:34:31	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Tyrion Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Mace Tyrell"}, {"name": "Oberyn Martell"}, {"name": "Cersei Lannister"}, {"name": "Meryn Trant"}]}
4	6	0:34:31	0:36:14	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Tyrion Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Mace Tyrell"}, {"name": "Oberyn Martell"}, {"name": "Cersei Lannister"}, {"name": "Margaery Tyrell"}, {"name": "Loras Tyrell"}, {"name": "Grand Maester Pycelle"}]}
4	6	0:36:14	0:37:29	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Tyrion Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Mace Tyrell"}, {"name": "Oberyn Martell"}, {"name": "Cersei Lannister"}, {"name": "Margaery Tyrell"}, {"name": "Loras Tyrell"}]}
4	6	0:37:29	0:38:51	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Tyrion Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Mace Tyrell"}, {"name": "Oberyn Martell"}, {"name": "Cersei Lannister"}, {"name": "Lord Varys"}]}
4	6	0:38:51	0:39:25	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Tyrion Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Mace Tyrell"}, {"name": "Oberyn Martell"}, {"name": "Cersei Lannister"}]}
4	6	0:39:25	0:41:42	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}]}
4	6	0:41:42	0:43:00	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Tyrion Lannister"}, {"name": "Loras Tyrell"}, {"name": "Margaery Tyrell"}, {"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Mace Tyrell"}, {"name": "Oberyn Martell"}]}
4	6	0:43:00	0:47:27	The Crownlands	King's Landing	{"characters": [{"name": "Shae"}, {"name": "Jaime Lannister"}, {"name": "Tyrion Lannister"}, {"name": "Cersei Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Mace Tyrell"}, {"name": "Oberyn Martell"}, {"name": "Loras Tyrell"}, {"name": "Margaery Tyrell"}]}
4	6	0:47:27	0:49:19	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Jaime Lannister"}, {"name": "Cersei Lannister"}, {"name": "Shae"}, {"name": "Oberyn Martell"}, {"name": "Mace Tyrell"}, {"name": "Loras Tyrell"}, {"name": "Margaery Tyrell"}]}
4	7	0:01:54	0:04:56	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Tyrion Lannister"}]}
4	7	0:04:56	0:05:56	The Crownlands	King's Landing	{"characters": [{"name": "Gregor Clegane"}, {"name": "Cersei Lannister"}]}
4	7	0:05:56	0:06:32	The Riverlands	To The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sandor Clegane"}]}
4	7	0:06:32	0:09:38	The Riverlands	To The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sandor Clegane"}, {"name": "Old Man", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Sandor Clegane"]}]}
4	7	0:09:38	0:09:45	The Riverlands	To The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sandor Clegane"}, {"name": "Biter", "alive": false, "mannerOfDeath": "Neck snap", "killedBy": ["Sandor Clegane"]}]}
4	7	0:09:45	0:10:40	The Riverlands	To The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sandor Clegane"}, {"name": "Rorge", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Arya Stark"]}]}
4	7	0:10:40	0:10:49	The Riverlands	To The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sandor Clegane"}]}
4	7	0:10:49	0:11:07	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Samwell Tarly"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}]}
4	7	0:11:07	0:11:41	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Samwell Tarly"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}, {"name": "Janos Slynt"}, {"name": "Alliser Thorne"}, {"name": "Olly"}, {"name": "Ghost"}]}
4	7	0:11:41	0:13:39	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Samwell Tarly"}, {"name": "Janos Slynt"}, {"name": "Alliser Thorne"}, {"name": "Eddison Tollett"}, {"name": "Pypar"}, {"name": "Grenn"}, {"name": "Othell Yarwyck"}]}
4	7	0:13:39	0:18:07	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Bronn"}]}
4	7	0:18:07	0:20:43	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi", "sex": {"with": ["Daario Naharis"], "when": "future", "type": "love"}}, {"name": "Daario Naharis", "sex": {"with": ["Daenerys Targaryen"], "when": "future", "type": "love"}}]}
4	7	0:20:43	0:24:40	The Crownlands	Dragonstone	{"characters": [{"name": "Melisandre"}, {"name": "Selyse Baratheon"}]}
4	7	0:24:40	0:25:00	Meereen	NULL	{"characters": [{"name": "Daario Naharis"}, {"name": "Jorah Mormont"}]}
4	7	0:25:00	0:27:56	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}]}
4	7	0:27:56	0:31:09	The Riverlands	To The Eyrie	{"characters": [{"name": "Sandor Clegane"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
4	7	0:31:09	0:33:13	The Riverlands	Crossroads Inn	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}, {"name": "Hot Pie"}]}
4	7	0:33:13	0:33:55	The Riverlands	Crossroads Inn	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}]}
4	7	0:33:55	0:35:22	The Riverlands	Crossroads Inn	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}, {"name": "Hot Pie"}]}
4	7	0:35:22	0:36:24	The Riverlands	Crossroads Inn	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}]}
4	7	0:36:24	0:41:24	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Oberyn Martell"}]}
4	7	0:41:24	0:42:05	The Vale	The Eyrie	{"characters": [{"name": "Sansa Stark"}]}
4	7	0:42:05	0:44:11	The Vale	The Eyrie	{"characters": [{"name": "Sansa Stark"}, {"name": "Robin Arryn"}]}
4	7	0:44:11	0:45:39	The Vale	The Eyrie	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
4	7	0:45:39	0:46:18	The Vale	The Eyrie	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}, {"name": "Lysa Arryn"}]}
4	7	0:46:18	0:48:10	The Vale	The Eyrie	{"characters": [{"name": "Sansa Stark"}, {"name": "Lysa Arryn"}]}
4	7	0:48:10	0:49:42	The Vale	The Eyrie	{"characters": [{"name": "Sansa Stark"}, {"name": "Lysa Arryn", "alive": false, "mannerOfDeath": "Moon Door", "killedBy": ["Petyr Baelish"]}, {"name": "Petyr Baelish"}]}
4	8	0:02:55	0:05:16	The Wall	Mole's Town	{"characters": [{"name": "Mole's Town Whore"}, {"name": "Kegs"}, {"name": "Black Jack Bulwer"}, {"name": "Mully"}, {"name": "Gilly"}]}
4	8	0:05:16	0:05:48	The Wall	Mole's Town	{"characters": [{"name": "Styr"}, {"name": "Tormund Giantsbane"}, {"name": "Ygritte"}]}
4	8	0:05:48	0:06:35	The Wall	Mole's Town	{"characters": [{"name": "Styr"}, {"name": "Tormund Giantsbane"}, {"name": "Ygritte"}, {"name": "Mole's Town Whore", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Ygritte"]}, {"name": "Kegs", "alive": false, "killedBy": ["Styr"]}, {"name": "Black Jack Bulwer", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Tormund Giantsbane"]}, {"name": "Mully", "alive": false, "killedBy": ["Styr"]}]}
4	8	0:06:35	0:06:52	The Wall	Mole's Town	{"characters": [{"name": "Ygritte"}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
4	8	0:06:52	0:08:43	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Pypar"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}]}
4	8	0:08:43	0:09:37	Meereen	NULL	{"characters": [{"name": "Grey Worm"}, {"name": "Missandei"}]}
4	8	0:09:37	0:10:44	Meereen	NULL	{"characters": [{"name": "Missandei"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
4	8	0:10:44	0:13:26	Meereen	NULL	{"characters": [{"name": "Missandei"}, {"name": "Grey Worm"}]}
4	8	0:13:26	0:14:45	The North	Moat Cailin	{"characters": [{"name": "Ramsay Snow"}, {"name": "Theon Greyjoy"}]}
4	8	0:14:45	0:15:43	The North	Moat Cailin	{"characters": [{"name": "Theon Greyjoy"}]}
4	8	0:15:43	0:18:02	The North	Moat Cailin	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Ralf Kenning", "alive": false, "mannerOfDeath": "Head stab", "killedBy": ["Adrack Humble"]}, {"name": "Adrack Humble"}]}
4	8	0:18:02	0:18:22	The North	Moat Cailin	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Adrack Humble"}]}
4	8	0:18:22	0:18:53	The North	Moat Cailin	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Adrack Humble", "alive": false, "mannerOfDeath": "Flayed", "killedBy": ["Ramsay Snow"]}, {"name": "Ramsay Snow"}]}
4	8	0:18:53	0:20:50	The Vale	The Eyrie	{"characters": [{"name": "Petyr Baelish"}, {"name": "Yohn Royce"}, {"name": "Anya Waynwood"}, {"name": "Vance Corbray"}]}
4	8	0:20:50	0:25:25	The Vale	The Eyrie	{"characters": [{"name": "Petyr Baelish"}, {"name": "Yohn Royce"}, {"name": "Anya Waynwood"}, {"name": "Vance Corbray"}, {"name": "Sansa Stark"}]}
4	8	0:25:25	0:27:11	The Vale	The Eyrie	{"characters": [{"name": "Petyr Baelish"}, {"name": "Yohn Royce"}, {"name": "Anya Waynwood"}]}
4	8	0:27:11	0:27:56	Meereen	NULL	{"characters": [{"name": "Barristan Selmy"}, {"name": "Little Bird"}]}
4	8	0:27:56	0:29:30	Meereen	NULL	{"characters": [{"name": "Barristan Selmy"}, {"name": "Jorah Mormont"}]}
4	8	0:29:30	0:32:41	Meereen	NULL	{"characters": [{"name": "Barristan Selmy"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Grey Worm"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
4	8	0:32:41	0:33:04	Meereen	NULL	{"characters": [{"name": "Jorah Mormont"}]}
4	8	0:33:04	0:35:19	The North	Moat Cailin	{"characters": [{"name": "Ramsay Snow"}, {"name": "Roose Bolton"}]}
4	8	0:35:19	0:36:03	The North	Outside Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Roose Bolton"}, {"name": "Theon Greyjoy"}]}
4	8	0:36:03	0:37:22	The Vale	The Eyrie	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
4	8	0:37:22	0:38:51	The Vale	The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sandor Clegane"}]}
4	8	0:38:51	0:39:30	The Vale	The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sandor Clegane"}, {"name": "Donnel Waynwood"}]}
4	8	0:39:30	0:40:12	The Vale	The Eyrie	{"characters": [{"name": "Petyr Baelish"}, {"name": "Robin Arryn"}]}
4	8	0:40:12	0:40:37	The Vale	The Eyrie	{"characters": [{"name": "Petyr Baelish"}, {"name": "Robin Arryn"}, {"name": "Sansa Stark"}]}
4	8	0:40:37	0:46:22	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Jaime Lannister"}]}
4	8	0:46:22	0:46:39	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}]}
4	8	0:46:39	0:46:44	The Crownlands	King's Landing	{"characters": [{"name": "Tywin Lannister", "title": "Hand"}, {"name": "Mace Tyrell"}, {"name": "Cersei Lannister"}, {"name": "Lord Varys"}, {"name": "Jaime Lannister"}]}
4	8	0:46:44	0:47:07	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Oberyn Martell"}, {"name": "Ellaria Sand"}]}
4	8	0:47:07	0:47:28	The Crownlands	King's Landing	{"characters": [{"name": "Gregor Clegane"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Mace Tyrell"}, {"name": "Cersei Lannister"}, {"name": "Lord Varys"}, {"name": "Jaime Lannister"}, {"name": "Tyrion Lannister"}, {"name": "Oberyn Martell"}, {"name": "Ellaria Sand"}]}
4	8	0:47:28	0:51:34	The Crownlands	King's Landing	{"characters": [{"name": "Gregor Clegane"}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Mace Tyrell"}, {"name": "Cersei Lannister"}, {"name": "Lord Varys"}, {"name": "Jaime Lannister"}, {"name": "Tyrion Lannister"}, {"name": "Oberyn Martell", "alive": false, "mannerOfDeath": "Head crush", "killedBy": ["Gregor Clegane"]}, {"name": "Ellaria Sand"}, {"name": "Grand Maester Pycelle"}]}
4	8	0:51:34	0:52:02	The Crownlands	King's Landing	{"characters": [{"name": "Ellaria Sand"}, {"name": "Tyrion Lannister"}, {"name": "Gregor Clegane"}, {"name": "Oberyn Martell", "alive": false}, {"name": "Tywin Lannister", "title": "Hand"}, {"name": "Cersei Lannister"}, {"name": "Mace Tyrell"}, {"name": "Jaime Lannister"}, {"name": "Grand Maester Pycelle"}]}
4	9	0:02:44	0:06:03	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
4	9	0:06:03	0:06:14	The Wall	Castle Black	{"characters": []}
4	9	0:06:14	0:08:34	The Wall	Outside Castle Black	{"characters": [{"name": "Thenn Warg"}, {"name": "Styr"}, {"name": "Tormund Giantsbane"}, {"name": "Ygritte"}]}
4	9	0:08:34	0:08:43	The Wall	Outside Castle Black	{"characters": [{"name": "Thenn Warg"}, {"name": "Styr"}, {"name": "Tormund Giantsbane"}, {"name": "Ygritte"}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
4	9	0:08:43	0:12:23	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Maester Aemon"}]}
4	9	0:12:23	0:13:53	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Gilly"}, {"name": "Baby Sam"}, {"name": "Pypar"}]}
4	9	0:13:53	0:13:57	The Wall	Castle Black	{"characters": []}
4	9	0:13:57	0:14:18	The Wall	Outside Castle Black	{"characters": [{"name": "Thenn Warg"}, {"name": "Styr"}, {"name": "Tormund Giantsbane"}, {"name": "Ygritte"}]}
4	9	0:14:18	0:15:51	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
4	9	0:14:51	0:15:03	The Wall	Castle Black	{"characters": []}
4	9	0:15:03	0:15:22	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Janos Slynt"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}]}
4	9	0:15:22	0:16:34	The Wall	Castle Black	{"characters": [{"name": "Alliser Thorne"}, {"name": "Jon Snow"}]}
4	9	0:16:34	0:18:11	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
4	9	0:18:11	0:19:59	The Wall	Castle Black	{"characters": [{"name": "Pypar"}, {"name": "Samwell Tarly"}]}
4	9	0:19:59	0:20:10	The Wall	Outside Castle Black	{"characters": [{"name": "Ygritte"}, {"name": "Samwell Tarly"}, {"name": "Pypar"}]}
4	9	0:20:10	0:20:39	The Wall	Castle Black	{"characters": [{"name": "Ygritte"}, {"name": "Tormund Giantsbane"}, {"name": "Styr"}, {"name": "Thenn Warg"}]}
4	9	0:20:39	0:21:02	The Wall	Castle Black	{"characters": []}
4	9	0:21:02	0:21:28	North of the Wall	The Wall	{"characters": [{"name": "Mag the Mighty"}, {"name": "Dongo the Giant"}]}
4	9	0:21:28	0:21:44	The Wall	Castle Black	{"characters": [{"name": "Grenn"}, {"name": "Eddison Tollett"}, {"name": "Jon Snow"}, {"name": "Alliser Thorne"}]}
4	9	0:21:44	0:22:07	North of the Wall	The Wall	{"characters": [{"name": "Mag the Mighty"}, {"name": "Dongo the Giant"}]}
4	9	0:22:07	0:22:44	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Alliser Thorne"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}]}
4	9	0:22:44	0:23:08	The Wall	Castle Black	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Styr"}, {"name": "Thenn Warg"}, {"name": "Ygritte"}]}
4	9	0:23:08	0:23:29	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Alliser Thorne"}, {"name": "Janos Slynt"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}]}
4	9	0:23:29	0:23:46	North of the Wall	The Wall	{"characters": []}
4	9	0:23:46	0:23:49	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}]}
4	9	0:23:49	0:24:34	The Wall	Castle Black	{"characters": [{"name": "Ygritte"}, {"name": "Styr"}, {"name": "Tormund Giantsbane"}, {"name": "Thenn Warg"}, {"name": "Pypar"}, {"name": "Samwell Tarly"}]}
4	9	0:24:34	0:25:10	The Wall	Castle Black	{"characters": [{"name": "Olly"}, {"name": "Alliser Thorne"}]}
4	9	0:25:10	0:25:54	The Wall	Castle Black	{"characters": [{"name": "Alliser Thorne"}, {"name": "Tormund Giantsbane"}, {"name": "Styr"}, {"name": "Thenn Warg"}, {"name": "Ygritte"}, {"name": "Pypar"}, {"name": "Samwell Tarly"}]}
4	9	0:25:54	0:26:09	North of the Wall	The Wall	{"characters": [{"name": "Mag the Mighty"}, {"name": "Dongo the Giant"}]}
4	9	0:26:09	0:26:54	The Wall	Castle Black	{"characters": [{"name": "Grenn"}, {"name": "Eddison Tollett"}, {"name": "Janos Slynt"}, {"name": "Jon Snow"}]}
4	9	0:26:54	0:27:13	The Wall	Castle Black	{"characters": [{"name": "Grenn"}, {"name": "Eddison Tollett"}, {"name": "Jon Snow"}]}
4	9	0:27:13	0:27:26	North of the Wall	The Wall	{"characters": []}
4	9	0:27:26	0:28:04	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Grenn"}, {"name": "Eddison Tollett"}]}
4	9	0:28:04	0:28:15	North of the Wall	The Wall	{"characters": [{"name": "Dongo the Giant"}]}
4	9	0:28:15	0:28:18	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}]}
4	9	0:28:18	0:28:19	North of the Wall	The Wall	{"characters": [{"name": "Dongo the Giant"}]}
4	9	0:28:19	0:28:23	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}]}
4	9	0:28:23	0:29:04	The Wall	Castle Black	{"characters": [{"name": "Styr"}, {"name": "Olly"}]}
4	9	0:29:04	0:29:54	The Wall	Castle Black	{"characters": [{"name": "Ygritte"}, {"name": "Janos Slynt"}, {"name": "Olly"}]}
4	9	0:29:54	0:30:14	The Wall	Castle Black	{"characters": [{"name": "Janos Slynt"}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
4	9	0:30:14	0:31:00	The Wall	Castle Black	{"characters": [{"name": "Pypar", "alive": false, "mannerOfDeath": "Arrow", "killedBy": ["Ygritte"]}, {"name": "Samwell Tarly"}, {"name": "Ygritte"}]}
4	9	0:31:00	0:31:02	North of the Wall	The Wall	{"characters": [{"name": "Mag the Mighty"}]}
4	9	0:31:02	0:31:18	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Eddison Tollett"}]}
4	9	0:31:18	0:31:23	North of the Wall	The Wall	{"characters": []}
4	9	0:31:23	0:31:26	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Eddison Tollett"}, {"name": "Grenn"}]}
4	9	0:31:26	0:31:44	North of the Wall	The Wall	{"characters": [{"name": "Mag the Mighty"}, {"name": "Dongo the Giant"}]}
4	9	0:31:44	0:31:54	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Eddison Tollett"}, {"name": "Grenn"}]}
4	9	0:31:54	0:32:43	North of the Wall	The Wall	{"characters": [{"name": "Dongo the Giant"}, {"name": "Mag the Mighty"}]}
4	9	0:32:43	0:33:12	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Grenn"}, {"name": "Donnel Hill"}, {"name": "Cooper"}]}
4	9	0:33:12	0:33:20	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Eddison Tollett"}]}
4	9	0:33:20	0:34:14	The Wall	Castle Black	{"characters": [{"name": "Alliser Thorne"}, {"name": "Tormund Giantsbane"}]}
4	9	0:34:14	0:34:39	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Pypar", "alive": false}]}
4	9	0:34:39	0:35:05	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Thenn Warg", "alive": false, "mannerOfDeath": "Arrow", "killedBy": ["Samwell Tarly"]}]}
4	9	0:35:05	0:35:25	The Wall	Castle Black	{"characters": [{"name": "Grenn"}, {"name": "Donnel Hill"}, {"name": "Cooper"}, {"name": "Samwell Tarly"}]}
4	9	0:35:25	0:36:02	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Olly"}]}
4	9	0:36:02	0:36:08	North of the Wall	The Wall	{"characters": [{"name": "Dongo the Giant"}, {"name": "Mag the Mighty"}]}
4	9	0:36:08	0:36:15	The Wall	Castle Black	{"characters": [{"name": "Eddison Tollett"}]}
4	9	0:36:15	0:36:27	North of the Wall	The Wall	{"characters": [{"name": "Dongo the Giant"}, {"name": "Mag the Mighty"}]}
4	9	0:36:27	0:36:36	The Wall	Castle Black	{"characters": []}
4	9	0:36:36	0:36:41	North of the Wall	The Wall	{"characters": [{"name": "Dongo the Giant", "alive": false, "mannerOfDeath": "Arrow"}]}
4	9	0:36:41	0:36:47	North of the Wall	The Wall	{"characters": [{"name": "Mag the Mighty"}]}
4	9	0:36:47	0:37:01	The Wall	Castle Black	{"characters": []}
4	9	0:37:01	0:37:15	North of the Wall	The Wall	{"characters": [{"name": "Mag the Mighty"}]}
4	9	0:37:15	0:38:04	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Eddison Tollett"}]}
4	9	0:38:04	0:38:09	The Wall	Castle Black	{"characters": [{"name": "Grenn"}, {"name": "Donnel Hill"}, {"name": "Cooper"}]}
4	9	0:38:09	0:38:11	North of the Wall	The Wall	{"characters": [{"name": "Mag the Mighty"}]}
4	9	0:38:11	0:38:20	The Wall	Castle Black	{"characters": [{"name": "Grenn"}, {"name": "Donnel Hill"}, {"name": "Cooper"}]}
4	9	0:38:20	0:38:23	North of the Wall	The Wall	{"characters": [{"name": "Mag the Mighty"}]}
4	9	0:38:23	0:38:26	The Wall	Castle Black	{"characters": [{"name": "Grenn"}, {"name": "Donnel Hill"}, {"name": "Cooper"}]}
4	9	0:38:26	0:38:29	North of the Wall	The Wall	{"characters": [{"name": "Mag the Mighty"}]}
4	9	0:38:29	0:39:09	The Wall	Castle Black	{"characters": [{"name": "Grenn"}, {"name": "Donnel Hill"}, {"name": "Cooper"}, {"name": "Mag the Mighty"}]}
4	9	0:39:09	0:39:33	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Samwell Tarly"}]}
4	9	0:39:33	0:40:35	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Tormund Giantsbane"}, {"name": "Samwell Tarly"}]}
4	9	0:40:35	0:40:54	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Samwell Tarly"}, {"name": "Ghost"}]}
4	9	0:40:54	0:42:18	The Wall	Castle Black	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Styr", "alive": false, "mannerOfDeath": "Head crush", "killedBy": ["Jon Snow"]}, {"name": "Jon Snow", "weapon": [{"action": "loses", "name": "Longclaw"}]}, {"name": "Ygritte"}]}
4	9	0:42:18	0:42:47	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Ygritte"}, {"name": "Olly"}]}
4	9	0:42:47	0:44:00	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Ygritte", "alive": false, "mannerOfDeath": "Arrow", "killedBy": ["Olly"]}]}
4	9	0:44:00	0:44:03	North of the Wall	The Wall	{"characters": []}
4	9	0:44:03	0:44:18	The Wall	Castle Black	{"characters": [{"name": "Eddison Tollett"}]}
4	9	0:44:18	0:44:32	North of the Wall	The Wall	{"characters": []}
4	9	0:44:32	0:44:57	The Wall	Castle Black	{"characters": [{"name": "Eddison Tollett"}]}
4	9	0:44:57	0:45:37	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Tormund Giantsbane"}]}
4	9	0:45:37	0:46:01	The Wall	Castle Black	{"characters": [{"name": "Gilly"}, {"name": "Samwell Tarly"}, {"name": "Janos Slynt"}]}
4	9	0:46:01	0:47:49	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
4	9	0:47:49	0:48:44	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Grenn", "alive": false, "mannerOfDeath": "Giant", "killedBy": ["Mag the Mighty"]}, {"name": "Donnel Hill", "alive": false, "mannerOfDeath": "Giant", "killedBy": ["Mag the Mighty"]}, {"name": "Cooper", "alive": false, "mannerOfDeath": "Giant", "killedBy": ["Mag the Mighty"]}, {"name": "Mag the Mighty", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Grenn", "Donnel Hill", "Cooper"]}]}
4	9	0:48:44	0:50:03	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly", "weapon": [{"action": "receives", "name": "Longclaw"}]}, {"name": "Jon Snow", "weapon": [{"action": "gives", "name": "Longclaw"}]}]}
4	10	0:02:50	0:03:25	North of the Wall	The Wall	{"characters": [{"name": "Jon Snow"}]}
4	10	0:03:25	0:03:33	The Wall	Castle Black	{"characters": [{"name": "Eddison Tollett"}]}
4	10	0:03:33	0:04:04	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow"}, {"name": "Dongo the Giant", "alive": false}]}
4	10	0:04:04	0:04:34	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow"}, {"name": "Mance Rayder", "title": "King"}]}
4	10	0:04:34	0:09:18	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow"}, {"name": "Mance Rayder", "title": "King"}]}
4	10	0:09:18	0:11:06	North of the Wall	The Wall	{"characters": [{"name": "Mance Rayder", "title": "King"}, {"name": "Jon Snow"}]}
4	10	0:11:06	0:13:42	North of the Wall	The Wall	{"characters": [{"name": "Mance Rayder", "title": "King"}, {"name": "Jon Snow"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Davos Seaworth", "title": "Hand"}]}
4	10	0:13:42	0:13:58	North of the Wall	The Wall	{"characters": [{"name": "Jon Snow"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
4	10	0:14:00	0:15:13	The Crownlands	King's Landing	{"characters": [{"name": "Qyburn"}, {"name": "Grand Maester Pycelle"}, {"name": "Gregor Clegane"}, {"name": "Cersei Lannister"}]}
4	10	0:15:13	0:15:54	The Crownlands	King's Landing	{"characters": [{"name": "Qyburn"}, {"name": "Gregor Clegane"}, {"name": "Cersei Lannister"}]}
4	10	0:15:54	0:16:08	The Crownlands	King's Landing	{"characters": [{"name": "Qyburn"}, {"name": "Gregor Clegane"}]}
4	10	0:16:08	0:19:08	The Crownlands	King's Landing	{"characters": [{"name": "Tywin Lannister", "title": "Hand"}, {"name": "Cersei Lannister"}]}
4	10	0:19:08	0:21:03	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister", "sex": {"with": ["Cersei Lannister"], "when": "present", "type": "love"}}, {"name": "Cersei Lannister", "sex": {"with": ["Jaime Lannister"], "when": "present", "type": "love"}}]}
4	10	0:21:03	0:23:52	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Fennesz"}, {"name": "Barristan Selmy"}, {"name": "Grey Worm"}]}
4	10	0:23:52	0:24:04	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}]}
4	10	0:24:04	0:25:11	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}, {"name": "Grey Worm"}, {"name": "Goatherd"}, {"name": "Missandei"}]}
4	10	0:25:11	0:25:41	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Grey Worm"}, {"name": "Missandei"}]}
4	10	0:25:14	0:28:06	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
4	10	0:28:06	0:28:44	The Wall	Castle Black	{"characters": [{"name": "Maester Aemon"}, {"name": "Pypar", "alive": false}, {"name": "Grenn", "alive": false}, {"name": "Olly"}, {"name": "Eddison Tollett"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Janos Slynt"}]}
4	10	0:28:44	0:29:46	The Wall	Castle Black	{"characters": [{"name": "Maester Aemon"}, {"name": "Olly"}, {"name": "Eddison Tollett"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Janos Slynt"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Davos Seaworth", "title": "Hand"}, {"name": "Selyse Baratheon"}, {"name": "Shireen Baratheon"}, {"name": "Samwell Tarly"}, {"name": "Grenn", "alive": false}, {"name": "Melisandre"}]}
4	10	0:29:46	0:31:31	The Wall	Castle Black	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
4	10	0:31:31	0:31:36	North of the Wall	The Wall	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
4	10	0:31:36	0:32:49	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ygritte", "alive": false}]}
4	10	0:32:49	0:34:31	North of the Wall	Outside the Three-Eyed Raven	{"characters": [{"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Meera Reed"}, {"name": "Jojen Reed"}, {"name": "Summer"}]}
4	10	0:34:31	0:37:04	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Meera Reed"}, {"name": "Jojen Reed"}, {"name": "Summer"}]}
4	10	0:37:04	0:38:09	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Meera Reed"}, {"name": "Jojen Reed", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Meera Reed"]}, {"name": "Summer"}, {"name": "Leaf"}]}
4	10	0:38:09	0:38:52	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Meera Reed"}, {"name": "Summer"}, {"name": "Leaf"}]}
4	10	0:38:52	0:40:00	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Meera Reed"}, {"name": "Leaf"}]}
4	10	0:40:00	0:41:22	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Hodor"}, {"name": "Bran Stark"}, {"name": "Meera Reed"}, {"name": "Three-Eyed Raven"}]}
4	10	0:41:22	0:42:11	The Vale	To The Eyrie	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}]}
4	10	0:42:11	0:43:34	The Vale	To The Eyrie	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
4	10	0:43:34	0:46:08	The Vale	To The Eyrie	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sandor Clegane"}]}
4	10	0:46:08	0:48:38	The Vale	To The Eyrie	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Sandor Clegane"}]}
4	10	0:48:38	0:48:56	The Vale	To The Eyrie	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
4	10	0:48:56	0:53:04	The Vale	To The Eyrie	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sandor Clegane"}]}
4	10	0:53:04	0:54:27	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Jaime Lannister"}]}
4	10	0:54:27	0:55:06	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}]}
4	10	0:55:06	0:57:36	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Shae", "alive": false, "mannerOfDeath": "Choking", "killedBy": ["Tyrion Lannister"]}]}
4	10	0:57:36	0:57:59	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}]}
4	10	0:57:59	1:00:50	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Tywin Lannister", "title": "Hand", "alive": false, "mannerOfDeath": "Arrow", "killedBy": ["Tyrion Lannister"]}]}
4	10	1:00:50	1:01:21	The Crownlands	King's Landing	{"characters": [{"name": "Lord Varys"}, {"name": "Tyrion Lannister"}]}
4	10	1:01:21	1:02:12	The Crownlands	King's Landing	{"characters": [{"name": "Lord Varys"}]}
4	10	1:02:12	1:02:50	The Vale	Coast of the Vale	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
4	10	1:02:50	1:03:51	The Vale	Coast of the Vale	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Ternesio Terys"}]}
4	10	1:03:51	1:04:49	The Vale	Coast of the Vale	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
5	1	0:05:30	0:07:07	The Westerlands	Outside Casterly Rock	{"characters": [{"name": "Young Cersei Lannister"}, {"name": "Melara Hetherspoon"}]}
5	1	0:07:07	0:09:40	The Westerlands	Outside Casterly Rock	{"characters": [{"name": "Young Cersei Lannister"}, {"name": "Melara Hetherspoon"}, {"name": "Maggy"}]}
5	1	0:09:40	0:10:39	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Meryn Trant"}, {"name": "High Septon"}, {"name": "Margaery Tyrell"}]}
5	1	0:10:39	0:12:55	The Crownlands	King's Landing	{"characters": [{"name": "Tywin Lannister", "title": "Hand", "alive": false}, {"name": "Cersei Lannister"}, {"name": "Jaime Lannister"}]}
5	1	0:12:55	0:13:30	Pentos	NULL	{"characters": [{"name": "Tyrion Lannister"}]}
5	1	0:13:30	0:16:26	Pentos	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}]}
5	1	0:16:26	0:17:13	Meereen	NULL	{"characters": []}
5	1	0:17:13	0:17:20	Meereen	NULL	{"characters": [{"name": "White Rat"}]}
5	1	0:17:20	0:19:19	Meereen	NULL	{"characters": [{"name": "White Rat", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Son of the Harpy"]}, {"name": "Vala"}]}
5	1	0:19:19	0:20:18	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}, {"name": "Grey Worm"}, {"name": "Mossador"}, {"name": "Missandei"}]}
5	1	0:20:18	0:21:33	Meereen	NULL	{"characters": [{"name": "Grey Worm"}, {"name": "Missandei"}]}
5	1	0:21:33	0:22:21	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Olly"}, {"name": "Samwell Tarly"}, {"name": "Gilly"}, {"name": "Ghost"}]}
5	1	0:22:21	0:23:17	The Wall	Castle Black	{"characters": [{"name": "Alliser Thorne"}, {"name": "Janos Slynt"}, {"name": "Gilly"}, {"name": "Samwell Tarly"}, {"name": "Jon Snow"}, {"name": "Olly"}, {"name": "Baby Sam"}]}
5	1	0:23:17	0:23:27	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Olly"}, {"name": "Melisandre"}]}
5	1	0:23:27	0:24:21	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Melisandre"}]}
5	1	0:24:21	0:26:35	The Wall	Castle Black	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Davos Seaworth", "title": "Hand"}, {"name": "Jon Snow"}, {"name": "Melisandre"}]}
5	1	0:26:35	0:27:30	The Vale	Runestone	{"characters": [{"name": "Robin Arryn"}, {"name": "Petyr Baelish"}, {"name": "Sansa Stark"}, {"name": "Sparring Boy"}, {"name": "Yohn Royce"}, {"name": "Strong Sam Stone"}]}
5	1	0:27:30	0:27:49	The Vale	Runestone	{"characters": [{"name": "Petyr Baelish"}, {"name": "Sansa Stark"}, {"name": "Yohn Royce"}, {"name": "Sparring Boy"}, {"name": "Robin Arryn"}]}
5	1	0:27:49	0:29:21	The Vale	To The Eyrie	{"characters": [{"name": "Podrick Payne"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
5	1	0:29:21	0:30:07	The Vale	To The Eyrie	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
5	1	0:30:07	0:30:14	The Vale	To The Eyrie	{"characters": []}
5	1	0:30:14	0:30:47	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Loras Tyrell"}, {"name": "Mace Tyrell"}, {"name": "Margaery Tyrell"}, {"name": "Tommen Baratheon", "title": "King"}]}
5	1	0:30:47	0:31:02	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Grand Maester Pycelle"}, {"name": "Lancel Lannister"}]}
5	1	0:31:02	0:31:18	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Lancel Lannister"}, {"name": "Kevan Lannister"}]}
5	1	0:31:18	0:31:43	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Kevan Lannister"}]}
5	1	0:31:43	0:33:16	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Lancel Lannister"}]}
5	1	0:33:16	0:34:10	The Crownlands	King's Landing	{"characters": [{"name": "Loras Tyrell", "sex": {"with": ["Olyvar"], "when": "past", "type": "fun"}}, {"name": "Olyvar", "sex": {"with": ["Loras Tyrell"], "when": "past", "type": "fun"}}]}
5	1	0:34:10	0:35:07	The Crownlands	King's Landing	{"characters": [{"name": "Loras Tyrell"}, {"name": "Olyvar"}, {"name": "Margaery Tyrell"}]}
5	1	0:35:07	0:35:59	The Crownlands	King's Landing	{"characters": [{"name": "Loras Tyrell"}, {"name": "Margaery Tyrell"}]}
5	1	0:35:59	0:36:04	Pentos	NULL	{"characters": []}
5	1	0:36:04	0:39:14	Pentos	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}]}
5	1	0:39:14	0:39:32	Meereen	NULL	{"characters": [{"name": "Hizdahr zo Loraq"}, {"name": "Daario Naharis"}]}
5	1	0:39:32	0:40:44	Meereen	NULL	{"characters": [{"name": "Hizdahr zo Loraq"}, {"name": "Daario Naharis"}, {"name": "Missandei"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}, {"name": "Grey Worm"}]}
5	1	0:40:44	0:43:13	Meereen	NULL	{"characters": [{"name": "Daario Naharis", "sex": {"with": ["Daenerys Targaryen"], "when": "past", "type": "love"}}, {"name": "Daenerys Targaryen", "title": "Khaleesi", "sex": {"with": ["Daario Naharis"], "when": "past", "type": "love"}}]}
5	1	0:43:13	0:44:49	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
5	1	0:44:49	0:44:56	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
5	1	0:44:56	0:45:03	The Wall	Castle Black	{"characters": []}
5	1	0:45:03	0:49:27	The Wall	Castle Black	{"characters": [{"name": "Mance Rayder", "title": "King"}, {"name": "Jon Snow"}]}
5	1	0:49:27	0:51:29	The Wall	Castle Black	{"characters": [{"name": "Mance Rayder", "title": "King"}, {"name": "Melisandre"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Davos Seaworth", "title": "Hand"}, {"name": "Eddison Tollett"}, {"name": "Samwell Tarly"}, {"name": "Tormund Giantsbane"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
5	1	0:51:29	0:51:33	The Wall	Castle Black	{"characters": [{"name": "Selyse Baratheon"}, {"name": "Shireen Baratheon"}]}
5	1	0:51:33	0:53:01	The Wall	Castle Black	{"characters": [{"name": "Mance Rayder", "title": "King"}, {"name": "Melisandre"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Davos Seaworth", "title": "Hand"}, {"name": "Tormund Giantsbane"}, {"name": "Selyse Baratheon"}, {"name": "Shireen Baratheon"}, {"name": "Eddison Tollett"}, {"name": "Samwell Tarly"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gilly"}]}
5	1	0:53:01	0:53:18	The Wall	Castle Black	{"characters": [{"name": "Mance Rayder", "title": "King"}]}
5	1	0:53:18	0:53:41	The Wall	Castle Black	{"characters": [{"name": "Mance Rayder", "title": "King"}, {"name": "Tormund Giantsbane"}, {"name": "Samwell Tarly"}, {"name": "Gilly"}, {"name": "Melisandre"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Eddison Tollett"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Olly"}]}
5	1	0:53:41	0:53:52	The Wall	Castle Black	{"characters": [{"name": "Alliser Thorne"}, {"name": "Janos Slynt"}, {"name": "Mance Rayder", "title": "King"}, {"name": "Samwell Tarly"}, {"name": "Gilly"}]}
5	1	0:53:52	0:54:05	The Wall	Castle Black	{"characters": [{"name": "Selyse Baratheon"}, {"name": "Shireen Baratheon"}, {"name": "Mance Rayder", "title": "King"}, {"name": "Tormund Giantsbane"}]}
5	1	0:54:05	0:54:17	The Wall	Castle Black	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Mance Rayder", "title": "King", "alive": false, "mannerOfDeath": "Arrow", "killedBy": ["Jon Snow"]}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
5	1	0:54:17	0:54:23	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
5	2	0:03:30	0:04:20	Braavos	NULL	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Ternesio Terys"}]}
5	2	0:04:20	0:05:44	Braavos	NULL	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Ternesio Terys"}]}
5	2	0:05:44	0:06:53	Braavos	NULL	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Faceless Man"}]}
5	2	0:06:53	0:08:27	Braavos	NULL	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
5	2	0:08:27	0:08:36	The Vale	Inn	{"characters": [{"name": "Podrick Payne"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
5	2	0:08:36	0:09:56	The Vale	Inn	{"characters": [{"name": "Podrick Payne"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Inn Waitress"}, {"name": "Petyr Baelish"}, {"name": "Sansa Stark"}]}
5	2	0:09:56	0:12:55	The Vale	Inn	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Petyr Baelish"}, {"name": "Sansa Stark"}, {"name": "Eyrie Guard"}]}
5	2	0:12:55	0:13:14	The Vale	Inn	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}, {"name": "Eyrie Guard"}]}
5	2	0:13:14	0:16:05	The Vale	Outside the Inn	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}, {"name": "Eyrie Guard", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Brienne of Tarth"]}]}
5	2	0:16:05	0:18:30	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Jaime Lannister"}]}
5	2	0:18:30	0:19:59	The Crownlands	Castle Stokeworth	{"characters": [{"name": "Bronn"}, {"name": "Lollys Stokeworth"}]}
5	2	0:19:59	0:20:32	The Crownlands	Castle Stokeworth	{"characters": [{"name": "Bronn"}, {"name": "Lollys Stokeworth"}, {"name": "Jaime Lannister"}]}
5	2	0:20:32	0:21:23	The Crownlands	Castle Stokeworth	{"characters": [{"name": "Bronn"}, {"name": "Jaime Lannister"}]}
5	2	0:21:23	0:21:52	Dorne	The Water Gardens	{"characters": [{"name": "Ellaria Sand"}, {"name": "Myrcella Baratheon"}, {"name": "Trystane Martell"}]}
5	2	0:21:52	0:22:55	Dorne	The Water Gardens	{"characters": [{"name": "Ellaria Sand"}, {"name": "Doran Martell"}, {"name": "Areo Hotah"}]}
5	2	0:22:55	0:22:59	Dorne	The Water Gardens	{"characters": [{"name": "Ellaria Sand"}, {"name": "Doran Martell"}, {"name": "Myrcella Baratheon"}, {"name": "Trystane Martell"}]}
5	2	0:22:59	0:23:41	Dorne	The Water Gardens	{"characters": [{"name": "Ellaria Sand"}, {"name": "Doran Martell"}, {"name": "Areo Hotah"}]}
5	2	0:23:41	0:23:48	Dorne	The Water Gardens	{"characters": [{"name": "Areo Hotah"}, {"name": "Doran Martell"}]}
5	2	0:23:48	0:25:11	Meereen	NULL	{"characters": [{"name": "Daario Naharis"}, {"name": "Grey Worm"}]}
5	2	0:25:11	0:25:32	Meereen	NULL	{"characters": [{"name": "Daario Naharis"}, {"name": "Grey Worm"}, {"name": "Son of the Harpy"}]}
5	2	0:25:32	0:25:46	Meereen	NULL	{"characters": [{"name": "Daario Naharis"}, {"name": "Grey Worm"}, {"name": "Son of the Harpy"}]}
5	2	0:25:46	0:27:17	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}, {"name": "Missandei"}, {"name": "Grey Worm"}, {"name": "Daario Naharis"}, {"name": "Mossador"}, {"name": "Hizdahr zo Loraq"}]}
5	2	0:27:17	0:28:34	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}]}
5	2	0:28:34	0:31:00	Pentos	Pentos to Volantis	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}]}
5	2	0:31:00	0:31:35	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Dwarf Hunter #1"}, {"name": "Dwarf Hunter #2"}, {"name": "Qyburn"}, {"name": "Meryn Trant"}]}
5	2	0:31:35	0:34:33	The Crownlands	King's Landing	{"characters": [{"name": "Kevan Lannister"}, {"name": "Grand Maester Pycelle"}, {"name": "Mace Tyrell"}, {"name": "Cersei Lannister"}, {"name": "Qyburn"}]}
5	2	0:34:33	0:36:52	The Wall	Castle Black	{"characters": [{"name": "Gilly"}, {"name": "Shireen Baratheon"}, {"name": "Samwell Tarly"}]}
5	2	0:36:52	0:37:05	The Wall	Castle Black	{"characters": [{"name": "Gilly"}, {"name": "Shireen Baratheon"}, {"name": "Samwell Tarly"}, {"name": "Selyse Baratheon"}]}
5	2	0:37:05	0:37:34	The Wall	Castle Black	{"characters": [{"name": "Shireen Baratheon"}, {"name": "Selyse Baratheon"}]}
5	2	0:37:34	0:39:55	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Stannis Baratheon", "title": "King"}, {"name": "Davos Seaworth", "title": "Hand"}]}
5	2	0:39:55	0:40:36	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Samwell Tarly"}]}
5	2	0:40:36	0:44:29	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Samwell Tarly"}, {"name": "Maester Aemon"}, {"name": "Othell Yarwyck"}, {"name": "Janos Slynt"}, {"name": "Alliser Thorne"}, {"name": "Denys Mallister"}, {"name": "Mallister Supporter"}, {"name": "Olly"}, {"name": "Eddison Tollett"}]}
5	2	0:44:29	0:45:38	The Wall	Castle Black	{"characters": [{"name": "Othell Yarwyck"}, {"name": "Samwell Tarly"}, {"name": "Janos Slynt"}, {"name": "Alliser Thorne"}, {"name": "Denys Mallister"}, {"name": "Olly"}, {"name": "Jon Snow"}, {"name": "Maester Aemon"}]}
5	2	0:45:38	0:46:22	Braavos	NULL	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Street Tough #1"}, {"name": "Street Tough #2"}]}
5	2	0:46:22	0:46:29	Braavos	NULL	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Street Tough #1"}, {"name": "Street Tough #2"}, {"name": "Faceless Man"}]}
5	2	0:46:29	0:46:33	Braavos	NULL	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Faceless Man"}]}
5	2	0:46:33	0:47:40	Braavos	NULL	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Faceless Man"}, {"name": "Jaqen H'ghar"}]}
5	2	0:47:40	0:48:13	Meereen	NULL	{"characters": [{"name": "Mossador"}, {"name": "Son of the Harpy"}]}
5	2	0:48:13	0:48:26	Meereen	NULL	{"characters": [{"name": "Son of the Harpy", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Mossador"]}]}
5	2	0:48:26	0:50:06	Meereen	NULL	{"characters": [{"name": "Mossador"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Grey Worm"}, {"name": "Missandei"}, {"name": "Barristan Selmy"}, {"name": "Daario Naharis"}]}
5	2	0:50:06	0:51:06	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Grey Worm"}, {"name": "Barristan Selmy"}, {"name": "Missandei"}, {"name": "Daario Naharis"}, {"name": "Hizdahr zo Loraq"}]}
5	2	0:51:06	0:52:44	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Grey Worm"}, {"name": "Barristan Selmy"}, {"name": "Missandei"}, {"name": "Daario Naharis"}, {"name": "Hizdahr zo Loraq"}, {"name": "Mossador", "alive": false, "mannerOfDeath": "Decapitation", "killedBy": ["Daario Naharis"]}]}
5	2	0:52:44	0:53:42	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Grey Worm"}, {"name": "Barristan Selmy"}, {"name": "Missandei"}, {"name": "Daario Naharis"}, {"name": "Hizdahr zo Loraq"}]}
5	2	0:53:42	0:54:01	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Grey Worm"}, {"name": "Barristan Selmy"}, {"name": "Missandei"}, {"name": "Daario Naharis"}]}
5	2	0:54:01	0:54:42	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
5	2	0:54:42	0:55:45	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}]}
5	3	0:03:24	0:04:38	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}, {"name": "Despondent Man"}, {"name": "The Waif"}]}
5	3	0:04:38	0:06:07	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
5	3	0:06:07	0:06:49	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Despondent Man", "alive": false, "mannerOfDeath": "Poison", "killedBy": ["Jaqen H'ghar"]}, {"name": "The Waif"}]}
5	3	0:06:49	0:07:02	The Crownlands	King's Landing	{"characters": []}
5	3	0:07:02	0:07:23	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
5	3	0:07:23	0:07:56	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King", "married": {"to": "Margaery Tyrell", "when": "present", "type": "arranged", "consummated": true}}, {"name": "Margaery Tyrell", "married": {"to": "Tommen Baratheon", "when": "present", "type": "arranged", "consummated": true}}, {"name": "Cersei Lannister"}, {"name": "Loras Tyrell"}, {"name": "Mace Tyrell"}, {"name": "Grand Maester Pycelle"}, {"name": "High Septon"}]}
5	3	0:07:56	0:10:56	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King", "sex": {"with": ["Margaery Tyrell"], "when": "present", "type": "marriage"}}, {"name": "Margaery Tyrell", "sex": {"with": ["Tommen Baratheon"], "when": "present", "type": "marriage"}}]}
5	3	0:10:56	0:12:04	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tommen Baratheon", "title": "King"}]}
5	3	0:12:04	0:13:54	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Cersei Lannister"}]}
5	3	0:13:54	0:13:59	The North	Winterfell	{"characters": []}
5	3	0:13:59	0:14:56	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}]}
5	3	0:14:56	0:16:41	The North	Winterfell	{"characters": [{"name": "Roose Bolton"}, {"name": "Ramsay Snow"}, {"name": "Theon Greyjoy"}]}
5	3	0:16:41	0:19:46	The North	Moat Cailin	{"characters": [{"name": "Petyr Baelish"}, {"name": "Sansa Stark"}]}
5	3	0:19:46	0:20:12	The North	Moat Cailin	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}]}
5	3	0:20:12	0:25:25	The North	Moat Cailin	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}]}
5	3	0:25:25	0:28:01	The Wall	Castle Black	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Olly"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Davos Seaworth", "title": "Hand"}]}
5	3	0:28:01	0:29:45	The Wall	Castle Black	{"characters": [{"name": "Olly"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Davos Seaworth", "title": "Hand"}]}
5	3	0:29:45	0:30:32	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "The Waif"}]}
5	3	0:30:32	0:31:17	Braavos	NULL	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "The Waif"}, {"name": "Jaqen H'ghar"}]}
5	3	0:31:17	0:33:12	Braavos	NULL	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
5	3	0:33:12	0:33:43	Braavos	NULL	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "hides", "name": "Needle"}]}]}
5	3	0:33:43	0:34:10	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
5	3	0:34:10	0:34:27	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}, {"name": "The Waif"}]}
5	3	0:34:27	0:35:50	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "The Waif"}]}
5	3	0:35:50	0:36:52	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Petyr Baelish"}, {"name": "Sansa Stark"}, {"name": "Roose Bolton"}, {"name": "Ramsay Snow"}, {"name": "Walda Bolton"}, {"name": "Myranda"}]}
5	3	0:36:52	0:37:22	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Old Woman"}]}
5	3	0:37:22	0:40:20	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Alliser Thorne"}, {"name": "Janos Slynt"}, {"name": "Samwell Tarly"}, {"name": "Eddison Tollett"}, {"name": "Bowen Marsh"}, {"name": "Olly"}]}
5	3	0:40:20	0:42:08	The Wall	Castle Black	{"characters": [{"name": "Janos Slynt", "alive": false, "mannerOfDeath": "Decapitation", "killedBy": ["Jon Snow"]}, {"name": "Eddison Tollett"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Olly"}, {"name": "Stannis Baratheon", "title": "King"}, {"name": "Samwell Tarly"}, {"name": "Alliser Thorne"}]}
5	3	0:42:08	0:42:14	The Wall	Castle Black	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Jon Snow"}]}
5	3	0:42:14	0:42:55	The Crownlands	King's Landing	{"characters": [{"name": "High Septon"}, {"name": "The Stranger"}, {"name": "The Warrior"}, {"name": "The Smith"}, {"name": "The Mother"}, {"name": "The Maiden"}, {"name": "The Crone"}, {"name": "Olyvar"}]}
5	3	0:42:55	0:42:59	The Crownlands	King's Landing	{"characters": [{"name": "High Septon"}, {"name": "The Stranger"}, {"name": "The Maiden"}, {"name": "Olyvar"}]}
5	3	0:42:59	0:43:21	The Crownlands	King's Landing	{"characters": [{"name": "High Septon"}, {"name": "The Stranger"}, {"name": "The Maiden"}, {"name": "Olyvar"}, {"name": "Lancel Lannister"}]}
5	3	0:43:21	0:43:45	The Crownlands	King's Landing	{"characters": [{"name": "High Septon"}, {"name": "Lancel Lannister"}]}
5	3	0:43:45	0:45:12	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Grand Maester Pycelle"}, {"name": "Qyburn"}, {"name": "High Septon"}, {"name": "Mace Tyrell"}]}
5	3	0:45:12	0:45:28	The Crownlands	King's Landing	{"characters": [{"name": "Meryn Trant"}, {"name": "Cersei Lannister"}]}
5	3	0:45:28	0:48:17	The Crownlands	King's Landing	{"characters": [{"name": "Meryn Trant"}, {"name": "Cersei Lannister"}, {"name": "High Sparrow"}, {"name": "Beggar Woman"}]}
5	3	0:48:17	0:48:28	The Crownlands	King's Landing	{"characters": [{"name": "Qyburn"}]}
5	3	0:48:28	0:49:12	The Crownlands	King's Landing	{"characters": [{"name": "Qyburn"}, {"name": "Cersei Lannister"}, {"name": "Gregor Clegane"}]}
5	3	0:49:12	0:49:21	The Crownlands	King's Landing	{"characters": [{"name": "Qyburn"}, {"name": "Gregor Clegane"}]}
5	3	0:49:21	0:49:42	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Theon Greyjoy"}]}
5	3	0:49:42	0:49:46	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Ramsay Snow"}, {"name": "Petyr Baelish"}]}
5	3	0:49:46	0:50:04	The North	Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Petyr Baelish"}]}
5	3	0:50:04	0:50:34	The North	Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Petyr Baelish"}, {"name": "Roose Bolton"}]}
5	3	0:50:34	0:52:42	The North	Winterfell	{"characters": [{"name": "Petyr Baelish"}, {"name": "Roose Bolton"}]}
5	3	0:52:42	0:53:47	Volantis	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}]}
5	3	0:53:47	0:54:11	Volantis	NULL	{"characters": []}
5	3	0:54:11	0:54:44	Volantis	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}]}
5	3	0:54:44	0:54:53	Volantis	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}, {"name": "Red Priestess"}]}
5	3	0:54:53	0:56:06	Volantis	NULL	{"characters": [{"name": "Red Priestess"}, {"name": "Tyrion Lannister"}, {"name": "Lord Varys"}]}
5	3	0:56:06	0:56:35	Volantis	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}, {"name": "Brothel Guard"}]}
5	3	0:56:35	0:57:38	Volantis	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}, {"name": "Sellsword #1"}, {"name": "Sellsword #2"}, {"name": "Jorah Mormont"}, {"name": "The Mother of Dragons"}]}
5	3	0:57:38	0:58:15	Volantis	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Clea"}, {"name": "Sellsword #1"}, {"name": "Sellsword #2"}, {"name": "The Mother of Dragons"}]}
5	3	0:58:15	0:59:19	Volantis	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Clea"}]}
5	3	0:59:19	0:59:24	Volantis	NULL	{"characters": [{"name": "Clea"}, {"name": "Lord Varys"}]}
5	3	0:59:24	1:00:03	Volantis	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Jorah Mormont"}]}
5	4	0:03:27	0:04:31	Volantis	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}]}
5	4	0:04:31	0:04:56	The Stormlands	Tarth	{"characters": [{"name": "Jaime Lannister"}, {"name": "Merchant Captain"}]}
5	4	0:04:56	0:07:20	The Stormlands	Tarth	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}]}
5	4	0:07:20	0:08:21	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Mace Tyrell"}, {"name": "Qyburn"}, {"name": "Grand Maester Pycelle"}]}
5	4	0:08:21	0:08:48	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Mace Tyrell"}, {"name": "Qyburn"}, {"name": "Grand Maester Pycelle"}, {"name": "Meryn Trant"}]}
5	4	0:08:48	0:08:54	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Qyburn"}, {"name": "Grand Maester Pycelle"}]}
5	4	0:08:54	0:10:52	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "High Sparrow"}]}
5	4	0:10:52	0:11:58	The Crownlands	King's Landing	{"characters": [{"name": "Faith Militant #1"}, {"name": "Faith Militant #2"}, {"name": "Brothel Customer"}, {"name": "Whore #1"}, {"name": "Whore #2"}, {"name": "Whore #3"}, {"name": "Whore #4"}, {"name": "Whore #5"}, {"name": "Whore #6"}]}
5	4	0:11:58	0:12:19	The Crownlands	King's Landing	{"characters": [{"name": "Olyvar"}]}
5	4	0:12:19	0:12:38	The Crownlands	King's Landing	{"characters": [{"name": "Olyvar"}, {"name": "Faith Militant #1"}, {"name": "Faith Militant #2"}, {"name": "Brothel Customer"}]}
5	4	0:12:38	0:12:49	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister"}]}
5	4	0:12:49	0:13:22	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister"}, {"name": "Loras Tyrell"}]}
5	4	0:13:22	0:14:22	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Tommen Baratheon", "title": "King"}]}
5	4	0:14:22	0:15:10	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King"}, {"name": "Cersei Lannister"}]}
5	4	0:15:10	0:16:25	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King"}, {"name": "Faith Militant #1"}, {"name": "Lead Kingsguard"}]}
5	4	0:16:25	0:17:22	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King"}, {"name": "Margaery Tyrell"}]}
5	4	0:17:22	0:17:55	The Wall	Castle Black	{"characters": [{"name": "Olly"}, {"name": "Selyse Baratheon"}, {"name": "Jon Snow"}, {"name": "Eddison Tollett"}, {"name": "Stannis Baratheon", "title": "King"}, {"name": "Shireen Baratheon"}]}
5	4	0:17:55	0:18:11	The Wall	Castle Black	{"characters": [{"name": "Selyse Baratheon"}, {"name": "Stannis Baratheon", "title": "King"}, {"name": "Melisandre"}]}
5	4	0:18:11	0:18:49	The Wall	Castle Black	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Melisandre"}]}
5	4	0:18:49	0:18:52	The Wall	Castle Black	{"characters": [{"name": "Olly"}, {"name": "Jon Snow"}, {"name": "Stannis Baratheon", "title": "King"}, {"name": "Melisandre"}]}
5	4	0:18:52	0:20:08	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Samwell Tarly"}]}
5	4	0:20:08	0:20:25	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Samwell Tarly"}, {"name": "Melisandre"}]}
5	4	0:20:25	0:23:23	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Melisandre"}]}
5	4	0:23:23	0:26:32	The Wall	Castle Black	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Shireen Baratheon"}]}
5	4	0:26:32	0:27:18	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}]}
5	4	0:27:18	0:31:48	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
5	4	0:31:48	0:32:24	Dorne	NULL	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}]}
5	4	0:32:24	0:33:54	Dorne	NULL	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}]}
5	4	0:33:54	0:34:29	Dorne	NULL	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}]}
5	4	0:34:29	0:37:31	Dorne	NULL	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}, {"name": "Lead Dornish Guard", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Bronn"]}]}
5	4	0:37:31	0:38:17	Dorne	NULL	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}]}
5	4	0:38:17	0:39:07	Dorne	NULL	{"characters": [{"name": "Ellaria Sand"}, {"name": "Obara Sand"}, {"name": "Tyene Sand"}, {"name": "Nymeria Sand"}]}
5	4	0:39:07	0:40:31	Dorne	NULL	{"characters": [{"name": "Ellaria Sand"}, {"name": "Obara Sand"}, {"name": "Tyene Sand"}, {"name": "Nymeria Sand"}, {"name": "Merchant Captain", "alive": false, "mannerOfDeath": "Face stab", "killedBy": ["Obara Sand"]}]}
5	4	0:40:31	0:43:58	Volantis	Volantis to Valyria	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}]}
5	4	0:43:58	0:45:01	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}]}
5	4	0:45:01	0:45:32	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Barristan Selmy"}, {"name": "Daario Naharis"}]}
5	4	0:45:32	0:46:04	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}, {"name": "Hizdahr zo Loraq"}, {"name": "Missandei"}]}
5	4	0:46:04	0:46:08	Meereen	NULL	{"characters": []}
5	4	0:46:08	0:46:09	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}, {"name": "Hizdahr zo Loraq"}, {"name": "Missandei"}]}
5	4	0:46:09	0:46:13	Meereen	NULL	{"characters": []}
5	4	0:46:13	0:46:15	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}, {"name": "Hizdahr zo Loraq"}, {"name": "Missandei"}]}
5	4	0:46:15	0:46:19	Meereen	NULL	{"characters": []}
5	4	0:46:19	0:46:22	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}, {"name": "Hizdahr zo Loraq"}, {"name": "Missandei"}]}
5	4	0:46:22	0:46:44	Meereen	NULL	{"characters": [{"name": "Vala"}, {"name": "Second Son", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Son of the Harpy"]}]}
5	4	0:46:44	0:47:11	Meereen	NULL	{"characters": [{"name": "Vala"}, {"name": "Second Son", "alive": false, "mannerOfDeath": "", "killedBy": []}]}
5	4	0:47:11	0:48:11	Meereen	NULL	{"characters": [{"name": "Grey Worm"}]}
5	4	0:48:11	0:48:29	Meereen	NULL	{"characters": [{"name": "Barristan Selmy"}]}
5	4	0:48:29	0:48:58	Meereen	NULL	{"characters": [{"name": "Grey Worm"}]}
5	4	0:48:58	0:49:07	Meereen	NULL	{"characters": []}
5	4	0:49:07	0:49:19	Meereen	NULL	{"characters": [{"name": "Grey Worm"}]}
5	4	0:49:19	0:50:32	Meereen	NULL	{"characters": [{"name": "Grey Worm"}, {"name": "Barristan Selmy", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Sons of the Harpy"]}]}
5	5	0:03:37	0:03:57	Meereen	NULL	{"characters": [{"name": "Grey Worm"}, {"name": "Missandei"}]}
5	5	0:03:57	0:05:29	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}, {"name": "Barristan Selmy", "alive": false}, {"name": "Hizdahr zo Loraq"}]}
5	5	0:05:29	0:07:03	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}, {"name": "Hizdahr zo Loraq"}, {"name": "Great Master #1"}, {"name": "Great Master #2"}, {"name": "Great Master #3"}, {"name": "Great Master #4"}, {"name": "Great Master #5"}, {"name": "Great Master #6"}, {"name": "Great Master #7"}]}
5	5	0:07:03	0:07:26	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}, {"name": "Hizdahr zo Loraq"}, {"name": "Great Master #1", "alive": false, "mannerOfDeath": "Dragon", "killedBy": ["Daenerys Targaryen"]}, {"name": "Great Master #2"}, {"name": "Great Master #3"}, {"name": "Great Master #4"}, {"name": "Great Master #5"}, {"name": "Great Master #6"}, {"name": "Great Master #7"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
5	5	0:07:26	0:08:24	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}, {"name": "Hizdahr zo Loraq"}, {"name": "Great Master #2"}, {"name": "Great Master #3"}, {"name": "Great Master #4"}, {"name": "Great Master #5"}, {"name": "Great Master #6"}, {"name": "Great Master #7"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
5	5	0:08:24	0:08:38	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
5	5	0:08:38	0:09:19	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Maester Aemon"}]}
5	5	0:09:19	0:10:03	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Maester Aemon"}, {"name": "Jon Snow"}]}
5	5	0:10:03	0:10:56	The Wall	Castle Black	{"characters": [{"name": "Maester Aemon"}, {"name": "Jon Snow"}]}
5	5	0:10:56	0:14:48	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Tormund Giantsbane"}]}
5	5	0:14:48	0:16:19	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Othell Yarwyck"}, {"name": "Bowen Marsh"}, {"name": "Alliser Thorne"}, {"name": "Stannis Baratheon", "title": "King"}, {"name": "Davos Seaworth", "title": "Hand"}, {"name": "Samwell Tarly"}, {"name": "Eddison Tollett"}, {"name": "Olly"}]}
5	5	0:16:19	0:16:36	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}]}
5	5	0:16:36	0:18:05	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Olly"}]}
5	5	0:18:05	0:18:15	The North	Winter Town	{"characters": [{"name": "Podrick Payne"}]}
5	5	0:18:15	0:18:59	The North	Winter Town	{"characters": [{"name": "Podrick Payne"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
5	5	0:18:59	0:20:21	The North	Winter Town	{"characters": [{"name": "Podrick Payne"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Winter Town Man"}]}
5	5	0:20:21	0:22:44	The North	Winterfell	{"characters": [{"name": "Myranda", "sex": {"with": ["Ramsay Snow"], "when": "present", "type": "love"}}, {"name": "Ramsay Snow", "sex": {"with": ["Myranda"], "when": "present", "type": "love"}}]}
5	5	0:22:44	0:23:19	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Old Woman"}]}
5	5	0:23:19	0:23:29	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}]}
5	5	0:23:29	0:23:44	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}]}
5	5	0:23:44	0:25:10	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Myranda"}]}
5	5	0:25:10	0:25:38	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Myranda"}]}
5	5	0:25:38	0:26:15	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}]}
5	5	0:26:15	0:26:59	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Theon Greyjoy"}]}
5	5	0:26:59	0:29:07	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Ramsay Snow"}]}
5	5	0:29:07	0:30:19	The North	Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Sansa Stark"}, {"name": "Roose Bolton"}, {"name": "Walda Bolton"}]}
5	5	0:30:19	0:33:56	The North	Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Sansa Stark"}, {"name": "Roose Bolton"}, {"name": "Walda Bolton"}, {"name": "Theon Greyjoy"}]}
5	5	0:33:56	0:36:48	The North	Winterfell	{"characters": [{"name": "Roose Bolton"}, {"name": "Ramsay Snow"}]}
5	5	0:36:48	0:38:19	The Wall	Castle Black	{"characters": [{"name": "Gilly"}, {"name": "Samwell Tarly"}]}
5	5	0:38:19	0:38:31	The Wall	Castle Black	{"characters": [{"name": "Gilly"}, {"name": "Samwell Tarly"}, {"name": "Stannis Baratheon", "title": "King"}]}
5	5	0:38:31	0:39:56	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Stannis Baratheon", "title": "King"}]}
5	5	0:39:56	0:40:59	The Wall	Castle Black	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Davos Seaworth", "title": "Hand"}]}
5	5	0:40:59	0:41:07	The Wall	Castle Black	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}, {"name": "Melisandre"}]}
5	5	0:41:07	0:41:20	The Wall	Castle Black	{"characters": []}
5	5	0:41:20	0:42:10	The Wall	Castle Black	{"characters": [{"name": "Gilly"}, {"name": "Baby Sam"}, {"name": "Samwell Tarly"}, {"name": "Olly"}, {"name": "Eddison Tollett"}, {"name": "Shireen Baratheon"}, {"name": "Davos Seaworth", "title": "Hand"}, {"name": "Selyse Baratheon"}]}
5	5	0:42:10	0:42:52	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
5	5	0:42:52	0:43:34	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Melisandre"}]}
5	5	0:43:34	0:43:50	The Wall	Castle Black	{"characters": []}
5	5	0:43:50	0:46:01	Meereen	NULL	{"characters": [{"name": "Missandei"}, {"name": "Grey Worm"}]}
5	5	0:46:01	0:47:14	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}]}
5	5	0:47:14	0:48:50	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Hizdahr zo Loraq"}]}
5	5	0:48:50	0:51:03	Valyria	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}]}
5	5	0:51:03	0:52:28	Valyria	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}]}
5	5	0:52:28	0:52:54	Valyria	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}, {"name": "Drogon"}]}
5	5	0:52:54	0:54:04	Valyria	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}, {"name": "Stone Man"}]}
5	5	0:54:04	0:54:30	Valyria	NULL	{"characters": [{"name": "Tyrion Lannister"}]}
5	5	0:54:30	0:56:38	Valyria	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}]}
5	5	0:56:38	0:57:02	Valyria	NULL	{"characters": [{"name": "Jorah Mormont"}]}
5	6	0:03:41	0:05:36	Braavos	NULL	{"characters": [{"name": "Arya Stark"}]}
5	6	0:05:36	0:07:39	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "The Waif"}]}
5	6	0:07:39	0:09:41	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
5	6	0:09:41	0:12:33	Valyria	Slaver's Bay	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}]}
5	6	0:12:33	0:14:03	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Joss"}, {"name": "Ghita"}]}
5	6	0:14:03	0:15:24	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Ghita"}]}
5	6	0:15:24	0:15:33	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Ghita"}, {"name": "Joss"}, {"name": "Jaqen H'ghar"}]}
5	6	0:15:33	0:16:17	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Ghita", "alive": false, "mannerOfDeath": "Poison", "killedBy": ["Arya Stark"]}, {"name": "Jaqen H'ghar"}]}
5	6	0:16:17	0:18:45	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
5	6	0:18:45	0:20:38	Valyria	Slaver's Bay	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}]}
5	6	0:20:38	0:20:46	Valyria	Slaver's Bay	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}, {"name": "Malko"}, {"name": "Slaver"}]}
5	6	0:20:46	0:23:44	Valyria	Slaver's Bay	{"characters": [{"name": "Jorah Mormont"}, {"name": "Malko"}, {"name": "Tyrion Lannister"}, {"name": "Slaver"}]}
5	6	0:23:44	0:24:56	The Crownlands	King's Landing	{"characters": [{"name": "Petyr Baelish"}, {"name": "Lancel Lannister"}]}
5	6	0:24:56	0:28:50	The Crownlands	King's Landing	{"characters": [{"name": "Petyr Baelish"}, {"name": "Cersei Lannister"}]}
5	6	0:28:50	0:29:49	Dorne	The Water Gardens	{"characters": [{"name": "Trystane Martell"}, {"name": "Myrcella Baratheon"}]}
5	6	0:29:49	0:30:00	Dorne	The Water Gardens	{"characters": [{"name": "Doran Martell"}, {"name": "Areo Hotah"}, {"name": "Trystane Martell"}, {"name": "Myrcella Baratheon"}]}
5	6	0:30:00	0:30:22	Dorne	The Water Gardens	{"characters": [{"name": "Doran Martell"}, {"name": "Areo Hotah"}]}
5	6	0:30:22	0:31:14	Dorne	NULL	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}]}
5	6	0:31:14	0:31:27	Dorne	The Water Gardens	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}]}
5	6	0:31:27	0:31:51	Dorne	The Water Gardens	{"characters": [{"name": "Ellaria Sand"}, {"name": "Obara Sand"}, {"name": "Tyene Sand"}, {"name": "Nymeria Sand"}]}
5	6	0:31:51	0:32:14	Dorne	The Water Gardens	{"characters": [{"name": "Obara Sand"}, {"name": "Tyene Sand"}, {"name": "Nymeria Sand"}, {"name": "Jaime Lannister"}, {"name": "Bronn"}]}
5	6	0:32:14	0:33:07	Dorne	The Water Gardens	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}, {"name": "Trystane Martell"}, {"name": "Myrcella Baratheon"}]}
5	6	0:33:07	0:34:11	Dorne	The Water Gardens	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}, {"name": "Trystane Martell"}, {"name": "Myrcella Baratheon"}, {"name": "Obara Sand"}, {"name": "Tyene Sand"}, {"name": "Nymeria Sand"}]}
5	6	0:34:11	0:35:10	Dorne	The Water Gardens	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}, {"name": "Trystane Martell"}, {"name": "Myrcella Baratheon"}, {"name": "Obara Sand"}, {"name": "Tyene Sand"}, {"name": "Nymeria Sand"}, {"name": "Areo Hotah"}]}
5	6	0:35:10	0:35:22	Dorne	The Water Gardens	{"characters": [{"name": "Ellaria Sand"}]}
5	6	0:35:22	0:35:30	The Crownlands	Outside King's Landing	{"characters": []}
5	6	0:35:30	0:35:40	The Crownlands	Outside King's Landing	{"characters": [{"name": "Olenna Tyrell"}]}
5	6	0:35:40	0:35:46	The Crownlands	Outside King's Landing	{"characters": []}
5	6	0:35:46	0:36:19	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Margaery Tyrell"}]}
5	6	0:36:19	0:38:43	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Olenna Tyrell"}]}
5	6	0:38:43	0:41:09	The Crownlands	King's Landing	{"characters": [{"name": "High Sparrow"}, {"name": "Loras Tyrell"}, {"name": "Olenna Tyrell"}, {"name": "Margaery Tyrell"}, {"name": "Tommen Baratheon", "title": "King"}, {"name": "Cersei Lannister"}]}
5	6	0:41:09	0:43:11	The Crownlands	King's Landing	{"characters": [{"name": "High Sparrow"}, {"name": "Loras Tyrell"}, {"name": "Olenna Tyrell"}, {"name": "Margaery Tyrell"}, {"name": "Tommen Baratheon", "title": "King"}, {"name": "Cersei Lannister"}, {"name": "Olyvar"}]}
5	6	0:43:11	0:43:36	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}]}
5	6	0:43:36	0:46:30	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Myranda"}]}
5	6	0:46:30	0:46:41	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}]}
5	6	0:46:41	0:47:22	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Theon Greyjoy"}]}
5	6	0:47:22	0:48:18	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Theon Greyjoy"}]}
5	6	0:48:18	0:50:13	The North	Winterfell	{"characters": [{"name": "Sansa Stark", "married": {"to": "Ramsay Snow", "when": "present", "type": "arranged", "consummated": true}}, {"name": "Theon Greyjoy"}, {"name": "Roose Bolton"}, {"name": "Ramsay Snow", "married": {"to": "Sansa Stark", "when": "present", "type": "arranged", "consummated": true}}, {"name": "Walda Bolton"}, {"name": "Myranda"}]}
5	6	0:50:13	0:54:03	The North	Winterfell	{"characters": [{"name": "Sansa Stark", "sex": {"with": ["Ramsay Snow"], "when": "present", "type": "rape"}}, {"name": "Theon Greyjoy"}, {"name": "Ramsay Snow", "sex": {"with": ["Sansa Stark"], "when": "present", "type": "rape"}}]}
5	7	0:03:39	0:04:41	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Alliser Thorne"}, {"name": "Othell Yarwyck"}, {"name": "Bowen Marsh"}, {"name": "Tormund Giantsbane"}, {"name": "Eddison Tollett"}, {"name": "Olly"}]}
5	7	0:04:41	0:05:54	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "receives", "name": "Dragonglass"}]}, {"name": "Alliser Thorne"}, {"name": "Samwell Tarly", "weapon": [{"action": "gives", "name": "Dragonglass"}]}, {"name": "Olly"}, {"name": "Othell Yarwyck"}, {"name": "Bowen Marsh"}, {"name": "Tormund Giantsbane"}, {"name": "Eddison Tollett"}]}
5	7	0:05:54	0:05:59	The Wall	Castle Black	{"characters": [{"name": "Alliser Thorne"}]}
5	7	0:05:59	0:06:55	The Wall	Castle Black	{"characters": [{"name": "Gilly"}, {"name": "Baby Sam"}, {"name": "Maester Aemon"}, {"name": "Samwell Tarly"}]}
5	7	0:06:55	0:07:09	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}]}
5	7	0:07:09	0:09:22	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Sansa Stark"}]}
5	7	0:09:22	0:09:53	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}]}
5	7	0:09:53	0:10:09	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Ramsay Snow"}]}
5	7	0:10:09	0:10:17	The North	Winterfell	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
5	7	0:10:17	0:11:30	The Wall	Castle Black	{"characters": [{"name": "Baby Sam"}, {"name": "Maester Aemon"}, {"name": "Samwell Tarly"}, {"name": "Gilly"}]}
5	7	0:11:30	0:13:07	The Wall	Castle Black	{"characters": [{"name": "Maester Aemon", "alive": false, "mannerOfDeath": "Old age"}, {"name": "Samwell Tarly"}, {"name": "Alliser Thorne"}, {"name": "Gilly"}, {"name": "Baby Sam"}, {"name": "Bowen Marsh"}]}
5	7	0:13:07	0:15:38	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Ramsay Snow"}]}
5	7	0:15:38	0:16:49	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Ramsay Snow"}, {"name": "Old Woman", "alive": false, "mannerOfDeath": "Flayed", "killedBy": ["Ramsay Snow"]}, {"name": "Theon Greyjoy"}]}
5	7	0:16:49	0:17:22	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}]}
5	7	0:17:22	0:18:55	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}, {"name": "Stannis Baratheon", "title": "King"}, {"name": "Melisandre"}]}
5	7	0:18:55	0:20:54	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Melisandre"}]}
5	7	0:20:54	0:21:41	The Wall	Castle Black	{"characters": [{"name": "Gilly"}, {"name": "Derek"}, {"name": "Brant"}]}
5	7	0:21:41	0:23:16	The Wall	Castle Black	{"characters": [{"name": "Gilly"}, {"name": "Derek"}, {"name": "Brant"}, {"name": "Samwell Tarly"}]}
5	7	0:23:16	0:23:26	The Wall	Castle Black	{"characters": [{"name": "Gilly"}, {"name": "Derek"}, {"name": "Brant"}, {"name": "Samwell Tarly"}, {"name": "Ghost"}]}
5	7	0:23:26	0:23:47	The Wall	Castle Black	{"characters": [{"name": "Gilly"}, {"name": "Samwell Tarly"}]}
5	7	0:23:47	0:26:40	The Wall	Castle Black	{"characters": [{"name": "Gilly", "sex": {"with": ["Samwell Tarly"], "when": "present", "type": "love"}}, {"name": "Samwell Tarly", "sex": {"with": ["Gilly"], "when": "present", "type": "love"}}]}
5	7	0:26:40	0:26:55	Meereen	Outside Meereen	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}]}
5	7	0:26:55	0:29:17	Meereen	Outside Meereen	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}, {"name": "Malko"}, {"name": "Yezzan zo Qaggaz"}]}
5	7	0:29:17	0:31:52	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi", "sex": {"with": ["Daario Naharis"], "when": "present", "type": "love"}}, {"name": "Daario Naharis", "sex": {"with": ["Daenerys Targaryen"], "when": "present", "type": "love"}}]}
5	7	0:31:52	0:31:57	The Crownlands	King's Landing	{"characters": []}
5	7	0:31:57	0:35:16	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "High Sparrow"}]}
5	7	0:35:16	0:35:30	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Tyrell Guard"}]}
5	7	0:35:30	0:38:40	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King"}, {"name": "Cersei Lannister"}]}
5	7	0:38:40	0:38:56	Dorne	The Water Gardens	{"characters": [{"name": "Jaime Lannister"}, {"name": "Areo Hotah"}, {"name": "Myrcella Baratheon"}]}
5	7	0:38:56	0:39:57	Dorne	The Water Gardens	{"characters": [{"name": "Jaime Lannister"}, {"name": "Myrcella Baratheon"}]}
5	7	0:39:57	0:43:41	Dorne	The Water Gardens	{"characters": [{"name": "Bronn"}, {"name": "Obara Sand"}, {"name": "Tyene Sand"}, {"name": "Nymeria Sand"}]}
5	7	0:43:41	0:44:09	The Crownlands	King's Landing	{"characters": [{"name": "Petyr Baelish"}]}
5	7	0:44:09	0:46:00	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Petyr Baelish"}]}
5	7	0:46:00	0:47:11	Meereen	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}, {"name": "Yezzan zo Qaggaz"}]}
5	7	0:47:11	0:47:55	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Hizdahr zo Loraq"}, {"name": "Yezzan zo Qaggaz"}]}
5	7	0:47:55	0:48:15	Meereen	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}]}
5	7	0:48:15	0:48:41	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Hizdahr zo Loraq"}, {"name": "Jorah Mormont"}]}
5	7	0:48:41	0:49:09	Meereen	NULL	{"characters": [{"name": "Yezzan zo Qaggaz"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Hizdahr zo Loraq"}, {"name": "Jorah Mormont"}]}
5	7	0:49:09	0:49:24	Meereen	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}]}
5	7	0:49:24	0:51:34	Meereen	NULL	{"characters": [{"name": "Yezzan zo Qaggaz"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Hizdahr zo Loraq"}, {"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}]}
5	7	0:51:34	0:54:03	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Margaery Tyrell"}]}
5	7	0:54:03	0:54:11	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
5	7	0:54:11	0:58:02	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "High Sparrow"}]}
5	7	0:58:02	0:58:13	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "High Sparrow"}, {"name": "Lancel Lannister"}]}
5	7	0:58:13	0:58:42	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "High Sparrow"}, {"name": "Lancel Lannister"}, {"name": "Septa Unella"}]}
5	7	0:58:42	0:59:14	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Septa Unella"}]}
5	8	0:03:34	0:08:24	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}]}
5	8	0:08:24	0:08:53	Meereen	NULL	{"characters": [{"name": "Jorah Mormont"}]}
5	8	0:08:53	0:09:44	The Crownlands	King's Landing	{"characters": [{"name": "Septa Unella"}, {"name": "Cersei Lannister"}]}
5	8	0:09:44	0:09:59	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
5	8	0:09:59	0:10:30	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Lhara"}]}
5	8	0:10:30	0:10:57	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
5	8	0:10:57	0:12:48	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Thin Man"}, {"name": "Braavosi Captain"}]}
5	8	0:12:48	0:14:20	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
5	8	0:14:20	0:14:42	Braavos	NULL	{"characters": [{"name": "The Waif"}, {"name": "Jaqen H'ghar"}]}
5	8	0:14:42	0:17:04	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Qyburn"}]}
5	8	0:17:04	0:17:29	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Qyburn"}, {"name": "Septa Unella"}]}
5	8	0:17:29	0:20:19	The North	Winterfell	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Sansa Stark"}]}
5	8	0:20:19	0:21:25	The North	Winterfell	{"characters": [{"name": "Roose Bolton"}, {"name": "Ramsay Snow"}]}
5	8	0:21:25	0:26:40	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
5	8	0:26:40	0:26:52	Meereen	NULL	{"characters": [{"name": "Yezzan zo Qaggaz"}]}
5	8	0:26:52	0:27:35	Meereen	NULL	{"characters": [{"name": "Yezzan zo Qaggaz"}, {"name": "Jorah Mormont"}]}
5	8	0:27:35	0:28:30	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Septa Unella"}]}
5	8	0:28:30	0:28:48	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
5	8	0:28:48	0:29:36	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Gilly"}]}
5	8	0:29:36	0:30:07	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Gilly"}, {"name": "Olly"}]}
5	8	0:30:07	0:31:50	The Wall	Castle Black	{"characters": [{"name": "Samwell Tarly"}, {"name": "Olly"}]}
5	8	0:31:50	0:32:27	North of the Wall	Hardhome	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Tormund Giantsbane"}, {"name": "Eddison Tollett"}]}
5	8	0:32:27	0:33:25	North of the Wall	Hardhome	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Tormund Giantsbane"}, {"name": "Eddison Tollett"}, {"name": "Todder"}]}
5	8	0:33:25	0:34:59	North of the Wall	Hardhome	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Tormund Giantsbane"}, {"name": "Eddison Tollett"}, {"name": "Rattleshirt", "alive": false, "mannerOfDeath": "Beaten", "killedBy": ["Tormund Giantsbane"]}, {"name": "Todder"}]}
5	8	0:34:59	0:35:12	North of the Wall	Hardhome	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Tormund Giantsbane"}, {"name": "Eddison Tollett"}, {"name": "Todder"}]}
5	8	0:35:12	0:41:32	North of the Wall	Hardhome	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "gives", "name": "Dragonglass"}]}, {"name": "Eddison Tollett"}, {"name": "Karsi", "weapon": [{"action": "receives", "name": "Dragonglass"}]}, {"name": "Loboda"}, {"name": "Wun Wun"}, {"name": "Tormund Giantsbane"}, {"name": "Dim Dalba"}]}
5	8	0:41:32	0:43:03	North of the Wall	Hardhome	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Karsi"}, {"name": "Johnna"}, {"name": "Willa"}]}
5	8	0:43:03	0:43:35	North of the Wall	Hardhome	{"characters": [{"name": "Wun Wun", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Eddison Tollett", "weapon": [{"action": "has", "name": "Dragonglass"}]}]}
5	8	0:43:35	0:44:50	North of the Wall	Hardhome	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Karsi"}, {"name": "Loboda"}]}
5	8	0:44:50	0:44:58	North of the Wall	Hardhome	{"characters": []}
5	8	0:44:58	0:45:20	North of the Wall	Hardhome	{"characters": [{"name": "Karsi"}, {"name": "Tormund Giantsbane"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
5	8	0:45:20	0:46:09	North of the Wall	Hardhome	{"characters": [{"name": "Loboda"}]}
5	8	0:46:09	0:46:18	North of the Wall	Hardhome	{"characters": []}
5	8	0:46:18	0:46:27	North of the Wall	Hardhome	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Tormund Giantsbane"}]}
5	8	0:46:27	0:46:36	North of the Wall	Hardhome	{"characters": []}
5	8	0:46:36	0:47:02	North of the Wall	Hardhome	{"characters": [{"name": "Wun Wun"}, {"name": "Eddison Tollett"}]}
5	8	0:47:02	0:47:20	North of the Wall	Hardhome	{"characters": []}
5	8	0:47:20	0:47:23	North of the Wall	Hardhome	{"characters": [{"name": "Loboda"}]}
5	8	0:47:23	0:47:30	North of the Wall	Hardhome	{"characters": [{"name": "Karsi"}]}
5	8	0:47:30	0:48:28	North of the Wall	Hardhome	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Karsi"}, {"name": "Todder"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
5	8	0:48:28	0:49:31	North of the Wall	Hardhome	{"characters": []}
5	8	0:49:31	0:49:56	North of the Wall	Hardhome	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Tormund Giantsbane"}]}
5	8	0:49:56	0:51:28	North of the Wall	Hardhome	{"characters": [{"name": "Loboda"}, {"name": "Karsi"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Tormund Giantsbane"}, {"name": "The Night King", "title": "King"}, {"name": "Wun Wun"}]}
5	8	0:51:28	0:52:11	North of the Wall	Hardhome	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "loses", "name": "Longclaw"}]}, {"name": "Loboda", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["White Walker"]}, {"name": "White Walker"}]}
5	8	0:52:11	0:53:34	North of the Wall	Hardhome	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "retrieves", "name": "Longclaw"}]}, {"name": "White Walker", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Jon Snow"]}]}
5	8	0:53:34	0:53:52	North of the Wall	Hardhome	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "The Night King", "title": "King"}]}
5	8	0:53:52	0:54:52	North of the Wall	Hardhome	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Tormund Giantsbane"}, {"name": "Karsi", "alive": false, "mannerOfDeath": "Wight children", "killedBy": ["Wight children"]}]}
5	8	0:54:52	0:55:59	North of the Wall	Hardhome	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "loses", "name": "Dragonglass"}]}, {"name": "Eddison Tollett"}, {"name": "Tormund Giantsbane"}, {"name": "Wun Wun"}]}
5	8	0:55:59	0:56:09	North of the Wall	Hardhome	{"characters": []}
5	8	0:56:09	0:56:33	North of the Wall	Hardhome	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Eddison Tollett"}, {"name": "Tormund Giantsbane"}, {"name": "Wun Wun"}]}
5	8	0:56:33	0:56:39	North of the Wall	Hardhome	{"characters": [{"name": "The Night King", "title": "King"}]}
5	8	0:56:39	0:57:32	North of the Wall	Hardhome	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Eddison Tollett"}, {"name": "Tormund Giantsbane"}, {"name": "Wun Wun"}]}
5	8	0:57:32	0:57:45	North of the Wall	Hardhome	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Eddison Tollett"}, {"name": "Tormund Giantsbane"}]}
5	8	0:57:45	0:57:51	North of the Wall	Hardhome	{"characters": []}
5	8	0:57:51	0:58:09	North of the Wall	Hardhome	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Eddison Tollett"}, {"name": "Tormund Giantsbane"}, {"name": "White Walker"}]}
5	8	0:58:09	0:58:50	North of the Wall	Hardhome	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Eddison Tollett"}]}
5	8	0:58:50	0:59:27	North of the Wall	Hardhome	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
5	8	0:59:27	0:59:37	North of the Wall	Hardhome	{"characters": [{"name": "Karsi", "alive": false}]}
5	8	0:59:37	1:00:15	North of the Wall	Hardhome	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
5	9	0:04:22	0:04:37	The North	Stannis Baratheon's Camp	{"characters": []}
5	9	0:04:37	0:05:02	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Melisandre"}]}
5	9	0:05:02	0:05:17	The North	Stannis Baratheon's Camp	{"characters": []}
5	9	0:05:17	0:05:23	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Melisandre"}]}
5	9	0:05:23	0:06:13	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}, {"name": "Stannis Baratheon", "title": "King"}]}
5	9	0:06:13	0:06:38	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}, {"name": "Stannis Baratheon", "title": "King"}, {"name": "Melisandre"}, {"name": "Selyse Baratheon"}]}
5	9	0:06:38	0:07:21	North of the Wall	The Wall	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Tormund Giantsbane"}, {"name": "Wun Wun"}, {"name": "Eddison Tollett"}, {"name": "Willa"}, {"name": "Johnna"}]}
5	9	0:07:21	0:07:29	The Wall	Castle Black	{"characters": [{"name": "Alliser Thorne"}]}
5	9	0:07:29	0:07:41	North of the Wall	The Wall	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Tormund Giantsbane"}, {"name": "Wun Wun"}, {"name": "Eddison Tollett"}, {"name": "Willa"}, {"name": "Johnna"}]}
5	9	0:07:41	0:07:48	The Wall	Castle Black	{"characters": [{"name": "Alliser Thorne"}]}
5	9	0:07:48	0:07:52	North of the Wall	The Wall	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
5	9	0:07:52	0:08:01	The Wall	Castle Black	{"characters": [{"name": "Alliser Thorne"}]}
5	9	0:08:01	0:08:12	North of the Wall	The Wall	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Eddison Tollett"}]}
5	9	0:08:12	0:08:47	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Samwell Tarly"}, {"name": "Eddison Tollett"}, {"name": "Othell Yarwyck"}, {"name": "Bowen Marsh"}]}
5	9	0:08:47	0:09:17	The Wall	Castle Black	{"characters": [{"name": "Wun Wun"}, {"name": "Othell Yarwyck"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Samwell Tarly"}, {"name": "Eddison Tollett"}, {"name": "Olly"}]}
5	9	0:09:17	0:09:26	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Samwell Tarly"}, {"name": "Alliser Thorne"}]}
5	9	0:09:26	0:09:53	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Alliser Thorne"}, {"name": "Eddison Tollett"}, {"name": "Tormund Giantsbane"}]}
5	9	0:09:53	0:11:22	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Stannis Baratheon", "title": "King"}, {"name": "Davos Seaworth", "title": "Hand"}]}
5	9	0:11:22	0:11:43	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Davos Seaworth", "title": "Hand"}]}
5	9	0:11:43	0:13:38	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Shireen Baratheon"}, {"name": "Davos Seaworth", "title": "Hand"}]}
5	9	0:13:38	0:16:40	Dorne	The Water Gardens	{"characters": [{"name": "Jaime Lannister"}, {"name": "Areo Hotah"}, {"name": "Doran Martell"}, {"name": "Ellaria Sand"}, {"name": "Trystane Martell"}, {"name": "Myrcella Baratheon"}]}
5	9	0:16:40	0:17:22	Dorne	The Water Gardens	{"characters": [{"name": "Jaime Lannister"}, {"name": "Areo Hotah"}, {"name": "Doran Martell"}, {"name": "Trystane Martell"}, {"name": "Myrcella Baratheon"}]}
5	9	0:17:22	0:18:17	Dorne	The Water Gardens	{"characters": [{"name": "Bronn"}, {"name": "Obara Sand"}, {"name": "Tyene Sand"}, {"name": "Nymeria Sand"}]}
5	9	0:18:17	0:18:48	Dorne	The Water Gardens	{"characters": [{"name": "Bronn"}, {"name": "Obara Sand"}, {"name": "Tyene Sand"}, {"name": "Nymeria Sand"}, {"name": "Areo Hotah"}]}
5	9	0:18:48	0:19:31	Dorne	The Water Gardens	{"characters": [{"name": "Jaime Lannister"}, {"name": "Areo Hotah"}, {"name": "Doran Martell"}, {"name": "Trystane Martell"}, {"name": "Myrcella Baratheon"}, {"name": "Bronn"}]}
5	9	0:19:31	0:19:53	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Sailor"}]}
5	9	0:19:53	0:20:47	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Thin Man"}]}
5	9	0:20:47	0:21:08	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Thin Man"}, {"name": "Mace Tyrell"}, {"name": "Meryn Trant"}]}
5	9	0:21:08	0:21:48	Braavos	NULL	{"characters": [{"name": "Mace Tyrell"}, {"name": "Meryn Trant"}, {"name": "Tycho Nestoris"}, {"name": "Arya Stark"}]}
5	9	0:21:48	0:22:37	Braavos	NULL	{"characters": [{"name": "Mace Tyrell"}, {"name": "Meryn Trant"}, {"name": "Tycho Nestoris"}, {"name": "Arya Stark"}]}
5	9	0:22:37	0:23:08	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Mace Tyrell"}, {"name": "Meryn Trant"}, {"name": "Tycho Nestoris"}]}
5	9	0:23:08	0:23:39	Braavos	NULL	{"characters": [{"name": "Meryn Trant"}, {"name": "Lannister Guard #1"}, {"name": "Lannister Guard #2"}, {"name": "Arya Stark"}]}
5	9	0:23:39	0:24:21	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Brusco"}, {"name": "Lhara"}, {"name": "Young Braavosi"}, {"name": "Meryn Trant"}]}
5	9	0:24:21	0:27:03	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Meryn Trant", "sex": {"with": ["Aya"], "when": "future", "type": "paid"}}, {"name": "Braavosi Madam"}, {"name": "Whore"}, {"name": "Brea"}, {"name": "Anara"}, {"name": "Lannister Guard #1"}, {"name": "Lannister Guard #2"}, {"name": "Aya", "sex": {"with": ["Meryn Trant"], "when": "future", "type": "paid"}}]}
5	9	0:27:03	0:27:57	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
5	9	0:27:57	0:28:57	Dorne	The Water Gardens	{"characters": [{"name": "Areo Hotah"}, {"name": "Ellaria Sand"}, {"name": "Doran Martell"}, {"name": "Obara Sand"}, {"name": "Tyene Sand"}, {"name": "Nymeria Sand"}]}
5	9	0:28:57	0:30:43	Dorne	The Water Gardens	{"characters": [{"name": "Jaime Lannister"}, {"name": "Ellaria Sand"}]}
5	9	0:30:43	0:33:36	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Shireen Baratheon"}, {"name": "Stannis Baratheon", "title": "King"}]}
5	9	0:33:36	0:36:42	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Shireen Baratheon", "alive": false, "mannerOfDeath": "Burning", "killedBy": ["Melisandre"]}, {"name": "Melisandre"}, {"name": "Stannis Baratheon", "title": "King"}, {"name": "Selyse Baratheon"}]}
5	9	0:36:42	0:37:02	Meereen	NULL	{"characters": []}
5	9	0:37:02	0:37:30	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}, {"name": "Missandei"}, {"name": "Hizdahr zo Loraq"}]}
5	9	0:37:30	0:38:58	Meereen	NULL	{"characters": [{"name": "Pit Announcer"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Hizdahr zo Loraq"}, {"name": "Tyrion Lannister"}, {"name": "Daario Naharis"}, {"name": "Missandei"}]}
5	9	0:38:58	0:41:31	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Hizdahr zo Loraq"}, {"name": "Daario Naharis"}, {"name": "Missandei"}, {"name": "Tyrion Lannister"}]}
5	9	0:41:31	0:42:20	Meereen	NULL	{"characters": [{"name": "Pit Announcer"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Hizdahr zo Loraq"}, {"name": "Tyrion Lannister"}, {"name": "Daario Naharis"}, {"name": "Missandei"}]}
5	9	0:42:20	0:46:54	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Hizdahr zo Loraq"}, {"name": "Tyrion Lannister"}, {"name": "Daario Naharis"}, {"name": "Missandei"}, {"name": "Jorah Mormont"}]}
5	9	0:46:54	0:47:04	Meereen	NULL	{"characters": []}
5	9	0:47:04	0:48:12	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}, {"name": "Hizdahr zo Loraq", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Sons of the Harpy"]}, {"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}, {"name": "Missandei"}]}
5	9	0:48:12	0:50:23	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}, {"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}, {"name": "Missandei"}]}
5	9	0:50:23	0:51:56	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}, {"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}, {"name": "Missandei"}, {"name": "Drogon"}]}
5	9	0:51:56	0:52:10	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}]}
5	9	0:52:10	0:52:55	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}, {"name": "Jorah Mormont"}, {"name": "Tyrion Lannister"}, {"name": "Missandei"}, {"name": "Drogon"}]}
5	9	0:52:55	0:53:10	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}]}
5	9	0:53:10	0:53:25	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Tyrion Lannister"}, {"name": "Daario Naharis"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}]}
5	10	0:05:10	0:05:25	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Melisandre"}]}
5	10	0:05:25	0:05:54	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Melisandre"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
5	10	0:05:54	0:06:37	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Melisandre"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Baratheon General"}]}
5	10	0:06:37	0:06:50	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Melisandre"}, {"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Baratheon General"}, {"name": "Baratheon Soldier #1"}]}
5	10	0:06:50	0:07:56	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Baratheon Soldier #1"}, {"name": "Baratheon Soldier #2"}, {"name": "Selyse Baratheon", "alive": false, "mannerOfDeath": "Hanging", "killedBy": ["Selyse Baratheon"]}, {"name": "Baratheon General"}]}
5	10	0:07:56	0:11:39	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Samwell Tarly"}]}
5	10	0:11:39	0:12:08	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Gilly"}, {"name": "Baby Sam"}, {"name": "Samwell Tarly"}]}
5	10	0:12:08	0:12:46	The North	Outside Winterfell	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Baratheon General"}]}
5	10	0:12:46	0:13:02	The North	Winterfell	{"characters": []}
5	10	0:13:02	0:13:30	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}]}
5	10	0:13:30	0:13:47	The North	Outside Winterfell	{"characters": [{"name": "Podrick Payne"}]}
5	10	0:13:47	0:14:15	The North	Outside Winterfell	{"characters": [{"name": "Podrick Payne"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
5	10	0:14:15	0:14:25	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}]}
5	10	0:14:25	0:14:46	The North	Outside Winterfell	{"characters": [{"name": "Podrick Payne"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
5	10	0:14:46	0:15:13	The North	Outside Winterfell	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Baratheon General"}]}
5	10	0:15:13	0:15:31	The North	Outside Winterfell	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
5	10	0:15:31	0:15:41	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}]}
5	10	0:15:41	0:15:59	The North	Outside Winterfell	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Baratheon General"}]}
5	10	0:15:59	0:16:11	The North	Outside Winterfell	{"characters": []}
5	10	0:16:11	0:16:15	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}]}
5	10	0:16:15	0:16:20	The North	Outside Winterfell	{"characters": []}
5	10	0:16:20	0:16:25	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}]}
5	10	0:16:25	0:17:08	The North	The Wolfswood	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Baratheon General", "alive": false, "mannerOfDeath": "Multiple stabs"}]}
5	10	0:17:08	0:17:29	The North	The Wolfswood	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Gordy", "alive": false, "mannerOfDeath": "Neck stab", "killedBy": ["Stannis Baratheon"]}, {"name": "Simpson", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Stannis Baratheon"]}]}
5	10	0:17:29	0:17:57	The North	The Wolfswood	{"characters": [{"name": "Stannis Baratheon", "title": "King", "weapon": [{"action": "has", "name": "Lightbringer"}]}]}
5	10	0:17:57	0:19:28	The North	The Wolfswood	{"characters": [{"name": "Stannis Baratheon", "title": "King", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Brienne of Tarth"], "weapon": [{"action": "has", "name": "Lightbringer"}]}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
5	10	0:19:28	0:20:13	The North	Outside Winterfell	{"characters": [{"name": "Ramsay Snow"}]}
5	10	0:20:13	0:20:20	The North	Outside Winterfell	{"characters": []}
5	10	0:20:20	0:20:40	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}]}
5	10	0:20:40	0:22:10	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Myranda", "alive": false, "mannerOfDeath": "Falling", "killedBy": ["Theon Greyjoy"]}, {"name": "Theon Greyjoy"}]}
5	10	0:22:10	0:22:16	The North	Winterfell	{"characters": []}
5	10	0:22:16	0:22:50	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Theon Greyjoy"}]}
5	10	0:22:50	0:24:06	Braavos	NULL	{"characters": [{"name": "Meryn Trant"}, {"name": "Brothel Child #1"}, {"name": "Brothel Child #2"}, {"name": "Ghita"}]}
5	10	0:24:06	0:24:28	Braavos	NULL	{"characters": [{"name": "Meryn Trant"}, {"name": "Ghita"}]}
5	10	0:24:28	0:26:05	Braavos	NULL	{"characters": [{"name": "Meryn Trant", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Arya Stark"]}, {"name": "Arya Stark"}]}
5	10	0:26:05	0:26:42	Braavos	NULL	{"characters": [{"name": "Arya Stark"}]}
5	10	0:26:42	0:27:41	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "The Waif"}, {"name": "Jaqen H'ghar", "alive": false, "mannerOfDeath": "Poison", "killedBy": ["Jaqen H'ghar"]}]}
5	10	0:27:41	0:28:55	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
5	10	0:28:55	0:29:58	Dorne	NULL	{"characters": [{"name": "Doran Martell"}, {"name": "Myrcella Baratheon"}, {"name": "Areo Hotah"}, {"name": "Obara Sand"}, {"name": "Tyene Sand"}, {"name": "Nymeria Sand"}, {"name": "Bronn"}, {"name": "Trystane Martell"}, {"name": "Jaime Lannister"}, {"name": "Ellaria Sand"}]}
5	10	0:29:58	0:33:07	Dorne	NULL	{"characters": [{"name": "Myrcella Baratheon", "alive": false, "mannerOfDeath": "Poison", "killedBy": ["Ellaria Sand"]}, {"name": "Jaime Lannister"}]}
5	10	0:33:07	0:33:57	Dorne	NULL	{"characters": [{"name": "Ellaria Sand"}, {"name": "Obara Sand"}, {"name": "Tyene Sand"}, {"name": "Nymeria Sand"}]}
5	10	0:33:57	0:34:03	Dorne	NULL	{"characters": []}
5	10	0:34:03	0:34:54	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Daario Naharis"}, {"name": "Jorah Mormont"}]}
5	10	0:34:54	0:38:16	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Daario Naharis"}, {"name": "Jorah Mormont"}, {"name": "Grey Worm"}, {"name": "Missandei"}]}
5	10	0:38:16	0:38:34	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Grey Worm"}, {"name": "Missandei"}]}
5	10	0:38:34	0:40:01	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}]}
5	10	0:40:01	0:41:58	The Dothraki Sea	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}]}
5	10	0:41:58	0:43:55	The Dothraki Sea	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
5	10	0:43:55	0:44:37	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Septa Unella"}]}
5	10	0:44:37	0:48:04	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "High Sparrow"}]}
5	10	0:48:04	0:49:48	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Septa Moelle"}, {"name": "Septa Scolera"}, {"name": "Septa Unella"}]}
5	10	0:49:48	0:50:01	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
5	10	0:50:01	0:52:04	The Crownlands	King's Landing	{"characters": [{"name": "Septa Moelle"}, {"name": "Septa Scolera"}, {"name": "Septa Unella"}, {"name": "Cersei Lannister"}, {"name": "High Sparrow"}]}
5	10	0:52:04	0:53:50	The Crownlands	King's Landing	{"characters": [{"name": "Septa Unella"}, {"name": "Cersei Lannister"}, {"name": "King's Landing Drunkard"}, {"name": "King's Landing Whore"}, {"name": "King's Landing Flasher #1"}, {"name": "King's Landing Flasher #2"}]}
5	10	0:53:50	0:56:02	The Crownlands	King's Landing	{"characters": [{"name": "Septa Unella"}, {"name": "Cersei Lannister"}]}
5	10	0:56:02	0:56:40	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Kevan Lannister", "title": "Hand"}, {"name": "Grand Maester Pycelle"}, {"name": "Qyburn"}]}
5	10	0:56:40	0:57:12	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Kevan Lannister", "title": "Hand"}, {"name": "Grand Maester Pycelle"}, {"name": "Qyburn"}, {"name": "Gregor Clegane"}]}
5	10	0:57:12	0:57:36	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Davos Seaworth"}]}
5	10	0:57:36	0:58:21	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Davos Seaworth"}, {"name": "Melisandre"}]}
5	10	0:58:21	0:59:00	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
5	10	0:59:00	0:59:17	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Olly"}]}
5	10	0:59:17	0:59:34	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Olly"}, {"name": "Alliser Thorne"}]}
5	10	0:59:34	1:01:29	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Olly"}, {"name": "Alliser Thorne"}, {"name": "Othell Yarwyck"}, {"name": "Bowen Marsh"}]}
5	10	1:01:29	1:02:01	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Olly", "Alliser Thorne", "Othell Yarwyck", "Bowen Marsh"]}]}
6	1	0:07:04	0:08:03	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "alive": false}]}
6	1	0:08:03	0:08:09	The Wall	Castle Black	{"characters": [{"name": "Ghost"}]}
6	1	0:08:09	0:08:48	The Wall	Castle Black	{"characters": [{"name": "Davos Seaworth"}, {"name": "Jon Snow", "alive": false}]}
6	1	0:08:48	0:09:17	The Wall	Castle Black	{"characters": [{"name": "Davos Seaworth"}, {"name": "Jon Snow", "alive": false}, {"name": "Eddison Tollett"}, {"name": "Loyal Night's Watchman #1"}, {"name": "Loyal Night's Watchman #2"}]}
6	1	0:09:17	0:10:33	The Wall	Castle Black	{"characters": [{"name": "Davos Seaworth"}, {"name": "Jon Snow", "alive": false}, {"name": "Eddison Tollett"}, {"name": "Loyal Night's Watchman #1"}, {"name": "Loyal Night's Watchman #2"}]}
6	1	0:10:33	0:11:36	The Wall	Castle Black	{"characters": [{"name": "Davos Seaworth"}, {"name": "Jon Snow", "alive": false}, {"name": "Melisandre"}, {"name": "Loyal Night's Watchman #1"}, {"name": "Loyal Night's Watchman #2"}]}
6	1	0:11:36	0:13:33	The Wall	Castle Black	{"characters": [{"name": "Alliser Thorne"}, {"name": "Othell Yarwyck"}, {"name": "Bowen Marsh"}, {"name": "Olly"}, {"name": "Night's Watchman #1"}, {"name": "Night's Watchman #2"}]}
6	1	0:13:33	0:14:41	The Wall	Castle Black	{"characters": [{"name": "Ghost"}, {"name": "Jon Snow", "alive": false}, {"name": "Davos Seaworth"}, {"name": "Eddison Tollett"}, {"name": "Loyal Night's Watchman #1"}, {"name": "Loyal Night's Watchman #2"}]}
6	1	0:14:41	0:14:47	The North	Winterfell	{"characters": []}
6	1	0:14:47	0:16:03	The North	Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Myranda", "alive": false}, {"name": "Maester Wolkan"}]}
6	1	0:16:03	0:17:28	The North	Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Roose Bolton"}]}
6	1	0:17:28	0:19:57	The North	The Wolfswood	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Sansa Stark"}]}
6	1	0:19:57	0:20:52	The North	The Wolfswood	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Bolton Officer"}, {"name": "Bolton Soldier"}, {"name": "Sansa Stark"}]}
6	1	0:20:52	0:22:42	The North	The Wolfswood	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Bolton Officer", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Brienne of Tarth"]}, {"name": "Bolton Soldier", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Podrick Payne"]}, {"name": "Sansa Stark"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}]}
6	1	0:22:42	0:24:12	The North	The Wolfswood	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Sansa Stark"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}]}
6	1	0:24:12	0:24:27	The Crownlands	Blackwater Bay	{"characters": []}
6	1	0:24:27	0:24:47	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
6	1	0:24:47	0:24:59	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Handmaid"}]}
6	1	0:24:59	0:25:51	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Gregor Clegane"}, {"name": "Jaime Lannister"}]}
6	1	0:25:51	0:28:40	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Jaime Lannister"}]}
6	1	0:28:40	0:29:19	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Septa Unella"}]}
6	1	0:29:19	0:29:29	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Septa Unella"}, {"name": "High Sparrow"}]}
6	1	0:29:29	0:30:44	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "High Sparrow"}]}
6	1	0:30:44	0:31:26	Dorne	The Water Gardens	{"characters": [{"name": "Areo Hotah"}, {"name": "Ellaria Sand"}, {"name": "Doran Martell"}, {"name": "Tyene Sand"}]}
6	1	0:31:26	0:32:06	Dorne	The Water Gardens	{"characters": [{"name": "Areo Hotah", "alive": false, "mannerOfDeath": "Back stab", "killedBy": ["Tyene Sand"]}, {"name": "Ellaria Sand"}, {"name": "Doran Martell"}, {"name": "Tyene Sand"}, {"name": "Maester Caleotte", "alive": false, "mannerOfDeath": "Back stab", "killedBy": ["Tyene Sand"]}]}
6	1	0:32:06	0:32:59	Dorne	The Water Gardens	{"characters": [{"name": "Ellaria Sand"}, {"name": "Doran Martell", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Ellaria Sand"]}, {"name": "Tyene Sand"}]}
6	1	0:32:59	0:34:09	The Crownlands	Blackwater Bay	{"characters": [{"name": "Trystane Martell", "alive": false, "mannerOfDeath": "Face stab", "killedBy": ["Obara Sand"]}, {"name": "Obara Sand"}, {"name": "Nymeria Sand"}]}
6	1	0:34:09	0:34:44	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}]}
6	1	0:34:44	0:35:22	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}, {"name": "Meereenese Homeless Mother"}]}
6	1	0:35:22	0:36:00	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}]}
6	1	0:36:00	0:36:31	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}, {"name": "Zanrush"}]}
6	1	0:36:31	0:37:42	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}]}
6	1	0:37:42	0:37:48	Meereen	NULL	{"characters": []}
6	1	0:37:48	0:40:39	The Dothraki Sea	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Daario Naharis"}]}
6	1	0:40:39	0:40:51	The Dothraki Sea	NULL	{"characters": []}
6	1	0:40:51	0:42:08	The Dothraki Sea	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Akho"}, {"name": "Qhono"}]}
6	1	0:42:08	0:42:27	The Dothraki Sea	NULL	{"characters": []}
6	1	0:42:27	0:42:48	The Dothraki Sea	NULL	{"characters": [{"name": "Qhono"}, {"name": "Akho"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
6	1	0:42:48	0:46:28	The Dothraki Sea	NULL	{"characters": [{"name": "Qhono"}, {"name": "Akho"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Khal Moro"}, {"name": "Moro's Wife #1"}, {"name": "Moro's Wife #2"}, {"name": "Dothraki Bloodrider #1"}, {"name": "Dothraki Bloodrider #2"}]}
6	1	0:46:28	0:47:32	Braavos	NULL	{"characters": [{"name": "Arya Stark"}]}
6	1	0:47:32	0:48:46	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "The Waif"}]}
6	1	0:48:46	0:50:28	The Wall	Castle Black	{"characters": [{"name": "Alliser Thorne"}, {"name": "Bowen Marsh"}, {"name": "Othell Yarwyck"}, {"name": "Davos Seaworth"}, {"name": "Loyal Night's Watchman #1"}, {"name": "Loyal Night's Watchman #2"}, {"name": "Ghost"}, {"name": "Jon Snow", "alive": false}]}
6	1	0:50:28	0:51:04	The Wall	Castle Black	{"characters": [{"name": "Davos Seaworth"}, {"name": "Loyal Night's Watchman #1"}, {"name": "Loyal Night's Watchman #2"}, {"name": "Ghost"}, {"name": "Jon Snow", "alive": false}]}
6	1	0:51:04	0:53:45	The Wall	Castle Black	{"characters": [{"name": "Melisandre"}]}
6	2	0:04:53	0:05:24	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}]}
6	2	0:05:24	0:06:05	The North	Winterfell	{"characters": [{"name": "Young Ned Stark"}, {"name": "Young Rodrik Cassel"}, {"name": "Young Benjen Stark"}, {"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}]}
6	2	0:06:05	0:06:37	The North	Winterfell	{"characters": [{"name": "Young Ned Stark"}, {"name": "Young Rodrik Cassel"}, {"name": "Young Benjen Stark"}, {"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}, {"name": "Young Lyanna Stark"}]}
6	2	0:06:37	0:07:07	The North	Winterfell	{"characters": [{"name": "Young Ned Stark"}, {"name": "Young Benjen Stark"}, {"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}, {"name": "Young Lyanna Stark"}, {"name": "Wyllis"}]}
6	2	0:07:07	0:07:29	The North	Winterfell	{"characters": [{"name": "Young Ned Stark"}, {"name": "Young Benjen Stark"}, {"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}, {"name": "Young Lyanna Stark"}, {"name": "Wyllis"}, {"name": "Young Nan"}]}
6	2	0:07:29	0:08:07	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}, {"name": "Leaf"}]}
6	2	0:08:07	0:08:32	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Bran Stark"}, {"name": "Hodor"}]}
6	2	0:08:32	0:09:45	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Meera Reed"}, {"name": "Hodor"}, {"name": "Bran Stark"}]}
6	2	0:09:45	0:10:27	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Meera Reed"}, {"name": "Leaf"}]}
6	2	0:10:27	0:10:40	The Wall	Castle Black	{"characters": []}
6	2	0:10:40	0:12:02	The Wall	Castle Black	{"characters": [{"name": "Alliser Thorne"}, {"name": "Jon Snow", "alive": false}, {"name": "Davos Seaworth", "weapon": [{"action": "takes", "name": "Longclaw"}]}, {"name": "Olly"}, {"name": "Othell Yarwyck"}, {"name": "Bowen Marsh"}, {"name": "Ghost"}, {"name": "Loyal Night's Watchman #1"}, {"name": "Loyal Night's Watchman #2"}]}
6	2	0:12:02	0:13:03	The Wall	Castle Black	{"characters": [{"name": "Wun Wun"}, {"name": "Tormund Giantsbane"}, {"name": "Eddison Tollett"}, {"name": "Alliser Thorne"}, {"name": "Olly"}]}
6	2	0:13:03	0:13:39	The Wall	Castle Black	{"characters": [{"name": "Davos Seaworth", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Alliser Thorne"}, {"name": "Tormund Giantsbane"}, {"name": "Eddison Tollett"}, {"name": "Olly"}]}
6	2	0:13:39	0:14:10	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "alive": false}, {"name": "Tormund Giantsbane"}, {"name": "Eddison Tollett"}, {"name": "Davos Seaworth", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
6	2	0:14:10	0:14:19	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "alive": false}, {"name": "Eddison Tollett"}, {"name": "Davos Seaworth", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
6	2	0:14:19	0:14:56	The Crownlands	King's Landing	{"characters": [{"name": "King's Landing Boaster"}]}
6	2	0:14:56	0:15:30	The Crownlands	King's Landing	{"characters": [{"name": "King's Landing Boaster", "alive": false, "mannerOfDeath": "Head crush", "killedBy": ["Gregor Clegane"]}, {"name": "Gregor Clegane"}]}
6	2	0:15:30	0:15:43	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
6	2	0:15:43	0:16:04	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Gregor Clegane"}]}
6	2	0:16:04	0:17:00	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Gregor Clegane"}, {"name": "Lannister Captain"}]}
6	2	0:17:00	0:18:36	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King"}, {"name": "Jaime Lannister"}, {"name": "Myrcella Baratheon", "alive": false}]}
6	2	0:18:36	0:19:13	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King"}, {"name": "Jaime Lannister"}, {"name": "Myrcella Baratheon", "alive": false}, {"name": "High Sparrow"}]}
6	2	0:19:13	0:21:44	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Myrcella Baratheon", "alive": false}, {"name": "High Sparrow"}]}
6	2	0:21:44	0:23:45	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tommen Baratheon", "title": "King"}]}
6	2	0:23:45	0:26:04	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}, {"name": "Missandei"}, {"name": "Grey Worm"}]}
6	2	0:26:04	0:27:03	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}]}
6	2	0:27:03	0:29:35	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Rhaegal"}, {"name": "Viserion"}]}
6	2	0:29:35	0:29:56	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}]}
6	2	0:29:56	0:30:33	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "The Waif"}]}
6	2	0:30:33	0:30:48	Braavos	NULL	{"characters": [{"name": "Arya Stark"}]}
6	2	0:30:48	0:31:53	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
6	2	0:31:53	0:33:25	The North	Winterfell	{"characters": [{"name": "Roose Bolton"}, {"name": "Ramsay Snow"}, {"name": "Harald Karstark"}]}
6	2	0:33:25	0:35:38	The North	Winterfell	{"characters": [{"name": "Roose Bolton", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Ramsay Snow"]}, {"name": "Ramsay Snow"}, {"name": "Harald Karstark"}, {"name": "Maester Wolkan"}]}
6	2	0:35:38	0:38:30	The North	Winterfell	{"characters": [{"name": "Walda Bolton", "alive": false, "mannerOfDeath": "Mauling", "killedBy": ["Ramsay Snow"]}, {"name": "Ramsay Snow"}, {"name": "Newborn Bolton", "alive": false, "mannerOfDeath": "Mauling", "killedBy": ["Ramsay Snow"]}]}
6	2	0:38:30	0:38:50	The North	The Wolfswood	{"characters": [{"name": "Sansa Stark"}, {"name": "Theon Greyjoy"}, {"name": "Podrick Payne"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
6	2	0:38:50	0:39:30	The North	The Wolfswood	{"characters": [{"name": "Sansa Stark"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
6	2	0:39:30	0:41:26	The North	The Wolfswood	{"characters": [{"name": "Sansa Stark"}, {"name": "Theon Greyjoy"}, {"name": "Podrick Payne"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
6	2	0:41:26	0:43:04	The Iron Islands	Pyke	{"characters": [{"name": "Balon Greyjoy", "title": "King"}, {"name": "Yara Greyjoy"}]}
6	2	0:43:04	0:45:39	The Iron Islands	Pyke	{"characters": [{"name": "Balon Greyjoy", "title": "King", "alive": false, "mannerOfDeath": "Falling", "killedBy": ["Euron Greyjoy"]}, {"name": "Yara Greyjoy"}, {"name": "Euron Greyjoy"}]}
6	2	0:45:39	0:47:06	The Iron Islands	Pyke	{"characters": [{"name": "Balon Greyjoy", "title": "King", "alive": false}, {"name": "Yara Greyjoy"}, {"name": "Aeron Greyjoy"}]}
6	2	0:47:06	0:49:45	The Wall	Castle Black	{"characters": [{"name": "Melisandre"}, {"name": "Davos Seaworth"}]}
6	2	0:49:45	0:54:07	The Wall	Castle Black	{"characters": [{"name": "Melisandre"}, {"name": "Jon Snow", "alive": false}, {"name": "Davos Seaworth"}, {"name": "Eddison Tollett"}, {"name": "Tormund Giantsbane"}, {"name": "Ghost"}]}
6	2	0:54:07	0:54:21	The Wall	Castle Black	{"characters": [{"name": "Melisandre"}, {"name": "Jon Snow", "alive": false}, {"name": "Davos Seaworth"}, {"name": "Eddison Tollett"}, {"name": "Ghost"}]}
6	2	0:54:21	0:54:57	The Wall	Castle Black	{"characters": [{"name": "Ghost"}, {"name": "Jon Snow", "alive": false}, {"name": "Davos Seaworth"}]}
6	2	0:54:57	0:55:18	The Wall	Castle Black	{"characters": [{"name": "Ghost"}, {"name": "Jon Snow"}]}
6	3	0:05:24	0:06:33	The Wall	Castle Black	{"characters": [{"name": "Davos Seaworth"}, {"name": "Jon Snow"}, {"name": "Ghost"}]}
6	3	0:06:33	0:08:05	The Wall	Castle Black	{"characters": [{"name": "Davos Seaworth"}, {"name": "Jon Snow"}, {"name": "Melisandre"}]}
6	3	0:08:05	0:09:20	The Wall	Castle Black	{"characters": [{"name": "Davos Seaworth"}, {"name": "Jon Snow"}]}
6	3	0:09:20	0:11:15	The Wall	Castle Black	{"characters": [{"name": "Eddison Tollett"}, {"name": "Davos Seaworth"}, {"name": "Jon Snow"}, {"name": "Tormund Giantsbane"}]}
6	3	0:11:15	0:15:04	The Reach	To Horn Hill	{"characters": [{"name": "Gilly"}, {"name": "Samwell Tarly"}, {"name": "Baby Sam"}]}
6	3	0:15:04	0:17:49	Dorne	Tower of Joy	{"characters": [{"name": "Arthur Dayne", "weapon": [{"action": "has", "name": "Dawn"}]}, {"name": "Gerold Hightower", "alive": false, "mannerOfDeath": "Neck stab", "killedBy": ["Young Ned Stark"], "weapon": [{"action": "has", "name": "Vigilance"}]}, {"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}, {"name": "Young Ned Stark"}, {"name": "Howland Reed"}]}
6	3	0:17:49	0:19:50	Dorne	Tower of Joy	{"characters": [{"name": "Arthur Dayne", "alive": false, "mannerOfDeath": "Back stab", "killedBy": ["Howland Reed", "Young Ned Stark"], "weapon": [{"action": "has", "name": "Dawn"}]}, {"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}, {"name": "Young Ned Stark"}, {"name": "Howland Reed"}]}
6	3	0:19:50	0:20:27	Dorne	Tower of Joy	{"characters": [{"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}, {"name": "Young Ned Stark"}, {"name": "Howland Reed"}]}
6	3	0:20:27	0:21:37	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Bran Stark"}, {"name": "Three-Eyed Raven"}, {"name": "Leaf"}]}
6	3	0:21:37	0:22:34	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Akho"}, {"name": "Qhono"}]}
6	3	0:22:34	0:22:45	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Khal Moro"}, {"name": "Akho"}, {"name": "Qhono"}]}
6	3	0:22:45	0:23:06	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Akho"}, {"name": "Qhono"}, {"name": "High Priestess"}]}
6	3	0:23:06	0:25:21	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "High Priestess"}, {"name": "Ornela"}, {"name": "Dothraki Widow #1"}, {"name": "Dothraki Widow #2"}]}
6	3	0:25:21	0:29:02	Meereen	NULL	{"characters": [{"name": "Lord Varys"}, {"name": "Vala"}]}
6	3	0:29:02	0:31:12	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Grey Worm"}, {"name": "Missandei"}]}
6	3	0:31:12	0:32:25	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Grey Worm"}, {"name": "Missandei"}, {"name": "Lord Varys"}]}
6	3	0:32:25	0:33:30	The Crownlands	King's Landing	{"characters": [{"name": "Qyburn"}, {"name": "Frances"}, {"name": "Arthur"}, {"name": "Little Bird #3"}, {"name": "Little Bird #4"}, {"name": "Little Bird #5"}, {"name": "Little Bird #6"}, {"name": "Little Bird #7"}]}
6	3	0:33:30	0:33:50	The Crownlands	King's Landing	{"characters": [{"name": "Qyburn"}, {"name": "Frances"}, {"name": "Arthur"}, {"name": "Little Bird #3"}, {"name": "Little Bird #4"}, {"name": "Little Bird #5"}, {"name": "Little Bird #6"}, {"name": "Little Bird #7"}, {"name": "Gregor Clegane"}, {"name": "Jaime Lannister"}, {"name": "Cersei Lannister"}]}
6	3	0:33:50	0:35:09	The Crownlands	King's Landing	{"characters": [{"name": "Qyburn"}, {"name": "Gregor Clegane"}, {"name": "Jaime Lannister"}, {"name": "Cersei Lannister"}]}
6	3	0:35:09	0:35:22	The Crownlands	King's Landing	{"characters": [{"name": "Mace Tyrell"}, {"name": "Olenna Tyrell"}, {"name": "Kevan Lannister", "title": "Hand"}, {"name": "Grand Maester Pycelle"}]}
6	3	0:35:22	0:37:18	The Crownlands	King's Landing	{"characters": [{"name": "Mace Tyrell"}, {"name": "Olenna Tyrell"}, {"name": "Kevan Lannister", "title": "Hand"}, {"name": "Grand Maester Pycelle"}, {"name": "Gregor Clegane"}, {"name": "Jaime Lannister"}, {"name": "Cersei Lannister"}]}
6	3	0:37:18	0:37:33	The Crownlands	King's Landing	{"characters": [{"name": "Grand Maester Pycelle"}, {"name": "Gregor Clegane"}, {"name": "Jaime Lannister"}, {"name": "Cersei Lannister"}]}
6	3	0:37:33	0:41:21	The Crownlands	King's Landing	{"characters": [{"name": "High Sparrow"}, {"name": "Tommen Baratheon", "title": "King"}]}
6	3	0:41:21	0:43:22	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "The Waif"}]}
6	3	0:43:22	0:43:42	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "The Waif"}, {"name": "Jaqen H'ghar"}]}
6	3	0:43:42	0:44:28	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "The Waif"}]}
6	3	0:44:28	0:44:47	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "The Waif"}, {"name": "Jaqen H'ghar"}]}
6	3	0:44:47	0:46:21	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
6	3	0:46:21	0:46:31	The North	Winterfell	{"characters": [{"name": "Smalljon Umber"}]}
6	3	0:46:31	0:48:31	The North	Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Harald Karstark"}, {"name": "Smalljon Umber"}]}
6	3	0:48:31	0:49:20	The North	Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Harald Karstark"}, {"name": "Smalljon Umber"}, {"name": "Osha"}, {"name": "Rickon Stark"}]}
6	3	0:49:20	0:49:47	The North	Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Harald Karstark"}, {"name": "Smalljon Umber"}, {"name": "Osha"}, {"name": "Rickon Stark"}, {"name": "Shaggydog", "alive": false, "mannerOfDeath": "Decapitation", "killedBy": ["Smalljon Umber"]}]}
6	3	0:49:47	0:50:06	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Eddison Tollett"}]}
6	3	0:50:06	0:50:28	The Wall	Castle Black	{"characters": [{"name": "Melisandre"}, {"name": "Tormund Giantsbane"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Davos Seaworth"}, {"name": "Eddison Tollett"}]}
6	3	0:50:28	0:53:00	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Eddison Tollett"}, {"name": "Alliser Thorne", "alive": false, "mannerOfDeath": "Hanging", "killedBy": ["Jon Snow"]}, {"name": "Othell Yarwyck", "alive": false, "mannerOfDeath": "Hanging", "killedBy": ["Jon Snow"]}, {"name": "Bowen Marsh", "alive": false, "mannerOfDeath": "Hanging", "killedBy": ["Jon Snow"]}, {"name": "Olly", "alive": false, "mannerOfDeath": "Hanging", "killedBy": ["Jon Snow"]}, {"name": "Tormund Giantsbane"}, {"name": "Davos Seaworth"}, {"name": "Melisandre"}]}
6	3	0:53:00	0:53:33	The Wall	Castle Black	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Olly", "alive": false}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Eddison Tollett"}, {"name": "Alliser Thorne", "alive": false}, {"name": "Othell Yarwyck", "alive": false}, {"name": "Bowen Marsh", "alive": false}]}
6	3	0:53:33	0:54:13	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Eddison Tollett"}]}
6	4	0:05:08	0:06:15	The Wall	Castle Black	{"characters": [{"name": "Eddison Tollett", "weapon": [{"action": "gives", "name": "Longclaw"}]}, {"name": "Jon Snow", "weapon": [{"action": "receives", "name": "Longclaw"}]}]}
6	4	0:06:15	0:06:47	The Wall	Castle Black	{"characters": [{"name": "Sansa Stark"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}, {"name": "Tormund Giantsbane"}]}
6	4	0:06:47	0:07:37	The Wall	Castle Black	{"characters": [{"name": "Sansa Stark"}, {"name": "Eddison Tollett"}, {"name": "Jon Snow"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}, {"name": "Tormund Giantsbane"}]}
6	4	0:07:37	0:10:37	The Wall	Castle Black	{"characters": [{"name": "Jon Snow"}, {"name": "Sansa Stark"}]}
6	4	0:10:37	0:11:26	The Wall	Castle Black	{"characters": [{"name": "Melisandre"}, {"name": "Davos Seaworth"}]}
6	4	0:11:26	0:12:16	The Wall	Castle Black	{"characters": [{"name": "Melisandre"}, {"name": "Davos Seaworth"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
6	4	0:12:16	0:12:35	The Vale	Runestone	{"characters": [{"name": "Robin Arryn"}, {"name": "Yohn Royce"}]}
6	4	0:12:35	0:12:39	The Vale	Runestone	{"characters": []}
6	4	0:12:39	0:15:20	The Vale	Runestone	{"characters": [{"name": "Robin Arryn"}, {"name": "Yohn Royce"}, {"name": "Petyr Baelish"}]}
6	4	0:15:20	0:15:44	The Vale	Runestone	{"characters": [{"name": "Robin Arryn"}, {"name": "Petyr Baelish"}]}
6	4	0:15:44	0:15:53	The Vale	Runestone	{"characters": [{"name": "Robin Arryn"}, {"name": "Petyr Baelish"}, {"name": "Yohn Royce"}]}
6	4	0:15:53	0:16:41	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Missandei"}, {"name": "Grey Worm"}, {"name": "Lord Varys"}]}
6	4	0:16:41	0:19:31	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Missandei"}, {"name": "Grey Worm"}, {"name": "Lord Varys"}, {"name": "Yezzan zo Qaggaz"}, {"name": "Razdal mo Eraz"}, {"name": "Belicho Paenymion"}]}
6	4	0:19:31	0:21:49	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Missandei"}, {"name": "Grey Worm"}, {"name": "Kesh"}, {"name": "Ash"}]}
6	4	0:21:49	0:22:57	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Missandei"}, {"name": "Grey Worm"}]}
6	4	0:22:57	0:25:56	Vaes Dothrak	NULL	{"characters": [{"name": "Daario Naharis"}, {"name": "Jorah Mormont"}]}
6	4	0:25:56	0:26:22	Vaes Dothrak	NULL	{"characters": [{"name": "Daario Naharis"}, {"name": "Jorah Mormont"}, {"name": "Dothraki Woman Having Sex", "sex": {"with": ["Dothraki Man Having Sex"], "when": "present", "type": "fun"}}, {"name": "Dothraki Man Having Sex", "sex": {"with": ["Dothraki Woman Having Sex"], "when": "present", "type": "fun"}}]}
6	4	0:26:22	0:28:40	Vaes Dothrak	NULL	{"characters": [{"name": "Daario Naharis"}, {"name": "Jorah Mormont"}, {"name": "Akho", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Daario Naharis"]}, {"name": "Iggo", "alive": false, "mannerOfDeath": "Neck snap", "killedBy": ["Daario Naharis"]}]}
6	4	0:28:40	0:29:51	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "High Priestess"}, {"name": "Ornela"}, {"name": "Dothraki Widow #1"}, {"name": "Dothraki Widow #2"}]}
6	4	0:29:51	0:31:05	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Ornela"}, {"name": "Jorah Mormont"}, {"name": "Daario Naharis"}]}
6	4	0:31:05	0:31:41	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Septa Unella"}]}
6	4	0:31:41	0:32:02	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Septa Unella"}, {"name": "High Sparrow"}]}
6	4	0:32:02	0:35:50	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "High Sparrow"}]}
6	4	0:35:50	0:37:41	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Loras Tyrell"}]}
6	4	0:37:41	0:38:46	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Grand Maester Pycelle"}, {"name": "Tommen Baratheon", "title": "King"}]}
6	4	0:38:46	0:40:57	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tommen Baratheon", "title": "King"}]}
6	4	0:40:57	0:43:33	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}, {"name": "Kevan Lannister", "title": "Hand"}, {"name": "Jaime Lannister"}, {"name": "Cersei Lannister"}]}
6	4	0:43:33	0:44:06	The Iron Islands	Pyke	{"characters": [{"name": "Theon Greyjoy"}]}
6	4	0:44:06	0:46:39	The Iron Islands	Pyke	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Yara Greyjoy"}]}
6	4	0:46:39	0:50:01	The North	Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Osha", "alive": false, "mannerOfDeath": "Throat stab", "killedBy": ["Ramsay Snow"]}]}
6	4	0:50:01	0:50:11	The Wall	Castle Black	{"characters": []}
6	4	0:50:11	0:51:00	The Wall	Castle Black	{"characters": [{"name": "Sansa Stark"}, {"name": "Brienne of Tarth"}, {"name": "Jon Snow"}, {"name": "Tormund Giantsbane"}, {"name": "Eddison Tollett"}, {"name": "Podrick Payne"}]}
6	4	0:51:00	0:51:17	The Wall	Castle Black	{"characters": [{"name": "Sansa Stark"}, {"name": "Brienne of Tarth"}, {"name": "Jon Snow"}, {"name": "Tormund Giantsbane"}, {"name": "Eddison Tollett"}, {"name": "Podrick Payne"}, {"name": "Night's Watchman"}]}
6	4	0:51:17	0:53:55	The Wall	Castle Black	{"characters": [{"name": "Sansa Stark"}, {"name": "Brienne of Tarth"}, {"name": "Jon Snow"}, {"name": "Tormund Giantsbane"}, {"name": "Eddison Tollett"}, {"name": "Podrick Payne"}]}
6	4	0:53:55	0:54:30	Vaes Dothrak	NULL	{"characters": [{"name": "Khal Moro"}, {"name": "Dothraki Bloodrider #1"}, {"name": "Dothraki Bloodrider #2"}, {"name": "Khal Forzho"}, {"name": "Khal Brozho"}, {"name": "Khal Rhalko"}, {"name": "Khal Qorro"}]}
6	4	0:54:40	0:54:46	Vaes Dothrak	NULL	{"characters": [{"name": "Khal Moro"}, {"name": "Dothraki Bloodrider #1"}, {"name": "Dothraki Bloodrider #2"}, {"name": "Khal Forzho"}, {"name": "Khal Brozho"}, {"name": "Khal Rhalko"}, {"name": "Khal Qorro"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "High Priestess"}, {"name": "Ornela"}]}
6	4	0:54:46	0:58:15	Vaes Dothrak	NULL	{"characters": [{"name": "Khal Moro"}, {"name": "Dothraki Bloodrider #1"}, {"name": "Dothraki Bloodrider #2"}, {"name": "Khal Forzho"}, {"name": "Khal Brozho"}, {"name": "Khal Rhalko"}, {"name": "Khal Qorro"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
6	4	0:58:15	0:58:23	Vaes Dothrak	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Daario Naharis"}]}
6	4	0:58:23	0:58:39	Vaes Dothrak	NULL	{"characters": [{"name": "Khal Moro", "alive": false, "mannerOfDeath": "Burning", "killedBy": ["Daenerys Targaryen"]}, {"name": "Dothraki Bloodrider #1", "alive": false, "mannerOfDeath": "Burning", "killedBy": ["Daenerys Targaryen"]}, {"name": "Dothraki Bloodrider #2", "alive": false, "mannerOfDeath": "Burning", "killedBy": ["Daenerys Targaryen"]}, {"name": "Khal Forzho", "alive": false, "mannerOfDeath": "Burning", "killedBy": ["Daenerys Targaryen"]}, {"name": "Khal Brozho", "alive": false, "mannerOfDeath": "Burning", "killedBy": ["Daenerys Targaryen"]}, {"name": "Khal Rhalko", "alive": false, "mannerOfDeath": "Burning", "killedBy": ["Daenerys Targaryen"]}, {"name": "Khal Qorro", "alive": false, "mannerOfDeath": "Burning", "killedBy": ["Daenerys Targaryen"]}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
6	4	0:58:39	0:59:08	Vaes Dothrak	NULL	{"characters": [{"name": "Qhono"}, {"name": "High Priestess"}, {"name": "Ornela"}]}
6	4	0:59:08	0:59:19	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "High Priestess"}, {"name": "Ornela"}]}
6	4	0:59:19	0:59:36	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
6	4	0:59:36	0:59:40	Vaes Dothrak	NULL	{"characters": [{"name": "Qhono"}]}
6	4	0:59:40	0:59:43	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
6	4	0:59:43	0:59:54	Vaes Dothrak	NULL	{"characters": [{"name": "High Priestess"}, {"name": "Ornela"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
6	4	0:59:54	1:00:33	Vaes Dothrak	NULL	{"characters": [{"name": "Jorah Mormont"}, {"name": "Daario Naharis"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
6	5	0:05:13	0:05:44	The Wall	Castle Black	{"characters": [{"name": "Sansa Stark"}]}
6	5	0:05:44	0:09:58	The Wall	Mole's Town	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
6	5	0:09:58	0:11:27	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "The Waif"}]}
6	5	0:11:27	0:11:36	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "The Waif"}, {"name": "Jaqen H'ghar"}]}
6	5	0:11:36	0:13:20	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
6	5	0:13:20	0:17:09	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Izembaro"}, {"name": "Lady Crane"}, {"name": "Camello"}, {"name": "Bobono"}, {"name": "Bianca"}, {"name": "Clarenzo"}, {"name": "Mummer #2"}, {"name": "Mummer #3"}, {"name": "Mummer #4"}, {"name": "Musician #1"}, {"name": "Musician #2"}, {"name": "Musician #3"}, {"name": "Musician #4"}, {"name": "Musician #5"}, {"name": "Braavosi Woman #1"}, {"name": "Braavosi Woman #2"}, {"name": "Braavosi Theatre Server"}, {"name": "Braavosi Theatre Sound Artist"}]}
6	5	0:17:09	0:18:05	Braavos	NULL	{"characters": [{"name": "Clarenzo"}, {"name": "Arya Stark"}, {"name": "Camello"}, {"name": "Lady Crane"}, {"name": "Izembaro"}, {"name": "Bianca"}, {"name": "Margaery Tyrell Mummer"}, {"name": "Bobono"}]}
6	5	0:18:05	0:19:12	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Jaqen H'ghar"}]}
6	5	0:19:12	0:19:22	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Bran Stark"}]}
6	5	0:19:22	0:19:32	North of the Wall	The Lands of Always Winter	{"characters": [{"name": "Bran Stark"}, {"name": "Three-Eyed Raven"}]}
6	5	0:19:32	0:19:35	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Bran Stark"}]}
6	5	0:19:35	0:19:41	North of the Wall	The Lands of Always Winter	{"characters": [{"name": "Bran Stark"}, {"name": "Three-Eyed Raven"}, {"name": "Leaf"}]}
6	5	0:19:41	0:19:43	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Bran Stark"}]}
6	5	0:19:43	0:19:49	North of the Wall	The Lands of Always Winter	{"characters": [{"name": "Bran Stark"}, {"name": "Three-Eyed Raven"}, {"name": "Leaf"}]}
6	5	0:19:49	0:19:54	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Three-Eyed Raven"}]}
6	5	0:19:54	0:20:15	North of the Wall	The Lands of Always Winter	{"characters": [{"name": "Bran Stark"}, {"name": "Three-Eyed Raven"}, {"name": "Leaf", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "The Night King", "title": "King"}]}
6	5	0:20:15	0:20:17	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Bran Stark"}]}
6	5	0:20:17	0:20:37	North of the Wall	The Lands of Always Winter	{"characters": [{"name": "Bran Stark"}, {"name": "Three-Eyed Raven"}, {"name": "Leaf", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "The Night King", "title": "King"}]}
6	5	0:20:37	0:21:12	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Bran Stark"}, {"name": "Leaf"}, {"name": "Three-Eyed Raven"}]}
6	5	0:21:12	0:23:40	The Iron Islands	Pyke	{"characters": [{"name": "Aeron Greyjoy"}, {"name": "Ironborn #1"}, {"name": "Ironborn #2"}, {"name": "Ironborn #3"}, {"name": "Theon Greyjoy"}, {"name": "Yara Greyjoy"}]}
6	5	0:23:40	0:26:52	The Iron Islands	Pyke	{"characters": [{"name": "Aeron Greyjoy"}, {"name": "Ironborn #1"}, {"name": "Ironborn #2"}, {"name": "Ironborn #3"}, {"name": "Theon Greyjoy"}, {"name": "Yara Greyjoy"}, {"name": "Euron Greyjoy"}]}
6	5	0:26:52	0:27:00	The Iron Islands	Pyke	{"characters": [{"name": "Aeron Greyjoy"}, {"name": "Euron Greyjoy"}]}
6	5	0:27:00	0:27:05	The Iron Islands	Pyke	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Yara Greyjoy"}]}
6	5	0:27:05	0:27:09	The Iron Islands	Pyke	{"characters": [{"name": "Aeron Greyjoy"}, {"name": "Euron Greyjoy"}]}
6	5	0:27:09	0:27:22	The Iron Islands	Pyke	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Yara Greyjoy"}]}
6	5	0:27:22	0:27:29	The Iron Islands	Pyke	{"characters": [{"name": "Aeron Greyjoy"}, {"name": "Euron Greyjoy"}]}
6	5	0:27:29	0:27:32	The Iron Islands	Pyke	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Yara Greyjoy"}]}
6	5	0:27:32	0:27:43	The Iron Islands	Pyke	{"characters": [{"name": "Aeron Greyjoy"}, {"name": "Euron Greyjoy", "alive": false, "mannerOfDeath": "Drowning", "killedBy": ["Aeron Greyjoy"]}]}
6	5	0:27:43	0:27:48	The Iron Islands	Pyke	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Yara Greyjoy"}]}
6	5	0:27:48	0:29:26	The Iron Islands	Pyke	{"characters": [{"name": "Aeron Greyjoy"}, {"name": "Euron Greyjoy", "title": "King"}]}
6	5	0:29:26	0:30:12	The Iron Islands	Pyke	{"characters": [{"name": "Aeron Greyjoy"}, {"name": "Euron Greyjoy", "title": "King"}]}
6	5	0:30:12	0:32:52	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Daario Naharis"}]}
6	5	0:32:52	0:33:24	Vaes Dothrak	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}, {"name": "Daario Naharis"}]}
6	5	0:33:24	0:34:33	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}, {"name": "Grey Worm"}, {"name": "Missandei"}]}
6	5	0:34:33	0:39:07	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}, {"name": "Zanrush"}, {"name": "Kinvara"}]}
6	5	0:39:07	0:40:10	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Bran Stark"}, {"name": "Hodor"}, {"name": "Three-Eyed Raven"}, {"name": "Meera Reed"}, {"name": "Summer"}]}
6	5	0:40:10	0:42:04	North of the Wall	The Lands of Always Winter	{"characters": [{"name": "Bran Stark"}]}
6	5	0:42:04	0:42:26	North of the Wall	The Lands of Always Winter	{"characters": [{"name": "Bran Stark"}, {"name": "The Night King", "title": "King"}, {"name": "White Walker"}]}
6	5	0:42:26	0:43:14	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Bran Stark"}, {"name": "Three-Eyed Raven"}, {"name": "Meera Reed"}, {"name": "Summer"}, {"name": "Leaf"}, {"name": "Hodor"}]}
6	5	0:43:14	0:45:45	The Wall	Castle Black	{"characters": [{"name": "Sansa Stark"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Eddison Tollett"}, {"name": "Brienne of Tarth"}, {"name": "Davos Seaworth"}, {"name": "Tormund Giantsbane"}, {"name": "Melisandre"}]}
6	5	0:45:45	0:46:58	The Wall	Castle Black	{"characters": [{"name": "Sansa Stark"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
6	5	0:46:58	0:47:33	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Melisandre"}, {"name": "Sansa Stark"}, {"name": "Tormund Giantsbane"}]}
6	5	0:47:33	0:48:06	The Wall	Castle Black	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Eddison Tollett"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
6	5	0:48:06	0:48:27	The Wall	Castle Black	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Sansa Stark"}, {"name": "Melisandre"}, {"name": "Podrick Payne"}, {"name": "Tormund Giantsbane"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
6	5	0:48:27	0:48:51	The Wall	Castle Black	{"characters": [{"name": "Eddison Tollett"}, {"name": "Night's Watchman #2"}]}
6	5	0:48:51	0:49:43	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}, {"name": "Hodor"}, {"name": "Meera Reed"}]}
6	5	0:49:43	0:50:28	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Meera Reed"}, {"name": "Leaf"}, {"name": "The Night King", "title": "King"}]}
6	5	0:50:28	0:50:33	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Leaf"}, {"name": "The Night King", "title": "King"}]}
6	5	0:50:33	0:50:44	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Meera Reed"}, {"name": "Bran Stark"}, {"name": "Hodor"}]}
6	5	0:50:44	0:50:57	The North	Winterfell	{"characters": [{"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}, {"name": "Young Ned Stark"}, {"name": "Young Benjen Stark"}, {"name": "Young Rodrik Cassel"}]}
6	5	0:50:57	0:51:06	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Meera Reed"}, {"name": "Bran Stark"}, {"name": "Hodor"}, {"name": "Three-Eyed Raven"}]}
6	5	0:51:06	0:52:09	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Leaf"}, {"name": "The Night King", "title": "King"}]}
6	5	0:52:09	0:52:16	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Meera Reed"}, {"name": "Bran Stark"}, {"name": "Hodor"}, {"name": "Three-Eyed Raven"}]}
6	5	0:52:16	0:52:31	The North	Winterfell	{"characters": [{"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}, {"name": "Young Ned Stark"}, {"name": "Young Rodrik Cassel"}, {"name": "Rickard Stark"}, {"name": "Wyllis"}, {"name": "Young Nan"}]}
6	5	0:52:31	0:53:21	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Meera Reed"}, {"name": "Bran Stark"}, {"name": "Three-Eyed Raven"}, {"name": "Summer"}, {"name": "Hodor"}, {"name": "Leaf", "weapon": [{"action": "has", "name": "Dragonglass"}]}]}
6	5	0:53:21	0:53:26	The North	Winterfell	{"characters": [{"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}]}
6	5	0:53:26	0:53:31	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Meera Reed"}, {"name": "Bran Stark"}, {"name": "Hodor"}]}
6	5	0:53:31	0:53:45	The North	Winterfell	{"characters": [{"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}, {"name": "Wyllis"}, {"name": "Young Nan"}]}
6	5	0:53:45	0:54:27	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Hodor"}, {"name": "Meera Reed", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Bran Stark"}, {"name": "Leaf", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Three-Eyed Raven"}, {"name": "Summer"}, {"name": "White Walker", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Meera Reed"]}]}
6	5	0:54:27	0:54:33	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Summer", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Wights"]}]}
6	5	0:54:33	0:54:46	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Hodor"}, {"name": "Meera Reed"}, {"name": "Bran Stark"}, {"name": "Leaf", "weapon": [{"action": "has", "name": "Dragonglass"}]}]}
6	5	0:54:46	0:55:06	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Three-Eyed Raven"}, {"name": "The Night King", "title": "King"}]}
6	5	0:55:06	0:55:10	The North	Winterfell	{"characters": [{"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}]}
6	5	0:55:11	0:55:12	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Three-Eyed Raven"}, {"name": "The Night King", "title": "King"}]}
6	5	0:55:12	0:55:15	The North	Winterfell	{"characters": [{"name": "Three-Eyed Raven"}, {"name": "Bran Stark"}]}
6	5	0:55:15	0:55:16	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Three-Eyed Raven"}, {"name": "The Night King", "title": "King"}]}
6	5	0:55:16	0:55:20	The North	Winterfell	{"characters": [{"name": "Three-Eyed Raven", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["The Night King"]}, {"name": "Bran Stark"}]}
6	5	0:55:20	0:55:43	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Hodor"}, {"name": "Meera Reed"}, {"name": "Bran Stark"}, {"name": "Leaf", "weapon": [{"action": "has", "name": "Dragonglass"}]}]}
6	5	0:55:43	0:56:05	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Leaf", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Wights"], "weapon": [{"action": "has", "name": "Dragonglass"}]}]}
6	5	0:56:05	0:56:52	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Hodor"}, {"name": "Meera Reed"}, {"name": "Bran Stark"}]}
6	5	0:56:52	0:57:07	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Wyllis"}]}
6	5	0:57:07	0:57:20	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Hodor"}, {"name": "Meera Reed"}, {"name": "Bran Stark"}]}
6	5	0:57:20	0:57:29	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Wyllis"}, {"name": "Young Nan"}]}
6	5	0:57:29	0:57:35	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Hodor"}]}
6	5	0:57:35	0:57:44	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Wyllis"}, {"name": "Young Nan"}]}
6	5	0:57:44	0:58:14	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Hodor"}, {"name": "Meera Reed"}, {"name": "Bran Stark"}]}
6	5	0:58:14	0:58:17	The North	Winterfell	{"characters": [{"name": "Wyllis"}]}
6	5	0:58:17	0:58:19	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Hodor"}]}
6	5	0:58:19	0:58:21	The North	Winterfell	{"characters": [{"name": "Wyllis"}]}
6	5	0:58:21	0:58:23	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Hodor"}]}
6	5	0:58:23	0:58:29	The North	Winterfell	{"characters": [{"name": "Wyllis"}, {"name": "Bran Stark"}]}
6	5	0:58:29	0:58:30	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Hodor"}]}
6	5	0:58:30	0:58:32	The North	Winterfell	{"characters": [{"name": "Wyllis"}]}
6	5	0:58:32	0:58:35	North of the Wall	The Three-Eyed Raven	{"characters": [{"name": "Hodor", "alive": false, "mannerOfDeath": "Door", "killedBy": ["Wights"]}]}
6	5	0:58:35	0:58:44	The North	Winterfell	{"characters": [{"name": "Wyllis"}]}
6	6	0:04:58	0:05:23	North of the Wall	Outside the Three-Eyed Raven	{"characters": [{"name": "Meera Reed"}, {"name": "Bran Stark"}]}
6	6	0:05:23	0:05:30	North of the Wall	Outside the Three-Eyed Raven	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "Bran Stark"}, {"name": "Catelyn Stark"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Eddard Stark"}, {"name": "Drogon"}, {"name": "Ilyn Payne"}, {"name": "Melisandre"}, {"name": "Aerys Targaryen", "title": "King"}]}
6	6	0:05:30	0:05:47	North of the Wall	Outside the Three-Eyed Raven	{"characters": [{"name": "Meera Reed"}, {"name": "Bran Stark"}]}
6	6	0:05:47	0:05:57	North of the Wall	Outside the Three-Eyed Raven	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "Bran Stark"}, {"name": "Aerys Targaryen", "title": "King"}, {"name": "Young Ned Stark"}, {"name": "Jaime Lannister"}, {"name": "Robb Stark", "title": "King"}, {"name": "Leaf"}]}
6	6	0:05:57	0:06:42	North of the Wall	Outside the Three-Eyed Raven	{"characters": [{"name": "Meera Reed"}, {"name": "Bran Stark"}]}
6	6	0:06:42	0:06:48	North of the Wall	Outside the Three-Eyed Raven	{"characters": [{"name": "Aerys Targaryen", "title": "King"}, {"name": "The Night King", "title": "King"}, {"name": "Bran Stark"}]}
6	6	0:06:48	0:06:50	North of the Wall	Outside the Three-Eyed Raven	{"characters": []}
6	6	0:06:50	0:06:52	North of the Wall	Outside the Three-Eyed Raven	{"characters": [{"name": "The Night King", "title": "King"}]}
6	6	0:06:52	0:06:54	North of the Wall	Outside the Three-Eyed Raven	{"characters": []}
6	6	0:06:54	0:07:00	North of the Wall	Outside the Three-Eyed Raven	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "Bran Stark"}]}
6	6	0:07:00	0:07:33	North of the Wall	Outside the Three-Eyed Raven	{"characters": [{"name": "Meera Reed"}, {"name": "Bran Stark"}]}
6	6	0:07:33	0:08:52	North of the Wall	Outside the Three-Eyed Raven	{"characters": [{"name": "Meera Reed"}, {"name": "Bran Stark"}, {"name": "Benjen Stark"}]}
6	6	0:08:52	0:09:00	The Reach	Horn Hill	{"characters": []}
6	6	0:09:00	0:10:59	The Reach	Horn Hill	{"characters": [{"name": "Gilly"}, {"name": "Samwell Tarly"}, {"name": "Baby Sam"}]}
6	6	0:10:59	0:11:11	The Reach	Horn Hill	{"characters": []}
6	6	0:11:11	0:11:23	The Reach	Horn Hill	{"characters": [{"name": "Gilly"}, {"name": "Samwell Tarly"}, {"name": "Baby Sam"}]}
6	6	0:11:23	0:13:18	The Reach	Horn Hill	{"characters": [{"name": "Gilly"}, {"name": "Samwell Tarly"}, {"name": "Baby Sam"}, {"name": "Melessa Tarly"}, {"name": "Talla Tarly"}]}
6	6	0:13:18	0:14:16	The Crownlands	King's Landing	{"characters": [{"name": "High Sparrow"}, {"name": "Tommen Baratheon", "title": "King"}]}
6	6	0:14:16	0:14:22	The Crownlands	King's Landing	{"characters": [{"name": "High Sparrow"}, {"name": "Tommen Baratheon", "title": "King"}, {"name": "Margaery Tyrell"}]}
6	6	0:14:22	0:17:11	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King"}, {"name": "Margaery Tyrell"}]}
6	6	0:17:11	0:17:51	The Reach	Horn Hill	{"characters": [{"name": "Samwell Tarly"}, {"name": "Gilly"}]}
6	6	0:17:51	0:23:51	The Reach	Horn Hill	{"characters": [{"name": "Samwell Tarly"}, {"name": "Gilly"}, {"name": "Randyll Tarly"}, {"name": "Melessa Tarly"}, {"name": "Talla Tarly"}, {"name": "Dickon Tarly"}]}
6	6	0:23:51	0:24:14	The Reach	Horn Hill	{"characters": [{"name": "Samwell Tarly"}, {"name": "Randyll Tarly"}, {"name": "Dickon Tarly"}]}
6	6	0:24:14	0:25:32	The Reach	Horn Hill	{"characters": [{"name": "Samwell Tarly"}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
6	6	0:25:32	0:26:01	The Reach	Horn Hill	{"characters": [{"name": "Gilly"}, {"name": "Baby Sam"}]}
6	6	0:26:01	0:26:46	The Reach	Horn Hill	{"characters": [{"name": "Samwell Tarly", "weapon": [{"action": "takes", "name": "Heartsbane"}]}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
6	6	0:26:46	0:28:04	Braavos	NULL	{"characters": [{"name": "Izembaro"}, {"name": "Lady Crane"}, {"name": "Camello"}, {"name": "Bobono"}, {"name": "Bianca"}, {"name": "Clarenzo"}, {"name": "Margaery Tyrell Mummer"}, {"name": "Mummer #2"}, {"name": "Mummer #3"}, {"name": "Mummer #4"}, {"name": "Musician #1"}, {"name": "Musician #2"}, {"name": "Musician #3"}, {"name": "Musician #4"}, {"name": "Musician #5"}, {"name": "Arya Stark"}]}
6	6	0:28:04	0:29:31	Braavos	NULL	{"characters": [{"name": "Izembaro"}, {"name": "Lady Crane"}, {"name": "Camello"}, {"name": "Bobono"}, {"name": "Bianca"}, {"name": "Clarenzo"}, {"name": "Margaery Tyrell Mummer"}, {"name": "Mummer #2"}, {"name": "Mummer #3"}, {"name": "Mummer #4"}, {"name": "Musician #1"}, {"name": "Musician #2"}, {"name": "Musician #3"}, {"name": "Musician #4"}, {"name": "Musician #5"}, {"name": "Arya Stark"}]}
6	6	0:29:31	0:29:39	Braavos	NULL	{"characters": [{"name": "Arya Stark"}]}
6	6	0:29:39	0:29:53	Braavos	NULL	{"characters": [{"name": "Izembaro"}, {"name": "Bobono"}, {"name": "Braavosi Theatre Sound Artist"}]}
6	6	0:29:53	0:30:03	Braavos	NULL	{"characters": [{"name": "Arya Stark"}]}
6	6	0:30:03	0:30:08	Braavos	NULL	{"characters": [{"name": "Izembaro"}, {"name": "Bobono"}, {"name": "Braavosi Theatre Sound Artist"}]}
6	6	0:30:08	0:30:17	Braavos	NULL	{"characters": [{"name": "Arya Stark"}]}
6	6	0:30:17	0:30:23	Braavos	NULL	{"characters": [{"name": "Izembaro"}, {"name": "Bobono"}, {"name": "Bianca"}, {"name": "Clarenzo"}, {"name": "Arya Stark"}]}
6	6	0:30:23	0:30:27	Braavos	NULL	{"characters": [{"name": "Arya Stark"}]}
6	6	0:30:27	0:30:31	Braavos	NULL	{"characters": [{"name": "Izembaro"}, {"name": "Lady Crane"}, {"name": "Camello"}, {"name": "Bobono"}, {"name": "Bianca"}, {"name": "Clarenzo"}, {"name": "Margaery Tyrell Mummer"}]}
6	6	0:30:31	0:30:36	Braavos	NULL	{"characters": [{"name": "Arya Stark"}]}
6	6	0:30:36	0:30:43	Braavos	NULL	{"characters": [{"name": "Bobono"}, {"name": "Margaery Tyrell Mummer"}, {"name": "Camello"}, {"name": "Arya Stark"}]}
6	6	0:30:43	0:30:55	Braavos	NULL	{"characters": [{"name": "Bobono"}, {"name": "Arya Stark"}, {"name": "Izembaro"}, {"name": "Lady Crane"}, {"name": "Bianca"}, {"name": "Clarenzo"}]}
6	6	0:30:55	0:32:40	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Lady Crane"}]}
6	6	0:32:40	0:33:42	Braavos	NULL	{"characters": [{"name": "Lady Crane"}, {"name": "Bianca"}, {"name": "Izembaro"}, {"name": "Camello"}, {"name": "Margaery Tyrell Mummer"}, {"name": "Bobono"}]}
6	6	0:33:42	0:33:59	Braavos	NULL	{"characters": [{"name": "Lady Crane"}, {"name": "Bianca"}, {"name": "Izembaro"}, {"name": "Camello"}, {"name": "Margaery Tyrell Mummer"}, {"name": "Bobono"}, {"name": "Arya Stark"}]}
6	6	0:33:59	0:34:09	Braavos	NULL	{"characters": [{"name": "Bianca"}, {"name": "Arya Stark"}, {"name": "The Waif"}]}
6	6	0:34:09	0:34:27	Braavos	NULL	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "retrieves", "name": "Needle"}]}]}
6	6	0:34:27	0:35:10	Braavos	NULL	{"characters": [{"name": "Jaqen H'ghar"}, {"name": "The Waif"}]}
6	6	0:35:10	0:35:30	Braavos	NULL	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
6	6	0:35:30	0:36:31	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Mace Tyrell"}]}
6	6	0:36:31	0:37:06	The Crownlands	King's Landing	{"characters": [{"name": "High Sparrow"}, {"name": "Margaery Tyrell"}, {"name": "Septa Unella"}]}
6	6	0:37:06	0:37:30	The Crownlands	King's Landing	{"characters": [{"name": "High Sparrow"}, {"name": "Margaery Tyrell"}, {"name": "Septa Unella"}, {"name": "Jaime Lannister"}, {"name": "Mace Tyrell"}]}
6	6	0:37:30	0:38:40	The Crownlands	King's Landing	{"characters": [{"name": "High Sparrow"}, {"name": "Margaery Tyrell"}, {"name": "Septa Unella"}, {"name": "Jaime Lannister"}, {"name": "Mace Tyrell"}, {"name": "Olenna Tyrell"}]}
6	6	0:38:40	0:39:23	The Crownlands	King's Landing	{"characters": [{"name": "High Sparrow"}, {"name": "Margaery Tyrell"}, {"name": "Septa Unella"}, {"name": "Jaime Lannister"}, {"name": "Mace Tyrell"}, {"name": "Olenna Tyrell"}, {"name": "Lancel Lannister"}]}
6	6	0:39:23	0:41:12	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King"}, {"name": "High Sparrow"}, {"name": "Margaery Tyrell"}, {"name": "Septa Unella"}, {"name": "Jaime Lannister"}, {"name": "Mace Tyrell"}, {"name": "Olenna Tyrell"}]}
6	6	0:41:12	0:42:15	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Tommen Baratheon", "title": "King"}, {"name": "Kevan Lannister", "title": "Hand"}]}
6	6	0:42:15	0:44:20	The Riverlands	The Twins	{"characters": [{"name": "Walder Frey"}, {"name": "Black Walder Rivers"}, {"name": "Lothar Frey"}, {"name": "Lady Kitty Frey"}]}
6	6	0:44:20	0:44:35	The Riverlands	The Twins	{"characters": [{"name": "Walder Frey"}, {"name": "Lady Kitty Frey"}, {"name": "Edmure Tully"}]}
6	6	0:44:35	0:46:34	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister", "sex": {"with": ["Cersei Lannister"], "when": "future", "type": "love"}}, {"name": "Cersei Lannister", "sex": {"with": ["Jaime Lannister"], "when": "future", "type": "love"}}]}
6	6	0:46:34	0:49:01	North of the Wall	Outside the Three-Eyed Raven	{"characters": [{"name": "Meera Reed"}, {"name": "Benjen Stark"}, {"name": "Bran Stark"}]}
6	6	0:49:01	0:50:24	The Dothraki Sea	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}]}
6	6	0:50:24	0:51:09	The Dothraki Sea	NULL	{"characters": [{"name": "Daario Naharis"}]}
6	6	0:51:09	0:53:04	The Dothraki Sea	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Daario Naharis"}]}
6	7	0:03:02	0:03:39	The Riverlands	Village	{"characters": []}
6	7	0:03:39	0:04:12	The Riverlands	Village	{"characters": [{"name": "Brother Ray"}]}
6	7	0:04:12	0:04:44	The Riverlands	Village	{"characters": [{"name": "Sandor Clegane"}]}
6	7	0:06:33	0:07:11	The Riverlands	Village	{"characters": [{"name": "Sandor Clegane"}, {"name": "Brother Ray"}]}
6	7	0:07:11	0:07:19	The Riverlands	Village	{"characters": []}
6	7	0:07:19	0:07:24	The Riverlands	Village	{"characters": [{"name": "Brother Ray"}]}
6	7	0:07:24	0:07:29	The Riverlands	Village	{"characters": []}
6	7	0:07:29	0:09:49	The Riverlands	Village	{"characters": [{"name": "Sandor Clegane"}, {"name": "Brother Ray"}]}
6	7	0:09:49	0:12:38	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "High Sparrow"}]}
6	7	0:12:38	0:14:55	The Crownlands	King's Landing	{"characters": [{"name": "Septa Unella"}, {"name": "Margaery Tyrell"}, {"name": "Olenna Tyrell"}]}
6	7	0:14:55	0:15:10	The Crownlands	King's Landing	{"characters": [{"name": "Olenna Tyrell"}]}
6	7	0:15:10	0:17:20	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Dim Dalba"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Sansa Stark"}, {"name": "Davos Seaworth"}, {"name": "Tormund Giantsbane"}, {"name": "Wun Wun"}]}
6	7	0:17:20	0:17:55	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Dim Dalba"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Sansa Stark"}, {"name": "Davos Seaworth"}, {"name": "Tormund Giantsbane"}]}
6	7	0:17:55	0:18:13	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Sansa Stark"}, {"name": "Davos Seaworth"}, {"name": "Tormund Giantsbane"}]}
6	7	0:18:13	0:20:23	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Gregor Clegane"}, {"name": "Olenna Tyrell"}]}
6	7	0:20:23	0:20:28	The Riverlands	Riverrun	{"characters": []}
6	7	0:20:28	0:22:00	The Riverlands	Riverrun	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}]}
6	7	0:22:00	0:22:20	The Riverlands	Riverrun	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}]}
6	7	0:22:20	0:22:32	The Riverlands	Riverrun	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}, {"name": "Black Walder Rivers"}, {"name": "Lothar Frey"}, {"name": "Edmure Tully"}]}
6	7	0:22:32	0:22:47	The Riverlands	Riverrun	{"characters": [{"name": "Brynden Tully"}]}
6	7	0:22:47	0:23:49	The Riverlands	Riverrun	{"characters": [{"name": "Brynden Tully"}, {"name": "Black Walder Rivers"}, {"name": "Lothar Frey"}, {"name": "Edmure Tully"}, {"name": "Jaime Lannister"}, {"name": "Bronn"}]}
6	7	0:23:49	0:25:15	The Riverlands	Riverrun	{"characters": [{"name": "Edmure Tully"}, {"name": "Jaime Lannister"}, {"name": "Bronn"}, {"name": "Black Walder Rivers"}, {"name": "Lothar Frey"}]}
6	7	0:25:15	0:25:35	The Riverlands	Riverrun	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}]}
6	7	0:25:35	0:25:41	The North	Bear Island	{"characters": []}
6	7	0:25:41	0:30:56	The North	Bear Island	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Sansa Stark"}, {"name": "Davos Seaworth"}, {"name": "Lyanna Mormont"}, {"name": "Bear Island Maester"}]}
6	7	0:30:56	0:31:54	The Riverlands	Riverrun	{"characters": [{"name": "Jaime Lannister"}]}
6	7	0:31:54	0:34:26	The Riverlands	Riverrun	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brynden Tully"}]}
6	7	0:34:26	0:36:55	The North	Deepwood Motte	{"characters": [{"name": "Robett Glover"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Sansa Stark"}, {"name": "Davos Seaworth"}]}
6	7	0:36:55	0:37:21	Volantis	NULL	{"characters": []}
6	7	0:37:21	0:38:05	Volantis	NULL	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Yara Greyjoy"}, {"name": "Volantene Whore #1"}, {"name": "Volantene Whore #2"}, {"name": "Volantene Whore #3"}, {"name": "Volantene Whore #4"}, {"name": "Volantene Whore #5"}, {"name": "Ironborn at Brothel"}, {"name": "Ironborn Abusing a Volantene Whore"}]}
6	7	0:38:05	0:40:38	Volantis	NULL	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Yara Greyjoy"}]}
6	7	0:40:38	0:41:53	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Sansa Stark"}, {"name": "Davos Seaworth"}]}
6	7	0:41:53	0:42:16	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Jon Snow"}, {"name": "Sansa Stark"}, {"name": "Davos Seaworth"}, {"name": "Northman Rioter"}, {"name": "Wildling Rioter"}]}
6	7	0:42:16	0:42:26	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Lyanna Mormont"}, {"name": "Sansa Stark"}, {"name": "Bear Island Maester"}]}
6	7	0:42:26	0:42:57	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Sansa Stark"}]}
6	7	0:42:57	0:44:57	The Riverlands	Village	{"characters": [{"name": "Brother Ray"}, {"name": "Sandor Clegane"}]}
6	7	0:44:57	0:46:27	The Riverlands	Village	{"characters": [{"name": "Brother Ray"}, {"name": "Sandor Clegane"}, {"name": "Lem Lemoncloak"}, {"name": "Gatins"}, {"name": "Morgan"}]}
6	7	0:46:27	0:47:40	The Riverlands	Village	{"characters": [{"name": "Sandor Clegane"}, {"name": "Brother Ray"}]}
6	7	0:47:40	0:48:27	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Westerosi Trader"}]}
6	7	0:48:27	0:48:41	Braavos	NULL	{"characters": [{"name": "Arya Stark"}]}
6	7	0:48:41	0:49:03	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "The Waif"}, {"name": "The Waif's Disguise"}]}
6	7	0:49:03	0:49:23	Braavos	NULL	{"characters": [{"name": "The Waif"}, {"name": "The Waif's Disguise"}]}
6	7	0:49:23	0:50:22	Braavos	NULL	{"characters": [{"name": "Arya Stark"}]}
6	7	0:50:22	0:50:50	The Riverlands	Village	{"characters": [{"name": "Sandor Clegane"}]}
6	7	0:50:50	0:51:17	The Riverlands	Village	{"characters": [{"name": "Sandor Clegane"}]}
6	7	0:51:17	0:51:48	The Riverlands	Village	{"characters": [{"name": "Sandor Clegane"}, {"name": "Brother Ray", "alive": false, "mannerOfDeath": "Hanging", "killedBy": ["Lem Lemoncloak"]}]}
6	7	0:51:48	0:51:52	The Riverlands	Village	{"characters": [{"name": "Sandor Clegane"}]}
6	8	0:06:05	0:07:32	Braavos	NULL	{"characters": [{"name": "Lady Crane"}, {"name": "Clarenzo"}]}
6	8	0:07:32	0:08:36	Braavos	NULL	{"characters": [{"name": "Lady Crane"}]}
6	8	0:08:36	0:11:45	Braavos	NULL	{"characters": [{"name": "Lady Crane"}, {"name": "Arya Stark"}]}
6	8	0:11:45	0:12:45	The Riverlands	Village	{"characters": [{"name": "Gatins"}, {"name": "Morgan"}, {"name": "Riddell"}, {"name": "Steve"}]}
6	8	0:12:45	0:12:58	The Riverlands	Village	{"characters": [{"name": "Gatins"}, {"name": "Morgan"}, {"name": "Riddell"}, {"name": "Steve", "alive": false, "mannerOfDeath": "Decapitation", "killedBy": ["Sandor Clegane"]}, {"name": "Sandor Clegane"}]}
6	8	0:12:58	0:13:04	The Riverlands	Village	{"characters": [{"name": "Gatins"}, {"name": "Morgan", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Sandor Clegane"]}, {"name": "Riddell", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Sandor Clegane"]}, {"name": "Sandor Clegane"}]}
6	8	0:13:04	0:13:26	The Riverlands	Village	{"characters": [{"name": "Gatins", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Sandor Clegane"]}, {"name": "Sandor Clegane"}]}
6	8	0:13:26	0:13:42	Meereen	NULL	{"characters": []}
6	8	0:13:42	0:14:19	Meereen	NULL	{"characters": [{"name": "Red Priestess"}, {"name": "Tyrion Lannister"}, {"name": "Lord Varys"}]}
6	8	0:14:19	0:15:25	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Lord Varys"}]}
6	8	0:15:25	0:16:03	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Qyburn"}, {"name": "Gregor Clegane"}]}
6	8	0:16:03	0:18:04	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Qyburn"}, {"name": "Gregor Clegane"}, {"name": "Lancel Lannister"}]}
6	8	0:18:04	0:18:24	The Riverlands	Riverrun	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}]}
6	8	0:18:24	0:18:47	The Riverlands	Riverrun	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}, {"name": "Lannister Soldier"}]}
6	8	0:18:47	0:20:39	The Riverlands	Riverrun	{"characters": [{"name": "Podrick Payne"}, {"name": "Bronn"}]}
6	8	0:20:39	0:24:08	The Riverlands	Riverrun	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
6	8	0:24:08	0:26:19	The Riverlands	Riverrun	{"characters": [{"name": "Brynden Tully"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}]}
6	8	0:26:19	0:26:41	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Gregor Clegane"}, {"name": "Qyburn"}]}
6	8	0:26:41	0:27:41	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Gregor Clegane"}, {"name": "Qyburn"}, {"name": "Mace Tyrell"}, {"name": "Kevan Lannister", "title": "Hand"}, {"name": "Grand Maester Pycelle"}, {"name": "Tommen Baratheon", "title": "King"}]}
6	8	0:27:41	0:29:05	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King"}, {"name": "Cersei Lannister"}, {"name": "Gregor Clegane"}, {"name": "Qyburn"}, {"name": "Kevan Lannister", "title": "Hand"}, {"name": "Mace Tyrell"}, {"name": "Grand Maester Pycelle"}]}
6	8	0:29:05	0:29:24	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King"}, {"name": "Kevan Lannister", "title": "Hand"}, {"name": "Mace Tyrell"}, {"name": "Grand Maester Pycelle"}, {"name": "Cersei Lannister"}, {"name": "Gregor Clegane"}]}
6	8	0:29:24	0:29:51	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Qyburn"}, {"name": "Gregor Clegane"}]}
6	8	0:29:51	0:33:57	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Missandei"}, {"name": "Grey Worm"}]}
6	8	0:33:57	0:34:02	Meereen	NULL	{"characters": []}
6	8	0:34:02	0:34:14	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Missandei"}]}
6	8	0:34:14	0:34:19	The Riverlands	Riverrun	{"characters": [{"name": "Jaime Lannister"}]}
6	8	0:34:19	0:39:25	The Riverlands	Riverrun	{"characters": [{"name": "Jaime Lannister"}, {"name": "Edmure Tully"}]}
6	8	0:39:25	0:39:56	The Riverlands	Riverrun	{"characters": [{"name": "Edmure Tully"}]}
6	8	0:39:56	0:41:13	The Riverlands	Riverrun	{"characters": [{"name": "Brynden Tully"}, {"name": "Tully Bannerman"}]}
6	8	0:41:13	0:41:21	The Riverlands	Riverrun	{"characters": []}
6	8	0:41:21	0:41:25	The Riverlands	Riverrun	{"characters": [{"name": "Edmure Tully"}]}
6	8	0:41:25	0:42:08	The Riverlands	Riverrun	{"characters": [{"name": "Jaime Lannister"}, {"name": "Lothar Frey"}, {"name": "Edmure Tully"}]}
6	8	0:42:08	0:42:30	The Riverlands	Riverrun	{"characters": [{"name": "Edmure Tully"}, {"name": "Brynden Tully"}]}
6	8	0:42:30	0:42:58	The Riverlands	Riverrun	{"characters": [{"name": "Edmure Tully"}, {"name": "Tully Bannerman"}]}
6	8	0:42:58	0:43:23	The Riverlands	Riverrun	{"characters": [{"name": "Jaime Lannister"}, {"name": "Lothar Frey"}]}
6	8	0:43:23	0:43:44	The Riverlands	Riverrun	{"characters": []}
6	8	0:43:44	0:44:07	The Riverlands	Riverrun	{"characters": [{"name": "Edmure Tully"}, {"name": "Tully Bannerman"}]}
6	8	0:44:07	0:44:14	The Riverlands	Riverrun	{"characters": []}
6	8	0:44:14	0:45:05	The Riverlands	Riverrun	{"characters": [{"name": "Brynden Tully"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}]}
6	8	0:45:05	0:45:24	The Riverlands	Riverrun	{"characters": [{"name": "Brynden Tully", "alive": false, "mannerOfDeath": "Multiple stabs"}]}
6	8	0:45:24	0:45:52	The Riverlands	Riverrun	{"characters": [{"name": "Lannister Soldier"}, {"name": "Jaime Lannister"}]}
6	8	0:45:52	0:46:43	The Riverlands	Riverrun	{"characters": [{"name": "Jaime Lannister"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}]}
6	8	0:46:43	0:47:10	Meereen	NULL	{"characters": []}
6	8	0:47:10	0:48:13	Meereen		{"characters": [{"name": "Tyrion Lannister"}, {"name": "Missandei"}, {"name": "Grey Worm"}]}
6	8	0:48:13	0:48:25	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Missandei"}, {"name": "Grey Worm"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}]}
6	8	0:48:25	0:51:07	The Riverlands	Forest	{"characters": [{"name": "Sandor Clegane"}, {"name": "Lem Lemoncloak", "alive": false, "mannerOfDeath": "Hanging", "killedBy": ["Sandor Clegane"]}, {"name": "Beric Dondarrion"}, {"name": "Thoros of Myr"}]}
6	8	0:51:07	0:53:07	The Riverlands	Forest	{"characters": [{"name": "Sandor Clegane"}, {"name": "Beric Dondarrion"}, {"name": "Thoros of Myr"}]}
6	8	0:53:07	0:53:48	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Lady Crane"}]}
6	8	0:53:48	0:53:59	Braavos	NULL	{"characters": [{"name": "Lady Crane"}, {"name": "The Waif's Disguise"}]}
6	8	0:53:59	0:54:23	Braavos	NULL	{"characters": [{"name": "Arya Stark"}, {"name": "Lady Crane", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["The Waif"]}]}
6	8	0:54:23	0:59:00	Braavos	NULL	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "The Waif", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Arya Stark"]}]}
6	8	0:59:00	1:00:05	Braavos	NULL	{"characters": [{"name": "Jaqen H'ghar"}]}
6	8	1:00:05	1:01:08	Braavos	NULL	{"characters": [{"name": "Jaqen H'ghar"}, {"name": "Arya Stark"}]}
6	9	0:04:43	0:05:03	Meereen	NULL	{"characters": []}
6	9	0:05:03	0:05:17	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
6	9	0:05:17	0:07:26	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister"}]}
6	9	0:07:26	0:08:50	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister"}, {"name": "Grey Worm"}, {"name": "Missandei"}, {"name": "Yezzan zo Qaggaz"}, {"name": "Razdal mo Eraz"}, {"name": "Belicho Paenymion"}]}
6	9	0:08:50	0:09:34	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister"}, {"name": "Grey Worm"}, {"name": "Missandei"}, {"name": "Yezzan zo Qaggaz"}, {"name": "Razdal mo Eraz"}, {"name": "Belicho Paenymion"}, {"name": "Drogon"}]}
6	9	0:09:34	0:09:44	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Grey Worm"}, {"name": "Missandei"}, {"name": "Yezzan zo Qaggaz"}, {"name": "Razdal mo Eraz"}, {"name": "Belicho Paenymion"}]}
6	9	0:09:44	0:09:52	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}]}
6	9	0:09:52	0:10:14	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
6	9	0:10:14	0:10:40	Meereen	NULL	{"characters": []}
6	9	0:10:40	0:10:47	Meereen	NULL	{"characters": [{"name": "Daario Naharis"}]}
6	9	0:10:47	0:12:03	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
6	9	0:12:03	0:13:24	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Grey Worm"}, {"name": "Missandei"}, {"name": "Yezzan zo Qaggaz"}, {"name": "Razdal mo Eraz", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Grey Worm"]}, {"name": "Belicho Paenymion", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Grey Worm"]}]}
6	9	0:13:24	0:14:06	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Grey Worm"}, {"name": "Missandei"}, {"name": "Yezzan zo Qaggaz"}]}
6	9	0:14:06	0:14:21	The North	Outside Winterfell	{"characters": []}
6	9	0:14:21	0:17:30	The North	Outside Winterfell	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Sansa Stark"}, {"name": "Lyanna Mormont"}, {"name": "Ramsay Snow"}, {"name": "Tormund Giantsbane"}, {"name": "Davos Seaworth"}, {"name": "Harald Karstark"}, {"name": "Smalljon Umber"}]}
6	9	0:17:26	0:17:31	The North	Outside Winterfell	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Sansa Stark"}, {"name": "Lyanna Mormont"}, {"name": "Ramsay Snow"}, {"name": "Tormund Giantsbane"}, {"name": "Davos Seaworth"}, {"name": "Harald Karstark"}, {"name": "Smalljon Umber"}, {"name": "Shaggydog", "alive": false}]}
6	9	0:17:31	0:17:55	The North	Outside Winterfell	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Sansa Stark"}, {"name": "Lyanna Mormont"}, {"name": "Ramsay Snow"}, {"name": "Tormund Giantsbane"}, {"name": "Davos Seaworth"}, {"name": "Harald Karstark"}, {"name": "Smalljon Umber"}]}
6	9	0:17:55	0:18:54	The North	Outside Winterfell	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Lyanna Mormont"}, {"name": "Ramsay Snow"}, {"name": "Tormund Giantsbane"}, {"name": "Davos Seaworth"}, {"name": "Harald Karstark"}, {"name": "Smalljon Umber"}]}
6	9	0:18:54	0:20:24	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Jon Snow"}, {"name": "Tormund Giantsbane"}, {"name": "Davos Seaworth"}, {"name": "Sansa Stark"}]}
6	9	0:20:24	0:23:19	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Jon Snow"}, {"name": "Sansa Stark"}]}
6	9	0:23:19	0:23:29	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Jon Snow"}]}
6	9	0:23:29	0:25:22	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Davos Seaworth"}, {"name": "Tormund Giantsbane"}]}
6	9	0:25:22	0:25:27	The North	Stannis Baratheon's Camp	{"characters": []}
6	9	0:25:27	0:27:24	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Melisandre"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
6	9	0:27:24	0:28:52	The North	Stannis Baratheon's Camp	{"characters": [{"name": "Davos Seaworth"}]}
6	9	0:28:52	0:32:56	Meereen	NULL	{"characters": [{"name": "Tyrion Lannister"}, {"name": "Theon Greyjoy"}, {"name": "Yara Greyjoy"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
6	9	0:32:56	0:33:12	The North	Outside Winterfell	{"characters": []}
6	9	0:33:12	0:33:35	The North	Outside Winterfell	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
6	9	0:33:35	0:34:12	The North	Outside Winterfell	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Wun Wun"}, {"name": "Tormund Giantsbane"}, {"name": "Davos Seaworth"}]}
6	9	0:34:12	0:34:52	The North	Outside Winterfell	{"characters": []}
6	9	0:34:52	0:35:15	The North	Outside Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Smalljon Umber"}]}
6	9	0:35:15	0:36:01	The North	Outside Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Rickon Stark"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Tormund Giantsbane"}, {"name": "Davos Seaworth"}, {"name": "Wun Wun"}]}
6	9	0:36:01	0:36:17	The North	Outside Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Rickon Stark"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Davos Seaworth"}]}
6	9	0:36:17	0:36:57	The North	Outside Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Rickon Stark"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
6	9	0:36:57	0:37:11	The North	Outside Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Rickon Stark"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Wun Wun"}, {"name": "Tormund Giantsbane"}, {"name": "Davos Seaworth"}]}
6	9	0:37:11	0:38:38	The North	Outside Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Rickon Stark", "alive": false, "mannerOfDeath": "Arrow", "killedBy": ["Ramsay Snow"]}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
6	9	0:38:38	0:39:25	The North	Outside Winterfell	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Davos Seaworth"}, {"name": "Ramsay Snow"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Rickon Stark", "alive": false}]}
6	9	0:39:25	0:40:26	The North	Outside Winterfell	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Davos Seaworth"}, {"name": "Ramsay Snow"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Wun Wun"}]}
6	9	0:40:26	0:41:10	The North	Outside Winterfell	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
6	9	0:41:10	0:41:17	The North	Outside Winterfell	{"characters": []}
6	9	0:41:17	0:41:47	The North	Outside Winterfell	{"characters": [{"name": "Davos Seaworth"}, {"name": "Ramsay Snow"}]}
6	9	0:41:47	0:42:45	The North	Outside Winterfell	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
6	9	0:42:45	0:42:54	The North	Outside Winterfell	{"characters": []}
6	9	0:42:54	0:43:03	The North	Outside Winterfell	{"characters": [{"name": "Ramsay Snow"}]}
6	9	0:43:03	0:43:41	The North	Outside Winterfell	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ramsay Snow"}]}
6	9	0:43:41	0:43:51	The North	Outside Winterfell	{"characters": []}
6	9	0:43:51	0:44:07	The North	Outside Winterfell	{"characters": [{"name": "Davos Seaworth"}, {"name": "Ramsay Snow"}]}
6	9	0:44:07	0:44:32	The North	Outside Winterfell	{"characters": [{"name": "Smalljon Umber"}, {"name": "Ramsay Snow"}]}
6	9	0:44:32	0:46:51	The North	Outside Winterfell	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Tormund Giantsbane"}, {"name": "Wun Wun"}, {"name": "Smalljon Umber"}, {"name": "Davos Seaworth"}, {"name": "Ramsay Snow"}]}
6	9	0:46:51	0:47:05	The North	Outside Winterfell	{"characters": []}
6	9	0:47:05	0:47:38	The North	Outside Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Wun Wun"}, {"name": "Tormund Giantsbane"}]}
6	9	0:47:38	0:47:54	The North	Outside Winterfell	{"characters": []}
6	9	0:47:54	0:49:57	The North	Outside Winterfell	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Smalljon Umber"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
6	9	0:49:57	0:50:37	The North	Outside Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Wun Wun"}, {"name": "Tormund Giantsbane"}, {"name": "Smalljon Umber"}, {"name": "Davos Seaworth"}]}
6	9	0:50:37	0:51:06	The North	Outside Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
6	9	0:51:06	0:51:14	The North	Outside Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
6	9	0:51:14	0:51:28	The North	Outside Winterfell	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Sansa Stark"}, {"name": "Ramsay Snow"}, {"name": "Tormund Giantsbane"}, {"name": "Smalljon Umber", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Tormund Giantsbane"]}]}
6	9	0:51:28	0:52:11	The North	Outside Winterfell	{"characters": [{"name": "Wun Wun"}, {"name": "Sansa Stark"}, {"name": "Petyr Baelish"}, {"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ramsay Snow"}, {"name": "Tormund Giantsbane"}]}
6	9	0:52:11	0:52:36	The North	Outside Winterfell	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Ramsay Snow"}, {"name": "Sansa Stark"}, {"name": "Wun Wun"}, {"name": "Tormund Giantsbane"}]}
6	9	0:52:36	0:53:10	The North	Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Bolton General"}]}
6	9	0:53:10	0:53:16	The North	Winterfell	{"characters": []}
6	9	0:53:16	0:53:59	The North	Winterfell	{"characters": [{"name": "Wun Wun"}, {"name": "Ramsay Snow"}]}
6	9	0:53:59	0:54:32	The North	Winterfell	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Wun Wun", "alive": false, "mannerOfDeath": "Arrow", "killedBy": ["Ramsay Snow"]}, {"name": "Tormund Giantsbane"}, {"name": "Ramsay Snow"}]}
6	9	0:54:32	0:55:32	The North	Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Jon Snow", "weapon": [{"action": "drops", "name": "Longclaw"}]}, {"name": "Tormund Giantsbane"}]}
6	9	0:55:32	0:56:03	The North	Winterfell	{"characters": [{"name": "Ramsay Snow"}, {"name": "Jon Snow"}, {"name": "Tormund Giantsbane"}, {"name": "Sansa Stark"}]}
6	9	0:56:03	0:56:13	The North	Winterfell	{"characters": []}
6	9	0:56:13	0:56:34	The North	Winterfell	{"characters": [{"name": "Melisandre"}, {"name": "Davos Seaworth"}]}
6	9	0:56:34	0:56:41	The North	Winterfell	{"characters": [{"name": "Melisandre"}, {"name": "Davos Seaworth"}, {"name": "Tormund Giantsbane"}, {"name": "Jon Snow"}]}
6	9	0:56:41	0:56:57	The North	Winterfell	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Rickon Stark", "alive": false}, {"name": "Tormund Giantsbane"}, {"name": "Sansa Stark"}]}
6	9	0:56:57	0:57:12	The North	Winterfell	{"characters": [{"name": "Jon Snow", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Sansa Stark"}]}
6	9	0:57:12	1:00:44	The North	Winterfell	{"characters": [{"name": "Ramsay Snow", "alive": false, "mannerOfDeath": "Mauling", "killedBy": ["Sansa Stark"]}, {"name": "Sansa Stark"}]}
6	10	0:05:31	0:06:36	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}, {"name": "Tommen Baratheon", "title": "King"}, {"name": "Margaery Tyrell"}, {"name": "High Sparrow"}]}
6	10	0:06:36	0:06:54	The Crownlands	King's Landing	{"characters": []}
6	10	0:06:54	0:07:10	The Crownlands	King's Landing	{"characters": [{"name": "Loras Tyrell"}, {"name": "Lancel Lannister"}]}
6	10	0:07:10	0:07:54	The Crownlands	King's Landing	{"characters": [{"name": "High Sparrow"}, {"name": "Mace Tyrell"}, {"name": "Margaery Tyrell"}, {"name": "Kevan Lannister", "title": "Hand"}]}
6	10	0:07:54	0:08:02	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King"}, {"name": "Tommen's Manservant"}]}
6	10	0:08:02	0:08:08	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
6	10	0:08:08	0:08:15	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King"}]}
6	10	0:08:15	0:08:23	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
6	10	0:08:23	0:08:45	The Crownlands	King's Landing	{"characters": [{"name": "Grand Maester Pycelle", "sex": {"with": ["Marei"], "when": "past", "type": "paid"}}, {"name": "Marei", "sex": {"with": ["Grand Maester Pycelle"], "when": "past", "type": "paid"}}]}
6	10	0:08:45	0:08:59	The Crownlands	King's Landing	{"characters": [{"name": "Grand Maester Pycelle"}, {"name": "Frances"}]}
6	10	0:08:59	0:12:59	The Crownlands	King's Landing	{"characters": [{"name": "High Sparrow"}, {"name": "Loras Tyrell"}, {"name": "Lancel Lannister"}, {"name": "Mace Tyrell"}, {"name": "Margaery Tyrell"}, {"name": "Kevan Lannister", "title": "Hand"}]}
6	10	0:12:59	0:13:09	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
6	10	0:13:09	0:13:33	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King"}, {"name": "Gregor Clegane"}]}
6	10	0:13:33	0:13:38	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
6	10	0:13:38	0:13:49	The Crownlands	King's Landing	{"characters": [{"name": "Loras Tyrell"}, {"name": "High Sparrow"}, {"name": "Margaery Tyrell"}, {"name": "Lancel Lannister"}, {"name": "Mace Tyrell"}, {"name": "Kevan Lannister", "title": "Hand"}]}
6	10	0:13:49	0:13:53	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
6	10	0:13:53	0:14:03	The Crownlands	King's Landing	{"characters": [{"name": "High Sparrow"}, {"name": "Margaery Tyrell"}, {"name": "Lancel Lannister"}]}
6	10	0:14:03	0:14:07	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
6	10	0:14:07	0:14:18	The Crownlands	King's Landing	{"characters": [{"name": "High Sparrow"}, {"name": "Margaery Tyrell"}, {"name": "Lancel Lannister"}]}
6	10	0:14:18	0:14:22	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
6	10	0:14:22	0:14:41	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister"}, {"name": "Arthur"}]}
6	10	0:14:41	0:14:50	The Crownlands	King's Landing	{"characters": [{"name": "Grand Maester Pycelle"}, {"name": "Frances"}]}
6	10	0:14:50	0:15:06	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister"}, {"name": "Arthur"}]}
6	10	0:15:06	0:15:53	The Crownlands	King's Landing	{"characters": [{"name": "Grand Maester Pycelle"}, {"name": "Qyburn"}, {"name": "Little Bird #3"}]}
6	10	0:15:53	0:15:58	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister"}, {"name": "Arthur"}]}
6	10	0:15:58	0:16:07	The Crownlands	King's Landing	{"characters": [{"name": "Grand Maester Pycelle"}, {"name": "Qyburn"}, {"name": "Little Bird #3"}, {"name": "Little Bird #4"}, {"name": "Little Bird #5"}, {"name": "Little Bird #6"}, {"name": "Little Bird #7"}]}
6	10	0:16:07	0:16:12	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister"}, {"name": "Arthur"}]}
6	10	0:16:12	0:16:35	The Crownlands	King's Landing	{"characters": [{"name": "Grand Maester Pycelle"}, {"name": "Qyburn"}, {"name": "Frances"}, {"name": "Little Bird #3"}, {"name": "Little Bird #4"}, {"name": "Little Bird #5"}, {"name": "Little Bird #6"}, {"name": "Little Bird #7"}]}
6	10	0:16:35	0:16:44	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister"}, {"name": "Arthur"}]}
6	10	0:16:44	0:17:00	The Crownlands	King's Landing	{"characters": [{"name": "Grand Maester Pycelle", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Frances", "Little Bird #3", "Little Bird #4", "Little Bird #5", "Little Bird #6", "Little Bird #7"]}, {"name": "Qyburn"}, {"name": "Frances"}, {"name": "Little Bird #3"}, {"name": "Little Bird #4"}, {"name": "Little Bird #5"}, {"name": "Little Bird #6"}, {"name": "Little Bird #7"}]}
6	10	0:17:00	0:17:48	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister"}, {"name": "Arthur"}]}
6	10	0:17:48	0:18:02	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Kevan Lannister", "title": "Hand"}, {"name": "Mace Tyrell"}, {"name": "Loras Tyrell"}]}
6	10	0:18:02	0:18:24	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister"}]}
6	10	0:18:24	0:18:29	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
6	10	0:18:29	0:18:33	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}]}
6	10	0:18:33	0:18:46	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister"}]}
6	10	0:18:46	0:19:25	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "High Sparrow"}]}
6	10	0:19:25	0:19:48	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister"}]}
6	10	0:19:48	0:20:00	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "High Sparrow"}, {"name": "Loras Tyrell"}, {"name": "Mace Tyrell"}, {"name": "Kevan Lannister", "title": "Hand"}]}
6	10	0:20:00	0:20:03	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister"}]}
6	10	0:20:03	0:20:23	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Loras Tyrell"}, {"name": "High Sparrow"}, {"name": "Mace Tyrell"}, {"name": "Kevan Lannister", "title": "Hand"}]}
6	10	0:20:23	0:20:27	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister"}]}
6	10	0:20:27	0:20:31	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "Loras Tyrell"}, {"name": "Mace Tyrell"}, {"name": "Kevan Lannister", "title": "Hand"}]}
6	10	0:20:30	0:20:33	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister"}]}
6	10	0:20:33	0:20:40	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "High Sparrow"}, {"name": "Loras Tyrell"}]}
6	10	0:20:40	0:20:44	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister"}]}
6	10	0:20:44	0:20:52	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell"}, {"name": "High Sparrow"}, {"name": "Loras Tyrell"}]}
6	10	0:20:52	0:21:00	The Crownlands	King's Landing	{"characters": [{"name": "Lancel Lannister", "alive": false, "mannerOfDeath": "Wildfire", "killedBy": ["Cersei Lannister"]}]}
6	10	0:21:00	0:21:06	The Crownlands	King's Landing	{"characters": [{"name": "Margaery Tyrell", "alive": false, "mannerOfDeath": "Wildfire", "killedBy": ["Cersei Lannister"]}, {"name": "High Sparrow", "alive": false, "mannerOfDeath": "Wildfire", "killedBy": ["Cersei Lannister"]}, {"name": "Loras Tyrell", "alive": false, "mannerOfDeath": "Wildfire", "killedBy": ["Cersei Lannister"]}, {"name": "Mace Tyrell", "alive": false, "mannerOfDeath": "Wildfire", "killedBy": ["Cersei Lannister"]}, {"name": "Kevan Lannister", "title": "Hand", "alive": false, "mannerOfDeath": "Wildfire", "killedBy": ["Cersei Lannister"]}]}
6	10	0:21:06	0:21:16	The Crownlands	King's Landing	{"characters": []}
6	10	0:21:16	0:21:42	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister"}]}
6	10	0:21:42	0:21:51	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King"}, {"name": "Gregor Clegane"}]}
6	10	0:21:51	0:24:48	The Crownlands	King's Landing	{"characters": [{"name": "Septa Unella"}, {"name": "Cersei Lannister"}]}
6	10	0:24:48	0:25:40	The Crownlands	King's Landing	{"characters": [{"name": "Septa Unella"}, {"name": "Cersei Lannister"}, {"name": "Gregor Clegane"}]}
6	10	0:25:40	0:26:34	The Crownlands	King's Landing	{"characters": [{"name": "Tommen Baratheon", "title": "King", "alive": false, "mannerOfDeath": "Falling", "killedBy": ["Tommen Baratheon"]}, {"name": "Tommen's Manservant"}]}
6	10	0:26:34	0:26:40	The Riverlands	The Twins	{"characters": []}
6	10	0:26:40	0:27:11	The Riverlands	The Twins	{"characters": [{"name": "Walder Frey"}, {"name": "Jaime Lannister"}, {"name": "Black Walder Rivers"}, {"name": "Lothar Frey"}]}
6	10	0:27:11	0:27:41	The Riverlands	The Twins	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}, {"name": "Handmaid"}]}
6	10	0:27:41	0:28:09	The Riverlands	The Twins	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}]}
6	10	0:28:09	0:30:13	The Riverlands	The Twins	{"characters": [{"name": "Jaime Lannister"}, {"name": "Walder Frey"}]}
6	10	0:30:13	0:31:15	The Crownlands	King's Landing	{"characters": [{"name": "Qyburn"}, {"name": "Cersei Lannister"}, {"name": "Tommen Baratheon", "title": "King", "alive": false}]}
6	10	0:31:15	0:32:02	The Reach	Oldtown	{"characters": [{"name": "Samwell Tarly", "weapon": [{"action": "has", "name": "Heartsbane"}]}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
6	10	0:32:02	0:34:08	The Reach	Oldtown	{"characters": [{"name": "Samwell Tarly"}, {"name": "Gilly"}, {"name": "Baby Sam"}, {"name": "Citadel Maester"}]}
6	10	0:34:08	0:34:26	The Reach	Oldtown	{"characters": [{"name": "Samwell Tarly"}, {"name": "Citadel Maester"}]}
6	10	0:34:26	0:35:22	The Reach	Oldtown	{"characters": [{"name": "Samwell Tarly"}]}
6	10	0:35:22	0:35:33	The North	Winterfell	{"characters": []}
6	10	0:35:33	0:36:12	The North	Winterfell	{"characters": [{"name": "Jon Snow"}, {"name": "Melisandre"}]}
6	10	0:36:12	0:39:50	The North	Winterfell	{"characters": [{"name": "Jon Snow"}, {"name": "Melisandre"}, {"name": "Davos Seaworth"}]}
6	10	0:39:50	0:40:02	The North	Winterfell	{"characters": [{"name": "Melisandre"}, {"name": "Jon Snow"}]}
6	10	0:40:02	0:42:23	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Jon Snow"}]}
6	10	0:42:23	0:43:46	Dorne	The Water Gardens	{"characters": [{"name": "Ellaria Sand"}, {"name": "Olenna Tyrell"}, {"name": "Tyene Sand"}, {"name": "Obara Sand"}, {"name": "Nymeria Sand"}]}
6	10	0:43:46	0:44:00	Dorne	The Water Gardens	{"characters": [{"name": "Ellaria Sand"}, {"name": "Olenna Tyrell"}, {"name": "Tyene Sand"}, {"name": "Obara Sand"}, {"name": "Nymeria Sand"}, {"name": "Lord Varys"}]}
6	10	0:44:00	0:47:36	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Daario Naharis"}]}
6	10	0:47:36	0:51:04	Meereen	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
6	10	0:51:04	0:52:28	The Riverlands	The Twins	{"characters": [{"name": "Walder Frey"}, {"name": "Handmaid"}, {"name": "Lothar Frey", "alive": false, "killedBy": ["Arya Stark"]}, {"name": "Black Walder Rivers", "alive": false, "killedBy": ["Arya Stark"]}]}
6	10	0:52:28	0:53:21	The Riverlands	The Twins	{"characters": [{"name": "Walder Frey", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Arya Stark"]}, {"name": "Arya Stark"}]}
6	10	0:53:21	0:56:05	The North	Winterfell	{"characters": [{"name": "Petyr Baelish"}, {"name": "Sansa Stark"}]}
6	10	0:56:05	0:57:34	North of the Wall	The Haunted Forest	{"characters": [{"name": "Benjen Stark"}, {"name": "Meera Reed"}, {"name": "Bran Stark"}]}
6	10	0:57:34	0:58:17	North of the Wall	The Haunted Forest	{"characters": [{"name": "Meera Reed"}, {"name": "Bran Stark"}]}
6	10	0:58:17	0:58:39	Dorne	Tower of Joy	{"characters": [{"name": "Young Ned Stark"}, {"name": "Bran Stark"}]}
6	10	0:58:39	1:00:12	Dorne	Tower of Joy	{"characters": [{"name": "Young Ned Stark"}, {"name": "Bran Stark"}, {"name": "Lyanna Stark"}]}
6	10	1:00:12	1:00:51	Dorne	Tower of Joy	{"characters": [{"name": "Young Ned Stark"}, {"name": "Bran Stark"}, {"name": "Lyanna Stark"}, {"name": "Baby Jon Snow"}]}
6	10	1:00:51	1:04:57	The North	Winterfell	{"characters": [{"name": "Jon Snow"}, {"name": "Yohn Royce"}, {"name": "Sansa Stark"}, {"name": "Tormund Giantsbane"}, {"name": "Petyr Baelish"}, {"name": "Wyman Manderly"}, {"name": "Lyanna Mormont"}, {"name": "Cley Cerwyn"}, {"name": "Robett Glover"}, {"name": "Davos Seaworth"}]}
6	10	1:04:57	1:05:30	The North	Winterfell	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Yohn Royce"}, {"name": "Sansa Stark"}, {"name": "Tormund Giantsbane"}, {"name": "Petyr Baelish"}, {"name": "Wyman Manderly"}, {"name": "Lyanna Mormont"}, {"name": "Cley Cerwyn"}, {"name": "Robett Glover"}, {"name": "Davos Seaworth"}]}
6	10	1:05:30	1:05:55	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Bronn"}]}
6	10	1:05:55	1:08:03	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister", "title": "King"}, {"name": "Gregor Clegane"}, {"name": "Jaime Lannister"}, {"name": "Qyburn", "title": "Hand"}]}
6	10	1:08:03	1:09:36	The Summer Sea	NULL	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Yara Greyjoy"}, {"name": "Grey Worm"}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
6	10	1:09:36	1:09:56	The Summer Sea	NULL	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lord Varys"}, {"name": "Missandei"}]}
6	10	1:09:56	1:10:14	The Summer Sea	NULL	{"characters": [{"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
7	1	0:03:54	0:04:20	The Riverlands	The Twins	{"characters": [{"name": "Walder Frey"}]}
7	1	0:04:20	0:07:04	The Riverlands	The Twins	{"characters": [{"name": "Walder Frey"}, {"name": "Kitty Frey"}]}
7	1	0:07:04	0:07:46	The Riverlands	The Twins	{"characters": [{"name": "Arya Stark"}, {"name": "Kitty Frey"}]}
7	1	0:09:33	0:11:19	North of the Wall	South to the Wall	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "Wight Walker"}, {"name": "Wun Wun Wight"}, {"name": "Mag the Mighty Wight"}]}
7	1	0:11:19	0:11:33	North of the Wall	The Wall	{"characters": [{"name": "Bran Stark"}, {"name": "Meera Reed"}]}
7	1	0:11:33	0:12:48	North of the Wall	The Wall	{"characters": [{"name": "Bran Stark"}, {"name": "Meera Reed"}, {"name": "Eddison Tollett"}]}
7	1	0:12:48	0:13:00	North of the Wall	The Wall	{"characters": [{"name": "Eddison Tollett"}]}
7	1	0:13:00	0:16:37	The North	Winterfell	{"characters": [{"name": "Davos Seaworth"}, {"name": "Jon Snow", "title": "King"}, {"name": "Sansa Stark"}, {"name": "Brienne of Tarth"}, {"name": "Podrick Payne"}, {"name": "Tormund Giantsbane"}, {"name": "Robett Glover"}, {"name": "Yohn Royce"}, {"name": "Lyanna Mormont"}, {"name": "Petyr Baelish"}, {"name": "Alys Karstark"}]}
7	1	0:16:37	0:18:00	The North	Winterfell	{"characters": [{"name": "Davos Seaworth"}, {"name": "Jon Snow", "title": "King"}, {"name": "Sansa Stark"}, {"name": "Brienne of Tarth"}, {"name": "Podrick Payne"}, {"name": "Tormund Giantsbane"}, {"name": "Robett Glover"}, {"name": "Yohn Royce"}, {"name": "Lyanna Mormont"}, {"name": "Petyr Baelish"}, {"name": "Alys Karstark"}, {"name": "Ned Umber"}]}
7	1	0:18:00	0:18:08	The North	Winterfell	{"characters": []}
7	1	0:18:08	0:19:37	The North	Winterfell	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Sansa Stark"}]}
7	1	0:19:37	0:19:49	The North	Winterfell	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Sansa Stark"}, {"name": "Maester Wolkan"}]}
7	1	0:19:49	0:20:50	The North	Winterfell	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Sansa Stark"}]}
7	1	0:20:50	0:21:03	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister", "title": "King"}]}
7	1	0:21:03	0:24:59	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister", "title": "King"}, {"name": "Jaime Lannister"}]}
7	1	0:24:59	0:25:35	The Crownlands	Blackwater Bay	{"characters": []}
7	1	0:25:35	0:26:28	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister", "title": "King"}, {"name": "Jaime Lannister"}, {"name": "Gregor Clegane"}]}
7	1	0:26:28	0:30:25	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister", "title": "King"}, {"name": "Jaime Lannister"}, {"name": "Gregor Clegane"}, {"name": "Qyburn", "title": "Hand"}, {"name": "Euron Greyjoy", "title": "King"}]}
7	1	0:30:25	0:33:19	The Reach	Oldtown	{"characters": [{"name": "Samwell Tarly"}]}
7	1	0:33:19	0:36:38	The Reach	Oldtown	{"characters": [{"name": "Samwell Tarly"}, {"name": "Archmaester Marwyn"}]}
7	1	0:36:38	0:37:18	The Reach	Oldtown	{"characters": [{"name": "Samwell Tarly"}]}
7	1	0:37:18	0:37:54	The North	Winterfell	{"characters": [{"name": "Brienne of Tarth"}, {"name": "Podrick Payne"}, {"name": "Tormund Giantsbane"}]}
7	1	0:37:54	0:38:18	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
7	1	0:38:18	0:38:23	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}, {"name": "Brienne of Tarth"}, {"name": "Podrick Payne"}, {"name": "Tormund Giantsbane"}]}
7	1	0:38:23	0:38:38	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
7	1	0:38:38	0:39:27	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}, {"name": "Brienne of Tarth"}]}
7	1	0:39:27	0:43:36	The Riverlands	South to King's Landing	{"characters": [{"name": "Arya Stark"}]}
7	1	0:43:36	0:44:41	The Riverlands	To The Eyrie	{"characters": [{"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	1	0:44:41	0:45:09	The Riverlands	To The Eyrie	{"characters": [{"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}]}
7	1	0:45:09	0:46:26	The Riverlands	To The Eyrie	{"characters": [{"name": "Sandor Clegane"}, {"name": "Beric Dondarrion"}, {"name": "Farmer Hamlet", "alive": false}, {"name": "Farmer's Daughter", "alive": false}]}
7	1	0:46:26	0:50:26	The Riverlands	To The Eyrie	{"characters": [{"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	1	0:50:26	0:52:51	The Riverlands	To The Eyrie	{"characters": [{"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}]}
7	1	0:52:51	0:53:04	The Reach	Oldtown	{"characters": []}
7	1	0:53:04	0:54:24	The Reach	Oldtown	{"characters": [{"name": "Samwell Tarly"}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
7	1	0:54:24	0:55:30	The Reach	Oldtown	{"characters": [{"name": "Samwell Tarly"}, {"name": "Jorah Mormont"}]}
7	1	0:55:30	0:56:20	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Grey Worm"}, {"name": "Rhaegal"}, {"name": "Viserion"}, {"name": "Drogon"}]}
7	1	0:56:20	0:58:36	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Grey Worm"}]}
7	1	0:58:36	0:59:25	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
7	1	0:59:25	1:00:04	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Grey Worm"}]}
7	1	1:00:04	1:01:04	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
7	2	0:04:26	0:05:01	The Crownlands	Dragonstone	{"characters": []}
7	2	0:05:01	0:09:50	The Crownlands	Dragonstone	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lord Varys"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Grey Worm"}, {"name": "Missandei"}]}
7	2	0:09:50	0:13:05	The Crownlands	Dragonstone	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lord Varys"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Grey Worm"}, {"name": "Missandei"}, {"name": "Melisandre"}]}
7	2	0:13:05	0:13:22	The North	Winterfell	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Sansa Stark"}]}
7	2	0:13:22	0:14:30	The North	Winterfell	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Sansa Stark"}, {"name": "Davos Seaworth"}]}
7	2	0:14:30	0:14:35	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister", "title": "King"}, {"name": "Jaime Lannister"}, {"name": "Gregor Clegane"}, {"name": "Qyburn", "title": "Hand"}]}
7	2	0:14:35	0:16:06	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister", "title": "King"}, {"name": "Jaime Lannister"}, {"name": "Gregor Clegane"}, {"name": "Qyburn", "title": "Hand"}, {"name": "Randyll Tarly"}, {"name": "Dickon Tarly"}]}
7	2	0:16:06	0:16:39	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Randyll Tarly"}, {"name": "Dickon Tarly"}]}
7	2	0:16:39	0:18:21	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Randyll Tarly"}]}
7	2	0:18:21	0:20:06	The Reach	Oldtown	{"characters": [{"name": "Samwell Tarly"}, {"name": "Archmaester Ebrose"}, {"name": "Jorah Mormont"}]}
7	2	0:20:06	0:20:34	The Reach	Oldtown	{"characters": [{"name": "Samwell Tarly"}, {"name": "Jorah Mormont"}]}
7	2	0:20:34	0:22:23	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister", "title": "King"}, {"name": "Qyburn", "title": "Hand"}]}
7	2	0:22:23	0:25:44	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Yara Greyjoy"}, {"name": "Theon Greyjoy"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lord Varys"}, {"name": "Missandei"}, {"name": "Grey Worm"}, {"name": "Ellaria Sand"}, {"name": "Olenna Tyrell"}]}
7	2	0:25:44	0:26:37	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Olenna Tyrell"}]}
7	2	0:26:37	0:26:45	The Crownlands	Dragonstone	{"characters": [{"name": "Grey Worm"}]}
7	2	0:26:45	0:31:25	The Crownlands	Dragonstone	{"characters": [{"name": "Grey Worm", "sex": {"with": ["Missandei"], "when": "present", "type": "love"}}, {"name": "Missandei", "sex": {"with": ["Grey Worm"], "when": "present", "type": "love"}}]}
7	2	0:31:25	0:32:50	The Reach	Oldtown	{"characters": [{"name": "Samwell Tarly"}, {"name": "Archmaester Ebrose"}]}
7	2	0:32:50	0:33:19	The Reach	Oldtown	{"characters": [{"name": "Jorah Mormont"}]}
7	2	0:33:19	0:36:41	The Reach	Oldtown	{"characters": [{"name": "Jorah Mormont"}, {"name": "Samwell Tarly"}]}
7	2	0:36:41	0:36:49	The Riverlands	Crossroads Inn	{"characters": []}
7	2	0:36:49	0:37:07	The Riverlands	Crossroads Inn	{"characters": [{"name": "Arya Stark"}]}
7	2	0:37:07	0:39:43	The Riverlands	Crossroads Inn	{"characters": [{"name": "Arya Stark"}, {"name": "Hot Pie"}]}
7	2	0:39:43	0:40:14	The Riverlands	Crossroads Inn	{"characters": [{"name": "Arya Stark"}]}
7	2	0:40:14	0:40:41	The North	Winterfell	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Maester Wolkan"}]}
7	2	0:40:41	0:44:38	The North	Winterfell	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Lyanna Mormont"}, {"name": "Alys Karstark"}, {"name": "Ned Umber"}, {"name": "Robett Glover"}, {"name": "Sansa Stark"}, {"name": "Petyr Baelish"}, {"name": "Yohn Royce"}, {"name": "Davos Seaworth"}, {"name": "Brienne of Tarth"}]}
7	2	0:44:38	0:44:47	The North	Winterfell	{"characters": [{"name": "Jon Snow", "title": "King"}]}
7	2	0:44:47	0:46:35	The North	Winterfell	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Petyr Baelish"}]}
7	2	0:46:35	0:46:40	The North	Winterfell	{"characters": [{"name": "Jon Snow", "title": "King"}]}
7	2	0:46:40	0:46:51	The North	Winterfell	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}]}
7	2	0:46:51	0:47:05	The North	Winterfell	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}, {"name": "Sansa Stark"}]}
7	2	0:47:05	0:47:08	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}]}
7	2	0:47:08	0:47:20	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
7	2	0:47:20	0:48:40	The Riverlands	To The Twins	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
7	2	0:48:40	0:49:57	The Riverlands	To The Twins	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Nymeria"}]}
7	2	0:49:57	0:50:17	The Riverlands	To The Twins	{"characters": [{"name": "Arya Stark"}]}
7	2	0:50:17	0:50:31	The Narrow Sea	NULL	{"characters": []}
7	2	0:50:31	0:51:03	The Narrow Sea	NULL	{"characters": [{"name": "Obara Sand"}, {"name": "Tyene Sand"}, {"name": "Nymeria Sand"}]}
7	2	0:51:03	0:52:37	The Narrow Sea	NULL	{"characters": [{"name": "Ellaria Sand"}, {"name": "Yara Greyjoy"}, {"name": "Theon Greyjoy"}]}
7	2	0:52:37	0:53:04	The Narrow Sea	NULL	{"characters": [{"name": "Yara Greyjoy"}, {"name": "Theon Greyjoy"}]}
7	2	0:53:04	0:53:15	The Narrow Sea	NULL	{"characters": []}
7	2	0:53:15	0:54:05	The Narrow Sea	NULL	{"characters": [{"name": "Yara Greyjoy"}, {"name": "Theon Greyjoy"}, {"name": "Euron Greyjoy", "title": "King"}]}
7	2	0:54:05	0:54:16	The Narrow Sea	NULL	{"characters": [{"name": "Yara Greyjoy"}, {"name": "Theon Greyjoy"}, {"name": "Euron Greyjoy", "title": "King"}, {"name": "Tyene Sand"}]}
7	2	0:54:16	0:54:30	The Narrow Sea	NULL	{"characters": [{"name": "Ellaria Sand"}, {"name": "Tyene Sand"}]}
7	2	0:54:30	0:55:00	The Narrow Sea	NULL	{"characters": [{"name": "Yara Greyjoy"}, {"name": "Theon Greyjoy"}]}
7	2	0:55:00	0:55:07	The Narrow Sea	NULL	{"characters": [{"name": "Euron Greyjoy", "title": "King"}]}
7	2	0:55:07	0:55:25	The Narrow Sea	NULL	{"characters": [{"name": "Euron Greyjoy", "title": "King"}, {"name": "Obara Sand"}, {"name": "Nymeria Sand"}]}
7	2	0:55:25	0:55:29	The Narrow Sea	NULL	{"characters": [{"name": "Tyene Sand"}]}
7	2	0:55:29	0:55:48	The Narrow Sea	NULL	{"characters": [{"name": "Euron Greyjoy", "title": "King"}, {"name": "Obara Sand", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["Euron Greyjoy"]}, {"name": "Nymeria Sand"}]}
7	2	0:55:48	0:56:03	The Narrow Sea	NULL	{"characters": [{"name": "Euron Greyjoy", "title": "King"}, {"name": "Nymeria Sand", "alive": false, "mannerOfDeath": "Choking", "killedBy": ["Euron Greyjoy"]}]}
7	2	0:56:03	0:56:17	The Narrow Sea	NULL	{"characters": [{"name": "Ellaria Sand"}, {"name": "Tyene Sand"}]}
7	2	0:56:17	0:56:28	The Narrow Sea	NULL	{"characters": []}
7	2	0:56:28	0:57:12	The Narrow Sea	NULL	{"characters": [{"name": "Euron Greyjoy", "title": "King"}, {"name": "Yara Greyjoy"}]}
7	2	0:57:12	0:57:19	The Narrow Sea	NULL	{"characters": [{"name": "Theon Greyjoy"}]}
7	2	0:57:19	0:58:13	The Narrow Sea	NULL	{"characters": [{"name": "Euron Greyjoy", "title": "King"}, {"name": "Yara Greyjoy"}, {"name": "Theon Greyjoy"}]}
7	2	0:58:13	0:58:20	The Narrow Sea	NULL	{"characters": [{"name": "Euron Greyjoy", "title": "King"}, {"name": "Yara Greyjoy"}]}
7	2	0:58:20	0:58:28	The Narrow Sea	NULL	{"characters": [{"name": "Obara Sand", "alive": false}, {"name": "Nymeria Sand", "alive": false}]}
7	2	0:58:28	0:58:35	The Narrow Sea	NULL	{"characters": [{"name": "Theon Greyjoy"}]}
7	2	0:58:35	0:58:41	The Narrow Sea	NULL	{"characters": [{"name": "Obara Sand", "alive": false}, {"name": "Nymeria Sand", "alive": false}]}
7	2	0:58:41	0:59:13	The Narrow Sea	NULL	{"characters": [{"name": "Theon Greyjoy"}]}
7	3	0:03:59	0:04:06	The Crownlands	Dragonstone	{"characters": []}
7	3	0:04:06	0:05:40	The Crownlands	Dragonstone	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Davos Seaworth"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Missandei"}, {"name": "Qhono"}]}
7	3	0:05:40	0:06:25	The Crownlands	Dragonstone	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "gives", "name": "Longclaw"}]}, {"name": "Davos Seaworth"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Missandei"}, {"name": "Qhono", "weapon": [{"action": "receives", "name": "Longclaw"}]}]}
7	3	0:06:25	0:07:27	The Crownlands	Dragonstone	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Missandei"}, {"name": "Qhono"}]}
7	3	0:07:27	0:08:03	The Crownlands	Dragonstone	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Missandei"}, {"name": "Qhono"}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
7	3	0:08:03	0:09:48	The Crownlands	Dragonstone	{"characters": [{"name": "Melisandre"}, {"name": "Lord Varys"}]}
7	3	0:09:48	0:09:54	The Crownlands	Dragonstone	{"characters": [{"name": "Melisandre"}, {"name": "Lord Varys"}]}
7	3	0:09:54	0:19:15	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Missandei"}, {"name": "Qhono"}]}
7	3	0:19:15	0:20:05	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Missandei"}, {"name": "Qhono"}, {"name": "Lord Varys"}]}
7	3	0:20:05	0:20:25	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Missandei"}, {"name": "Lord Varys"}]}
7	3	0:20:25	0:21:11	The Narrow Sea	NULL	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Harrag"}]}
7	3	0:21:11	0:21:19	The Crownlands	King's Landing	{"characters": []}
7	3	0:21:19	0:22:34	The Crownlands	King's Landing	{"characters": [{"name": "Euron Greyjoy", "title": "King"}, {"name": "Yara Greyjoy"}, {"name": "Ellaria Sand"}, {"name": "Tyene Sand"}]}
7	3	0:22:34	0:22:41	The Crownlands	King's Landing	{"characters": [{"name": "Euron Greyjoy", "title": "King"}, {"name": "Yara Greyjoy"}, {"name": "Ellaria Sand"}, {"name": "Tyene Sand"}]}
7	3	0:22:41	0:25:17	The Crownlands	King's Landing	{"characters": [{"name": "Euron Greyjoy", "title": "King"}, {"name": "Yara Greyjoy"}, {"name": "Ellaria Sand"}, {"name": "Tyene Sand"}, {"name": "Cersei Lannister", "title": "King"}, {"name": "Gregor Clegane"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Qyburn", "title": "Hand"}]}
7	3	0:25:17	0:29:54	The Crownlands	King's Landing	{"characters": [{"name": "Ellaria Sand"}, {"name": "Tyene Sand"}, {"name": "Cersei Lannister", "title": "King"}, {"name": "Gregor Clegane"}, {"name": "Qyburn", "title": "Hand"}]}
7	3	0:29:54	0:30:03	The Crownlands	King's Landing	{"characters": [{"name": "Ellaria Sand"}, {"name": "Tyene Sand", "alive": false, "mannerOfDeath": "Poison", "killedBy": ["Cersei Lannister"]}]}
7	3	0:30:03	0:30:09	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}]}
7	3	0:30:09	0:30:49	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister", "sex": {"with": ["Cersei Lannister"], "when": "present", "type": "love"}}, {"name": "Cersei Lannister", "title": "King", "sex": {"with": ["Jaime Lannister"], "when": "present", "type": "love"}}]}
7	3	0:30:49	0:31:23	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Cersei Lannister", "title": "King"}]}
7	3	0:31:23	0:31:41	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Cersei Lannister", "title": "King"}, {"name": "Bernadette"}]}
7	3	0:31:41	0:34:24	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister", "title": "King"}, {"name": "Tycho Nestoris"}]}
7	3	0:34:24	0:38:15	The Crownlands	Dragonstone	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
7	3	0:38:15	0:40:09	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
7	3	0:40:09	0:40:46	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jon Snow", "title": "King"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
7	3	0:40:46	0:42:03	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jon Snow", "title": "King"}]}
7	3	0:42:03	0:42:11	The North	Winterfell	{"characters": []}
7	3	0:42:11	0:43:13	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}, {"name": "Maester Wolkan"}, {"name": "Yohn Royce"}]}
7	3	0:43:13	0:43:29	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}, {"name": "Yohn Royce"}]}
7	3	0:43:29	0:44:48	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
7	3	0:44:48	0:44:58	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}]}
7	3	0:44:58	0:45:32	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Bran Stark"}, {"name": "Meera Reed"}]}
7	3	0:45:32	0:47:32	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Bran Stark"}]}
7	3	0:47:32	0:48:43	The Reach	Oldtown	{"characters": [{"name": "Archmaester Ebrose"}, {"name": "Samwell Tarly"}, {"name": "Jorah Mormont"}]}
7	3	0:48:43	0:50:01	The Reach	Oldtown	{"characters": [{"name": "Samwell Tarly"}, {"name": "Jorah Mormont"}]}
7	3	0:50:01	0:51:47	The Reach	Oldtown	{"characters": [{"name": "Archmaester Ebrose"}, {"name": "Samwell Tarly"}]}
7	3	0:51:47	0:52:47	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Missandei"}, {"name": "Lord Varys"}]}
7	3	0:52:47	0:52:59	The Westerlands	Casterly Rock	{"characters": []}
7	3	0:52:59	0:53:05	The Westerlands	Casterly Rock	{"characters": [{"name": "Grey Worm"}]}
7	3	0:53:05	0:53:37	The Westerlands	Casterly Rock	{"characters": []}
7	3	0:53:37	0:54:12	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Missandei"}, {"name": "Lord Varys"}]}
7	3	0:54:12	0:54:47	The Westerlands	Casterly Rock	{"characters": [{"name": "Grey Worm"}]}
7	3	0:54:47	0:55:00	The Westerlands	Casterly Rock	{"characters": []}
7	3	0:55:00	0:55:25	The Westerlands	Casterly Rock	{"characters": [{"name": "Grey Worm"}]}
7	3	0:55:25	0:56:12	The Westerlands	Casterly Rock	{"characters": [{"name": "Grey Worm"}]}
7	3	0:56:12	0:56:26	The Reach	Highgarden	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	3	0:56:26	0:56:45	The Reach	Highgarden	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Bronn"}, {"name": "Randyll Tarly"}, {"name": "Dickon Tarly"}]}
7	3	0:56:45	0:57:05	The Reach	Highgarden	{"characters": [{"name": "Olenna Tyrell"}]}
7	3	0:57:05	0:57:30	The Reach	Highgarden	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	3	0:57:30	1:03:04	The Reach	Highgarden	{"characters": [{"name": "Olenna Tyrell", "alive": false, "mannerOfDeath": "Poison", "killedBy": ["Jaime Lannister"]}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	4	0:03:55	0:04:17	The Reach	Highgarden	{"characters": []}
7	4	0:04:17	0:04:23	The Reach	Highgarden	{"characters": [{"name": "Jaime Lannister"}]}
7	4	0:04:23	0:05:45	The Reach	Highgarden	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Bronn"}]}
7	4	0:04:45	0:06:42	The Reach	Highgarden	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Bronn"}, {"name": "Randyll Tarly"}, {"name": "Dickon Tarly"}]}
7	4	0:06:42	0:08:12	The Crownlands	King's Landing	{"characters": [{"name": "Tycho Nestoris"}, {"name": "Cersei Lannister", "title": "King"}]}
7	4	0:08:12	0:09:57	The North	Winterfell	{"characters": [{"name": "Petyr Baelish", "weapon": [{"action": "gives", "name": "Valyrian Steel Dagger"}]}, {"name": "Bran Stark", "weapon": [{"action": "receives", "name": "Valyrian Steel Dagger"}]}]}
7	4	0:09:57	0:10:19	The North	Winterfell	{"characters": [{"name": "Petyr Baelish"}, {"name": "Bran Stark", "weapon": [{"action": "has", "name": "Valyrian Steel Dagger"}]}, {"name": "Meera Reed"}]}
7	4	0:10:19	0:12:03	The North	Winterfell	{"characters": [{"name": "Bran Stark", "weapon": [{"action": "has", "name": "Valyrian Steel Dagger"}]}, {"name": "Meera Reed"}]}
7	4	0:12:03	0:12:19	The North	The Kingsroad South to King's Landing	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
7	4	0:12:19	0:14:02	The North	Winterfell	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Koner"}, {"name": "Henk"}]}
7	4	0:14:02	0:14:33	The North	Winterfell	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}]}
7	4	0:14:33	0:14:48	The North	Winterfell	{"characters": [{"name": "Koner"}, {"name": "Henk"}]}
7	4	0:14:48	0:15:07	The North	Winterfell	{"characters": [{"name": "Koner"}, {"name": "Henk"}, {"name": "Sansa Stark"}]}
7	4	0:15:07	0:17:55	The North	Winterfell	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}]}, {"name": "Sansa Stark"}]}
7	4	0:17:55	0:20:30	The North	Winterfell	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "receives", "name": "Valyrian Steel Dagger"}]}, {"name": "Sansa Stark"}, {"name": "Bran Stark", "weapon": [{"action": "gives", "name": "Valyrian Steel Dagger"}]}]}
7	4	0:20:30	0:20:53	The North	Winterfell	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "has", "name": "Valyrian Steel Dagger"}]}, {"name": "Sansa Stark"}, {"name": "Bran Stark"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}]}
7	4	0:20:53	0:21:13	The North	Winterfell	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}]}
7	4	0:21:13	0:21:20	The North	Winterfell	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "has", "name": "Valyrian Steel Dagger"}]}, {"name": "Sansa Stark"}, {"name": "Bran Stark"}, {"name": "Petyr Baelish"}]}
7	4	0:21:20	0:21:50	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Qhono"}]}
7	4	0:21:50	0:22:01	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Qhono"}, {"name": "Jon Snow", "title": "King"}]}
7	4	0:22:01	0:22:10	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Jon Snow", "title": "King"}]}
7	4	0:22:10	0:23:12	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}]}
7	4	0:23:12	0:26:16	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jon Snow", "title": "King"}]}
7	4	0:26:16	0:27:32	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lord Varys"}]}
7	4	0:27:32	0:27:36	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lord Varys"}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
7	4	0:27:36	0:28:13	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lord Varys"}]}
7	4	0:28:13	0:28:18	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lord Varys"}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
7	4	0:28:18	0:28:55	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lord Varys"}]}
7	4	0:28:55	0:28:58	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Missandei"}, {"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lord Varys"}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}]}
7	4	0:28:58	0:29:17	The North	Winterfell	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}]}
7	4	0:29:17	0:29:48	The North	Winterfell	{"characters": [{"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}, {"action": "inspects", "name": "Valyrian Steel Dagger"}]}, {"name": "Podrick Payne"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "shows", "name": "Valyrian Steel Dagger"}]}]}
7	4	0:29:48	0:29:56	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
7	4	0:29:56	0:32:26	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Podrick Payne"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "has", "name": "Valyrian Steel Dagger"}]}]}
7	4	0:32:26	0:33:01	The Crownlands	Dragonstone	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}]}
7	4	0:33:01	0:34:44	The Crownlands	Dragonstone	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}, {"name": "Missandei"}]}
7	4	0:34:44	0:34:54	The Crownlands	Dragonstone	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Harrag"}]}
7	4	0:34:54	0:36:22	The Crownlands	Dragonstone	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Harrag"}, {"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}, {"name": "Missandei"}]}
7	4	0:36:22	0:36:37	The Crownlands	Blackwater Rush	{"characters": [{"name": "Bronn"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	4	0:36:37	0:37:10	The Crownlands	Blackwater Rush	{"characters": [{"name": "Bronn"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Randyll Tarly"}]}
7	4	0:37:10	0:37:17	The Crownlands	Blackwater Rush	{"characters": [{"name": "Bronn"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	4	0:37:17	0:38:48	The Crownlands	Blackwater Rush	{"characters": [{"name": "Bronn"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Dickon Tarly"}]}
7	4	0:38:48	0:39:29	The Crownlands	Blackwater Rush	{"characters": [{"name": "Bronn"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Dickon Tarly"}, {"name": "Randyll Tarly"}]}
7	4	0:39:29	0:39:47	The Crownlands	Blackwater Rush	{"characters": []}
7	4	0:39:47	0:40:24	The Crownlands	Blackwater Rush	{"characters": [{"name": "Bronn"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Dickon Tarly"}, {"name": "Randyll Tarly"}]}
7	4	0:40:24	0:40:45	The Crownlands	Blackwater Rush	{"characters": [{"name": "Bronn"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Dickon Tarly"}, {"name": "Randyll Tarly"}, {"name": "Drogon"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
7	4	0:40:45	0:40:58	The Crownlands	Blackwater Rush	{"characters": []}
7	4	0:40:58	0:41:02	The Crownlands	Blackwater Rush	{"characters": [{"name": "Dickon Tarly"}]}
7	4	0:41:02	0:42:14	The Crownlands	Blackwater Rush	{"characters": []}
7	4	0:41:24	0:41:27	The Crownlands	Blackwater Rush	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	4	0:41:27	0:41:49	The Crownlands	Blackwater Rush	{"characters": []}
7	4	0:41:49	0:41:51	The Crownlands	Blackwater Rush	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	4	0:41:51	0:42:11	The Crownlands	Blackwater Rush	{"characters": []}
7	4	0:42:11	0:42:13	The Crownlands	Blackwater Rush	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}]}
7	4	0:42:13	0:42:17	The Crownlands	Blackwater Rush	{"characters": []}
7	4	0:42:17	0:42:29	The Crownlands	Blackwater Rush	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}]}
7	4	0:42:29	0:43:09	The Crownlands	Blackwater Rush	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Bronn"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	4	0:43:09	0:43:19	The Crownlands	Blackwater Rush	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}]}
7	4	0:43:19	0:43:34	The Crownlands	Blackwater Rush	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Bronn"}]}
7	4	0:43:34	0:43:36	The Crownlands	Blackwater Rush	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	4	0:43:36	0:43:44	The Crownlands	Blackwater Rush	{"characters": [{"name": "Drogon"}]}
7	4	0:43:44	0:43:54	The Crownlands	Blackwater Rush	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	4	0:43:54	0:43:59	The Crownlands	Blackwater Rush	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Dickon Tarly"}]}
7	4	0:43:59	0:45:11	The Crownlands	Blackwater Rush	{"characters": [{"name": "Bronn"}, {"name": "Drogon"}]}
7	4	0:45:11	0:45:52	The Crownlands	Blackwater Rush	{"characters": [{"name": "Bronn"}]}
7	4	0:45:52	0:45:57	The Crownlands	Blackwater Rush	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}]}
7	4	0:45:57	0:46:08	The Crownlands	Blackwater Rush	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Qhono"}]}
7	4	0:46:08	0:46:14	The Crownlands	Blackwater Rush	{"characters": []}
7	4	0:46:14	0:46:21	The Crownlands	Blackwater Rush	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Qhono"}]}
7	4	0:46:21	0:46:28	The Crownlands	Blackwater Rush	{"characters": []}
7	4	0:46:28	0:46:29	The Crownlands	Blackwater Rush	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}]}
7	4	0:46:29	0:46:46	The Crownlands	Blackwater Rush	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	4	0:46:46	0:47:13	The Crownlands	Blackwater Rush	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	4	0:47:13	0:47:27	The Crownlands	Blackwater Rush	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Bronn"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Qhono"}]}
7	4	0:47:27	0:47:48	The Crownlands	Blackwater Rush	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Bronn"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
7	4	0:47:48	0:48:09	The Crownlands	Blackwater Rush	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Bronn"}]}
7	4	0:48:09	0:48:12	The Crownlands	Blackwater Rush	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Qhono"}]}
7	4	0:48:12	0:48:20	The Crownlands	Blackwater Rush	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Bronn"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
7	4	0:48:20	0:48:45	The Crownlands	Blackwater Rush	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Bronn"}]}
7	4	0:48:45	0:48:59	The Crownlands	Blackwater Rush	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}]}
7	4	0:48:59	0:49:12	The Crownlands	Blackwater Rush	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	4	0:49:12	0:49:20	The Crownlands	Blackwater Rush	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	4	0:49:20	0:49:33	The Crownlands	Blackwater Rush	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Drogon"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Qhono"}]}
7	4	0:49:33	0:49:40	The Crownlands	Blackwater Rush	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Drogon"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
7	4	0:49:40	0:49:43	The Crownlands	Blackwater Rush	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Drogon"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Bronn"}]}
7	4	0:49:43	0:49:46	The Crownlands	Blackwater Rush	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Bronn"}]}
7	4	0:49:46	0:50:05	The Crownlands	Blackwater Rush	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	5	0:03:55	0:05:41	The Crownlands	Blackwater Rush	{"characters": [{"name": "Bronn"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	5	0:05:41	0:05:46	The Crownlands	Blackwater Rush	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	5	0:05:46	0:06:29	The Crownlands	Blackwater Rush	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}]}
7	5	0:06:29	0:06:38	The Crownlands	Blackwater Rush	{"characters": [{"name": "Drogon"}]}
7	5	0:06:38	0:06:41	The Crownlands	Blackwater Rush	{"characters": []}
7	5	0:06:41	0:11:21	The Crownlands	Blackwater Rush	{"characters": [{"name": "Drogon"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Qhono"}, {"name": "Randyll Tarly", "alive": false, "mannerOfDeath": "Dragon", "killedBy": ["Daenerys Targaryen"]}, {"name": "Dickon Tarly", "alive": false, "mannerOfDeath": "Dragon", "killedBy": ["Daenerys Targaryen"]}]}
7	5	0:11:21	0:11:53	The Crownlands	Blackwater Rush	{"characters": [{"name": "Drogon"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Qhono"}]}
7	5	0:11:53	0:12:04	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Qyburn", "title": "Hand"}]}
7	5	0:12:04	0:14:33	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Cersei Lannister", "title": "King"}]}
7	5	0:14:33	0:16:31	The Crownlands	Dragonstone	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Drogon"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
7	5	0:16:31	0:16:58	The Crownlands	Dragonstone	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Drogon"}, {"name": "Rhaegal"}, {"name": "Viserion"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
7	5	0:16:58	0:17:51	The Crownlands	Dragonstone	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
7	5	0:17:51	0:18:58	The Crownlands	Dragonstone	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Qhono"}, {"name": "Jorah Mormont"}]}
7	5	0:18:58	0:19:10	The North	Winterfell	{"characters": [{"name": "Bran Stark"}]}
7	5	0:19:10	0:19:23	The North	North to the Wall	{"characters": []}
7	5	0:19:23	0:19:29	The Wall	Eastwatch	{"characters": []}
7	5	0:19:29	0:19:36	North of the Wall	The Wall	{"characters": []}
7	5	0:19:36	0:20:08	North of the Wall	South to the Wall	{"characters": []}
7	5	0:20:08	0:20:14	North of the Wall	South to the Wall	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "White Walker"}]}
7	5	0:20:14	0:20:26	The North	Winterfell	{"characters": [{"name": "Bran Stark"}, {"name": "Maester Wolkan"}]}
7	5	0:20:26	0:23:09	The Reach	Oldtown	{"characters": [{"name": "Archmaester Ebrose"}, {"name": "Samwell Tarly"}]}
7	5	0:23:09	0:23:27	The Reach	Oldtown	{"characters": [{"name": "Archmaester Ebrose"}]}
7	5	0:23:27	0:25:09	The Crownlands	Dragonstone	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lord Varys"}]}
7	5	0:25:09	0:28:45	The Crownlands	Dragonstone	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lord Varys"}, {"name": "Jorah Mormont"}, {"name": "Davos Seaworth"}]}
7	5	0:28:45	0:29:35	The North	Winterfell	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "has", "name": "Valyrian Steel Dagger"}]}, {"name": "Sansa Stark"}, {"name": "Robett Glover"}, {"name": "Yohn Royce"}]}
7	5	0:29:35	0:31:43	The North	Winterfell	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "has", "name": "Valyrian Steel Dagger"}]}, {"name": "Sansa Stark"}]}
7	5	0:31:43	0:32:23	The Crownlands	King's Landing	{"characters": [{"name": "Davos Seaworth"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
7	5	0:32:23	0:32:50	The Crownlands	King's Landing	{"characters": [{"name": "Bronn"}, {"name": "Jaime Lannister"}]}
7	5	0:32:50	0:33:03	The Crownlands	King's Landing	{"characters": [{"name": "Bronn"}, {"name": "Jaime Lannister"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
7	5	0:33:03	0:34:46	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
7	5	0:34:46	0:37:10	The Crownlands	King's Landing	{"characters": [{"name": "Davos Seaworth"}, {"name": "Gendry"}]}
7	5	0:37:10	0:39:16	The Crownlands	King's Landing	{"characters": [{"name": "Davos Seaworth"}, {"name": "Gendry"}, {"name": "Kevin Eldon"}, {"name": "Laurence Spellman"}]}
7	5	0:39:16	0:40:19	The Crownlands	King's Landing	{"characters": [{"name": "Davos Seaworth"}, {"name": "Gendry"}, {"name": "Kevin Eldon", "alive": false, "mannerOfDeath": "Head crush", "killedBy": ["Gendry"]}, {"name": "Laurence Spellman", "alive": false, "mannerOfDeath": "Head crush", "killedBy": ["Gendry"]}, {"name": "Tyrion Lannister", "title": "Hand"}]}
7	5	0:40:19	0:40:35	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Qyburn", "title": "Hand"}, {"name": "Cersei Lannister", "title": "King"}]}
7	5	0:40:35	0:43:14	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister"}, {"name": "Cersei Lannister", "title": "King"}]}
7	5	0:43:14	0:43:34	The Crownlands	Dragonstone	{"characters": [{"name": "Davos Seaworth"}, {"name": "Gendry"}]}
7	5	0:43:34	0:45:18	The Crownlands	Dragonstone	{"characters": [{"name": "Davos Seaworth"}, {"name": "Gendry"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
7	5	0:45:18	0:45:56	The Crownlands	Dragonstone	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
7	5	0:45:56	0:46:19	The Crownlands	Dragonstone	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Qhono"}]}
7	5	0:46:19	0:47:21	The Crownlands	Dragonstone	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Qhono"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Davos Seaworth"}, {"name": "Gendry"}]}
7	5	0:47:21	0:49:09	The Reach	Oldtown	{"characters": [{"name": "Samwell Tarly"}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
7	5	0:49:09	0:50:01	The Reach	Oldtown	{"characters": [{"name": "Samwell Tarly"}]}
7	5	0:50:01	0:50:43	The Reach	Oldtown	{"characters": [{"name": "Samwell Tarly"}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
7	5	0:50:43	0:51:19	The North	Winterfell	{"characters": [{"name": "Petyr Baelish"}, {"name": "Adele Smyth-Kennedy"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "has", "name": "Valyrian Steel Dagger"}]}]}
7	5	0:51:19	0:51:39	The North	Winterfell	{"characters": [{"name": "Petyr Baelish"}, {"name": "Yohn Royce"}, {"name": "Robett Glover"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "has", "name": "Valyrian Steel Dagger"}]}]}
7	5	0:51:39	0:52:27	The North	Winterfell	{"characters": [{"name": "Petyr Baelish"}, {"name": "Maester Wolkan"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "has", "name": "Valyrian Steel Dagger"}]}]}
7	5	0:52:27	0:52:50	The North	Winterfell	{"characters": [{"name": "Petyr Baelish"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "has", "name": "Valyrian Steel Dagger"}]}]}
7	5	0:52:50	0:54:15	The North	Winterfell	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "has", "name": "Valyrian Steel Dagger"}]}]}
7	5	0:54:14	0:54:33	The North	Winterfell	{"characters": [{"name": "Petyr Baelish"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "has", "name": "Valyrian Steel Dagger"}]}]}
7	5	0:54:33	0:54:52	The Wall	Eastwatch	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}]}
7	5	0:54:52	0:55:47	The Wall	Eastwatch	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane"}]}
7	5	0:55:47	0:58:08	The Wall	Eastwatch	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	5	0:58:08	0:58:53	The Wall	Eastwatch	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	5	0:58:53	0:59:10	North of the Wall	The Wall	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	6	0:04:03	0:04:17	The Crownlands	Dragonstone	{"characters": []}
7	6	0:04:17	0:06:02	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	6	0:06:02	0:07:18	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	6	0:07:18	0:08:20	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	6	0:08:20	0:09:42	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "gives", "name": "Longclaw"}]}, {"name": "Jorah Mormont", "weapon": [{"action": "returns", "name": "Longclaw"}]}]}
7	6	0:09:42	0:09:53	The North	Winterfell	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "has", "name": "Valyrian Steel Dagger"}]}]}
7	6	0:09:53	0:15:17	The North	Winterfell	{"characters": [{"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "has", "name": "Valyrian Steel Dagger"}]}, {"name": "Sansa Stark"}]}
7	6	0:15:17	0:15:32	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	6	0:15:32	0:16:25	North of the Wall	The Haunted Forest	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}]}
7	6	0:16:25	0:16:42	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}]}
7	6	0:16:42	0:17:10	North of the Wall	The Haunted Forest	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}]}
7	6	0:17:10	0:17:28	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Beric Dondarrion"}]}
7	6	0:17:28	0:18:07	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	6	0:18:07	0:19:08	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Beric Dondarrion"}]}
7	6	0:19:08	0:19:35	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	6	0:19:35	0:24:40	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
7	6	0:24:40	0:27:16	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	6	0:27:16	0:27:28	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Jorah Mormont", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	6	0:27:28	0:29:03	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	6	0:29:03	0:31:00	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
7	6	0:31:00	0:31:07	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	6	0:31:07	0:31:54	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jorah Mormont"}, {"name": "Thoros of Myr"}]}
7	6	0:31:54	0:32:07	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	6	0:32:07	0:32:36	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Tormund Giantsbane"}, {"name": "White Walker"}]}
7	6	0:32:36	0:32:49	North of the Wall	The Haunted Forest	{"characters": []}
7	6	0:32:49	0:33:20	North of the Wall	The Haunted Forest	{"characters": [{"name": "White Walker"}]}
7	6	0:33:20	0:33:44	North of the Wall	The Haunted Forest	{"characters": [{"name": "White Walker", "mannerOfDeath": "Chest stab", "killedBy": ["Jon Snow"]}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	6	0:33:44	0:35:21	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Gendry"}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane"}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	6	0:35:21	0:37:05	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	6	0:37:05	0:37:24	North of the Wall	The Haunted Forest	{"characters": [{"name": "Gendry"}]}
7	6	0:37:24	0:37:38	North of the Wall	The Haunted Forest	{"characters": [{"name": "Gendry"}]}
7	6	0:37:38	0:38:05	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr"}, {"name": "Beric Dondarrion"}]}
7	6	0:38:05	0:38:29	North of the Wall	The Wall	{"characters": [{"name": "Gendry"}]}
7	6	0:38:29	0:38:32	The Wall	Eastwatch	{"characters": [{"name": "Davos Seaworth"}]}
7	6	0:38:32	0:38:50	North of the Wall	The Wall	{"characters": [{"name": "Gendry"}, {"name": "Davos Seaworth"}]}
7	6	0:38:50	0:38:56	North of the Wall	The Haunted Forest	{"characters": []}
7	6	0:38:56	0:41:02	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Sandor Clegane"}, {"name": "Thoros of Myr", "alive": false, "mannerOfDeath": "Frozen"}, {"name": "Beric Dondarrion"}]}
7	6	0:41:02	0:42:00	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Sandor Clegane"}, {"name": "Beric Dondarrion"}]}
7	6	0:42:00	0:42:51	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Jorah Mormont"}, {"name": "Tormund Giantsbane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Sandor Clegane"}, {"name": "Beric Dondarrion"}, {"name": "The Night King", "title": "King"}, {"name": "White Walker"}]}
7	6	0:42:51	0:43:18	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Maester Wolkan"}]}
7	6	0:43:18	0:45:03	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Brienne of Tarth"}]}
7	6	0:45:03	0:46:09	The Crownlands	Dragonstone	{"characters": [{"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}]}
7	6	0:46:09	0:48:32	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Jorah Mormont", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Tormund Giantsbane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Sandor Clegane"}, {"name": "Beric Dondarrion"}]}
7	6	0:48:32	0:52:08	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Jorah Mormont", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Tormund Giantsbane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Sandor Clegane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Beric Dondarrion"}]}
7	6	0:52:08	0:53:16	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Jorah Mormont", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Tormund Giantsbane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Sandor Clegane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Beric Dondarrion"}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
7	6	0:53:16	0:53:24	North of the Wall	The Haunted Forest	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "White Walker"}]}
7	6	0:53:24	0:54:04	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Jorah Mormont", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Tormund Giantsbane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Sandor Clegane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Beric Dondarrion"}, {"name": "Drogon"}, {"name": "Viserion"}, {"name": "Rhaegal"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "The Night King", "title": "King"}, {"name": "White Walker"}]}
7	6	0:54:04	0:54:47	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Jorah Mormont", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Tormund Giantsbane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Sandor Clegane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Beric Dondarrion"}, {"name": "Drogon"}, {"name": "Rhaegal"}, {"name": "Viserion", "alive": false, "mannerOfDeath": "Chest stab", "killedBy": ["The Night King"]}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "The Night King", "title": "King"}]}
7	6	0:54:47	0:55:39	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Jorah Mormont", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Tormund Giantsbane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Sandor Clegane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Beric Dondarrion"}, {"name": "Drogon"}, {"name": "Rhaegal"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "The Night King", "title": "King"}, {"name": "White Walker"}]}
7	6	0:55:39	0:55:57	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jorah Mormont", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Tormund Giantsbane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Sandor Clegane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Beric Dondarrion"}, {"name": "Drogon"}, {"name": "Rhaegal"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "The Night King", "title": "King"}, {"name": "White Walker"}]}
7	6	0:55:57	0:56:27	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jorah Mormont", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Tormund Giantsbane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Sandor Clegane", "weapon": [{"action": "has", "name": "Dragonglass"}]}, {"name": "Beric Dondarrion"}, {"name": "Drogon"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
7	6	0:56:27	0:56:39	North of the Wall	The Haunted Forest	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "White Walker"}]}
7	6	0:56:39	0:56:48	North of the Wall	The Haunted Forest	{"characters": []}
7	6	0:56:48	0:58:03	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
7	6	0:58:03	0:58:39	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Benjen Stark"}]}
7	6	0:58:39	0:58:49	North of the Wall	The Haunted Forest	{"characters": [{"name": "Benjen Stark"}]}
7	6	0:58:49	0:58:55	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
7	6	0:58:55	0:59:06	North of the Wall	The Haunted Forest	{"characters": [{"name": "Benjen Stark", "alive": false, "mannerOfDeath": "Multiple stabs", "killedBy": ["Wights"]}]}
7	6	0:59:06	0:59:21	North of the Wall	The Haunted Forest	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
7	6	0:59:21	0:59:57	The Wall	Eastwatch	{"characters": [{"name": "Sandor Clegane"}, {"name": "Beric Dondarrion"}, {"name": "Tormund Giantsbane"}]}
7	6	0:59:57	1:00:07	The Wall	Eastwatch	{"characters": [{"name": "Rhaegal"}]}
7	6	1:00:07	1:00:22	The Wall	Eastwatch	{"characters": [{"name": "Rhaegal"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}]}
7	6	1:00:22	1:00:36	The Wall	Eastwatch	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}]}
7	6	1:00:36	1:00:44	North of the Wall	The Wall	{"characters": [{"name": "Drogon"}]}
7	6	1:00:44	1:01:06	The Wall	Eastwatch	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}]}
7	6	1:01:06	1:01:11	North of the Wall	The Wall	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}]}
7	6	1:01:11	1:01:14	The Wall	Eastwatch	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Jorah Mormont"}]}
7	6	1:01:14	1:01:18	The Wall	Eastwatch	{"characters": []}
7	6	1:01:18	1:01:50	The Wall	Eastwatch	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Davos Seaworth"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
7	6	1:01:50	1:02:38	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}]}
7	6	1:02:38	1:05:46	The North	Winterfell	{"characters": [{"name": "Sansa Stark", "weapon": [{"action": "receives", "name": "Valyrian Steel Dagger"}]}, {"name": "Arya Stark", "weapon": [{"action": "gives", "name": "Valyrian Steel Dagger"}]}]}
7	6	1:05:46	1:05:52	The Shivering Sea	NULL	{"characters": []}
7	6	1:05:52	1:09:22	The Shivering Sea	NULL	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}]}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
7	6	1:09:22	1:10:06	North of the Wall	The Haunted Forest	{"characters": [{"name": "White Walker"}, {"name": "Viserion", "alive": false}]}
7	6	1:10:06	1:10:49	North of the Wall	The Haunted Forest	{"characters": [{"name": "White Walker"}, {"name": "Viserion"}, {"name": "The Night King", "title": "King"}]}
7	7	0:04:36	0:04:56	The Crownlands	King's Landing	{"characters": [{"name": "Grey Worm"}]}
7	7	0:04:56	0:05:04	The Crownlands	King's Landing	{"characters": []}
7	7	0:05:04	0:05:08	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	7	0:05:08	0:05:13	The Crownlands	King's Landing	{"characters": []}
7	7	0:05:13	0:05:20	The Crownlands	King's Landing	{"characters": [{"name": "Bronn"}]}
7	7	0:05:20	0:05:31	The Crownlands	King's Landing	{"characters": []}
7	7	0:05:31	0:05:50	The Crownlands	King's Landing	{"characters": [{"name": "Bronn"}]}
7	7	0:05:50	0:06:42	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Bronn"}]}
7	7	0:06:42	0:06:52	The Crownlands	King's Landing	{"characters": []}
7	7	0:06:52	0:06:54	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Bronn"}]}
7	7	0:06:54	0:07:02	The Crownlands	King's Landing	{"characters": []}
7	7	0:07:02	0:07:04	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Bronn"}]}
7	7	0:07:04	0:07:15	The Crownlands	King's Landing	{"characters": []}
7	7	0:07:15	0:07:26	The Crownlands	King's Landing	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Bronn"}]}
7	7	0:07:26	0:07:36	The Crownlands	Blackwater Bay	{"characters": []}
7	7	0:07:36	0:07:44	The Crownlands	Blackwater Bay	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Lord Varys"}, {"name": "Theon Greyjoy"}, {"name": "Qhono"}]}
7	7	0:07:44	0:08:08	The Crownlands	Blackwater Bay	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}]}
7	7	0:08:08	0:08:43	The Crownlands	Blackwater Bay	{"characters": [{"name": "Sandor Clegane"}]}
7	7	0:08:43	0:08:47	The Crownlands	King's Landing	{"characters": []}
7	7	0:08:47	0:09:23	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister", "title": "King"}, {"name": "Qyburn", "title": "Hand"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Gregor Clegane"}]}
7	7	0:09:23	0:09:57	The Crownlands	Outside King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Theon Greyjoy"}, {"name": "Qhono"}, {"name": "Sandor Clegane"}]}
7	7	0:09:57	0:10:44	The Crownlands	Outside King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Theon Greyjoy"}, {"name": "Qhono"}, {"name": "Sandor Clegane"}, {"name": "Bronn"}, {"name": "Podrick Payne"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
7	7	0:10:44	0:11:03	The Crownlands	Outside King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Bronn"}, {"name": "Podrick Payne"}]}
7	7	0:11:03	0:11:06	The Crownlands	Outside King's Landing	{"characters": []}
7	7	0:11:06	0:11:59	The Crownlands	Outside King's Landing	{"characters": [{"name": "Sandor Clegane"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
7	7	0:11:59	0:13:20	The Crownlands	Outside King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Theon Greyjoy"}, {"name": "Qhono"}, {"name": "Sandor Clegane"}, {"name": "Bronn"}, {"name": "Podrick Payne"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
7	7	0:13:20	0:13:31	The Crownlands	Outside King's Landing	{"characters": [{"name": "Sandor Clegane"}]}
7	7	0:13:31	0:14:40	The Crownlands	Outside King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Theon Greyjoy"}, {"name": "Qhono"}, {"name": "Sandor Clegane"}, {"name": "Bronn"}, {"name": "Podrick Payne"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
7	7	0:14:40	0:15:18	The Crownlands	Outside King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Theon Greyjoy"}, {"name": "Qhono"}, {"name": "Sandor Clegane"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}]}
7	7	0:15:18	0:16:51	The Crownlands	Outside King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Theon Greyjoy"}, {"name": "Qhono"}, {"name": "Sandor Clegane"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Cersei Lannister", "title": "King"}, {"name": "Qyburn", "title": "Hand"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Gregor Clegane"}, {"name": "Euron Greyjoy", "title": "King"}]}
7	7	0:16:51	0:17:21	The Crownlands	Outside King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Theon Greyjoy"}, {"name": "Qhono"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Cersei Lannister", "title": "King"}, {"name": "Qyburn", "title": "Hand"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Gregor Clegane"}, {"name": "Euron Greyjoy", "title": "King"}]}
7	7	0:17:21	0:18:33	The Crownlands	Outside King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Theon Greyjoy"}, {"name": "Qhono"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Cersei Lannister", "title": "King"}, {"name": "Qyburn", "title": "Hand"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Gregor Clegane"}, {"name": "Euron Greyjoy", "title": "King"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Drogon"}, {"name": "Rhaegal"}]}
7	7	0:18:33	0:22:09	The Crownlands	Outside King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Theon Greyjoy"}, {"name": "Qhono"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Cersei Lannister", "title": "King"}, {"name": "Qyburn", "title": "Hand"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Gregor Clegane"}, {"name": "Euron Greyjoy", "title": "King"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
7	7	0:22:09	0:26:37	The Crownlands	Outside King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Theon Greyjoy"}, {"name": "Qhono"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Cersei Lannister", "title": "King"}, {"name": "Qyburn", "title": "Hand"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Gregor Clegane"}, {"name": "Euron Greyjoy", "title": "King"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Sandor Clegane"}]}
7	7	0:26:37	0:29:14	The Crownlands	Outside King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Theon Greyjoy"}, {"name": "Qhono"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Cersei Lannister", "title": "King"}, {"name": "Qyburn", "title": "Hand"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Gregor Clegane"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Sandor Clegane"}]}
7	7	0:29:14	0:31:22	The Crownlands	Outside King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Theon Greyjoy"}, {"name": "Qhono"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Sandor Clegane"}]}
7	7	0:31:22	0:31:42	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Gregor Clegane"}]}
7	7	0:31:42	0:32:58	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Gregor Clegane"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	7	0:32:58	0:38:20	The Crownlands	King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Gregor Clegane"}, {"name": "Cersei Lannister", "title": "King"}]}
7	7	0:38:20	0:41:02	The Crownlands	Outside King's Landing	{"characters": [{"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
7	7	0:41:02	0:41:21	The Crownlands	Outside King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Theon Greyjoy"}, {"name": "Qhono"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Sandor Clegane"}]}
7	7	0:41:21	0:42:28	The Crownlands	Outside King's Landing	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jon Snow", "title": "King", "weapon": [{"action": "has", "name": "Longclaw"}, {"action": "has", "name": "Dragonglass"}]}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Missandei"}, {"name": "Lord Varys"}, {"name": "Theon Greyjoy"}, {"name": "Qhono"}, {"name": "Brienne of Tarth", "weapon": [{"action": "has", "name": "Oathkeeper"}]}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Sandor Clegane"}, {"name": "Cersei Lannister", "title": "King"}, {"name": "Qyburn", "title": "Hand"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}, {"name": "Gregor Clegane"}]}
7	7	0:42:28	0:42:36	The North	Outside Winterfell	{"characters": []}
7	7	0:42:36	0:46:05	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Petyr Baelish"}]}
7	7	0:46:05	0:46:10	The Crownlands	Dragonstone	{"characters": []}
7	7	0:46:10	0:47:29	The Crownlands	Dragonstone	{"characters": [{"name": "Daenerys Targaryen", "title": "Khaleesi"}, {"name": "Tyrion Lannister", "title": "Hand"}, {"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}, {"name": "Jorah Mormont"}, {"name": "Lord Varys"}, {"name": "Theon Greyjoy"}, {"name": "Grey Worm"}, {"name": "Missandei"}]}
7	7	0:47:29	0:47:53	The Crownlands	Dragonstone	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Davos Seaworth"}, {"name": "Theon Greyjoy"}]}
7	7	0:47:53	0:51:19	The Crownlands	Dragonstone	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Theon Greyjoy"}]}
7	7	0:51:19	0:55:32	The Crownlands	Dragonstone	{"characters": [{"name": "Theon Greyjoy"}, {"name": "Harrag", "alive": false, "mannerOfDeath": "Beaten", "killedBy": ["Theon Greyjoy"]}]}
7	7	0:55:32	0:55:39	The Crownlands	Dragonstone	{"characters": [{"name": "Theon Greyjoy"}]}
7	7	0:55:39	0:56:07	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}]}
7	7	0:56:07	1:01:47	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Bran Stark"}, {"name": "Maester Wolkan"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "has", "name": "Valyrian Steel Dagger"}]}, {"name": "Petyr Baelish", "alive": false, "mannerOfDeath": "Throat slash", "killedBy": ["Arya Stark"]}, {"name": "Yohn Royce"}]}
7	7	1:01:47	1:02:16	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister", "title": "King"}, {"name": "Gregor Clegane"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	7	1:02:16	1:02:35	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister", "title": "King"}, {"name": "Gregor Clegane"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	7	1:02:35	1:05:33	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister", "title": "King"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	7	1:05:33	1:07:06	The Crownlands	King's Landing	{"characters": [{"name": "Cersei Lannister", "title": "King"}, {"name": "Gregor Clegane"}, {"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	7	1:07:06	1:07:46	The Crownlands	Outside King's Landing	{"characters": [{"name": "Jaime Lannister", "weapon": [{"action": "has", "name": "Widow's Wail"}]}]}
7	7	1:07:46	1:07:56	The Crownlands	Outside King's Landing	{"characters": []}
7	7	1:07:56	1:08:21	The Crownlands	King's Landing	{"characters": []}
7	7	1:08:21	1:08:28	The North	Winterfell	{"characters": [{"name": "Samwell Tarly"}, {"name": "Gilly"}, {"name": "Baby Sam"}]}
7	7	1:08:28	1:08:36	The North	Winterfell	{"characters": [{"name": "Bran Stark"}]}
7	7	1:08:36	1:10:57	The North	Winterfell	{"characters": [{"name": "Samwell Tarly"}, {"name": "Bran Stark"}]}
7	7	1:10:57	1:11:27	Dorne	NULL	{"characters": [{"name": "Bran Stark"}, {"name": "Lyanna Stark", "married": {"to": "Rhaegar Targaryen", "when": "present", "type": "love", "consummated": true}}, {"name": "Rhaegar Targaryen", "married": {"to": "Lyanna Stark", "when": "present", "type": "love", "consummated": true}}, {"name": "High Septon"}]}
7	7	1:11:27	1:11:41	The Narrow Sea	NULL	{"characters": [{"name": "Jon Snow", "title": "King"}]}
7	7	1:11:41	1:12:01	The Narrow Sea	NULL	{"characters": [{"name": "Jon Snow", "title": "King"}, {"name": "Daenerys Targaryen", "title": "Khaleesi"}]}
7	7	1:12:01	1:12:11	The Narrow Sea	NULL	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}]}
7	7	1:12:11	1:12:31	Dorne	Tower of Joy	{"characters": [{"name": "Young Ned Stark"}, {"name": "Bran Stark"}, {"name": "Lyanna Stark"}]}
7	7	1:12:31	1:13:09	The Narrow Sea	NULL	{"characters": [{"name": "Jon Snow", "title": "King", "sex": {"with": ["Daenerys Targaryen"], "type": "love", "when": "present"}}, {"name": "Daenerys Targaryen", "title": "Khaleesi", "sex": {"with": ["Jon Snow"], "type": "love", "when": "present"}}]}
7	7	1:13:09	1:13:20	The Narrow Sea	NULL	{"characters": [{"name": "Tyrion Lannister", "title": "Hand"}]}
7	7	1:13:20	1:13:28	The Narrow Sea	NULL	{"characters": []}
7	7	1:13:28	1:15:23	The North	Winterfell	{"characters": [{"name": "Sansa Stark"}, {"name": "Arya Stark", "weapon": [{"action": "has", "name": "Needle"}, {"action": "has", "name": "Valyrian Steel Dagger"}]}]}
7	7	1:15:23	1:15:47	The North	Winterfell	{"characters": [{"name": "Bran Stark"}]}
7	7	1:15:47	1:16:13	The Wall	Eastwatch	{"characters": []}
7	7	1:16:13	1:16:46	The Wall	Eastwatch	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Beric Dondarrion"}]}
7	7	1:16:46	1:16:49	North of the Wall	The Wall	{"characters": [{"name": "White Walker"}]}
7	7	1:16:49	1:16:52	The Wall	Eastwatch	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Beric Dondarrion"}]}
7	7	1:16:52	1:16:55	North of the Wall	The Wall	{"characters": [{"name": "White Walker"}]}
7	7	1:16:55	1:16:59	The Wall	Eastwatch	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Beric Dondarrion"}]}
7	7	1:16:59	1:17:21	North of the Wall	The Wall	{"characters": [{"name": "White Walker"}]}
7	7	1:17:21	1:17:28	The Wall	Eastwatch	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Beric Dondarrion"}]}
7	7	1:17:28	1:17:44	North of the Wall	The Wall	{"characters": [{"name": "White Walker"}]}
7	7	1:17:44	1:17:46	The Wall	Eastwatch	{"characters": []}
7	7	1:17:46	1:17:53	North of the Wall	The Wall	{"characters": [{"name": "White Walker"}]}
7	7	1:17:53	1:18:05	The Wall	Eastwatch	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Beric Dondarrion"}]}
7	7	1:18:05	1:18:11	North of the Wall	The Wall	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "Viserion", "alive": false}]}
7	7	1:18:11	1:18:16	The Wall	Eastwatch	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Beric Dondarrion"}]}
7	7	1:18:16	1:18:28	North of the Wall	The Wall	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "Viserion", "alive": false}]}
7	7	1:18:28	1:18:36	The Wall	Eastwatch	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Beric Dondarrion"}]}
7	7	1:18:36	1:18:42	North of the Wall	The Wall	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "Viserion", "alive": false}]}
7	7	1:18:42	1:18:52	The Wall	Eastwatch	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Beric Dondarrion"}]}
7	7	1:18:52	1:19:00	North of the Wall	The Wall	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "Viserion", "alive": false}]}
7	7	1:19:00	1:19:08	The Wall	Eastwatch	{"characters": []}
7	7	1:19:08	1:19:16	North of the Wall	The Wall	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "Viserion", "alive": false}]}
7	7	1:19:16	1:19:25	The Wall	Eastwatch	{"characters": []}
7	7	1:19:25	1:19:37	North of the Wall	The Wall	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "Viserion", "alive": false}]}
7	7	1:19:37	1:19:45	The Wall	Eastwatch	{"characters": [{"name": "Tormund Giantsbane"}, {"name": "Beric Dondarrion"}]}
7	7	1:19:45	1:19:50	North of the Wall	The Wall	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "Viserion", "alive": false}]}
7	7	1:19:50	1:19:58	The Wall	Eastwatch	{"characters": []}
7	7	1:19:58	1:20:14	North of the Wall	The Wall	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "Viserion", "alive": false}]}
7	7	1:20:14	1:20:26	North of the Wall	The Wall	{"characters": [{"name": "White Walker"}]}
7	7	1:20:26	1:20:38	The Wall	Eastwatch	{"characters": [{"name": "White Walker"}]}
7	7	1:20:38	1:20:43	The Wall	Eastwatch	{"characters": []}
7	7	1:20:43	1:21:09	The Wall	Eastwatch	{"characters": [{"name": "The Night King", "title": "King"}, {"name": "Viserion", "alive": false}]}
7	7	1:21:09	1:21:10	The Wall	Eastwatch	{"characters": []}
