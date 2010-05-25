--Name:        Magister Winfried Birks
--Race:        Male Human
--Town:        Free University of Varshikar (Library)
--Function:    Knowlege teacher
--Position:    x=261 y=-317 z=-3
--Facing:      East
--Create       1.1.2009 by Dronrul


dofile("npc_autonpcfunctions.lua")
require("base.common")


function useNPC(user,counter,param)
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "Ich w�rde es bevorzugen, wenn ihr mich nicht anfasst!");
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Ich would prefer, that you don't touch me!!");
	
end
                
function initializeNpc()
    if TraderFirst then
        return true;
    end
    InitTalkLists()

    QuestID=2111;
    -- Begr��ungen
    AddTraderTrigger("[Hh]elp","I can tell you something about the different runes and runeschools if you are interested.");
    AddTraderTrigger("[Gg]reetings","Be greeted - take a seat next to me.");
    AddTraderTrigger("[Hh]eho","Be greeted - take a seat next to me.");
	AddCondition("lang","english");
    AddTraderTrigger("[Hh]ello","Hush! This is a library, not a tavern.");
    
	AddTraderTrigger("[Hh]elf","Ich kann euch einiges �ber die verschiedenen Runen und Runenschulen erz�hlen wenn ihr Interesse daran habt.");
    AddTraderTrigger("[Hh]ilf","Ich kann euch einiges �ber die verschiedenen Runen und Runenschulen erz�hlen wenn ihr Interesse daran habt.");
    AddTraderTrigger("[Gg]r��","Ich Gr��e euch, setzt euch doch zu mir.");
    AddTraderTrigger("[Hh]eho","Ich Gr��e euch, setzt euch doch zu mir.");
    AddTraderTrigger("[Hh]allo","Scht! Dies ist eine Bibliothek, keine Taverne.");


    -- Charakter verkauft nichts!
    AddTraderTrigger("[Bb]uy","The only thing i would buy is a mana energy stabilizer");
    AddTraderTrigger("[Ee]nergy","Yes I would buy that. But i think, that you don't have one with you so I'll order one from Lor Angur");
    AddTraderTrigger("[Nn]eed","That's a very complex apparat, I'll explain you that one day. But I could tell you something about runelore if you're interested");
	AddTraderTrigger("[Rr]equir","That's a very complex apparat, I'll explain you that one day. But I could tell you something about runelore if you're interested");
	AddTraderTrigger("[Pp]rice","Let me think about it...I would say around 120 gold coins.");
	AddTraderTrigger("[Ss]ell","I'm a teacher for rune lore not a trader.");
	
    AddTraderTrigger("[Kk]auf","Das einzige was ich euch abkaufen w�rde, ist ein Manaenergiestabilisator.");
    AddTraderTrigger("[Mm]anaenergiestabilisator","Manaenergiestabilisator, ja das w�rde ich euch abkaufen. Ich denke das ihr keinen dabei habt also werde ich ihn irgendwann einmal aus Lor Angur bestellen.");
    AddTraderTrigger("[Bb]en�tigt","Da so ein Apparat h�chst komplex ist, verzichten wir lieber auf eine Erkl�rung. Wenn ihr aber etwas �ber die Runenkunde  beigebracht haben wollt, stehe ich euch zur Verf�gung.");  
    AddTraderTrigger("[Kk]ost","So ein Manaenergiestabilisator, lasst mich einmal nachdenken. Er w�rde 120 Goldm�nzen kosten und das in einer nicht transportablen Gr��e.");
	AddTraderTrigger("[Tt]ransport","Nur das f�nffache. Ich w�rde nun gerne weiter an meiner Ausarbeitung arbeiten oder soll ich euch noch etwas �ber die Runenkunde beibringen?");
	AddTraderTrigger("[Vv]erkauf","Ich bin ein Lehrmeister der Runenkunde und kein H�ndler.");

	

	
    -- Smaltalk
    AddTraderTrigger("[Dd]ein","Ich m�chte euch bitten mich nicht so unformell anzusprechen.");
    AddCondition("lang","german");
    AddTraderTrigger("[Dd]ir","Ich m�chte euch bitten mich nicht so unformell anzusprechen.");
    AddCondition("lang","german");
    AddTraderTrigger("[Dd]ich","Ich m�chte euch bitten mich nicht so unformell anzusprechen.");
    AddCondition("lang","german");
    AddTraderTrigger("[Ee]ntschuld","Schon in Ordnung. Kann ich euch irgendwie weiterhelfen?");
    AddCondition("lang","german");
	AddTraderTrigger("[W]ho are you?","I am Windfried Birks and I am from Lor-Angur. Well, I am the Magister for runelore. I teach new students the meaning of the runes and the runeschools.");
	AddCondition("lang","english");
	AddTraderTrigger("[Ww]er seid ihr?","Ich bin Winfried Birks und stamme aus Lor Angur. Nun bin ich hier Spektabilit�t f�r Runenkunde. Ich lehre neuen Studenten die Bedeutung der Runen und der Runenschulen.");                               
	AddCondition("lang","german");
	AddTraderTrigger("[Ww]hat's your name?","I am Windfried Birks and I am from Lor-Angur. Well, I am the Magister for runelore. I teach new students the meaning of the runes and the runeschools.");
	AddCondition("lang","english");
	AddTraderTrigger("[Ww]ie ist euer [Nn]ame?","Ich bin Winfried Birks und stamme aus Lor Angur. Nun bin ich hier Magister f�r Runenkunde. Ich lehre neuen Studenten die Bedeutung der Runen und der Runenschulen.");
	AddCondition("lang","german");
	AddTraderTrigger("[Ww]hat are you doing","I am Windfried Birks and I am from Lor-Angur. Well, I am the Magister for runelore. I teach new students the meaning of the runes and the runeschools.");
	AddCondition("lang","english");
	AddTraderTrigger("[Ww]as macht?","Ich bin Winfried Birks und stamme aus Lor Angur. Nun bin ich hier Magister f�r Runenkunde. Ich lehre neuen Studenten die Bedeutung der Runen und der Runenschulen.");
	AddCondition("lang","german");
	AddTraderTrigger("[Ww]as tut ihr hier?","Ich bin Winfried Birks und stamme aus Lor Angur. Nun bin ich hier Magister f�r Runenkunde. Ich lehre neuen Studenten die Bedeutung der Runen und der Runenschulen.");
    AddCondition("lang","german");
    AddTraderTrigger("[Ww]hat is your profession","I am Windfried Birks and I am from Lor-Angur. Well, I am the Magister for runelore. I teach new students the meaning of the runes and the runeschools.");
	AddCondition("lang","english");
	AddTraderTrigger("[Ww]as ist [Aa]ufgabe?","Ich bin Winfried Birks und stamme aus Lor Angur. Nun bin ich hier Magister f�r Runenkunde. Ich lehre neuen Studenten die Bedeutung der Runen und der Runenschulen.");
	AddCondition("lang","german");
	AddTraderTrigger("[Ww]here are you from","I am Windfried Birks and I am from Lor-Angur. Well, I am the Magister for runelore. I teach new students the meaning of the runes and the runeschools.");
	AddCondition("lang","english");
	AddTraderTrigger("[Ww]oher kommt?","Ich bin Winfried Birks und stamme aus Lor Angur. Nun bin ich hier Magister f�r Runenkunde. Ich lehre neuen Studenten die Bedeutung der Runen und der Runenschulen.");
	AddCondition("lang","german");
	AddTraderTrigger("[Hh]ow are you","There is absolutely no reason for me to complain about. This place is way more peaceful than Lor-Angur.");
	AddCondition("lang","english");
	AddTraderTrigger("[Ww]ie geht","Es l�ge mir v�llig fern zu klagen. Hier ist es viel ruhiger als in Lor Angur.");
	AddCondition("lang","german");
	AddTraderTrigger("[Hh]ow do you feel","There is absolutely no reason for me to complain about. This place is way more peaceful than Lor-Angur.");
	AddCondition("lang","english")
	AddTraderTrigger("[Bb]efinden","Es l�ge mir v�llig fern zu klagen. Hier ist es viel ruhiger als in Lor Angur. ");
	AddCondition("lang","german");
	AddTraderTrigger("[Ll]or [Aa]ngur","Ja die Stadt der Magie Lor Angur. Eine prachtvolle Stadt ist das. Ich habe dort gelehrt bevor ich die Stelle hier angenommen habe.");
	AddCondition("lang","german");
	AddTraderTrigger("[Aa]ngenommen","Mich reizte es eine andere Lehranstallt kennen zu lernen. Au�erdem habe ich hier mehr Zeit f�r meine Studien und werde genauso gut bezahlt.");
	AddCondition("lang","german");
	AddTraderTrigger("[Bb]ezahlt","Kost und Logis das ist meine Bezahlung. Wenn ihr keine Fragen �ber Runen oder die Runenkunde habt, w�rde ich mich nun gerne wieder diesem interessanten Buch widmen.");
	AddCondition("lang","german");
	AddTraderTrigger("[Ss]tudien","Ich studiere die Runen. Wie man sie richtig ausspricht. Wie man sie optimal anwendet und noch vieles mehr. Ihr werdet noch merken was man alles beachten mu�.");
	AddCondition("lang","german");
 	AddTraderTrigger("I am","It's a pleasure to meet you.");
	AddCondition("lang","english")
	AddTraderTrigger("I'm","It's a pleasure to meet you.");
	AddCondition("lang","english")
    AddTraderTrigger("[Mm]y name","It's a pleasure to meet you.");
    AddCondition("lang","english")
    AddTraderTrigger("Ich bin","Es freut mich euch kennenzulernen.");
    AddCondition("lang","german");
    AddTraderTrigger("[Mm]ein Name","Es freut mich euch kennenzulernen.");
    AddCondition("lang","german");
    AddTraderTrigger("[Aa]usarbeitung","Ich arbeite an einer Zusammenfassung der Bedeutung aller Runen.");
    AddCondition("lang","german");
    AddTraderTrigger("[Pp]aper","I write on a elaboration about the meaning of all runes.");
    AddCondition("lang","english")
    AddTraderTrigger("[Ii]nteressant","Ja, das ist es in der Tat.");    
    AddCondition("lang","german");
    AddTraderTrigger("[Ii]nteresting","Indeed.");
    AddCondition("lang","english")

    
	--  Beibringen
	AddTraderTrigger("[Tt]each","Of course, do you want to know something about the meaning of the runes or the runeschools?");
	AddCondition("lang","english");
	AddCondition("qpg","!=",1);
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);
	AddTraderTrigger("[Ww]as beibringen","Aber selbstverst�ndlich, wollt ihr etwas �ber die Bedeutung der Runen oder die Schulen der Runen Wissen? ");
	AddCondition("lang","german");
	AddCondition("qpg","!=",1);
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);
	AddTraderTrigger("[Tt]ell","Of course, do you want to know something about the meaning of the runes or the runeschools?");
	AddCondition("lang","english");
	AddCondition("qpg","!=",1);
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);	
	AddTraderTrigger("[Ww]as erz�hlen","Aber selbstverst�ndlich, wollt ich etwas �ber die Bedeutung der Runen oder die Schulen der Runen Wissen? ");
	AddCondition("lang","german");
	AddCondition("qpg","!=",1);	
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);
	AddTraderTrigger("[Ww]as lehren","Aber selbstverst�ndlich, wollt ich etwas �ber die Bedeutung der Runen oder die Schulen der Runen Wissen? ");
	AddCondition("lang","german");
	AddCondition("qpg","!=",1);
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);
	AddTraderTrigger("[Ee]xplain","Of course, do you want to know something about the meaning of the runes or the runeschools?");
	AddCondition("lang","english");
	AddCondition("qpg","!=",1);
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);
	AddTraderTrigger("[Ww]as erkl�ren","Aber selbstverst�ndlich, wollt ich etwas �ber die Bedeutung der Runen oder die Schulen der Runen Wissen? ");
    AddCondition("lang","german");
    AddCondition("qpg","!=",1);
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);
	
  	-- Runenkunde
    AddTraderTrigger("HEPT","HEPT is the rune of ice and refreezing.");
    AddCondition("lang","english");
    AddTraderTrigger("HEPT","HEPT ist Rune des Eises und des Einfrierens.");
    AddCondition("lang","german");

    AddTraderTrigger("PEN","The elementrune of the spirit. It is used in the magic of healing.");
    AddCondition("lang","english");
    AddTraderTrigger("PEN","Die Elementarrune des Geistes. Sie findet bei Heilmagie Verwendung.");
    AddCondition("lang","german");

    AddTraderTrigger("MES","This rune is used for healing spells, too. It is often associated with a welfare, warm light. But the correct translation is 'light'.");
    AddCondition("lang","english");
    AddTraderTrigger("MES","Die Rune MES benutzt man auch f�r Heilspr�che, man bring sie oft mit Licht wohliger W�rme in Verbindung, die genaue �bersetzung hei�t aber 'Licht'. ");
    AddCondition("lang","german");

    AddTraderTrigger("ORL","ORL stands for Creation and is used for example to create food into your own stomach or to create earth walls.");
    AddCondition("lang","english");
    AddTraderTrigger("ORL","ORL steht f�r Erschaffung und wird Beispielsweise zum erschaffen von Nahrung im eigenen Magen oder zur Beschw�rung von Erdw�llen gebraucht.");
    AddCondition("lang","german");

    AddTraderTrigger("CUN","The elementrune of the water is CUN.");
    AddCondition("lang","english");
    AddTraderTrigger("CUN","Die Elementarrune des Wassers ist CUN. ");
    AddCondition("lang","german");

    AddTraderTrigger("SAV","SAV is the ancient word for protection. You can cast with it for example a circle of stones around yourself.");
    AddCondition("lang","english");
    AddTraderTrigger("SAV","SAV hei�t Schut auf Antik. Mann kann damit zum Beispiel Steinkreise um sich zaubern.");
    AddCondition("lang","german");

    AddTraderTrigger("SOLH","The elementrune of the earth is SOLH.");
    AddCondition("lang","english");
    AddTraderTrigger("SOLH","Die Elemntarrune der Erde hei�t SOLH.");
    AddCondition("lang","german");

    AddTraderTrigger("FHEN","FHEN is he opposite of FHAN and means 'to get' or 'to take'.");
    AddCondition("lang","english");
    AddTraderTrigger("FHEN","FHEN ist das Gegenteil von FHAN und hei�t holen beziehungsweise nehmen.");
    AddCondition("lang","german");

    AddTraderTrigger("KAH","A mage needs this rune to satiate. It means food.");
    AddCondition("lang","english");
    AddTraderTrigger("KAH","Diese Runen braucht ein Magier zum S�ttigen, sie bedeutet Nahrung oder auch Essen.");
    AddCondition("lang","german");

    AddTraderTrigger("LHOR","This rune creates illusions. You can translate it with 'illusion' or 'to cheat'");
    AddCondition("lang","english");
    AddTraderTrigger("LHOR","Die Rune LHOR erschafft Trugbilder. Man kann sie mit Illusion oder t�uschen �bersetzen.");
    AddCondition("lang","german");

    AddTraderTrigger("KEL","KEL means bird or movement. This rune is a part of many spells which deals with moving of something or someone. For example throwing a fireball or creating a portal.");
    AddCondition("lang","english");
    AddTraderTrigger("KEL","KEL bedeutet Vogel oder bewegen. Diese Rune kommt in vielen Spr�chen vor, bei denen den Etwas oder Jemand bewegt wird. Beispielsweise das Werfen eines Feuerballs oder die Erschaffung eines Portals.");
    AddCondition("lang","german");

    AddTraderTrigger("TAH","This rune stands for inverting or banning. Every spell, which destroys other kind of magic, contains TAH.");
    AddCondition("lang","english");
    AddTraderTrigger("TAH","Diese Rune steht f�r umkehren oder auch bannen. Alle Runenspr�che, die eine andere Form von Magie zerst�ren, werden mit TAH gesprochen.");
    AddCondition("lang","german");

    AddTraderTrigger("TAUR","This rune stands for being and creature. You need it to summon.");
    AddCondition("lang","english");
    AddTraderTrigger("TAUR","F�r Wesen oder Kreatur steht diese Rune. Man ben�tigt sie f�r Beschw�rungen.");
    AddCondition("lang","german");

    AddTraderTrigger("URA","You can translate it with natural or alive. With its help you can summon wild animals, brute, insects or even oger.");
    AddCondition("lang","english");
    AddTraderTrigger("URA","Kann man mit nat�rlich, beziehungsweise lebendig �bersetzen. Mit ihrer Hilfe lassen sich Wild, Vieh, Insekten aber auch Oger beschw�ren.");
    AddCondition("lang","german");

    AddTraderTrigger("IRA","IRA means unnatural, dead or undead. With this rune you can summon skeletons, ghosts or mummies.");
    AddCondition("lang","english");
    AddTraderTrigger("IRA","IRA bedeutet so viel wie unnat�rlich, tot oder auch untot. Mit dieser Rune kann man Skelette, Geister und Mumien herbei rufen.");
    AddCondition("lang","german");

    AddTraderTrigger("YEG","YEG is translated with poison. With the help of this rune you can cast for example poison clouds.");
    AddCondition("lang","english");
    AddTraderTrigger("YEG","Gift, die ist die �bersetzung von YEG, mit Hilfe dieser Rune kann man unter anderem Giftwolken erschaffen.");
    AddCondition("lang","german");

    AddTraderTrigger("JUS","JUS is the elementrune of the wind.");
    AddCondition("lang","english");
    AddTraderTrigger("JUS","JUS ist die Elementarrune des Windes.");
    AddCondition("lang","german");

    AddTraderTrigger("SIH","SIH stands for healing, for example if someone is venomed.");
    AddCondition("lang","english");
    AddTraderTrigger("SIH","SIH steht f�r Heilen, zum Beispiel von Gift.");
    AddCondition("lang","german");

    AddTraderTrigger("ANTH","ANTH describes a static, immobile object.");
    AddCondition("lang","english");
    AddTraderTrigger("ANTH","ANTH beschreibt ein statisches, unbewegliches Objekt.");
    AddCondition("lang","german");

    AddTraderTrigger("SUL","SUL is uses to cripple and means as much as 'to stand' or 'to hold'.");
    AddCondition("lang","english");
    AddTraderTrigger("SUL","SUL wird zum L�hmen verwendet und bedeutet soviel wie stehen oder auch festhalten.");
    AddCondition("lang","german");

    AddTraderTrigger("QWAN","To boost a spell you need QWAN. QWAN means something like 'big'.");
    AddCondition("lang","english");
    AddTraderTrigger("QWAN","Um Runenspr�che zu verst�rken braucht man QWAN. �bersetzt bedeutet QWAN soviel wie 'gro�'.");
    AddCondition("lang","german");

    AddTraderTrigger("DUN","DUN is needed to extend spells. The translation is plane.");
    AddCondition("lang","english");
    AddTraderTrigger("DUN","Um Spr�che auszubreiten braucht man DUN, die �bersetzung lautet 'fl�chig'.");

    AddTraderTrigger("PHERC","PHERC is the baneful rune of the pain.");
    AddCondition("lang","english");
    AddTraderTrigger("PHERC","PHERC ist die unheilvolle Rune des Schmerzes.");
    AddCondition("lang","german");

    AddTraderTrigger("FHAN","FHAN is a rune of direction. It can be translated with 'to bring along' or to 'give'.");
    AddCondition("lang","english");
    AddTraderTrigger("FHAN","FHAN ist eine Richtungsrune und kann mit bringen oder geben �bersetzt werden.");
    AddCondition("lang","german");

    AddTraderTrigger("LUK","With LUK you can summon aggressive creatures. The translation is 'evil'.");
    AddCondition("lang","english");
    AddTraderTrigger("LUK","Mit Hilfe von LUK kann man aggressive Kreaturen beschw�ren, ihre �bersetzung lautet 'B�ses'.");
    AddCondition("lang","german");

    AddTraderTrigger("LEV","The meaning of LEV is unknown, but can be translated with 'to alter'.");
    AddCondition("lang","english");
    AddTraderTrigger("LEV","Die Bedeutung von LEV ist unklar, kann aber mit 'ver�ndern' �bersetzt werden.");
    AddCondition("lang","german");

    AddTraderTrigger("BHONA","This is the rune of teaching. It is needed to give a rune from one mage to another one. BHONA decorates a teacher.");
    AddCondition("lang","english");
    AddTraderTrigger("BHONA","Dies ist die Lehrrune, die ben�tigt wird, um eine Rune von einen Magier auf einen anderen zu �bertragen. BHONA zeichnet einen Lehrer aus.");
    AddCondition("lang","german");

	AddTraderTrigger("[Ee]lementrune","The elementrunes stands for the five elements. RA for fire, CUN for water, SOLH for earth, JUS for air, PEN for spirit.");
	AddCondition("lang","english");
	AddTraderTrigger("[Ee]lementarrune","Die Elementarrunen stehen f�r die f�nf Elemente. RA f�r Feuer, CUN f�r Wasser, SOLH f�r Erde, JUS f�r Luft und PEN f�r den Geist.");
    AddCondition("lang","german");

	
	--Runenschulen
    AddTraderTrigger("[Ss]chool.*","There are five kinds of schools of runes, which result from the observance that you, if you cast different kinds of spells, become better in similar spells, too. The runeschools are Commotio, Transfreto, Pervestigatio, Desicio and Transformo. About which one shall I tell you more?");
    AddCondition("lang","english");
	AddTraderTrigger("[Ss]chule.*","Es gibt f�nf Runenschulen die sich aus der Beobachtung ergeben, das man durch h�ufige Anwendung bestimmter Spr�che sich gleichzeitig in der Verwendung �hnlicher verbessert. Die Runenschulen hei�en Commotio, Transfreto, Pervestigatio, Desicio und Transformo. Sagt mir von welcher ich euch mehr erz�hlen soll?");
    AddCondition("lang","german");
	
	
	--Runenaufz�hlung
	AddTraderTrigger("[Rr]une","There are 28 runes. Every rune has a name, the ancient word of its meaning. The names are KEL, RA, HEPT, TAH, PEN, LUK, MES, ORL, TAUR, URA, IRA, CUN, SAV, YEG, JUS, QWAN, SOLH, SIH, FHAN, LEV, FHEN, KAH, ANTH and DUN. About which rune do you want to learn more?");
	AddCondition("lang","english");
	AddTraderTrigger("[Rr]une","Es gibt 28 Runen. Jede Rune hat einen Namen, das Antike Wort f�r ihre Bedeutung. Die Namen der Runen sind KEL, RA, HEPT, TAH, PEN, LUK, MES, ORL, TAUR, URA, IRA, CUN, SAV, YEG, JUS, QWAN, SOLH, SIH, FHAN, LEV, FHEN, KAH, ANTH und DUN. �ber welche Rune m�chtet ihr mehr erfahren?");
    AddCondition("lang","german");

    AddTraderTrigger("[Cc]ommotio","Commotio means destruction and includes most of the attacking spells, for example the classic fireball. The ban-spells belong to Commotio, too. Shall I teach you more?");
    AddCondition("lang","english");
	AddCondition("qpg","!=",2);
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);
	
	AddTraderTrigger("[Cc]ommotio","Commotio bedeutet Zerst�rung und umfasst die meisten Angriffszauber, wie beispielsweise den klassischen Feuerball. Auch die Bannspr�che z�hlen zu Commotio. Soll ich dir dar�ber mehr erz�hlen?");
    AddCondition("lang","german");
	AddCondition("qpg","!=",2);
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);
	
    AddTraderTrigger("[Tt]ransfreto","This school of runes means 'converse' and deals for example with the healing - the inverting of poison in a creature. Shall I teach you more?");
    AddCondition("lang","english");
	AddCondition("qpg","!=",2);
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);
	
	AddTraderTrigger("[Tt]ransfreto","Diese Runenschule bedeutet 'Umkehrung' und besch�ftigt sich zum Beispiel mit dem Heil dem Umkehren von Gift in einem Wesen. Soll ich dir dar�ber mehr erz�hlen?");
    AddCondition("lang","german");
	AddCondition("qpg","!=",2);
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);
	
    AddTraderTrigger("[Pp]ervestigatio","The best translation for Pervestigatio is 'Creating'. After the classical healing, the creation of flames and earth walls belong to it. Shall I teach you more?");
    AddCondition("lang","english");
	AddCondition("qpg","!=",2);
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);
	
	AddTraderTrigger("[Pp]ervestigatio","Pervestigatio l�sst sich am besten mit 'Erschaffung' �bersetzen. Neben den klassischen Heilzaubern z�hlen hier vor allen das erschaffen von Flammen und Erdw�llen dazu. Soll ich dir dar�ber mehr erz�hlen?");
    AddCondition("lang","german");
	AddCondition("qpg","!=",2);
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);
	
    AddTraderTrigger("[Dd]esicio","In this case we talk about summoning. It includes spells which are used to summon creatures or you summon yourself to another place, like the teleportation of your own. Shall I teach you more?");
    AddCondition("lang","english");
	AddCondition("qpg","!=",2);
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);
	
	AddTraderTrigger("[Dd]esicio","Bei Desicio sprechen wir von Herbeirufung. Sie umfasst Spr�che bei der man Kreaturen zu sich ruft oder aber sich selbst zu einem anderen Ort ruft, wie die Eigenteleportation. Soll ich dir dar�ber mehr erz�hlen?");
    AddCondition("lang","german");
	AddCondition("qpg","!=",2);
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);
	
    AddTraderTrigger("[T]ransformo","All spells of paralysis belong to Transformo, but also spells which are used to move things to you or away from you. This school can be translated in general with movement. Shall I teach you more?");
    AddCondition("lang","english");
	AddCondition("qpg","!=",2);
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);
	
	AddTraderTrigger("[T]ransformo","Zu Transformo z�hlen vor allem L�hmungszauber, aber auch Spr�che bei denen man Dinge zu oder von sich bewegt. Die Schule kann ganz allgemein mit Bewegung �bersetzt werden. Soll ich dir dar�ber mehr erz�hlen?");
	AddCondition("lang","german");
	AddCondition("qpg","!=",2);
	AddCondition("qpg","!=",3);
	AddConsequence("qpg","=",1);
	
	------------------------------------------RUNESCHOOLS AFTER QUEST
    AddTraderTrigger("[Cc]ommotio","Commotio means destruction and includes most of the attacking spells, for example the classic fireball. The ban-spells belong to Commotio, too. Shall I teach you more?");
    AddCondition("lang","english");
	AddCondition("qpg","!=",2);
	
	AddTraderTrigger("[Cc]ommotio","Commotio bedeutet Zerst�rung und umfasst die meisten Angriffszauber, wie beispielsweise den klassischen Feuerball. Auch die Bannspr�che z�hlen zu Commotio. Soll ich dir dar�ber mehr erz�hlen?");
    AddCondition("lang","german");
	AddCondition("qpg","!=",2);
	
    AddTraderTrigger("[Tt]ransfreto","This school of runes means 'converse' and deals for example with the healing - the inverting of poison in a creature. Shall I teach you more?");
    AddCondition("lang","english");
	AddCondition("qpg","!=",2);
	
	AddTraderTrigger("[Tt]ransfreto","Diese Runenschule bedeutet 'Umkehrung' und besch�ftigt sich zum Beispiel mit dem Heil dem Umkehren von Gift in einem Wesen. Soll ich dir dar�ber mehr erz�hlen?");
    AddCondition("lang","german");
	AddCondition("qpg","!=",2);
	
    AddTraderTrigger("[Pp]ervestigatio","The best translation for Pervestigatio is 'Creating'. After the classical healing, the creation of flames and earth walls belong to it. Shall I teach you more?");
    AddCondition("lang","english");
	AddCondition("qpg","!=",2);
	
	AddTraderTrigger("[Pp]ervestigatio","Pervestigatio l�sst sich am besten mit 'Erschaffung' �bersetzen. Neben den klassischen Heilzaubern z�hlen hier vor allen das erschaffen von Flammen und Erdw�llen dazu. Soll ich dir dar�ber mehr erz�hlen?");
    AddCondition("lang","german");
	AddCondition("qpg","!=",2);
	
    AddTraderTrigger("[Dd]esicio","In this case we talk about summoning. It includes spells which are used to summon creatures or you summon yourself to another place, like the teleportation of your own. Shall I teach you more?");
    AddCondition("lang","english");
	AddCondition("qpg","!=",2);

	AddTraderTrigger("[Dd]esicio","Bei Desicio sprechen wir von Herbeirufung. Sie umfasst Spr�che bei der man Kreaturen zu sich ruft oder aber sich selbst zu einem anderen Ort ruft, wie die Eigenteleportation. Soll ich dir dar�ber mehr erz�hlen?");
    AddCondition("lang","german");
	AddCondition("qpg","!=",2);
	
    AddTraderTrigger("[T]ransformo","All spells of paralysis belong to Transformo, but also spells which are used to move things to you or away from you. This school can be translated in general with movement. Shall I teach you more?");
    AddCondition("lang","english");
	AddCondition("qpg","!=",2);
	
	AddTraderTrigger("[T]ransformo","Zu Transformo z�hlen vor allem L�hmungszauber, aber auch Spr�che bei denen man Dinge zu oder von sich bewegt. Die Schule kann ganz allgemein mit Bewegung �bersetzt werden. Soll ich dir dar�ber mehr erz�hlen?");
	AddCondition("lang","german");
	AddCondition("qpg","!=",2);


	AddTraderTrigger("RA","This is the elementrune of the fire.");
    AddCondition("lang","english");
    AddTraderTrigger("RA","RA ist die Rune des Feuers und eine Elementarrune. Sie kann f�r offensive Feuerzauber genutzt werden, sowie zum Entfachen und Ausl�schen von Feuerflammen.");
    AddCondition("lang","german");
	
     AddCycleText("hmmmmm?","hmmmmm?");
     AddCycleText("*r�usper*?","*harrumph*");
	 AddCycleText("KEL RI? KEL RE? KEL RA? *knall* aua!*?","KEL RI? KEL RE? KEL RA? *bang* aua!");
     AddCycleText("#me murmelt \"SIM -SALA- BIM? Was ist das denn f�r eine alberne Runenfolge?\"","#me mumbles \"SIM -SALA - BIM? What  silly rune combination is that?\"");
     AddCycleText("#me bl�ttert eine Seite weiter?","#me pages a side forward"); 
     AddCycleText("#me kritzelt etwas an den Rand des Buches.","#me scrawls something on the edge of the book");
	
    TradSpeakLang={0,1,10};
    TradStdLang=0;
    --common language=0
    --human language=1
    --dwarf language=2
    --elf language=3
    --lizard language=4
    --orc language=5
    --halfling language=6
    --fairy language=7
    --gnome language=8
    --goblin language=9
    --ancient language=10
    
    increaseLangSkill(TradSpeakLang)
    thisNPC.activeLanguage=TradStdLang;
    
    --thisNPC:warp(position(-10,0,0));
    --thisNPC:setAttrib("faceto",6);
    --thisNPC:setAttrib("racetyp",24);


end

function nextCycle()  -- ~10 times per second
    initializeNpc();
    SpeakerCycle();
end

function receiveText(texttype, message, originator)
	Progress=originator:getQuestProgress(2111);			
    if BasicNPCChecks(originator,2) then
        if LangOK(originator,TradSpeakLang) then
        thisNPC.activeLanguage=originator.activeLanguage;
		
			if string.find(message,"[Bb]ring.+[Bb]ei.*")~=nil or string.find(message,"[Mm]ehr.*")~=nil or
			   string.find(message,"[Tt]each.*")~=nil or string.find(message,"[Mm]ore.*")~=nil then
					if Progress==1 then
                        gText="�ber welche der f�nf Schulen wollt ihr mehr erfahren?";
                        eText="Which school do you want to know more about?";
				        outText=base.common.GetNLS(originator,gText,eText);
				        NPCTalking(thisNPC,outText);
						originator:setQuestProgress(2111,2);
					elseif Progress==3 then
                        gText="Ich hab euch bereits etwas beigebracht, den Rest m�sst ihr euch selber beibringen wenn ihr ein richtiger Magier werden wollt.";
                        eText="I taught you already something, you have to learn the rest by yourself if you want to become a real mage.";
                		outText=base.common.GetNLS(originator,gText,eText);
		        		NPCTalking(thisNPC,outText);
						
					end
				return;
			end
			
			if Progress==2 then 
				gText="In Ordnung, h�rt mir nun bitte genau zu...";
                eText="Alright, please listen to me carefully now...";
				if string.find(message,"[Cc]ommotio")~=nil then
					TheSkill="commotio";
				elseif string.find(message,"[Tt]ransformo")~=nil then
					TheSkill="transformo";
				elseif string.find(message,"[Tt]ransfreto")~=nil then
					TheSkill="transfreto";
				elseif string.find(message,"[Pp]ervestigatio")~=nil then
					TheSkill="pervestigatio";
				elseif string.find(message,"[Dd]esicio")~=nil then
					TheSkill="desicio";
				else
					originator:setQuestProgress(2111,1);
					return;
				end
				
				if (originator:increaseSkill(3,TheSkill,0)<=10) then --teach school of rune				
					outText=base.common.GetNLS(originator,gText,eText);
				    NPCTalking(thisNPC,outText);
					base.common.TempInformNLS(originator,
					    "Es scheint als w�ren dir nun einige Grundlagen dieser Runenschule klarer.",
					    "It seems that you understand some basics of this school of rune now better.");										
					originator:increaseSkill(3,TheSkill,1);
					originator:setQuestProgress(2111,3);
				else
					gText="Ihr scheint die Grundlagen dieser Runenschule bereits zu kennen, mehr als das kann ich euch nicht beibringen.";
	                eText="You already seem to know the basics of this runeschool, I can't teach you more than that.";
					outText=base.common.GetNLS(originator,gText,eText);
				    NPCTalking(thisNPC,outText);
				end
				return;
			end
				TellSmallTalk(message,originator);

        else
            Confused(
               "#me sieht dich leicht verwirrt an",
               "#me looks at you a little confused"
            );
        end
    end
end
