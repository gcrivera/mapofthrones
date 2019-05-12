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
    image text,
    url text
);


ALTER TABLE characters OWNER TO ntmuowfdmifwtt;

COPY characters (name, origin, houseallegiance, culture, religion, image, url) FROM stdin;
Tyrion Lannister	Casterly Rock	Lannister, Targaryen	Andal	Faith of the Seven	https://vignette.wikia.nocookie.net/gameofthrones/images/a/ae/Tyrion_S8_EP2INFOBOX.jpg/revision/latest/scale-to-width-down/618?cb=20190417235117	https://awoiaf.westeros.org/index.php/Tyrion_Lannister
Cersei Lannister	Casterly Rock	Lannister, Baratheon	Andal	Faith of the Seven	https://vignette.wikia.nocookie.net/gameofthrones/images/2/22/Cersei_on_Throne_Winterfell_Ep_s8_infobox_size.jpg/revision/latest?cb=20190428160331	https://awoiaf.westeros.org/index.php/Cersei_Lannister
Daenerys Targaryen	Dragonstone	Targaryen	Valyrian	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/3/3a/Dany_S8_EP2infobox.jpg/revision/latest/scale-to-width-down/601?cb=20190417235027	https://awoiaf.westeros.org/index.php/Daenerys_Targaryen
Jon Snow	Winterfell	Night's Watch, Stark	Northmen	Old Gods of the Forest	https://vignette.wikia.nocookie.net/gameofthrones/images/d/d3/JonSnowSeason8HB.jpg/revision/latest?cb=20190401173347	https://awoiaf.westeros.org/index.php/Jon_Snow
Sansa Stark	Winterfell	Stark, Baelish, Bolton	Northmen	Old Gods of the Forest, Faith of the Seven	https://vignette.wikia.nocookie.net/gameofthrones/images/f/f3/Sansa_S8.jpg/revision/latest?cb=20190206213553	https://awoiaf.westeros.org/index.php/Sansa_Stark
Arya Stark	Winterfell	Stark, Faceless Men	Northmen	Old Gods of the Forest, Faith of the Seven,Many-Faced God	https://vignette.wikia.nocookie.net/gameofthrones/images/b/b1/Arya_Season_8.jpg/revision/latest?cb=20190206213617	https://awoiaf.westeros.org/index.php/Arya_Stark
Jorah Mormont	Bear Island	Targaryen, Golden Company, Mormont	Northmen	Old Gods of the Forest	https://vignette.wikia.nocookie.net/gameofthrones/images/2/26/Winterfell_ep_Jorah_s8.jpg/revision/latest?cb=20190418013520	https://awoiaf.westeros.org/index.php/Jorah_Mormont
Jaime Lannister	Casterly Rock	Kingsguard, Lannister	Andal	Faith of the Seven	https://vignette.wikia.nocookie.net/gameofthrones/images/5/51/JaimeLannisterSeason8.PNG/revision/latest?cb=20190207112813	https://awoiaf.westeros.org/index.php/Jaime_Lannister
Samwell Tarly	Horn Hill, The Reach	Night's Watch, Tarly	Andal	Faith of the Seven, Old Gods of the Forest	https://vignette.wikia.nocookie.net/gameofthrones/images/3/30/Samwell_Season_8_Cropped.PNG/revision/latest?cb=20190207112410	https://awoiaf.westeros.org/index.php/Samwell_Tarly
Theon Greyjoy	Pyke	Bolton, Greyjoy, Stark	Ironborn	Drowned God	https://vignette.wikia.nocookie.net/gameofthrones/images/7/78/TheonS8E1.PNG/revision/latest?cb=20190415192721	https://awoiaf.westeros.org/index.php/Theon_Greyjoy
Petyr Baelish	The Fingers, The Vale of Arryn	Baelish	Unknown	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/9/9f/Profile-Littlefinger.png/revision/latest?cb=20170826005231	https://awoiaf.westeros.org/index.php/Petyr_Baelish
Varys	Lys, the Free Cities	Self	Unknown	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/c/cb/VARYSWINTERFELL.png/revision/latest?cb=20190503222427	https://awoiaf.westeros.org/index.php/Varys
Brienne of Tarth	Evenfall Hall, Tarth island, the Stormlands	Tarth, Baratheon, Kingsguard, Tully	Andal	Faith of the Seven	https://vignette.wikia.nocookie.net/gameofthrones/images/a/a9/S8_Brienne_Profil.jpg/revision/latest?cb=20190423165941	https://awoiaf.westeros.org/index.php/Brienne_Tarth
Tywin Lannister	Casterly Rock	Lannister	Andal	Faith of the Seven	https://vignette.wikia.nocookie.net/gameofthrones/images/7/71/Tywin_Lannister_4x08.jpg/revision/latest?cb=20170830015346	https://awoiaf.westeros.org/index.php/Tywin_Lannister
Sandor Clegane	Unknown	Lannister, Kingsguard, Clegane	Unknown	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/7/7e/SandorRidesThroughWinterTownSeason8Ep1.PNG/revision/latest?cb=20190415193439	https://awoiaf.westeros.org/index.php/Sandor_Clegane
Bronn	Unknown	Stokeworth	Unknown	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/9/99/Bronn_Dragonpit.jpg/revision/latest?cb=20170903202847	https://awoiaf.westeros.org/index.php/Bronn
Joffrey Baratheon	King's Landing	Lannister, Baratheon	Andal	Faith of the Seven	https://vignette.wikia.nocookie.net/gameofthrones/images/2/25/Joffrey_Season_4_Episode_2_TLATR.jpg/revision/latest?cb=20190418203833	https://awoiaf.westeros.org/index.php/Joffrey_Baratheon
Barristan Selmy	Horn Hill, The Reach	Kingsguard, House Selmy, Targaryen	Unknown	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/1/1f/Barristan_Selmy_Sons_of_the_Harpy.jpg/revision/latest?cb=20150504180820	https://awoiaf.westeros.org/index.php/Barristan_Selmy
Bran Stark	Winterfell	Stark	Northmen	Old Gods of the Forest	https://vignette.wikia.nocookie.net/gameofthrones/images/1/1c/Bran_S8_EP2infobox.jpg/revision/latest/scale-to-width-down/608?cb=20190418012948	https://awoiaf.westeros.org/index.php/Bran_Stark
Catelyn Stark	Riverrun	Stark, Tully	Andal	Faith of the Seven	https://vignette.wikia.nocookie.net/gameofthrones/images/d/d8/CatelynS3Promo.jpg/revision/latest?cb=20190427043743	https://awoiaf.westeros.org/index.php/Catelyn_Stark
Stannis Baratheon	Storm's End	Baratheon	Andal	R'hllor Lord of Light	https://vignette.wikia.nocookie.net/gameofthrones/images/7/7a/Stannis_S05E09.png/revision/latest?cb=20190412205744	https://awoiaf.westeros.org/index.php/Stannis_Baratheon
Missandei	Naath, Sothoryos	Targaryen	Unknown	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/0/0d/Profile-Missandei.PNG/revision/latest?cb=20170818044646	https://awoiaf.westeros.org/index.php/Missandei
Podrick Payne	Unknown	Lannister, Payne	Unknown	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/2/22/Podrick8x01.PNG/revision/latest?cb=20190427145446	https://awoiaf.westeros.org/index.php/Podrick_Payne
Robb Stark	Winterfell	Stark	Northmen	Old Gods of the Forest, Faith of the Seven	https://vignette.wikia.nocookie.net/gameofthrones/images/5/50/S3E9_Robb_Stark_main.jpg/revision/latest?cb=20160718071203	https://awoiaf.westeros.org/index.php/Robb_Stark
Margaery Tyrell	Highgarden	Tyrell, Baratheon	Andal	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/b/b5/Margaery_Tyrell_S6.png/revision/latest?cb=20160729224605	https://awoiaf.westeros.org/index.php/Margaery_Tyrell
Davos Seaworth	King's Landing	Seaworth, Baratheon	Unknown	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/3/3a/Famtree-DavosSeaworth.png/revision/latest/scale-to-width-down/100?cb=20190309011957	https://awoiaf.westeros.org/index.php/Davos_Seaworth
Shae	Lorath	Lannister	Unknown	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/0/01/Shae_in_Two_Swords.png/revision/latest?cb=20140505142823	https://awoiaf.westeros.org/index.php/Shae
Melisandre	Asshai	Baratheon	Asshai'i	R'hllor Lord of Light	https://vignette.wikia.nocookie.net/gameofthrones/images/1/1c/Melisandre8x01.PNG/revision/latest?cb=20190429175309	https://awoiaf.westeros.org/index.php/Melisandre
Gilly	Beyond the Wall	Free Folk	Free Folk	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/a/ad/Gilly8x02.PNG/revision/latest?cb=20190417232735	https://awoiaf.westeros.org/index.php/Gilly
Tommen Baratheon	King's Landing	Baratheon, Lannister	Andal	Faith of the Seven	https://vignette.wikia.nocookie.net/gameofthrones/images/7/7c/Tommen_blood_of_my_blood.jpg/revision/latest?cb=20160530234845	https://awoiaf.westeros.org/index.php/Tommen_Baratheon
Loras Tyrell	Highgarden	Tyrell, Baratheon, Kingsguard	Andal	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/0/02/LorasTyrell5X06.PNG/revision/latest?cb=20181013200613	https://awoiaf.westeros.org/index.php/Loras_Tyrell
Tormund	Beyond the Wall	Free Folk	Free Folk	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/4/49/TormundWinterfell.PNG/revision/latest?cb=20190415184600	https://awoiaf.westeros.org/index.php/Tormund
Grey Worm	Summer Isles	Targaryen, Unsullied	Unknown	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/0/0c/Grey_Worm_Longer.jpg/revision/latest?cb=20170728152422	https://awoiaf.westeros.org/index.php/Grey_Worm
Roose Bolton	The Dreadfort	Bolton	Northmen	Old Gods of the Forest	https://vignette.wikia.nocookie.net/gameofthrones/images/2/26/Profile-RooseBolton.png/revision/latest?cb=20170728090234	https://awoiaf.westeros.org/index.php/Roose_Bolton
Ygritte	Beyond the Wall	Free Folk	Free Folk	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/2/28/Ygritte-promotionals4pic.jpg/revision/latest?cb=20170107042949	https://awoiaf.westeros.org/index.php/Ygritte
Gendry	King's Landing	Self	Unknown	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/6/63/GENDRYAKOFTSK.PNG/revision/latest?cb=20190422030504	https://awoiaf.westeros.org/index.php/Gendry
Ramsay Bolton	Volantis	Bolton	Northmen	Old Gods of the Forest	https://vignette.wikia.nocookie.net/gameofthrones/images/d/d2/Ramsay_S06E09_RESZIED_FOR_INFOBOX.jpg/revision/latest?cb=20160622071734	https://awoiaf.westeros.org/index.php/Ramsay_Snow
Daario Naharis	Tyrosh, The Free Cities	Targaryen, Second Sons	Unknown	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/d/d8/Daario-s6e4.jpg/revision/latest?cb=20160512195958	https://awoiaf.westeros.org/index.php/Daario_Naharis
Jaqen H'ghar	Braavos	Faceless Men	Unknown	Many-Faced God	https://vignette.wikia.nocookie.net/gameofthrones/images/d/da/The_Door_Jaqen_infobox.jpg/revision/latest?cb=20160808073200	https://awoiaf.westeros.org/index.php/Jaqen_H%27ghar
Myrcella Baratheon	King's Landing	Baratheon, Lannister, Martell	Andal	Faith of the Seven	https://vignette.wikia.nocookie.net/gameofthrones/images/0/02/MyrcellaS5Cropped.jpg/revision/latest?cb=20160802025401	https://awoiaf.westeros.org/index.php/Myrcella_Baratheon
Lancel Lannister	Casterly Rock	Lannister, Sparrows	Andal	Faith of the Seven	https://vignette.wikia.nocookie.net/gameofthrones/images/a/a5/No_One_09.jpg/revision/latest?cb=20170829235034	https://awoiaf.westeros.org/index.php/Lancel_Lannister
Jeor Mormont	Bear Island	Night's Watch, Mormont	Northmen	Old Gods of the Forest	https://vignette.wikia.nocookie.net/gameofthrones/images/1/1b/Jeor_Mormont_Season_2.jpg/revision/latest?cb=20120705014740	https://awoiaf.westeros.org/index.php/Jeor_Mormont
Eddard Stark	Winterfell	Stark	Northmen	Old Gods of the Forest	https://vignette.wikia.nocookie.net/gameofthrones/images/8/8f/Lord_Eddard_Stark_infobox.jpg/revision/latest?cb=20190427041634	https://awoiaf.westeros.org/index.php/Eddard_Stark
Shireen Baratheon	Dragonstone	Baratheon	Andal	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/e/eb/Shireen_Baratheon_Season_4_profile.jpg/revision/latest?cb=20161215030938	https://awoiaf.westeros.org/index.php/Shireen_Baratheon
Khal Drogo	Vaes Dothrak	Self	Dothraki	Great Stallion	https://vignette.wikia.nocookie.net/gameofthrones/images/2/21/Khal_Drogo_infobox_promo.jpg/revision/latest?cb=20190427051349	https://awoiaf.westeros.org/index.php/Drogo
Renly Baratheon	Storm's End	Baratheon	Unknown	Faith of the Seven	https://vignette.wikia.nocookie.net/gameofthrones/images/f/ff/Profile-Renly_Baratheon.png/revision/latest?cb=20171006064500	https://awoiaf.westeros.org/index.php/Renly_Baratheon
Oberyn Martell	Sunspear	Martell, Second Sons, The Citadel	Dornishmen	Faith of the Seven	https://vignette.wikia.nocookie.net/gameofthrones/images/4/44/Oberyn-Martell-house-martell_s3.jpg/revision/latest?cb=20190427200207	https://awoiaf.westeros.org/index.php/Oberyn_Martell
Robert Baratheon	Storm's End	Baratheon	Unknown	Unknown	https://vignette.wikia.nocookie.net/gameofthrones/images/d/d4/RobertBaratheon.jpg/revision/latest?cb=20141119000127	https://awoiaf.westeros.org/index.php/Robert_I_Baratheon
