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

CREATE TABLE characters (
    name character varying(100) NOT NULL,
    origin text,
    houseallegiance text,
    culture character varying(50),
    religion text,
    image text
);


ALTER TABLE characters OWNER TO ntmuowfdmifwtt;

COPY characters (name, origin, houseallegiance, culture, religion, image) FROM stdin;
Tyrion Lannister	Casterly Rock	Lannister, Targaryen	Andal	Faith of the Seven	http://img1.wikia.nocookie.net/__cb20150619051612/gameofthrones/images/thumb/c/c8/Tyrion-TheDanceofDragons.jpg/250px-Tyrion-TheDanceofDragons.jpg
Cersei Lannister	Casterly Rock	Lannister, Baratheon	Andal	Faith of the Seven	http://img3.wikia.nocookie.net/__cb20150617003215/gameofthrones/images/thumb/f/f6/Cersei_Lannister_%28S05E10%29.jpg/250px-Cersei_Lannister_%28S05E10%29.jpg
Daenerys Targaryen	Dragonstone	Targaryen	Valyrian	Unknown	http://img3.wikia.nocookie.net/__cb20150617180426/gameofthrones/images/thumb/9/9b/Daenerys-MothersMercy.jpg/250px-Daenerys-MothersMercy.jpg
Jon Snow	Winterfell	Night's Watch, Stark	Northmen	Old Gods of the Forest	http://img4.wikia.nocookie.net/__cb20150512181258/gameofthrones/images/thumb/9/95/Jon_Snow_%28S05E05%29.jpg/250px-Jon_Snow_%28S05E05%29.jpg
Sansa Stark	Winterfell	Stark, Baelish, Bolton	Northmen	Old Gods of the Forest, Faith of the Seven	http://img3.wikia.nocookie.net/__cb20150518204704/gameofthrones/images/thumb/5/59/Sansa-S05E06.jpg/250px-Sansa-S05E06.jpg
Arya Stark	Winterfell	Stark, Faceless Men	Northmen	Old Gods of the Forest, Faith of the Seven,Many-Faced God	http://img2.wikia.nocookie.net/__cb20150617002711/gameofthrones/images/thumb/7/72/Arya-Mercy.jpg/250px-Arya-Mercy.webp
Jorah Mormont	Bear Island	Targaryen, Golden Company, Mormont	Northmen	Old Gods of the Forest	http://img3.wikia.nocookie.net/__cb20150605193636/gameofthrones/images/thumb/4/46/Jorah-hd-still-S5E8.jpg/250px-Jorah-hd-still-S5E8.jpg
Jaime Lannister	Casterly Rock	Kingsguard, Lannister	Andal	Faith of the Seven	http://img3.wikia.nocookie.net/__cb20150422205941/gameofthrones/images/thumb/8/81/Jaime_Lannister_%28S05E02%29.jpg/250px-Jaime_Lannister_%28S05E02%29.jpg
Samwell Tarly	Horn Hill, The Reach	Night's Watch, Tarly	Andal	Faith of the Seven, Old Gods of the Forest	http://img2.wikia.nocookie.net/__cb20140519172406/gameofthrones/images/thumb/1/1c/Samwell_Tarly_in_Mockingbird.png/250px-Samwell_Tarly_in_Mockingbird.png
Theon Greyjoy	Pyke	Bolton, Greyjoy, Stark	Ironborn	Drowned God	http://img3.wikia.nocookie.net/__cb20150521020701/gameofthrones/images/thumb/0/0a/Reek_in_sansas_wedding.jpg/250px-Reek_in_sansas_wedding.jpg
Petyr Baelish	The Fingers, The Vale of Arryn	Baelish	Unknown	Unknown	http://img1.wikia.nocookie.net/__cb20150219051259/gameofthrones/images/thumb/8/87/Littlefinger_S5.jpg/250px-Littlefinger_S5.jpg
Varys	Lys, the Free Cities	Self	Unknown	Unknown	http://img3.wikia.nocookie.net/__cb20150218060453/gameofthrones/images/thumb/a/ae/Varys_S5.jpg/250px-Varys_S5.jpg
Brienne of Tarth	Evenfall Hall, Tarth island, the Stormlands	Tarth, Baratheon, Kingsguard, Tully	Andal	Faith of the Seven	http://img1.wikia.nocookie.net/__cb20150515051937/gameofthrones/images/thumb/4/40/Brienne_S05E05.jpg/250px-Brienne_S05E05.jpg
Tywin Lannister	Casterly Rock	Lannister	Andal	Faith of the Seven	http://img2.wikia.nocookie.net/__cb20140326175142/gameofthrones/images/thumb/e/ed/Charles-Dance-as-Tywin-Lannister_photo-Macall-B.Polay_HBO.jpg/250px-Charles-Dance-as-Tywin-Lannister_photo-Macall-B.Polay_HBO.jpg
Sandor Clegane	Unknown	Lannister, Kingsguard, Clegane	Unknown	Unknown	http://img3.wikia.nocookie.net/__cb20150607060449/gameofthrones/images/thumb/9/91/Sandor_%28The_Children%29.PNG/250px-Sandor_%28The_Children%29.PNG
Bronn	Unknown	Stokeworth	Unknown	Unknown	http://img2.wikia.nocookie.net/__cb20150422210515/gameofthrones/images/thumb/a/ab/Bronn_of_the_Blackwater_S5.jpg/250px-Bronn_of_the_Blackwater_S5.jpg
Joffrey Baratheon	King's Landing	Lannister, Baratheon	Andal	Faith of the Seven	http://img1.wikia.nocookie.net/__cb20150314033448/gameofthrones/images/thumb/5/50/Joff.jpg/130px-0%2C800%2C15%2C723-Joff.jpg
Barristan Selmy	Horn Hill, The Reach	Kingsguard, House Selmy, Targaryen	Unknown	Unknown	http://img1.wikia.nocookie.net/__cb20150504180820/gameofthrones/images/thumb/1/1f/Barristan_Selmy_Sons_of_the_Harpy.jpg/250px-Barristan_Selmy_Sons_of_the_Harpy.jpg
Bran Stark	Winterfell	Stark	Northmen	Old Gods of the Forest	https://vignette.wikia.nocookie.net/gameofthrones/images/1/1c/Bran_S8_EP2infobox.jpg/revision/latest/scale-to-width-down/608?cb=20190418012948
Catelyn Stark	Riverrun	Stark, Tully	Andal	Faith of the Seven	http://img2.wikia.nocookie.net/__cb20140515200719/gameofthrones/images/thumb/f/fb/Catelyn-Stark-Profile-HD.png/130px-0%2C544%2C9%2C490-Catelyn-Stark-Profile-HD.png
Stannis Baratheon	Storm's End	Baratheon	Andal	R'hllor Lord of Light	http://img3.wikia.nocookie.net/__cb20150609005538/gameofthrones/images/thumb/7/7a/Stannis_S05E09.png/250px-Stannis_S05E09.png
Missandei	Naath, Sothoryos	Targaryen	Unknown	Unknown	http://img3.wikia.nocookie.net/__cb20150219051321/gameofthrones/images/thumb/e/e2/MissS5.png/250px-MissS5.png
Podrick Payne	Unknown	Lannister, Payne	Unknown	Unknown	http://img1.wikia.nocookie.net/__cb20140618215825/gameofthrones/images/thumb/6/6c/Podrick-Payne-Profile-HD.png/250px-Podrick-Payne-Profile-HD.png
Robb Stark	Winterfell	Stark	Northmen	Old Gods of the Forest, Faith of the Seven	http://img2.wikia.nocookie.net/__cb20130413125346/gameofthrones/images/thumb/e/e9/Robb-3x03.jpg/130px-0%2C354%2C7%2C320-Robb-3x03.jpg
Margaery Tyrell	Highgarden	Tyrell, Baratheon	Andal	Unknown	http://img4.wikia.nocookie.net/__cb20150416014255/gameofthrones/images/thumb/6/6e/MargS5.png/250px-MargS5.png
Davos Seaworth	King's Landing	Seaworth, Baratheon	Unknown	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/3/3a/Famtree-DavosSeaworth.png/revision/latest/scale-to-width-down/100?cb=20190309011957
Shae	Lorath	Lannister	Unknown	Unknown	http://img1.wikia.nocookie.net/__cb20140505142823/gameofthrones/images/thumb/0/01/Shae_in_Two_Swords.png/130px-0%2C1888%2C37%2C1707-Shae_in_Two_Swords.png
Melisandre	Asshai	Baratheon	Asshai'i	R'hllor Lord of Light	http://img2.wikia.nocookie.net/__cb20150604204859/gameofthrones/images/thumb/7/7c/Melisandre_The_Dance_of_Dragons.jpg/250px-Melisandre_The_Dance_of_Dragons.jpg
Gilly	Beyond the Wall	Free Folk	Free Folk	Unknown	http://img2.wikia.nocookie.net/__cb20140615212038/gameofthrones/images/thumb/0/0e/Gilly.png/250px-Gilly.png
Tommen Baratheon	King's Landing	Baratheon, Lannister	Andal	Faith of the Seven	http://img2.wikia.nocookie.net/__cb20150504161509/gameofthrones/images/thumb/9/94/Tommen_sons_of_the_harpy.jpg/250px-Tommen_sons_of_the_harpy.jpg
Loras Tyrell	Highgarden	Tyrell, Baratheon, Kingsguard	Andal	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/0/02/LorasTyrell5X06.PNG/revision/latest?cb=20181013200613
Tormund	Beyond the Wall	Free Folk	Free Folk	Unknown	http://img2.wikia.nocookie.net/__cb20150415044031/gameofthrones/images/4/46/TormundGS5.png
Grey Worm	Summer Isles	Targaryen, Unsullied	Unknown	Unknown	http://img2.wikia.nocookie.net/__cb20140618231552/gameofthrones/images/thumb/a/a8/Grey_Worm_Profile.jpg/250px-Grey_Worm_Profile.jpg
Roose Bolton	The Dreadfort	Bolton	Northmen	Old Gods of the Forest	http://img3.wikia.nocookie.net/__cb20150618122950/gameofthrones/images/thumb/f/f2/Roose_Bolton-S05E06.png/250px-Roose_Bolton-S05E06.png
Ygritte	Beyond the Wall	Free Folk	Free Folk	Unknown	http://img3.wikia.nocookie.net/__cb20140518100049/gameofthrones/images/thumb/4/47/Ygritte-Profile-HD.png/130px-0%2C892%2C14%2C803-Ygritte-Profile-HD.png
Gendry	King's Landing	Self	Unknown	Unknown	http://img3.wikia.nocookie.net/__cb20140406203314/gameofthrones/images/thumb/4/4f/Larges3-ep1-people-profilepic-gendry-800x800.jpg/250px-Larges3-ep1-people-profilepic-gendry-800x800.jpg
Ramsay Bolton	Volantis	Bolton	Northmen	Old Gods of the Forest	http://img4.wikia.nocookie.net/__cb20150617120152/gameofthrones/images/thumb/5/51/Ramsay_Bolton-S05E10.png/250px-Ramsay_Bolton-S05E10.png
Daario Naharis	Tyrosh, The Free Cities	Targaryen, Second Sons	Unknown	Unknown	http://img3.wikia.nocookie.net/__cb20150619210538/gameofthrones/images/thumb/c/c0/004.jpg/250px-004.jpg
Jaqen H'ghar	Braavos	Faceless Men	Unknown	Many-Faced God	http://img2.wikia.nocookie.net/__cb20150421020227/gameofthrones/images/thumb/3/3b/AManSeason5.jpg/250px-AManSeason5.jpg
Myrcella Baratheon	King's Landing	Baratheon, Lannister, Martell	Andal	Faith of the Seven	http://img4.wikia.nocookie.net/__cb20150318224838/gameofthrones/images/thumb/0/02/MyrcellaS5Cropped.jpg/250px-MyrcellaS5Cropped.jpg
Lancel Lannister	Casterly Rock	Lannister, Sparrows	Andal	Faith of the Seven	http://img3.wikia.nocookie.net/__cb20150614183043/gameofthrones/images/thumb/1/15/Lancel_S5E4.png/250px-Lancel_S5E4.png
Jeor Mormont	Bear Island	Night's Watch, Mormont	Northmen	Old Gods of the Forest	http://img4.wikia.nocookie.net/__cb20140515205439/gameofthrones/images/thumb/6/65/Jeor-Mormont-Profile-HD.png/130px-0%2C486%2C8%2C438-Jeor-Mormont-Profile-HD.png
Eddard Stark	Winterfell	Stark	Northmen	Old Gods of the Forest	http://img2.wikia.nocookie.net/__cb20110626030942/gameofthrones/images/thumb/9/9c/EddardStark.jpg/130px-0%2C346%2C7%2C313-EddardStark.jpg
Shireen Baratheon	Dragonstone	Baratheon	Andal	Unknown	http://img1.wikia.nocookie.net/__cb20140406204724/gameofthrones/images/thumb/e/eb/Shireen_Baratheon_Season_4_profile.jpg/250px-Shireen_Baratheon_Season_4_profile.jpg
Khal Drogo	Vaes Dothrak	Self	Dothraki	Great Stallion	http://img1.wikia.nocookie.net/__cb20110626031733/gameofthrones/images/thumb/1/1f/Drogo_1x01b.jpg/130px-0%2C346%2C7%2C313-Drogo_1x01b.jpg
Renly Baratheon	Storm's End	Baratheon	Unknown	Faith of the Seven	http://img1.wikia.nocookie.net/__cb20130116113034/gameofthrones/images/thumb/3/3d/Renly_profile.jpg/130px-0%2C379%2C6%2C341-Renly_profile.jpg
Oberyn Martell	Sunspear	Martell, Second Sons, The Citadel	Dornishmen	Faith of the Seven	https://vignette.wikia.nocookie.net/gameofthrones/images/9/96/Oberyn-Martell-house-martell-37118334-2832-4256.jpg/revision/latest/scale-to-width-down/665?cb=20150815065729
Robert Baratheon	Storm's End	Baratheon	Unknown	Unknown	http://img2.wikia.nocookie.net/__cb20141119000127/gameofthrones/images/thumb/d/d4/RobertBaratheon.jpg/130px-0%2C346%2C7%2C313-RobertBaratheon.jpg
