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
    npcs.base.autonpcfunctions.InitTalkLists()

    QuestID=2111;
    -- Begr��ungen
    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]elp","I can tell you something about the different runes and runeschools if you are interested.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Gg]reetings","Be greeted - take a seat next to me.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]eho","Be greeted - take a seat next to me.");
	npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]ello","Hush! This is a library, not a tavern.");
    
	npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]elf","Ich kann euch einiges �ber die verschiedenen Runen und Runenschulen erz�hlen wenn ihr Interesse daran habt.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]ilf","Ich kann euch einiges �ber die verschiedenen Runen und Runenschulen erz�hlen wenn ihr Interesse daran habt.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Gg]r��","Ich Gr��e euch, setzt euch doch zu mir.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]eho","Ich Gr��e euch, setzt euch doch zu mir.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]allo","Scht! Dies ist eine Bibliothek, keine Taverne.");


    -- Charakter verkauft nichts!
    npcs.base.autonpcfunctions.AddTraderTrigger("[Bb]uy","The only thing i would buy is a mana energy stabilizer");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ee]nergy","Yes I would buy that. But i think, that you don't have one with you so I'll order one from Lor Angur");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Nn]eed","That's a very complex apparat, I'll explain you that one day. But I could tell you something about runelore if you're interested");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Rr]equir","That's a very complex apparat, I'll explain you that one day. But I could tell you something about runelore if you're interested");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Pp]rice","Let me think about it...I would say around 120 gold coins.");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ss]ell","I'm a teacher for rune lore not a trader.");
	
    npcs.base.autonpcfunctions.AddTraderTrigger("[Kk]auf","Das einzige was ich euch abkaufen w�rde, ist ein Manaenergiestabilisator.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Mm]anaenergiestabilisator","Manaenergiestabilisator, ja das w�rde ich euch abkaufen. Ich denke das ihr keinen dabei habt also werde ich ihn irgendwann einmal aus Lor Angur bestellen.");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Bb]en�tigt","Da so ein Apparat h�chst komplex ist, verzichten wir lieber auf eine Erkl�rung. Wenn ihr aber etwas �ber die Runenkunde  beigebracht haben wollt, stehe ich euch zur Verf�gung.");  
    npcs.base.autonpcfunctions.AddTraderTrigger("[Kk]ost","So ein Manaenergiestabilisator, lasst mich einmal nachdenken. Er w�rde 120 Goldm�nzen kosten und das in einer nicht transportablen Gr��e.");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Tt]ransport","Nur das f�nffache. Ich w�rde nun gerne weiter an meiner Ausarbeitung arbeiten oder soll ich euch noch etwas �ber die Runenkunde beibringen?");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Vv]erkauf","Ich bin ein Lehrmeister der Runenkunde und kein H�ndler.");

	

	
    -- Smaltalk
    npcs.base.autonpcfunctions.AddTraderTrigger("[Dd]ein","Ich m�chte euch bitten mich nicht so unformell anzusprechen.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Dd]ir","Ich m�chte euch bitten mich nicht so unformell anzusprechen.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Dd]ich","Ich m�chte euch bitten mich nicht so unformell anzusprechen.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ee]ntschuld","Schon in Ordnung. Kann ich euch irgendwie weiterhelfen?");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddTraderTrigger("[W]ho are you?","I am Windfried Birks and I am from Lor-Angur. Well, I am the Magister for runelore. I teach new students the meaning of the runes and the runeschools.");
	npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]er seid ihr?","Ich bin Winfried Birks und stamme aus Lor Angur. Nun bin ich hier Spektabilit�t f�r Runenkunde. Ich lehre neuen Studenten die Bedeutung der Runen und der Runenschulen.");                               
	npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]hat's your name?","I am Windfried Birks and I am from Lor-Angur. Well, I am the Magister for runelore. I teach new students the meaning of the runes and the runeschools.");
	npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]ie ist euer [Nn]ame?","Ich bin Winfried Birks und stamme aus Lor Angur. Nun bin ich hier Magister f�r Runenkunde. Ich lehre neuen Studenten die Bedeutung der Runen und der Runenschulen.");
	npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]hat are you doing","I am Windfried Birks and I am from Lor-Angur. Well, I am the Magister for runelore. I teach new students the meaning of the runes and the runeschools.");
	npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]as macht?","Ich bin Winfried Birks und stamme aus Lor Angur. Nun bin ich hier Magister f�r Runenkunde. Ich lehre neuen Studenten die Bedeutung der Runen und der Runenschulen.");
	npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]as tut ihr hier?","Ich bin Winfried Birks und stamme aus Lor Angur. Nun bin ich hier Magister f�r Runenkunde. Ich lehre neuen Studenten die Bedeutung der Runen und der Runenschulen.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]hat is your profession","I am Windfried Birks and I am from Lor-Angur. Well, I am the Magister for runelore. I teach new students the meaning of the runes and the runeschools.");
	npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]as ist [Aa]ufgabe?","Ich bin Winfried Birks und stamme aus Lor Angur. Nun bin ich hier Magister f�r Runenkunde. Ich lehre neuen Studenten die Bedeutung der Runen und der Runenschulen.");
	npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]here are you from","I am Windfried Birks and I am from Lor-Angur. Well, I am the Magister for runelore. I teach new students the meaning of the runes and the runeschools.");
	npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]oher kommt?","Ich bin Winfried Birks und stamme aus Lor Angur. Nun bin ich hier Magister f�r Runenkunde. Ich lehre neuen Studenten die Bedeutung der Runen und der Runenschulen.");
	npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]ow are you","There is absolutely no reason for me to complain about. This place is way more peaceful than Lor-Angur.");
	npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]ie geht","Es l�ge mir v�llig fern zu klagen. Hier ist es viel ruhiger als in Lor Angur.");
	npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Hh]ow do you feel","There is absolutely no reason for me to complain about. This place is way more peaceful than Lor-Angur.");
	npcs.base.autonpcfunctions.AddCondition("lang","english")
	npcs.base.autonpcfunctions.AddTraderTrigger("[Bb]efinden","Es l�ge mir v�llig fern zu klagen. Hier ist es viel ruhiger als in Lor Angur. ");
	npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ll]or [Aa]ngur","Ja die Stadt der Magie Lor Angur. Eine prachtvolle Stadt ist das. Ich habe dort gelehrt bevor ich die Stelle hier angenommen habe.");
	npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Aa]ngenommen","Mich reizte es eine andere Lehranstallt kennen zu lernen. Au�erdem habe ich hier mehr Zeit f�r meine Studien und werde genauso gut bezahlt.");
	npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Bb]ezahlt","Kost und Logis das ist meine Bezahlung. Wenn ihr keine Fragen �ber Runen oder die Runenkunde habt, w�rde ich mich nun gerne wieder diesem interessanten Buch widmen.");
	npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ss]tudien","Ich studiere die Runen. Wie man sie richtig ausspricht. Wie man sie optimal anwendet und noch vieles mehr. Ihr werdet noch merken was man alles beachten mu�.");
	npcs.base.autonpcfunctions.AddCondition("lang","german");
 	npcs.base.autonpcfunctions.AddTraderTrigger("I am","It's a pleasure to meet you.");
	npcs.base.autonpcfunctions.AddCondition("lang","english")
	npcs.base.autonpcfunctions.AddTraderTrigger("I'm","It's a pleasure to meet you.");
	npcs.base.autonpcfunctions.AddCondition("lang","english")
    npcs.base.autonpcfunctions.AddTraderTrigger("[Mm]y name","It's a pleasure to meet you.");
    npcs.base.autonpcfunctions.AddCondition("lang","english")
    npcs.base.autonpcfunctions.AddTraderTrigger("Ich bin","Es freut mich euch kennenzulernen.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Mm]ein Name","Es freut mich euch kennenzulernen.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Aa]usarbeitung","Ich arbeite an einer Zusammenfassung der Bedeutung aller Runen.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Pp]aper","I write on a elaboration about the meaning of all runes.");
    npcs.base.autonpcfunctions.AddCondition("lang","english")
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ii]nteressant","Ja, das ist es in der Tat.");    
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ii]nteresting","Indeed.");
    npcs.base.autonpcfunctions.AddCondition("lang","english")

    
	--  Beibringen
	npcs.base.autonpcfunctions.AddTraderTrigger("[Tt]each","Of course, do you want to know something about the meaning of the runes or the runeschools?");
	npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",1);
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]as beibringen","Aber selbstverst�ndlich, wollt ihr etwas �ber die Bedeutung der Runen oder die Schulen der Runen Wissen? ");
	npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",1);
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
	npcs.base.autonpcfunctions.AddTraderTrigger("[Tt]ell","Of course, do you want to know something about the meaning of the runes or the runeschools?");
	npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",1);
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);	
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]as erz�hlen","Aber selbstverst�ndlich, wollt ich etwas �ber die Bedeutung der Runen oder die Schulen der Runen Wissen? ");
	npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",1);	
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]as lehren","Aber selbstverst�ndlich, wollt ich etwas �ber die Bedeutung der Runen oder die Schulen der Runen Wissen? ");
	npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",1);
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ee]xplain","Of course, do you want to know something about the meaning of the runes or the runeschools?");
	npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",1);
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ww]as erkl�ren","Aber selbstverst�ndlich, wollt ich etwas �ber die Bedeutung der Runen oder die Schulen der Runen Wissen? ");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddCondition("qpg","!=",1);
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
	
  	-- Runenkunde
    npcs.base.autonpcfunctions.AddTraderTrigger("HEPT","HEPT is the rune of ice and refreezing.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("HEPT","HEPT ist Rune des Eises und des Einfrierens.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("PEN","The elementrune of the spirit. It is used in the magic of healing.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("PEN","Die Elementarrune des Geistes. Sie findet bei Heilmagie Verwendung.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("MES","This rune is used for healing spells, too. It is often associated with a welfare, warm light. But the correct translation is 'light'.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("MES","Die Rune MES benutzt man auch f�r Heilspr�che, man bring sie oft mit Licht wohliger W�rme in Verbindung, die genaue �bersetzung hei�t aber 'Licht'. ");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("ORL","ORL stands for Creation and is used for example to create food into your own stomach or to create earth walls.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("ORL","ORL steht f�r Erschaffung und wird Beispielsweise zum erschaffen von Nahrung im eigenen Magen oder zur Beschw�rung von Erdw�llen gebraucht.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("CUN","The elementrune of the water is CUN.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("CUN","Die Elementarrune des Wassers ist CUN. ");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("SAV","SAV is the ancient word for protection. You can cast with it for example a circle of stones around yourself.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("SAV","SAV hei�t Schut auf Antik. Mann kann damit zum Beispiel Steinkreise um sich zaubern.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("SOLH","The elementrune of the earth is SOLH.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("SOLH","Die Elemntarrune der Erde hei�t SOLH.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("FHEN","FHEN is he opposite of FHAN and means 'to get' or 'to take'.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("FHEN","FHEN ist das Gegenteil von FHAN und hei�t holen beziehungsweise nehmen.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("KAH","A mage needs this rune to satiate. It means food.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("KAH","Diese Runen braucht ein Magier zum S�ttigen, sie bedeutet Nahrung oder auch Essen.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("LHOR","This rune creates illusions. You can translate it with 'illusion' or 'to cheat'");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("LHOR","Die Rune LHOR erschafft Trugbilder. Man kann sie mit Illusion oder t�uschen �bersetzen.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("KEL","KEL means bird or movement. This rune is a part of many spells which deals with moving of something or someone. For example throwing a fireball or creating a portal.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("KEL","KEL bedeutet Vogel oder bewegen. Diese Rune kommt in vielen Spr�chen vor, bei denen den Etwas oder Jemand bewegt wird. Beispielsweise das Werfen eines Feuerballs oder die Erschaffung eines Portals.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("TAH","This rune stands for inverting or banning. Every spell, which destroys other kind of magic, contains TAH.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("TAH","Diese Rune steht f�r umkehren oder auch bannen. Alle Runenspr�che, die eine andere Form von Magie zerst�ren, werden mit TAH gesprochen.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("TAUR","This rune stands for being and creature. You need it to summon.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("TAUR","F�r Wesen oder Kreatur steht diese Rune. Man ben�tigt sie f�r Beschw�rungen.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("URA","You can translate it with natural or alive. With its help you can summon wild animals, brute, insects or even oger.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("URA","Kann man mit nat�rlich, beziehungsweise lebendig �bersetzen. Mit ihrer Hilfe lassen sich Wild, Vieh, Insekten aber auch Oger beschw�ren.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("IRA","IRA means unnatural, dead or undead. With this rune you can summon skeletons, ghosts or mummies.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("IRA","IRA bedeutet so viel wie unnat�rlich, tot oder auch untot. Mit dieser Rune kann man Skelette, Geister und Mumien herbei rufen.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("YEG","YEG is translated with poison. With the help of this rune you can cast for example poison clouds.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("YEG","Gift, die ist die �bersetzung von YEG, mit Hilfe dieser Rune kann man unter anderem Giftwolken erschaffen.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("JUS","JUS is the elementrune of the wind.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("JUS","JUS ist die Elementarrune des Windes.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("SIH","SIH stands for healing, for example if someone is venomed.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("SIH","SIH steht f�r Heilen, zum Beispiel von Gift.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("ANTH","ANTH describes a static, immobile object.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("ANTH","ANTH beschreibt ein statisches, unbewegliches Objekt.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("SUL","SUL is uses to cripple and means as much as 'to stand' or 'to hold'.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("SUL","SUL wird zum L�hmen verwendet und bedeutet soviel wie stehen oder auch festhalten.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("QWAN","To boost a spell you need QWAN. QWAN means something like 'big'.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("QWAN","Um Runenspr�che zu verst�rken braucht man QWAN. �bersetzt bedeutet QWAN soviel wie 'gro�'.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("DUN","DUN is needed to extend spells. The translation is plane.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("DUN","Um Spr�che auszubreiten braucht man DUN, die �bersetzung lautet 'fl�chig'.");

    npcs.base.autonpcfunctions.AddTraderTrigger("PHERC","PHERC is the baneful rune of the pain.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("PHERC","PHERC ist die unheilvolle Rune des Schmerzes.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("FHAN","FHAN is a rune of direction. It can be translated with 'to bring along' or to 'give'.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("FHAN","FHAN ist eine Richtungsrune und kann mit bringen oder geben �bersetzt werden.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("LUK","With LUK you can summon aggressive creatures. The translation is 'evil'.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("LUK","Mit Hilfe von LUK kann man aggressive Kreaturen beschw�ren, ihre �bersetzung lautet 'B�ses'.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("LEV","The meaning of LEV is unknown, but can be translated with 'to alter'.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("LEV","Die Bedeutung von LEV ist unklar, kann aber mit 'ver�ndern' �bersetzt werden.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("BHONA","This is the rune of teaching. It is needed to give a rune from one mage to another one. BHONA decorates a teacher.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("BHONA","Dies ist die Lehrrune, die ben�tigt wird, um eine Rune von einen Magier auf einen anderen zu �bertragen. BHONA zeichnet einen Lehrer aus.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

	npcs.base.autonpcfunctions.AddTraderTrigger("[Ee]lementrune","The elementrunes stands for the five elements. RA for fire, CUN for water, SOLH for earth, JUS for air, PEN for spirit.");
	npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ee]lementarrune","Die Elementarrunen stehen f�r die f�nf Elemente. RA f�r Feuer, CUN f�r Wasser, SOLH f�r Erde, JUS f�r Luft und PEN f�r den Geist.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

	
	--Runenschulen
    npcs.base.autonpcfunctions.AddTraderTrigger("[Ss]chool.*","There are five kinds of schools of runes, which result from the observance that you, if you cast different kinds of spells, become better in similar spells, too. The runeschools are Commotio, Transfreto, Pervestigatio, Desicio and Transformo. About which one shall I tell you more?");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Ss]chule.*","Es gibt f�nf Runenschulen die sich aus der Beobachtung ergeben, das man durch h�ufige Anwendung bestimmter Spr�che sich gleichzeitig in der Verwendung �hnlicher verbessert. Die Runenschulen hei�en Commotio, Transfreto, Pervestigatio, Desicio und Transformo. Sagt mir von welcher ich euch mehr erz�hlen soll?");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
	
	
	--Runenaufz�hlung
	npcs.base.autonpcfunctions.AddTraderTrigger("[Rr]une","There are 28 runes. Every rune has a name, the ancient word of its meaning. The names are KEL, RA, HEPT, TAH, PEN, LUK, MES, ORL, TAUR, URA, IRA, CUN, SAV, YEG, JUS, QWAN, SOLH, SIH, FHAN, LEV, FHEN, KAH, ANTH and DUN. About which rune do you want to learn more?");
	npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddTraderTrigger("[Rr]une","Es gibt 28 Runen. Jede Rune hat einen Namen, das Antike Wort f�r ihre Bedeutung. Die Namen der Runen sind KEL, RA, HEPT, TAH, PEN, LUK, MES, ORL, TAUR, URA, IRA, CUN, SAV, YEG, JUS, QWAN, SOLH, SIH, FHAN, LEV, FHEN, KAH, ANTH und DUN. �ber welche Rune m�chtet ihr mehr erfahren?");
    npcs.base.autonpcfunctions.AddCondition("lang","german");

    npcs.base.autonpcfunctions.AddTraderTrigger("[Cc]ommotio","Commotio means destruction and includes most of the attacking spells, for example the classic fireball. The ban-spells belong to Commotio, too. Shall I teach you more?");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
	
	npcs.base.autonpcfunctions.AddTraderTrigger("[Cc]ommotio","Commotio bedeutet Zerst�rung und umfasst die meisten Angriffszauber, wie beispielsweise den klassischen Feuerball. Auch die Bannspr�che z�hlen zu Commotio. Soll ich dir dar�ber mehr erz�hlen?");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
	
    npcs.base.autonpcfunctions.AddTraderTrigger("[Tt]ransfreto","This school of runes means 'converse' and deals for example with the healing - the inverting of poison in a creature. Shall I teach you more?");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
	
	npcs.base.autonpcfunctions.AddTraderTrigger("[Tt]ransfreto","Diese Runenschule bedeutet 'Umkehrung' und besch�ftigt sich zum Beispiel mit dem Heil dem Umkehren von Gift in einem Wesen. Soll ich dir dar�ber mehr erz�hlen?");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
	
    npcs.base.autonpcfunctions.AddTraderTrigger("[Pp]ervestigatio","The best translation for Pervestigatio is 'Creating'. After the classical healing, the creation of flames and earth walls belong to it. Shall I teach you more?");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
	
	npcs.base.autonpcfunctions.AddTraderTrigger("[Pp]ervestigatio","Pervestigatio l�sst sich am besten mit 'Erschaffung' �bersetzen. Neben den klassischen Heilzaubern z�hlen hier vor allen das erschaffen von Flammen und Erdw�llen dazu. Soll ich dir dar�ber mehr erz�hlen?");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
	
    npcs.base.autonpcfunctions.AddTraderTrigger("[Dd]esicio","In this case we talk about summoning. It includes spells which are used to summon creatures or you summon yourself to another place, like the teleportation of your own. Shall I teach you more?");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
	
	npcs.base.autonpcfunctions.AddTraderTrigger("[Dd]esicio","Bei Desicio sprechen wir von Herbeirufung. Sie umfasst Spr�che bei der man Kreaturen zu sich ruft oder aber sich selbst zu einem anderen Ort ruft, wie die Eigenteleportation. Soll ich dir dar�ber mehr erz�hlen?");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
	
    npcs.base.autonpcfunctions.AddTraderTrigger("[T]ransformo","All spells of paralysis belong to Transformo, but also spells which are used to move things to you or away from you. This school can be translated in general with movement. Shall I teach you more?");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
	
	npcs.base.autonpcfunctions.AddTraderTrigger("[T]ransformo","Zu Transformo z�hlen vor allem L�hmungszauber, aber auch Spr�che bei denen man Dinge zu oder von sich bewegt. Die Schule kann ganz allgemein mit Bewegung �bersetzt werden. Soll ich dir dar�ber mehr erz�hlen?");
	npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",3);
	npcs.base.autonpcfunctions.AddConsequence("qpg","=",1);
	
	------------------------------------------RUNESCHOOLS AFTER QUEST
    npcs.base.autonpcfunctions.AddTraderTrigger("[Cc]ommotio","Commotio means destruction and includes most of the attacking spells, for example the classic fireball. The ban-spells belong to Commotio, too. Shall I teach you more?");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	
	npcs.base.autonpcfunctions.AddTraderTrigger("[Cc]ommotio","Commotio bedeutet Zerst�rung und umfasst die meisten Angriffszauber, wie beispielsweise den klassischen Feuerball. Auch die Bannspr�che z�hlen zu Commotio. Soll ich dir dar�ber mehr erz�hlen?");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	
    npcs.base.autonpcfunctions.AddTraderTrigger("[Tt]ransfreto","This school of runes means 'converse' and deals for example with the healing - the inverting of poison in a creature. Shall I teach you more?");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	
	npcs.base.autonpcfunctions.AddTraderTrigger("[Tt]ransfreto","Diese Runenschule bedeutet 'Umkehrung' und besch�ftigt sich zum Beispiel mit dem Heil dem Umkehren von Gift in einem Wesen. Soll ich dir dar�ber mehr erz�hlen?");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	
    npcs.base.autonpcfunctions.AddTraderTrigger("[Pp]ervestigatio","The best translation for Pervestigatio is 'Creating'. After the classical healing, the creation of flames and earth walls belong to it. Shall I teach you more?");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	
	npcs.base.autonpcfunctions.AddTraderTrigger("[Pp]ervestigatio","Pervestigatio l�sst sich am besten mit 'Erschaffung' �bersetzen. Neben den klassischen Heilzaubern z�hlen hier vor allen das erschaffen von Flammen und Erdw�llen dazu. Soll ich dir dar�ber mehr erz�hlen?");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	
    npcs.base.autonpcfunctions.AddTraderTrigger("[Dd]esicio","In this case we talk about summoning. It includes spells which are used to summon creatures or you summon yourself to another place, like the teleportation of your own. Shall I teach you more?");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);

	npcs.base.autonpcfunctions.AddTraderTrigger("[Dd]esicio","Bei Desicio sprechen wir von Herbeirufung. Sie umfasst Spr�che bei der man Kreaturen zu sich ruft oder aber sich selbst zu einem anderen Ort ruft, wie die Eigenteleportation. Soll ich dir dar�ber mehr erz�hlen?");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	
    npcs.base.autonpcfunctions.AddTraderTrigger("[T]ransformo","All spells of paralysis belong to Transformo, but also spells which are used to move things to you or away from you. This school can be translated in general with movement. Shall I teach you more?");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);
	
	npcs.base.autonpcfunctions.AddTraderTrigger("[T]ransformo","Zu Transformo z�hlen vor allem L�hmungszauber, aber auch Spr�che bei denen man Dinge zu oder von sich bewegt. Die Schule kann ganz allgemein mit Bewegung �bersetzt werden. Soll ich dir dar�ber mehr erz�hlen?");
	npcs.base.autonpcfunctions.AddCondition("lang","german");
	npcs.base.autonpcfunctions.AddCondition("qpg","!=",2);


	npcs.base.autonpcfunctions.AddTraderTrigger("RA","This is the elementrune of the fire.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("RA","RA ist die Rune des Feuers und eine Elementarrune. Sie kann f�r offensive Feuerzauber genutzt werden, sowie zum Entfachen und Ausl�schen von Feuerflammen.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
	
     npcs.base.autonpcfunctions.AddCycleText("hmmmmm?","hmmmmm?");
     npcs.base.autonpcfunctions.AddCycleText("*r�usper*?","*harrumph*");
	 npcs.base.autonpcfunctions.AddCycleText("KEL RI? KEL RE? KEL RA? *knall* aua!*?","KEL RI? KEL RE? KEL RA? *bang* aua!");
     npcs.base.autonpcfunctions.AddCycleText("#me murmelt \"SIM -SALA- BIM? Was ist das denn f�r eine alberne Runenfolge?\"","#me mumbles \"SIM -SALA - BIM? What  silly rune combination is that?\"");
     npcs.base.autonpcfunctions.AddCycleText("#me bl�ttert eine Seite weiter?","#me pages a side forward"); 
     npcs.base.autonpcfunctions.AddCycleText("#me kritzelt etwas an den Rand des Buches.","#me scrawls something on the edge of the book");
	
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
    
    npcs.base.autonpcfunctions.increaseLangSkill(TradSpeakLang)
    thisNPC.activeLanguage=TradStdLang;
    
    --thisNPC:warp(position(-10,0,0));
    --thisNPC:setAttrib("faceto",6);
    --thisNPC:setAttrib("racetyp",24);


end

function nextCycle()  -- ~10 times per second
    initializeNpc();
    npcs.base.autonpcfunctions.SpeakerCycle();
end

function receiveText(texttype, message, originator)
	Progress=originator:getQuestProgress(2111);			
    if npcs.base.autonpcfunctions.BasicNPCChecks(originator,2) then
        if npcs.base.autonpcfunctions.LangOK(originator,TradSpeakLang) then
        thisNPC.activeLanguage=originator.activeLanguage;
		
			if string.find(message,"[Bb]ring.+[Bb]ei.*")~=nil or string.find(message,"[Mm]ehr.*")~=nil or
			   string.find(message,"[Tt]each.*")~=nil or string.find(message,"[Mm]ore.*")~=nil then
					if Progress==1 then
                        gText="�ber welche der f�nf Schulen wollt ihr mehr erfahren?";
                        eText="Which school do you want to know more about?";
				        outText=base.common.npcs.base.npcautofunction.GetNLS(originator,gText,eText);
				        npcs.base.autonpcfunctions.NPCTalking(thisNPC,outText);
						originator:setQuestProgress(2111,2);
					elseif Progress==3 then
                        gText="Ich hab euch bereits etwas beigebracht, den Rest m�sst ihr euch selber beibringen wenn ihr ein richtiger Magier werden wollt.";
                        eText="I taught you already something, you have to learn the rest by yourself if you want to become a real mage.";
                		outText=base.common.npcs.base.npcautofunction.GetNLS(originator,gText,eText);
		        		npcs.base.autonpcfunctions.NPCTalking(thisNPC,outText);
						
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
					outText=base.common.npcs.base.npcautofunction.GetNLS(originator,gText,eText);
				    npcs.base.autonpcfunctions.NPCTalking(thisNPC,outText);
					base.common.TempInformNLS(originator,
					    "Es scheint als w�ren dir nun einige Grundlagen dieser Runenschule klarer.",
					    "It seems that you understand some basics of this school of rune now better.");										
					originator:increaseSkill(3,TheSkill,1);
					originator:setQuestProgress(2111,3);
				else
					gText="Ihr scheint die Grundlagen dieser Runenschule bereits zu kennen, mehr als das kann ich euch nicht beibringen.";
	                eText="You already seem to know the basics of this runeschool, I can't teach you more than that.";
					outText=base.common.npcs.base.npcautofunction.GetNLS(originator,gText,eText);
				    npcs.base.autonpcfunctions.NPCTalking(thisNPC,outText);
				end
				return;
			end
				npcs.base.autonpcfunctions.TellSmallTalk(message,originator);

        else
            npcs.base.autonpcfunctions.Confused(
               "#me sieht dich leicht verwirrt an",
               "#me looks at you a little confused"
            );
        end
    end
end
