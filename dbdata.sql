
DROP TABLE IF EXISTS adminlogs;
CREATE TABLE adminlogs (
  adID SERIAL NOT NULL,
  adUSER INTEGER NOT NULL DEFAULT 0,
  adPOST varchar(200) NOT NULL,
  adGET varchar(200) NOT NULL,
  adTIME INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (adID)
  );

DROP TABLE IF EXISTS ads;
CREATE TABLE ads (
  adID SERIAL NOT NULL ,
  adIMG varchar(200) NOT NULL,
  adURL varchar(200) NOT NULL,
  adVIEWS INTEGER NOT NULL DEFAULT 0,
  adCLICKS INTEGER NOT NULL DEFAULT 0,
  adLOGIN varchar(255) NOT NULL DEFAULT '',
  adPASS varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (adID)
) ;

DROP TABLE IF EXISTS armour;
CREATE TABLE armour (
  item_ID INTEGER NOT NULL DEFAULT 0,
  Defence INTEGER NOT NULL DEFAULT 0
);

INSERT INTO armour VALUES (71,1);
INSERT INTO armour VALUES (72,1000000);
INSERT INTO armour VALUES (73,2);
INSERT INTO armour VALUES (74,4);
INSERT INTO armour VALUES (75,7);
INSERT INTO armour VALUES (76,50);
INSERT INTO armour VALUES (77,10);
INSERT INTO armour VALUES (79,15);
INSERT INTO armour VALUES (80,20);
INSERT INTO armour VALUES (81,30);
INSERT INTO armour VALUES (82,40);
INSERT INTO armour VALUES (83,75);
INSERT INTO armour VALUES (84,100);
INSERT INTO armour VALUES (85,150);
INSERT INTO armour VALUES (91,40);
INSERT INTO armour VALUES (92,100);
INSERT INTO armour VALUES (93,150);
INSERT INTO armour VALUES (94,30);
INSERT INTO armour VALUES (97,400);
INSERT INTO armour VALUES (98,750);
INSERT INTO armour VALUES (71,1);
INSERT INTO armour VALUES (72,1000000);
INSERT INTO armour VALUES (73,2);
INSERT INTO armour VALUES (74,4);
INSERT INTO armour VALUES (75,7);
INSERT INTO armour VALUES (76,50);
INSERT INTO armour VALUES (77,10);
INSERT INTO armour VALUES (79,15);
INSERT INTO armour VALUES (80,20);
INSERT INTO armour VALUES (81,30);
INSERT INTO armour VALUES (82,40);
INSERT INTO armour VALUES (83,75);
INSERT INTO armour VALUES (84,100);
INSERT INTO armour VALUES (85,150);
INSERT INTO armour VALUES (91,40);
INSERT INTO armour VALUES (92,100);
INSERT INTO armour VALUES (93,150);
INSERT INTO armour VALUES (94,30);
INSERT INTO armour VALUES (97,400);
INSERT INTO armour VALUES (98,750);

DROP TABLE IF EXISTS attacklogs;
CREATE TABLE attacklogs (
  log_id SERIAL NOT NULL,
  attacker INTEGER NOT NULL DEFAULT 0,
  attacked INTEGER NOT NULL DEFAULT 0,
  result varchar (5) NOT NULL DEFAULT 'won',
  time INTEGER NOT NULL DEFAULT 0,
  stole INTEGER NOT NULL DEFAULT 0,
  attacklog varchar(200) NOT NULL,
  PRIMARY KEY (log_id)
) ;

DROP TABLE IF EXISTS blacklist;
CREATE TABLE blacklist (
  bl_ID SERIAL NOT NULL,
  bl_ADDER INTEGER NOT NULL DEFAULT 0,
  bl_ADDED INTEGER NOT NULL DEFAULT 0,
  bl_COMMENT varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (bl_ID)
) ;
DROP TABLE IF EXISTS cashxferlogs;
CREATE TABLE cashxferlogs (
  cxID SERIAL NOT NULL,
  cxFROM INTEGER NOT NULL DEFAULT 0,
  cxTO INTEGER NOT NULL DEFAULT 0,
  cxAMOUNT INTEGER NOT NULL DEFAULT 0,
  cxTIME INTEGER NOT NULL DEFAULT 0,
  cxFROMIP varchar(15) NOT NULL DEFAULT '127.0.0.1',
  cxTOIP varchar(15) NOT NULL DEFAULT '127.0.0.1',
  cxCONTENT varchar(200) NOT NULL,
  PRIMARY KEY (cxID)
) ;

DROP TABLE IF EXISTS challengesbeaten;
CREATE TABLE challengesbeaten (
  userid INTEGER NOT NULL DEFAULT 0,
  npcid INTEGER NOT NULL DEFAULT 0
) ;

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
  cityid SERIAL NOT NULL,
  cityname varchar(255) NOT NULL DEFAULT '',
  citydesc varchar(200) NOT NULL,
  cityminlevel INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (cityid)
);

INSERT INTO cities VALUES (1,'Mono Central','This city has been the home of newcomers to Mono Country for many years... it is resourceful and provides many job opportunities.',1);
INSERT INTO cities VALUES (2,'Country Farms','A cheap place to buy food, this is a peaceful place for pacifists but property is very expensive.',5);
INSERT INTO cities VALUES (3,'El Ablo','The place of the truly strong.',20);
INSERT INTO cities VALUES (4,'Industrial Sector','The industrial sector of Mono Central.',1);
INSERT INTO cities VALUES (5,'Cyber State','One for those who are masters at the game',50);


DROP TABLE IF EXISTS courses;
CREATE TABLE courses (
  crID SERIAL NOT NULL,
  crNAME varchar(255) NOT NULL DEFAULT '',
  crDESC varchar(200) NOT NULL,
  crCOST INTEGER NOT NULL DEFAULT 0,
  crENERGY INTEGER NOT NULL DEFAULT 0,
  crDAYS INTEGER NOT NULL DEFAULT 0,
  crSTR INTEGER NOT NULL DEFAULT 0,
  crGUARD INTEGER NOT NULL DEFAULT 0,
  crLABOUR INTEGER NOT NULL DEFAULT 0,
  crAGIL INTEGER NOT NULL DEFAULT 0,
  crIQ INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (crID)
);

DROP TABLE IF EXISTS coursesdone;
CREATE TABLE coursesdone (
  userid INTEGER NOT NULL DEFAULT 0,
  courseid INTEGER NOT NULL DEFAULT 0
);

DROP TABLE IF EXISTS crimegroups;

CREATE TABLE crimegroups (
  cgID SERIAL NOT NULL,
  cgNAME varchar(255) NOT NULL DEFAULT '',
  cgORDER INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (cgID)
);

DROP TABLE IF EXISTS crimes;
CREATE TABLE crimes (
  crimeID SERIAL NOT NULL,
  crimeNAME varchar(255) NOT NULL DEFAULT '',
  crimeBRAVE INTEGER NOT NULL DEFAULT 0,
  crimePERCFORM varchar(200) NOT NULL,
  crimeSUCCESSMUNY INTEGER NOT NULL DEFAULT 0,
  crimeGROUP INTEGER NOT NULL DEFAULT 0,
  crimeITEXT varchar(200) NOT NULL,
  crimeSTEXT varchar(200) NOT NULL,
  crimeFTEXT varchar(200) NOT NULL,
  PRIMARY KEY (crimeID)
) ;


INSERT INTO crimes VALUES (1,'Near The Council',1,'((WILL*0.8)/1)+(LEVEL/4)',10,1,'1. You head over to the council.<br />\r\n2. You start scavenging for coins.<br />','Result: You collect ${money} from the gutters!','Result: There s no change to be seen!');
INSERT INTO crimes VALUES (2,'Under a Hobos Shack',1,'((WILL*0.8)/1.5)+(LEVEL/4)',20,1,'1. You head over to the shack of well-known hobo, Kent.<br />\r\n2. You creep underneath and start scavenging for money.<br />','Result: You dig up ${money}!','Result: Kent finds you and says \"What yo doin here?\". You walk off briskly.');
INSERT INTO crimes VALUES (3,'Music CDS',3,'((WILL*0.8)/3)+(LEVEL/4)',30,2,'1. You go down to the local market and buy some blank CDs.<br />\r\n2. You head home and burn some music onto these CDs.<br />\r\n3. You go back to the market, set up your stall, and wait for customers.<br />','Result: You sell your stock making you ${money}!','Result: No-one wants to buy your worthless garbage!');
INSERT INTO crimes VALUES (4,'Video CDs',3,'((WILL*0.8)/3.5)+(LEVEL/4)',34,2,'1. You go down to the local market and buy some blank CDs.<br />\r\n2. You head home and burn some videos onto these CDs.<br />\r\n3. You go back to the market, set up your stall, and wait for customers.<br />','Result: You sell your stock making you ${money}!','Result: No-one wants to buy your worthless garbage!');
INSERT INTO crimes VALUES (5,'Honda Civic',20,'((WILL*0.8)/20)+(LEVEL/4)',7000,3,'1. You head down to the local car yard.<br />\r\n2. You spot a Honda Civic, pretty shiny youd say!<br />\r\n3. You throw a rock at the window and hop in!<br />','Result: You insert your fake key and rocket off to your buds, where you give him the car and he gives you ${money} for the job!','Result: Theres no battery, so the car wont run! You hop out and run away.');
INSERT INTO crimes VALUES (6,'Ford Falcon',25,'((WILL*0.7)/25)+(LEVEL/4)',25000,3,'1. You head down to the local car yard.<br />\r\n2. You spot a Ford Falcon, ooh it looks neat!<br />\r\n3. You throw a rock at the window, but then spy a security camera attached to the steering wheel.<br />\r\n4. You jump in, make sure youre out of the cameras view, and attempt to work it out of its socket.<br />','5. The camera pops out, you smile and throw it away.<br />\r\nResult: You insert your fake key and rocket off to your buds, where you give him the car and he gives you ${money} for the job!','Result: The camera wont budge. You abandon your attempt and walk home.');
INSERT INTO crimes VALUES (7,'Hobo',6,'((WILL*0.8)/6)+(LEVEL/4)',50,4,'1. You go down the street searching for a hobo.<br />\r\n2. You see a particularly nice-looking hobo dozing on the sidewalk.<br />\r\n3. You bend down and stick your hand into his pocket.<br />','4. You grab some notes and run away swiftly.<br />\r\n<font color=green>Result: You count up the notes, there\s $50!</font>','<font color=brown>The hobo stirs. You dash away, not wanting to let him see you.</font>');
INSERT INTO crimes VALUES (8,'Teenager',6,'((WILL*0.8)/6.5)+(LEVEL/4)',100,4,'1. You go down the street searching for a teenager.<br />\r\n2. You see a kid listening to his walkman walk down the sidewalk.<br />\r\n3. You quietly go up to him and put a hand into his pocket.<br />','4. You grab a wallet and run away swiftly.<br />\r\n<font color=green>Result: You open the wallet and count up the notes, theres $100!</font>','<font color=brown>Result: You hit his pocket protector, you walk away slowly.</font>');
INSERT INTO crimes VALUES (9,'Shed',10,'((WILL*0.8)/10)+(LEVEL/4)',260,5,'1. You head to a back alley where there are lots of sheds.<br />\r\n2. You find a particularly nice-looking shed, check that theres no-one inside, and break open the door.<br />\r\n3. You start searching the draws.<br />','<font color=green>Result: You find $260 in a lower draw!</font>','<font color=brown>Result: You hear footsteps. You dont know if they are coming towards this shed, but you cant take the risk. You dash away with nothing in your pocket.</font>');
INSERT INTO crimes VALUES (10,'Motel Room',11,'((WILL*0.8)/11)+(LEVEL/4)',400,5,'1. You head over to your mates to pick up your assignment.<br />\r\n2. He gives you a piece of paper with the address on it. You hop in your car and drive there.<br />\r\n3. You throw a large rock at the window of the motel room and hop in.<br />\r\n4. You start searching for the computer your mate told you to steal for him.<br />','5. You find the computer, it looks pretty new and powerful!<br />\r\n6. You disconnect the computer from the power at the wall, disconnect the various wires, and pack it all into a cardboard box as tall as your head.<br />\r\n7. You carry the box into your car and drive back to your mates.<br />\r\n<font color=green>Result: As promised, he gives you 20% of the computers worth. You feel highly content with the $400 in your wallet.</font>','<font color=brown>Result: The alarm starts screeching. You get out as fast as possible and drive away.</font>');
INSERT INTO crimes VALUES (11,'Horse Racing',30,'((WILL*0.7)/30)+(LEVEL/5)',100000,8,'1. You set up the equipment required.<br />\r\n2. The target comes in.<br />\r\n3. You persuade him to make a bet of $100000 on a horse.<br />\r\n4. Using delayed TV, you show him the race, knowing he has picked the wrong one.<br />','<font color=green>Result: Operation Success!</font>','<font color=brown>Result: You misread the horse that won and made him bet on the winning horse! Doh!</font>');
INSERT INTO crimes VALUES (12,'Working Man',6,'((WILL*0.8)/6.9)+(LEVEL/4)',150,4,'1. You go down the street searching for a normal everyday working man.<br />\r\n2. You see a man briskly walking, carrying a black bag.<br />\r\n3. You quietly go up to him and reach a hand out for his bag.<br />','4. You grab it and dash off down an alleyway.<br />\r\n<font color=green>Result: You open the bag and count up the money, theres $150!</font>','<font color=brown>Result: You cop one in the nose as he shoos you away.</font>');
INSERT INTO crimes VALUES (13,'Cocaine',8,'((WILL*0.8)/8)+(LEVEL/4)',200,7,'1. You pick up a load of cocaine from your mates and drive south on the M1 highway.<br />\r\n2. You see coppers chasing after you, you turn off to avoid them.<br />','3. You get off their tail and deliver the goods, collecting your fee.<br />\r\n<font color=green>Result: You feel good with $200 in your pocket!</font>','<font color=brown>Result: As they pull nearer to you you leap out of the van and run off.</font>');
INSERT INTO crimes VALUES (14,'Businessman',15,'((WILL*0.8)/15)+(LEVEL/4)',2000,6,'1. You arm yourself with your trusty M16 and meet your accomplice at the bus station. He gives you the job.<br />\r\n2. You drive to the targets mansion.<br />\r\n3. He steps out of his car, you tense up and get ready to fire.<br />','4. You blow his head off.<br />\r\n<font color=green>Result: You drive home to find $2,000 in your letterbox for the job!</font>','<font color=brown>Result: You wrongly identified the businessman, you blew a street walkers head off instead! Unlucky!</font>');
INSERT INTO crimes VALUES (15,'Casino Fraud',35,'((WILL*0.6)/35)+(LEVEL/5)',150000,8,'Casino Fraud\r\n1. You set up the equipment required.<br />\r\n2. You Start developing some fake casino Chips.<br />\r\n3. You pack the Chips into the Suit case and Head of to the local Casino.<br />\r\n4. Once inside u Bet $150000 in a single game of BlackJack.<br />','<font color=green>Result: Operation Success!\r\n\r\nYou Won $150000 and Exhanges the Real Chips for Cash</font>\r\n','<font color=brown>Result: The Dealer Spots that your Chips are Fake and calls Security\r\n\r\nNot wishing to be Caught you Run of before the Security Guards Arrive.</font>');
INSERT INTO crimes VALUES (16,'Drug Dealer',25,'((WILL*0.7)/25)+(LEVEL/4)',25000,6,'1. You Recieved a call for a job downtown.<br />\r\n2. You arm yourself with your trusty Sniper Rifle and head down to the Designated Area.<br />\r\n3. The Target shows up about to get into his car.<br />\r\n\r\n','4. You Take his head off clean in 1 shot.<br />\r\n<font color=green>Result: You drive home to find $25,000 in your LetterBox!</font>','4. the target steps into the car and prepares to drive off.<br />\r\n5. Yours still trying to peice your gun together but forgot what part goes where.<br />\r\n\r\n<font color=brown>Result: He Drives off safely! Bad Luck!</font>');
INSERT INTO crimes VALUES (17,'Vu GTS Commodore',28,'((WILL*0.7)/28)+(LEVEL/4)',80000,3,'1. You walking down a streetof a rich neighbourhood.<br />\r\n2. You see a red VU GTS Commodore with the window down.<br />\r\n3. You stop to make sure no one is looking and you open it and attempt to hot wire it.<br /> \r\n','4.You hear it crank over!<br />\r\n\r\n<font color=green>Result: Operation Success.\r\n You speed off you take it to Jimmy and he give you $80000 for it!</font>','4. You wire it wrong and blow a fuse.<br />\r\n5. The Alarm starts screeching.<br />\r\n\r\n<font color=brown>Result: you run of before somebody notices you. Bad Luck.</font>');
INSERT INTO crimes VALUES (18,'Millionaires Daughter',45,'((WILL*0.5)/45)+(LEVEL/15)',450000,9,'1. You wait near the school where the daughter of a local millionaire attends.<br />\r\n2. They see the Target Exiting the school.<br />\r\n3. Then uou Follow the Target until you are alone.<br />','4. you put a cloth soaked with cloroform over her mouth and drag her to your Car.<br />\r\n5. You make a call to the victims family, requesting $450000.<br />\r\n<font color=green>Result:Three anxious hours later, $450000 is delivered to the designated drop of point and \r\n\r\nthe exchange is made.</font>','4. Your turn around to check if there was anyone around you.<br />\r\n5. You suddenly lost sight of the target. and notice her Bodyguards around<br />\r\n\r\n<font color=brown>Result: you decides to Give up, and try again tomorrow.</font>');
INSERT INTO crimes VALUES (19,'Gang Ransom',50,'((WILL*0.5)/50)+(LEVEL/20)',750000,10,'1. You happened to walk by a house and noticed there someone was home alone.<br />\r\n2. You sneak in through a open window and sneaks up onto the target.<br />\r\n3. You jump out and noticed your target was Nate, doing something obsence to himself.<br />\r\n4. you happened to have a camera with you and you take a picture of him.<br />','4. Nate embarassed by the situation offers you 750k from the Gang Vault.<br />\r\n5. You agree to his conditions and take the money and leave.<br />\r\n\r\n<font color=green>Result:You walk home with $750000.</font>','4. You then Tie him up and make a phone call to Nates Gang demand Money his safety.<br />\r\n5. Nates gang decided he is not worth the ammount just laughed over the phone and hangs up<br />\r\n\r\n<font color=brown>Result: You feel agitated and decided to Infect a pineapple up his rear end.</font>');
INSERT INTO crimes VALUES (20,'Hijack a Train',75,'((WILL*0.1)/75)',1500000,10,'1. You step onto the train. <br />','2. Then u pull out your gun and blow the train drivers head off and take over the train.<br />\r\n3. You ring up the local authorities to request 1.5million.<br />\r\n4. They agree and pay you the money.<br />\r\n\r\n<font_color=green>Result: Operation Success, You gain 1.5million dollars.</font>','2. And noticed thats no one one it =P.<br />\r\n\r\n<font_color=brown> Result: Operation failed.</font>');
INSERT INTO crimes VALUES (21,'hijack Plane',95,'((WILL*0.1)/95)',3000000,10,'1. brought yourself a plane ticket.<br />\r\n2. You wait for the plane to take off. <br />\r\n','3. You take out your gun and hijack the plane.<br />\r\n4. you demand 3 million for the satefy of the passangers.<br />\r\n5. The city Mayor agrees to your demand and pays it into your swiss bank account.<br />\r\n\r\n<font_color=green>Result: operation Success. you jump out of the plane with a parachute.</font>','3. Once you are on the plane u search for your gun.<br />\r\n4. you forgot you checked it in with the baggages.<br />\r\n\r\n<font_color=brown>result: Operation failed. YOu sit down and enjoy the rest of the flight.</font>');
INSERT INTO crimes VALUES (22,'MC Lottery',10,'((WILL*0.01)/30)+((LEVEL*0.01)/10)',10000000,10,'1. You go and by a lottery ticket hoping to win the 10million dollar draw.<br />','2. OMFG you won.<br />\r\n3. you head down to the lottery commision and claim your 10 million dollar prize.<br />','2. When the draw comes out u find you didnt get any numbers right.<br />\r\n3. Bad luck.<br />');
INSERT INTO crimes VALUES (23,'Assisting Planned Robbery',10,'((IQ*0.8)/10)',250,11,'1. You sit down and plan a shoplift.<br /> \r\n2. You finish off the plan.<br /> \r\n3. Your mate comes over and you give him the plan.<br />','4. Half an hour later your m8 comes back with the goods.<br /> \r\n<font color=green> Result: He gives you half of the profit, you received $250.</font>','4. Your mate doesnt come back.<br /> <font color=brown> Result: Your mate got arrested, unlucky.</font>');
INSERT INTO crimes VALUES (24,'Simple Hacking',20,'((IQ*0.8)/20)',9500,11,'1. You head down to the local net cafe\ and login to the internet.<br />\r\n2. While no one is watching u look up Paypal and start inputting random email addresses.<br />','3. You happened to stumble upon a account with some decent amount of money in it.<br />\r\n4. You decide to send the cash to 10 different accounts to avoid getting caught.<br />\r\n5. You recieved $9500 in your account after spliting the money evenly.<br />\r\n<font color=green> Result: Operation Success. You head down to the Bank and Withdraw the money.</font>','3. After many attempt u could not manage to match any username and passwords.<br />\r\n4. The System logs your IP Address and locks your out of the Website.<br />\r\n\r\n<font color=brown> Result: Worried u might get caught, You turn of the computer and run out the Door. operation failed.</font>');



DROP TABLE IF EXISTS crystalmarket;
CREATE TABLE crystalmarket (
  cmID SERIAL NOT NULL,
  cmQTY INTEGER NOT NULL DEFAULT 0,
  cmADDER INTEGER NOT NULL DEFAULT 0,
  cmPRICE INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (cmID)
) ;

INSERT INTO crystalmarket VALUES (1,100,2,100000);

DROP TABLE IF EXISTS dps_process;
CREATE TABLE dps_process (
  dp_id SERIAL NOT NULL,
  dp_userid INTEGER NOT NULL DEFAULT 0,
  dp_time INTEGER NOT NULL DEFAULT 0,
  dp_type varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (dp_id)
);
DROP TABLE IF EXISTS events;
CREATE TABLE events (
  evID SERIAL NOT NULL,
  evUSER INTEGER NOT NULL DEFAULT 0,
  evTIME INTEGER NOT NULL DEFAULT 0,
  evREAD INTEGER NOT NULL DEFAULT 0,
  evTEXT varchar(200) NOT NULL,
  PRIMARY KEY (evID)
);



DROP TABLE IF EXISTS fedjail;
CREATE TABLE fedjail (
  fed_id SERIAL NOT NULL,
  fed_userid INTEGER NOT NULL DEFAULT 0,
  fed_days INTEGER NOT NULL DEFAULT 0,
  fed_jailedby INTEGER NOT NULL DEFAULT 0,
  fed_reason varchar(200) NOT NULL,
  PRIMARY KEY (fed_id)
);


DROP TABLE IF EXISTS food;
CREATE TABLE food (
  item_id INTEGER NOT NULL DEFAULT 0,
  energy INTEGER NOT NULL DEFAULT 0
);
INSERT INTO food VALUES (1,500);
INSERT INTO food VALUES (5,3);
INSERT INTO food VALUES (6,1);
INSERT INTO food VALUES (15,2147483647);
INSERT INTO food VALUES (21,10);
INSERT INTO food VALUES (22,10);
INSERT INTO food VALUES (23,25);
INSERT INTO food VALUES (24,50);
INSERT INTO food VALUES (25,100);
INSERT INTO food VALUES (1,500);
INSERT INTO food VALUES (5,3);
INSERT INTO food VALUES (6,1);
INSERT INTO food VALUES (15,2147483647);
INSERT INTO food VALUES (21,10);
INSERT INTO food VALUES (22,10);
INSERT INTO food VALUES (23,25);
INSERT INTO food VALUES (24,50);
INSERT INTO food VALUES (25,100);


DROP TABLE IF EXISTS friendslist;
CREATE TABLE friendslist (
  fl_ID SERIAL NOT NULL,
  fl_ADDER INTEGER NOT NULL DEFAULT 0,
  fl_ADDED INTEGER NOT NULL DEFAULT 0,
  fl_COMMENT varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (fl_ID)
);




DROP TABLE IF EXISTS houses;

CREATE TABLE houses (
  hID SERIAL NOT NULL,
  hNAME varchar(255) NOT NULL DEFAULT '',
  hPRICE INTEGER NOT NULL DEFAULT 0,
  hWILL INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (hID)
) ;



INSERT INTO houses VALUES (1,'Garden Shed',0,100);
INSERT INTO houses VALUES (2,'Apartment',12500,150);
INSERT INTO houses VALUES (3,'Motel Room',32000,200);
INSERT INTO houses VALUES (4,'Semi-Detached House',80000,250);
INSERT INTO houses VALUES (5,'Detached House',400000,450);
INSERT INTO houses VALUES (6,'Chalet',1000000,750);
INSERT INTO houses VALUES (7,'Mansion',15000000,1200);
INSERT INTO houses VALUES (8,'Penthouse',45000000,2000);
INSERT INTO houses VALUES (9,'Castle',125000000,3500);
INSERT INTO houses VALUES (11,'Luxurious Space Shuttle',375000000,7500);
INSERT INTO houses VALUES (10,'Small Space Shuttle',250000000,5000);
INSERT INTO houses VALUES (12,'Artificial Orbiting Moon',1000000000,12500);
INSERT INTO houses VALUES (13,'Brothel',2000000000,20000);

DROP TABLE IF EXISTS imarketaddlogs;
CREATE TABLE imarketaddlogs (
  imaID SERIAL NOT NULL,
  imaITEM INTEGER NOT NULL DEFAULT 0,
  imaPRICE INTEGER NOT NULL DEFAULT 0,
  imaINVID INTEGER NOT NULL DEFAULT 0,
  imaADDER INTEGER NOT NULL DEFAULT 0,
  imaTIME INTEGER NOT NULL DEFAULT 0,
  imaCONTENT varchar(200) NOT NULL,
  PRIMARY KEY (imaID)
) ;

DROP TABLE IF EXISTS imbuylogs;
CREATE TABLE imbuylogs (
  imbID SERIAL NOT NULL,
  imbITEM INTEGER NOT NULL DEFAULT 0,
  imbADDER INTEGER NOT NULL DEFAULT 0,
  imbBUYER INTEGER NOT NULL DEFAULT 0,
  imbPRICE INTEGER NOT NULL DEFAULT 0,
  imbIMID INTEGER NOT NULL DEFAULT 0,
  imbINVID INTEGER NOT NULL DEFAULT 0,
  imbTIME INTEGER NOT NULL DEFAULT 0,
  imbCONTENT varchar(200) NOT NULL,
  PRIMARY KEY (imbID)
);

DROP TABLE IF EXISTS imremovelogs;
CREATE TABLE imremovelogs (
  imrID SERIAL NOT NULL,
  imrITEM INTEGER NOT NULL DEFAULT 0,
  imrADDER INTEGER NOT NULL DEFAULT 0,
  imrREMOVER INTEGER NOT NULL DEFAULT 0,
  imrIMID INTEGER NOT NULL DEFAULT 0,
  imrINVID INTEGER NOT NULL DEFAULT 0,
  imrTIME INTEGER NOT NULL DEFAULT 0,
  imrCONTENT varchar(200) NOT NULL,
  PRIMARY KEY (imrID)
);
DROP TABLE IF EXISTS inventory;
CREATE TABLE inventory (
  inv_id SERIAL NOT NULL,
  inv_itemid INTEGER NOT NULL DEFAULT 0,
  inv_userid INTEGER NOT NULL DEFAULT 0,
  inv_qty INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (inv_id)
);
DROP TABLE IF EXISTS itembuylogs;
CREATE TABLE itembuylogs (
  ibID SERIAL NOT NULL,
  ibUSER INTEGER NOT NULL DEFAULT 0,
  ibITEM INTEGER NOT NULL DEFAULT 0,
  ibTOTALPRICE INTEGER NOT NULL DEFAULT 0,
  ibQTY INTEGER NOT NULL DEFAULT 0,
  ibTIME INTEGER NOT NULL DEFAULT 0,
  ibCONTENT varchar(200) NOT NULL,
  PRIMARY KEY (ibID)
);
DROP TABLE IF EXISTS itemmarket;
CREATE TABLE itemmarket (
  imID SERIAL NOT NULL,
  imITEM INTEGER NOT NULL DEFAULT 0,
  imADDER INTEGER NOT NULL DEFAULT 0,
  imPRICE INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (imID)
);

INSERT INTO itemmarket VALUES (1,1,2,10);
INSERT INTO itemmarket VALUES (2,3,2,10);
INSERT INTO itemmarket VALUES (3,4,2,10);
INSERT INTO itemmarket VALUES (4,8,2,10);
INSERT INTO itemmarket VALUES (5,14,2,10);
INSERT INTO itemmarket VALUES (6,36,2,10);
INSERT INTO itemmarket VALUES (7,38,2,10);
INSERT INTO itemmarket VALUES (8,38,2,10);
INSERT INTO itemmarket VALUES (9,38,2,10);
INSERT INTO itemmarket VALUES (10,38,2,10);
INSERT INTO itemmarket VALUES (11,38,2,10);
INSERT INTO itemmarket VALUES (12,38,2,10);
INSERT INTO itemmarket VALUES (13,38,2,10);

DROP TABLE IF EXISTS items;
CREATE TABLE items (
  itmid SERIAL NOT NULL,
  itmtype INTEGER NOT NULL DEFAULT 0,
  itmname varchar(255) NOT NULL DEFAULT '',
  itmdesc varchar(200) NOT NULL,
  itmbuyprice INTEGER NOT NULL DEFAULT 0,
  itmsellprice INTEGER NOT NULL DEFAULT 0,
  itmbuyable INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (itmid)
);


INSERT INTO items VALUES (1,1,'Sack Lunch','Deliciously filled with nutrients. Even has a slice of your favorite cake!',95000,0,1);
INSERT INTO items VALUES (3,5,'Small Potion','Restores some health.',500,400,1);
INSERT INTO items VALUES (4,5,'First Aid Lotion','Heals a  considerable amount of health.',1500,750,1);
INSERT INTO items VALUES (5,1,'Hamburger','A scrumptious burger.',30,20,1);
INSERT INTO items VALUES (6,1,'Sugar Snake','A snake covered in sugar.',10,5,1);
INSERT INTO items VALUES (7,3,'Dagger','A small gold dagger.',200,100,1);
INSERT INTO items VALUES (8,3,'Kitchen Knife','A knife filled with dreaded spirits of dead animals.',2500,1500,1);
INSERT INTO items VALUES (9,3,'Chainsaw','Cut up your foes.',13250,10925,1);
INSERT INTO items VALUES (10,4,'Pistol','A small blue pistol.',500,400,1);
INSERT INTO items VALUES (11,4,'Colt','An average gun.',5000,3750,1);
INSERT INTO items VALUES (12,4,'Rifle','The standard in modern weaponry.',25000,17850,1);
INSERT INTO items VALUES (16,3,'Bat','A cricket bat.',75,50,1);
INSERT INTO items VALUES (14,4,'Mini-Rocket Launcher','Blast your foes.',99450,78765,1);
INSERT INTO items VALUES (15,1,'SuperDuper Stick','restores 100% energy',2147483647,2147483647,1);
INSERT INTO items VALUES (34,5,'Will Potion','Heals will to 100%',0,0,0);
INSERT INTO items VALUES (35,4,'Scout Sniper rifle','will hurt big time',99393,78353,1);
INSERT INTO items VALUES (36,4,'Minigun','Sheer power',100000,75000,1);
INSERT INTO items VALUES (37,3,'Diamond Dagger','Stabbing power to the max.',450000,275000,1);
INSERT INTO items VALUES (38,4,'Rocket Launcher','Boom.',220000,170000,1);
INSERT INTO items VALUES (39,4,'M16','...',49000,38000,1);
INSERT INTO items VALUES (40,6,'Bomb Stew','Extremely rare collectors item.',0,0,0);
INSERT INTO items VALUES (42,6,'\"Tit\"an Implant','Titans own way of saying hi.',0,0,0);
INSERT INTO items VALUES (74,7,'Leather Jacket','Nice biker style jacket',750,500,1);
INSERT INTO items VALUES (43,6,'Arsons Zippo','Arsons odd fantasy.',0,0,0);
INSERT INTO items VALUES (44,3,'Demon Sword','Ultimate weapon.',0,0,0);
INSERT INTO items VALUES (45,6,'Gothic Warrior-Doll','gothdavid16s favorite toy',0,0,0);
INSERT INTO items VALUES (46,2,'Videogame Boy 2002','The ultimate in console action.',0,0,0);
INSERT INTO items VALUES (47,6,'JaggerDoll','Won in a test of wits.',0,0,0);
INSERT INTO items VALUES (49,4,'Hunting Bow','Medium range bow, silent and efficient',425,210,1);
INSERT INTO items VALUES (50,3,'Foldable Chair','infamous folding chair as seen in WWF!',750,375,1);
INSERT INTO items VALUES (51,3,'Nail Filer','nail accessory',300,150,1);
INSERT INTO items VALUES (52,6,'MasturNATion Doll','You can sure put this doll to good use.',0,0,0);
INSERT INTO items VALUES (53,6,'Toonces Bouquet','231 beautiful roses',0,0,0);
INSERT INTO items VALUES (55,6,'Nahdus Rubik Cube','',0,0,0);
INSERT INTO items VALUES (48,6,'Ablemits Doll','If you have it then you are so lucky.',0,0,0);
INSERT INTO items VALUES (56,4,'Calibre Machine Gun','Brute power',175000,130000,1);
INSERT INTO items VALUES (57,4,'benelli m1','Automatic Shotgun',33000,26500,1);
INSERT INTO items VALUES (58,4,'F90 Sub Machine Gun','extremely fast short to meduim distance gun',40000,30000,1);
INSERT INTO items VALUES (59,6,'Noobi Diapers','for newbies',0,0,0);
INSERT INTO items VALUES (60,3,'Gladius','superior dagger',40000,30000,1);
INSERT INTO items VALUES (61,3,'Katana','Japanese style sword',95000,78000,1);
INSERT INTO items VALUES (62,3,'Claymore','Mysterious Medievil Sword',125000,95000,1);
INSERT INTO items VALUES (63,3,'Ragnarok','mythical eastern Weapon',175000,125000,1);
INSERT INTO items VALUES (64,3,'Diamond Sword','Cutting power to the max.',2000000,1700000,1);
INSERT INTO items VALUES (65,4,'Battlements','Fully loaded battlements.',5000000,4000000,1);
INSERT INTO items VALUES (66,6,'Conerias Duck Tape','Coneria brand duck tape',0,0,0);
INSERT INTO items VALUES (67,6,'Cold Blooded Plushie','-30C toy! What more could you want!',0,0,0);
INSERT INTO items VALUES (68,6,'Titanium NightVision Goggles','Increases your sight and accuracy at night',0,0,0);
INSERT INTO items VALUES (69,6,'Cyber-Surfboard','Netbois !!!!',0,0,0);
INSERT INTO items VALUES (70,6,'Nyuuubii Sword','Sword of the gods made for newbies',0,0,0);
INSERT INTO items VALUES (71,7,'Thick Jacket','Warm clothing for the long winter',100,75,1);
INSERT INTO items VALUES (73,7,'Trash Can Lid','Hard Round metal Lid',200,150,1);
INSERT INTO items VALUES (75,7,'Riot Shield','standard issue shield',3000,2250,1);
INSERT INTO items VALUES (77,7,'Semi-bullet proof Vest','',8750,6000,1);
INSERT INTO items VALUES (78,6,'Nuclear Bomb','Can kill anyone in one blow even though the guy is lvl 100000000 and has there stats higher than everyone! ****This weapon is restricted to poor people, but still can be buyable for a high enough prize****NOTE: This weapon can kill every member in Mono Country and can gain you heaps of .exp at once! The Deadlyest weapon in the whole Country',1000000000,0,0);
INSERT INTO items VALUES (79,7,'Helmet and Vest','',25000,17850,1);
INSERT INTO items VALUES (80,7,'plated armour','heavy armour',75000,50000,1);
INSERT INTO items VALUES (93,7,'DBS Emperor Penguin Suit','Advanced version: Agile body suit with maximum protection',3250000,2800000,1);
INSERT INTO items VALUES (94,7,'Conerias DuckTaped Suit','Made with superior brand of duck tape',150000,125000,1);
INSERT INTO items VALUES (83,7,'Mini-Tank','small tank almost bullet proof',750000,550000,1);
INSERT INTO items VALUES (92,7,'DBS Penguin Suit','Agile body suit with maximum protection',1500000,1100000,1);
INSERT INTO items VALUES (91,7,'Gothic Plate','',300000,225000,1);
INSERT INTO items VALUES (86,4,'mini-Rail Gun','new Improve technology',4000000,3000000,1);
INSERT INTO items VALUES (87,4,'Mounted Rail Gun','usually mounted on tanks',10000000,7500000,1);
INSERT INTO items VALUES (90,4,'Arsons FlameThrower','flamethrower',150000,115000,1);
INSERT INTO items VALUES (89,3,'Light Saber','',50000000,40000000,1);
INSERT INTO items VALUES (95,6,'Fifty Cent Piece','A small piece of ancient Mono History.',0,0,0);
INSERT INTO items VALUES (96,6,'1 Rupie','1 freaking rupie.',0,0,0);
INSERT INTO items VALUES (97,7,'Plasma Shield','Battery powered arm guard',25000000,17500000,1);
INSERT INTO items VALUES (98,7,'Rynax Plasma Shield','Made form a new type of power source',60000000,40000000,1);
INSERT INTO items VALUES (99,4,'Plasma Gun','Fires Bolts of plasma Energy',35000000,22500000,1);
INSERT INTO items VALUES (100,4,'Plasma Rifle','Full automatic energy rifle',75000000,50000000,1);
INSERT INTO items VALUES (102,4,'Nuke Gun','.... this is obvious',200000000,125000000,1);
INSERT INTO items VALUES (105,6,'Conerians','Awarded to helpful players. Can be redeemed for rewards.',0,0,0);
INSERT INTO items VALUES (107,4,'Bio Aeroactive 350','shoots green plasma',500000000,300000000,1);


DROP TABLE IF EXISTS itemselllogs;
CREATE TABLE itemselllogs (
  isID SERIAL NOT NULL,
  isUSER INTEGER NOT NULL DEFAULT 0,
  isITEM INTEGER NOT NULL DEFAULT 0,
  isTOTALPRICE INTEGER NOT NULL DEFAULT 0,
  isQTY INTEGER NOT NULL DEFAULT 0,
  isTIME INTEGER NOT NULL DEFAULT 0,
  isCONTENT varchar(200) NOT NULL,
  PRIMARY KEY (isID)
);

DROP TABLE IF EXISTS itemtypes;
CREATE TABLE itemtypes (
  itmtypeid SERIAL NOT NULL,
  itmtypename varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (itmtypeid)
);
INSERT INTO itemtypes VALUES (1,'Food');
INSERT INTO itemtypes VALUES (2,'Electronics');
INSERT INTO itemtypes VALUES (3,'Melee Weapon');
INSERT INTO itemtypes VALUES (4,'Gun');
INSERT INTO itemtypes VALUES (5,'Medical');
INSERT INTO itemtypes VALUES (6,'Collectible');
INSERT INTO itemtypes VALUES (7,'Armour');

DROP TABLE IF EXISTS itemxferlogs;
CREATE TABLE itemxferlogs (
  ixID SERIAL NOT NULL,
  ixFROM INTEGER NOT NULL DEFAULT 0,
  ixTO INTEGER NOT NULL DEFAULT 0,
  ixITEM INTEGER NOT NULL DEFAULT 0,
  ixQTY INTEGER NOT NULL DEFAULT 0,
  ixTIME INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (ixID)
);

DROP TABLE IF EXISTS jaillogs;
CREATE TABLE jaillogs (
  jaID SERIAL NOT NULL,
  jaJAILER INTEGER NOT NULL DEFAULT 0,
  jaJAILED INTEGER NOT NULL DEFAULT 0,
  jaDAYS INTEGER NOT NULL DEFAULT 0,
  jaREASON varchar(200) NOT NULL,
  jaTIME INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (jaID)
);

DROP TABLE IF EXISTS mail;
CREATE TABLE mail (
  mail_id SERIAL NOT NULL,
  mail_read INTEGER NOT NULL DEFAULT 0,
  mail_from INTEGER NOT NULL DEFAULT 0,
  mail_to INTEGER NOT NULL DEFAULT 0,
  mail_time INTEGER NOT NULL DEFAULT 0,
  mail_subject varchar(255) NOT NULL DEFAULT '',
  mail_text varchar(200) NOT NULL,
  PRIMARY KEY (mail_id)
);

DROP TABLE IF EXISTS medical;
CREATE TABLE medical (
  item_id INTEGER NOT NULL DEFAULT 0,
  health INTEGER NOT NULL DEFAULT 0
);

INSERT INTO medical VALUES (2,2147483647);
INSERT INTO medical VALUES (3,5);
INSERT INTO medical VALUES (4,18);
INSERT INTO medical VALUES (29,100);
INSERT INTO medical VALUES (34,0);
INSERT INTO medical VALUES (2,2147483647);
INSERT INTO medical VALUES (3,5);
INSERT INTO medical VALUES (4,18);
INSERT INTO medical VALUES (29,100);
INSERT INTO medical VALUES (34,0);

DROP TABLE IF EXISTS papercontent;
CREATE TABLE papercontent (
  content varchar(200) NOT NULL
);

INSERT INTO papercontent VALUES ('Post the latest news in your game here.');
INSERT INTO papercontent VALUES ('Post the latest news in your game here.');

DROP TABLE IF EXISTS preports;
CREATE TABLE preports (
  prID SERIAL NOT NULL,
  prREPORTER INTEGER NOT NULL DEFAULT 0,
  prREPORTED INTEGER NOT NULL DEFAULT 0,
  prTEXT varchar(200) NOT NULL,
  PRIMARY KEY (prID)
);

DROP TABLE IF EXISTS referals;
CREATE TABLE referals (
  refID SERIAL NOT NULL,
  refREFER INTEGER NOT NULL DEFAULT 0,
  refREFED INTEGER NOT NULL DEFAULT 0,
  refTIME INTEGER NOT NULL DEFAULT 0,
  refREFERIP varchar(15) NOT NULL DEFAULT '127.0.0.1',
  refREFEDIP varchar(15) NOT NULL DEFAULT '127.0.0.1',
  PRIMARY KEY (refID)
);

DROP TABLE IF EXISTS seclogs;
CREATE TABLE seclogs (
  secID SERIAL NOT NULL,
  secUSER INTEGER NOT NULL DEFAULT 0,
  secPOST varchar(200) NOT NULL,
  secGET varchar(200) NOT NULL,
  secTIME INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (secID)
);

DROP TABLE IF EXISTS shopitems;
CREATE TABLE shopitems (
  sitemID SERIAL NOT NULL,
  sitemSHOP INTEGER NOT NULL DEFAULT 0,
  sitemITEMID INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (sitemID)
);

INSERT INTO shopitems VALUES (40,9,37);
INSERT INTO shopitems VALUES (2,2,3);
INSERT INTO shopitems VALUES (14,3,16);
INSERT INTO shopitems VALUES (4,2,4);
INSERT INTO shopitems VALUES (33,7,14);
INSERT INTO shopitems VALUES (31,6,14);
INSERT INTO shopitems VALUES (7,3,7);
INSERT INTO shopitems VALUES (8,3,8);
INSERT INTO shopitems VALUES (9,3,9);
INSERT INTO shopitems VALUES (10,3,10);
INSERT INTO shopitems VALUES (11,3,11);
INSERT INTO shopitems VALUES (12,3,12);
INSERT INTO shopitems VALUES (13,3,14);
INSERT INTO shopitems VALUES (30,6,16);
INSERT INTO shopitems VALUES (29,6,12);
INSERT INTO shopitems VALUES (27,6,10);
INSERT INTO shopitems VALUES (28,6,11);
INSERT INTO shopitems VALUES (26,6,9);
INSERT INTO shopitems VALUES (24,6,7);
INSERT INTO shopitems VALUES (25,6,8);
INSERT INTO shopitems VALUES (68,3,73);
INSERT INTO shopitems VALUES (41,9,38);
INSERT INTO shopitems VALUES (39,9,36);
INSERT INTO shopitems VALUES (67,3,71);
INSERT INTO shopitems VALUES (38,8,2);
INSERT INTO shopitems VALUES (42,3,39);
INSERT INTO shopitems VALUES (43,6,39);
INSERT INTO shopitems VALUES (44,6,50);
INSERT INTO shopitems VALUES (45,3,4);
INSERT INTO shopitems VALUES (46,3,50);
INSERT INTO shopitems VALUES (47,3,49);
INSERT INTO shopitems VALUES (48,6,49);
INSERT INTO shopitems VALUES (49,6,51);
INSERT INTO shopitems VALUES (66,6,71);
INSERT INTO shopitems VALUES (51,9,35);
INSERT INTO shopitems VALUES (52,9,56);
INSERT INTO shopitems VALUES (53,6,57);
INSERT INTO shopitems VALUES (54,6,58);
INSERT INTO shopitems VALUES (55,3,60);
INSERT INTO shopitems VALUES (56,9,61);
INSERT INTO shopitems VALUES (57,9,62);
INSERT INTO shopitems VALUES (63,9,65);
INSERT INTO shopitems VALUES (59,6,35);
INSERT INTO shopitems VALUES (61,9,63);
INSERT INTO shopitems VALUES (62,9,64);
INSERT INTO shopitems VALUES (64,9,14);
INSERT INTO shopitems VALUES (65,6,60);
INSERT INTO shopitems VALUES (69,6,73);
INSERT INTO shopitems VALUES (70,3,74);
INSERT INTO shopitems VALUES (71,6,74);
INSERT INTO shopitems VALUES (72,6,77);
INSERT INTO shopitems VALUES (73,6,79);
INSERT INTO shopitems VALUES (74,6,75);
INSERT INTO shopitems VALUES (75,9,80);
INSERT INTO shopitems VALUES (76,9,81);
INSERT INTO shopitems VALUES (77,9,82);
INSERT INTO shopitems VALUES (78,4,83);
INSERT INTO shopitems VALUES (79,9,83);
INSERT INTO shopitems VALUES (80,9,84);
INSERT INTO shopitems VALUES (81,9,85);
INSERT INTO shopitems VALUES (82,9,87);
INSERT INTO shopitems VALUES (83,9,86);
INSERT INTO shopitems VALUES (84,6,88);
INSERT INTO shopitems VALUES (85,9,88);
INSERT INTO shopitems VALUES (86,10,89);
INSERT INTO shopitems VALUES (87,10,87);
INSERT INTO shopitems VALUES (89,10,97);
INSERT INTO shopitems VALUES (90,10,98);
INSERT INTO shopitems VALUES (92,10,99);
INSERT INTO shopitems VALUES (93,10,100);
INSERT INTO shopitems VALUES (94,2,40);
INSERT INTO shopitems VALUES (95,10,104);
INSERT INTO shopitems VALUES (96,9,106);

DROP TABLE IF EXISTS shops;
CREATE TABLE shops (
  shopID SERIAL NOT NULL,
  shopLOCATION INTEGER NOT NULL DEFAULT 0,
  shopNAME varchar(255) NOT NULL DEFAULT '',
  shopDESCRIPTION varchar(200) NOT NULL,
  PRIMARY KEY (shopID)
);


INSERT INTO shops VALUES (6,4,'Industrial Weapons','All the weapons you could need');
INSERT INTO shops VALUES (2,1,'MC Pharmacy','The one-stop medi-shop.');
INSERT INTO shops VALUES (3,1,'Weapons Central','The one place for all weps.');
INSERT INTO shops VALUES (4,2,'Drug store','we accept weed');
INSERT INTO shops VALUES (5,1,'Drug Store','we sell steriods');
INSERT INTO shops VALUES (10,5,'Cyber weaponary','space age weaponary here');
INSERT INTO shops VALUES (9,3,'El Ablo Weapons','Only the truly powerful weapons.');


DROP TABLE IF EXISTS staffdetlogs;
CREATE TABLE staffdetlogs (
  sdID SERIAL NOT NULL,
  sdUSER INTEGER NOT NULL DEFAULT 0,
  sdTIME INTEGER NOT NULL DEFAULT 0,
  sdPOST varchar(200) NOT NULL,
  sdGET varchar(200) NOT NULL,
  sdACT varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (sdID)
);

DROP TABLE IF EXISTS staffnews;
CREATE TABLE staffnews (
  snID SERIAL NOT NULL,
  snPOSTER INTEGER NOT NULL DEFAULT 0,
  snIMPORTANCE varchar(10) NOT NULL DEFAULT 'low',
  snSUBJECT varchar(255) NOT NULL DEFAULT '',
  snTEXT varchar(200) NOT NULL,
  snTIME INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (snID)
);


DROP TABLE IF EXISTS staffnotelogs;
CREATE TABLE staffnotelogs (
  snID SERIAL NOT NULL,
  snCHANGER INTEGER NOT NULL DEFAULT 0,
  snCHANGED INTEGER NOT NULL DEFAULT 0,
  snTIME INTEGER NOT NULL DEFAULT 0,
  snOLD varchar(200) NOT NULL,
  snNEW varchar(200) NOT NULL,
  PRIMARY KEY (snID)
);


DROP TABLE IF EXISTS surrenders;
CREATE TABLE surrenders (
  surID SERIAL NOT NULL,
  surWAR INTEGER NOT NULL DEFAULT 0,
  surWHO INTEGER NOT NULL DEFAULT 0,
  surTO INTEGER NOT NULL DEFAULT 0,
  surMSG varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (surID)
);
DROP TABLE IF EXISTS txsused;

CREATE TABLE txsused (
  txID SERIAL NOT NULL,
  txTX varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (txID)
);
DROP TABLE IF EXISTS unjaillogs;
CREATE TABLE unjaillogs (
  ujaID SERIAL NOT NULL,
  ujaJAILER INTEGER NOT NULL DEFAULT 0,
  ujaJAILED INTEGER NOT NULL DEFAULT 0,
  ujaTIME INTEGER NOT NULL DEFAULT 0,
  PRIMARY KEY (ujaID)
);


DROP TABLE IF EXISTS users;
CREATE TABLE users (
  userid SERIAL NOT NULL,
  username varchar(255) NOT NULL DEFAULT '',
  userpass varchar(255) NOT NULL DEFAULT '',
  level INTEGER NOT NULL DEFAULT 0,
  exp decimal(11,4) NOT NULL DEFAULT 0.0000,
  money INTEGER NOT NULL DEFAULT 0,
  crystals INTEGER NOT NULL DEFAULT 0,
  laston INTEGER NOT NULL DEFAULT 0,
  lastip varchar(255) NOT NULL DEFAULT '',
  energy INTEGER NOT NULL DEFAULT 0,
  will INTEGER NOT NULL DEFAULT 0,
  maxwill INTEGER NOT NULL DEFAULT 0,
  brave INTEGER NOT NULL DEFAULT 0,
  maxbrave INTEGER NOT NULL DEFAULT 0,
  maxenergy INTEGER NOT NULL DEFAULT 0,
  hp INTEGER NOT NULL DEFAULT 0,
  maxhp INTEGER NOT NULL DEFAULT 0,
  lastrest_life INTEGER NOT NULL DEFAULT 0,
  lastrest_other INTEGER NOT NULL DEFAULT 0,
  location INTEGER NOT NULL DEFAULT 0,
  hospital INTEGER NOT NULL DEFAULT 0,
  jail INTEGER NOT NULL DEFAULT 0,
  fedjail INTEGER NOT NULL DEFAULT 0,
  user_level INTEGER NOT NULL DEFAULT 1,
  gender varchar(10) NOT NULL DEFAULT 'Male',
  daysold INTEGER NOT NULL DEFAULT 0,
  signedup INTEGER NOT NULL DEFAULT 0,
  course INTEGER NOT NULL DEFAULT 0,
  cdays INTEGER NOT NULL DEFAULT 0,
  donatordays INTEGER NOT NULL DEFAULT 0,
  email varchar(255) NOT NULL DEFAULT '',
  login_name varchar(255) NOT NULL DEFAULT '',
  display_pic varchar(200) NOT NULL,
  duties varchar(255) NOT NULL DEFAULT 'N/A',
  bankmoney INTEGER NOT NULL DEFAULT 0,
  cybermoney INTEGER NOT NULL DEFAULT -1,
  staffnotes varchar(200) NOT NULL,
  mailban INTEGER NOT NULL DEFAULT 0,
  mb_reason varchar(255) NOT NULL DEFAULT '',
  hospreason varchar(255) NOT NULL DEFAULT '',
  pass_salt varchar(8) NOT NULL DEFAULT '',
  PRIMARY KEY (userid)
);


INSERT INTO users VALUES (2,'admin','e229dca52dbfa50c12f80f746c8d6867',1,0.0000,1000000,0,1458931688,'10.123.222.210',12,100,100,5,5,12,100,100,0,0,1,0,0,0,2,'Male',0,1458930820,0,0,0,'admin@teachthenet.com','admin','','N/A',-1,-1,'',0,'','','');

DROP TABLE IF EXISTS userstats;
CREATE TABLE userstats (
  userid INTEGER NOT NULL DEFAULT 0,
  strength decimal(11,4) NOT NULL DEFAULT 0.0000,
  agility decimal(11,4) NOT NULL DEFAULT 0.0000,
  guard decimal(11,4) NOT NULL DEFAULT 0.0000,
  labour decimal(11,4) NOT NULL DEFAULT 0.0000,
  IQ decimal(11,6) NOT NULL DEFAULT 0.000000,
  PRIMARY KEY (userid)
);

INSERT INTO userstats VALUES (2,10.0000,10.0000,10.0000,10.0000,10.000000);
INSERT INTO userstats VALUES (12,10.0000,10.0000,10.0000,10.0000,10.000000);


DROP TABLE IF EXISTS votes;
CREATE TABLE votes (
  userid INTEGER NOT NULL DEFAULT 0,
  list varchar(255) NOT NULL DEFAULT ''
);
DROP TABLE IF EXISTS weapons;
CREATE TABLE weapons (
  item_id INTEGER NOT NULL DEFAULT 0,
  damage decimal(11,4) NOT NULL DEFAULT 0.0000
);


INSERT INTO weapons VALUES (7,3.0000);
INSERT INTO weapons VALUES (8,6.2000);
INSERT INTO weapons VALUES (9,10.0000);
INSERT INTO weapons VALUES (10,5.0000);
INSERT INTO weapons VALUES (11,7.5000);
INSERT INTO weapons VALUES (12,12.0000);
INSERT INTO weapons VALUES (13,0.0000);
INSERT INTO weapons VALUES (14,25.0000);
INSERT INTO weapons VALUES (16,1.5000);
INSERT INTO weapons VALUES (17,50.0000);
INSERT INTO weapons VALUES (18,3450.0000);
INSERT INTO weapons VALUES (19,0.0000);
INSERT INTO weapons VALUES (20,1050.0000);
INSERT INTO weapons VALUES (26,1000.0000);
INSERT INTO weapons VALUES (27,0.0000);
INSERT INTO weapons VALUES (28,1.0000);
INSERT INTO weapons VALUES (30,1250.0000);
INSERT INTO weapons VALUES (31,0.0000);
INSERT INTO weapons VALUES (33,0.0000);
INSERT INTO weapons VALUES (35,20.0000);
INSERT INTO weapons VALUES (36,25.0000);
INSERT INTO weapons VALUES (37,75.0000);
INSERT INTO weapons VALUES (38,50.0000);
INSERT INTO weapons VALUES (39,28.0000);
INSERT INTO weapons VALUES (44,1.0000);
INSERT INTO weapons VALUES (49,4.0000);
INSERT INTO weapons VALUES (50,5.0000);
INSERT INTO weapons VALUES (51,0.2000);
INSERT INTO weapons VALUES (86,210.0000);
INSERT INTO weapons VALUES (56,40.0000);
INSERT INTO weapons VALUES (57,14.0000);
INSERT INTO weapons VALUES (58,16.0000);
INSERT INTO weapons VALUES (61,20.0000);
INSERT INTO weapons VALUES (60,15.0000);
INSERT INTO weapons VALUES (62,30.0000);
INSERT INTO weapons VALUES (63,40.0000);
INSERT INTO weapons VALUES (64,120.0000);
INSERT INTO weapons VALUES (65,240.0000);
INSERT INTO weapons VALUES (88,10.0000);
INSERT INTO weapons VALUES (87,180.0000);
INSERT INTO weapons VALUES (89,750.0000);
INSERT INTO weapons VALUES (90,35.0000);
INSERT INTO weapons VALUES (99,400.0000);
INSERT INTO weapons VALUES (100,900.0000);
INSERT INTO weapons VALUES (104,5000.0000);
INSERT INTO weapons VALUES (102,1500.0000);
INSERT INTO weapons VALUES (106,2500.0000);
INSERT INTO weapons VALUES (107,3000.0000);
INSERT INTO weapons VALUES (108,0.0000);
INSERT INTO weapons VALUES (7,3.0000);
INSERT INTO weapons VALUES (8,6.2000);
INSERT INTO weapons VALUES (9,10.0000);
INSERT INTO weapons VALUES (10,5.0000);
INSERT INTO weapons VALUES (11,7.5000);
INSERT INTO weapons VALUES (12,12.0000);
INSERT INTO weapons VALUES (13,0.0000);
INSERT INTO weapons VALUES (14,25.0000);
INSERT INTO weapons VALUES (16,1.5000);
INSERT INTO weapons VALUES (17,50.0000);
INSERT INTO weapons VALUES (18,3450.0000);
INSERT INTO weapons VALUES (19,0.0000);
INSERT INTO weapons VALUES (20,1050.0000);
INSERT INTO weapons VALUES (26,1000.0000);
INSERT INTO weapons VALUES (27,0.0000);
INSERT INTO weapons VALUES (28,1.0000);
INSERT INTO weapons VALUES (30,1250.0000);
INSERT INTO weapons VALUES (31,0.0000);
INSERT INTO weapons VALUES (33,0.0000);
INSERT INTO weapons VALUES (35,20.0000);
INSERT INTO weapons VALUES (36,25.0000);
INSERT INTO weapons VALUES (37,75.0000);
INSERT INTO weapons VALUES (38,50.0000);
INSERT INTO weapons VALUES (39,28.0000);
INSERT INTO weapons VALUES (44,1.0000);
INSERT INTO weapons VALUES (49,4.0000);
INSERT INTO weapons VALUES (50,5.0000);
INSERT INTO weapons VALUES (51,0.2000);
INSERT INTO weapons VALUES (86,210.0000);
INSERT INTO weapons VALUES (56,40.0000);
INSERT INTO weapons VALUES (57,14.0000);
INSERT INTO weapons VALUES (58,16.0000);
INSERT INTO weapons VALUES (61,20.0000);
INSERT INTO weapons VALUES (60,15.0000);
INSERT INTO weapons VALUES (62,30.0000);
INSERT INTO weapons VALUES (63,40.0000);
INSERT INTO weapons VALUES (64,120.0000);
INSERT INTO weapons VALUES (65,240.0000);
INSERT INTO weapons VALUES (88,10.0000);
INSERT INTO weapons VALUES (87,180.0000);
INSERT INTO weapons VALUES (89,750.0000);
INSERT INTO weapons VALUES (90,35.0000);
INSERT INTO weapons VALUES (99,400.0000);
INSERT INTO weapons VALUES (100,900.0000);
INSERT INTO weapons VALUES (104,5000.0000);
INSERT INTO weapons VALUES (102,1500.0000);
INSERT INTO weapons VALUES (106,2500.0000);
INSERT INTO weapons VALUES (107,3000.0000);
INSERT INTO weapons VALUES (108,0.0000);

DROP TABLE IF EXISTS willplogs;
CREATE TABLE willplogs (
  wp_id SERIAL NOT NULL,
  wp_userid INTEGER NOT NULL DEFAULT 0,
  wp_time INTEGER NOT NULL DEFAULT 0,
  wp_qty varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (wp_id)
);
