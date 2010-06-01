--Name:        Arimedus Dalahorn
--Race:        Male Human
--Town:        Magic Academie (Library)
--Function:    Knowlege teacher (runes)
--Position:    x=43 y=34 z=50
--Facing:      East
--Create       04.12.2007 by Kadiya
--Last Update: 05.12.07 
--Update by:   Kadiya

require("npc.base.autonpcfunctions")
module("npc.arimedus", package.seeall)

function useNPC(user,counter,param)
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "Ich w�rde es bevorzugen, wenn ihr mich nicht anfasst!");
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Ich would prefer, that you don't touch me!!");
end
                
function initializeNpc()
    if TraderFirst then
        return true;
    end
    npc.base.autonpcfunctions.InitTalkLists()

    -- Begr��ungen
    npc.base.autonpcfunctions.AddTraderTrigger("[Gg]r��","Elara zum Gru�e. Kann ich euch behilflich sein?");
    npc.base.autonpcfunctions.AddTraderTrigger("[Hh]allo","Scht! Dies ist eine B�cherei, keine Taverne.");

    npc.base.autonpcfunctions.AddTraderTrigger("[Gg]reetings","Greetings. Can I help you?");
    npc.base.autonpcfunctions.AddTraderTrigger("[Hh]ello","Hush! This is a library, not a tavern.");

    -- Charakter verkauft nichts!
    npc.base.autonpcfunctions.AddTraderTrigger("[Kk]auf","Es tut mir leid, aber ich brauche grade nichts.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Vv]erkauf","Es tut mir leid, aber ich habe nichts zu verkaufen.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Bb]uy","I'm sorry, but I don't need anything at the moment.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Ss]ell","I'm sorry, but I have nothing to sell.");

    -- Smaltalk
    npc.base.autonpcfunctions.AddTraderTrigger("[Hh]ilfe","Ihr braucht hilfe? Wobei? Ich kann euch etwas �ber die Bedeutung von Runen erz�hlen, wenn ihr m�gt.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Hh]elp","You need help? For what? I can tell you something about the meaning of the runes, if you like.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Dd]u","Ich m�chte euch bitten mich nicht so unformell anzusprechen.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Dd]ein","Ich m�chte euch bitten mich nicht so unformell anzusprechen.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Dd]ir","Ich m�chte euch bitten mich nicht so unformell anzusprechen.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Dd]ich","Ich m�chte euch bitten mich nicht so unformell anzusprechen.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Ee]ntschuld","Schon in Ordnung. Kann ich euch irgendwie weiterhelfen?");
    npc.base.autonpcfunctions.AddTraderTrigger("I am","It's a pleasure to meet you.");
    npc.base.autonpcfunctions.AddTraderTrigger("I'm","It's a pleasure to meet you.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Mm]y name","It's a pleasure to meet you.");
    npc.base.autonpcfunctions.AddTraderTrigger("Ich bin","Es freut mich euch kennenzulernen.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Mm]ein Name","Es freut mich euch kennenzulernen.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Ww]er seid","Mein Name ist %NPCNAME");
    npc.base.autonpcfunctions.AddTraderTrigger("[Ee]uer name","Mein Name ist %NPCNAME");
    npc.base.autonpcfunctions.AddTraderTrigger("[Yy]our name","My name is %NPCNAME");
    npc.base.autonpcfunctions.AddTraderTrigger("[Ii]hr hier","Wie ihr sicher seht, arbeite ich an einigen schriftlichen Ausarbeitungen.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Yy]ou here","You see, I work on some papers.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Aa]usarbeitung","Ich arbeite an einer Zusammenfassung der Bedeutung aller Runen.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Pp]aper","I write on a elaboration about the meaning of all runes.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Ii]nteressant","Ja, das ist es in der Tat.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Ii]nteresting","Indeed.");
    npc.base.autonpcfunctions.AddTraderTrigger("[Dd]ar�ber erz�hlen","Sicher kann ich das, von welcher Rune m�chtet ihr die Bedeutung wissen?");
    npc.base.autonpcfunctions.AddTraderTrigger("[Dd]ar�ber erz�hlen","Of course. About which rune you like to hear the meaning?");
    npc.base.autonpcfunctions.AddTraderTrigger("[Rr]une","Von welcher Rune m�chtet ihr die Bedeutung wissen?");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddTraderTrigger("[Rr]une","About which rune you like to hear the meaning?");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("[Bb]edeutung","Von welcher Rune m�chtet ihr die Bedeutung wissen?");
    npc.base.autonpcfunctions.AddCondition("lang","german");
    npc.base.autonpcfunctions.AddTraderTrigger("[Mm]eaning","About which rune you like to hear the meaning?");
    npc.base.autonpcfunctions.AddCondition("lang","english");



    -- Runenkunde
    npc.base.autonpcfunctions.AddTraderTrigger("RA","RA is the rune of fire and a elemental rune. It can be used for offensive firespells and explosions, create and put out fireflames.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("RA","RA ist die Rune des Feuers und eine Elementarrune. Sie kann f�r offensive Feuerzauber genutzt werden, sowie zum Entfachen und Ausl�schen von Feuerflammen.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("HEPT","HEPT is the rune of ice. It can be used for offensive icespells and icebolts, create and put out iceflames.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("HEPT","HEPT ist die Rune des Eises. Sie kann f�r offensive Eiszauber genutzt werden, sowie zum Entfachen und Ausl�schen von Eisflammen.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("PEN","PEN is the rune of spirit and a elemental rune. It can be used to cast healing spells, both weak, strong, and over an area.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("PEN","PEN ist die Rune des des Geistes und eine Elementarrune. Sie kann f�r starke und schwache Heilzauber benutzt werden.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("MES","MES is the rune of light. It can be used to cast healing spells, both weak, strong, and over an area.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("MES","MES ist die Rune des Lichts. Sie kann f�r starke und schwache Heilzauber benutzt werden.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("ORL","ORL is the rune of creating and materialisation. It can be used to create walls, relieve hunger and created thunderstorms. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("ORL","ORL ist die Rune der Materialisierung. Sie kann genutzt werden um Steinw�nde zu erschaffen, Hunger zu stillen und Gewitterst�rme heraufzubeschw�ren.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("CUN","CUN is the rune of water and a elemental rune. It can be used to put out campfires. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("CUN","CUN ist die Rune des Wassers und eine Elementarrune. Sie kann benutzt werden um Lagerfeuer auszul�schen.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("SAV","SAV is the rune of protection. It can be used to create flames and walls around you, which can protect you.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("SAV","SAV ist die Rune des Schutzes. Sie kann benutzt werden um Flammen und Steinw�lle um dich herum entstehen zu lassen, die dich sch�tzen.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("SOLH","SOLH is the rune of earth and a elemental rune. It can be used in paralysis, storms and wall creation. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("SOLH","MES ist die Rune der Erde und eine Elementarrune. Sie kann genutzt werden um Steinw�nde zu erschaffen, St�rme heraufzubeschw�ren und den Gegner zu paralysieren.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("FHEN","FHEN is the rune of fetching. It can be used to bring small and large objects towards you. Some say it has another use... ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("FHEN","FHEN steht als Rune f�r das Holen. Sie kann benutzt werden, um kleine und gr��ere Objekte zu dir zu holen. Es gibt jedoch Ger�chte, es g�be noch eine andere Verwendung f�r sie...");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("KAH","KAH is the rune of nourishment and food. It can be used to relieve hunger, both minorly and thoroughly. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("KAH","KAH ist die Rune der Nahrung und Ern�hrung. Sie kann sie benutzen um sich selbst leicht, oder auch ausreichend zu s�ttigen.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("LHOR","LHOR is the rune of illusion. It can be used to create illusionary objects like fireballs, flames, iceballs, ice flames and such things. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("LHOR","LHOR ist die Rune der Illusion. Sie kann benutzt werden um illusion�re Objekte zu erschaffen, wie Feuerb�lle, Feuerflammen, Eisb�lle und solche Dinge.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("KEL","KEL is the rune of moving. It can be used to cast motion-related spells and has many uses. For instance, fireballs, iceballs, bringing things to you, remedying paralysis and operating doors. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("KEL","KEL ist die Rune der Bewegung. Sie kann genutzt werden f�r bewegungsgebundene Zauber wie zum Beispiel Feuerb�lle, Eisb�lle und Teleportation");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("TAH","TAH is the rune of inverse. It can be used to remove things, such as walls, flames, iceflames, portals, poison clouds and illusions. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("TAH","TAH ist die Rune der Umkehrung. Sie kann genutzt um erschaffene Dinge wieder aufzul�sen, zum Beispiel Flammen, Portale, Giftwolken und Illusionen.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("TAUR","TAUR is the rune of creatures. It can be used in summoning and teleportation. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("TAUR","Die Rune TAUR steht f�r alle Kreaturen. Sie kann bei der Teleportation genutt werden und bei der Beschw�rung von Wesenheiten.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("URA","URA is the rune of nature. It can be used to summon natural creatures.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("URA","URA ist die Rune des Nat�rlichen. Sie kann benutzt werden um nat�rliche Kreaturen herbeizubeschw�ren.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("IRA","IRA is the rune of unnaturality. It can be used to summon unnatural creatures and also to create flames, iceflames and poison clouds. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("IRA","IRA ist die Rune des Unnat�rlichen. Sie wird benutzt um unnat�rliche Kreaturen herbeizubeschw�ren, aber auch um Flammen und Giftwolken zu beschw�ren.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("YEG","YEG is the rune of poison. It can be used to cast offensive poison spells, create and put out poison clouds, as well as curing poison. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("YEG","YEG ist die Rune des Giftes. Sie wird f�r offensive Giftspr�che benutzt, um Giftwolken zu erschaffen oder auszul�schen aber auch um Vergiftungen zu heilen");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("JUS","JUS is the rune of wind and a elemental rune. It can be used for offensive and defensive wind-spells, to bring objects towards you, teleportation, as well as remedying paralysis.");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("JUS","JUS ist die Rune des Windes und eine Elementarrune. Sie wird genutzt f�r defensive und offensive Windspr�che, um Objekte zu bewegen, f�r die Teleportation und um zu Paralysieren.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("SIH","SIH is the rune of healing. It can be used in strong healing spells and to heal poison. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("SIH","SIH die Rune der Heilung. Sie wird f�r starke Heilzauber genutzt und um Vergiftungen zu heilen.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("ANTH","ANTH is the rune of objects. It can be used to summon flames, iceflames, poison clouds, to operate doors and to bring objects towards you. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("ANTH","ANTH ist die Rune des Objekts. Sie wird benutzt um Flammen und Giftwolken zu beschw�ren, um T�ren zu �ffnen und Objekte zu bewegen.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("SUL","SUL is the rune of standing and slowness. It can be used to paralyse people for a short time. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("SUL","SUL ist die Rune der Unbeweglichkeit. Sie wird genutzt um Personen f�r eine kurze Dauer zu paralysieren.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("QWAN","QWAN is the rune of strength. It can be used to step up spells and make them more effective. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("QWAN","QWAN ist die Rune der St�rke. Sie wurd benutzt um Spr�che zu verst�rken und macht sie so wirkungsvoller.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("DUN","DUN is the rune of area. It can be used to create areas of things. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("DUN","DUN ist die Rune der Fl�che. Sie wird benutzt um den Effekt von anderen Spr�chen auszuweiten.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("PHERC","PHERC is the rune of harm. It can be used to create lightning and for effective poison people. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("PHERC","PHERC ist die Rune der Verletzung. Sie wird genutzt um Blitze herbeizubeschw�ren und um effektiv jemanden zu vergiften.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("FHAN","FHAN is the rune of sending. FHAN is a mysterios Rune. I haven't found any spell for this rune, but maybe you found one....");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("FHAN","FHAN ist die Rune des Bringens. FHEN ist eine sehr mysteri�se Rune, ich habe bisher noch keine Anwendung daf�r gefunden, aber vielleicht findet ihr ja eine...");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("LUK","LUK is the rune of evil. It is used to summon hostile creatures. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("LUK","LUK ist die Rune des B�se. Sie kann benutzt werden um aggresive Kreaturen herbeizubeschw�ren.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("LEV","LEV is the rune of change. I know a few people who are able to cast teleport-spells into a scroll with this rune, but I heard that this is very difficult. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("LEV","LEV ist die Rune der Ver�nderung. Ich habe von ein paar Personen geh�rt, die f�hig sein sollen Teleportspr�che damit in Schriftrollen zu bannen, aber es soll sehr schwer sein.");
    npc.base.autonpcfunctions.AddCondition("lang","german");

    npc.base.autonpcfunctions.AddTraderTrigger("BHONA","BHONA is the rune of teaching. It is used to teach another person runes. Only teachers can get this rune. ");
    npc.base.autonpcfunctions.AddCondition("lang","english");
    npc.base.autonpcfunctions.AddTraderTrigger("BHONA","BHONA ist die Rune des Lehrens. Sie wird benutzt um anderen Personen Runen zu lehren. Nur Lehrer k�nnen diese Rune bekommen.");
    npc.base.autonpcfunctions.AddCondition("lang","german");


    

    npc.base.autonpcfunctions.AddCycleText("#me nimmt eine andere Schriftrolle vom Stapel. ","#me takes another scoll from the stack.");
    npc.base.autonpcfunctions.AddCycleText("#me hebt kurz den Kopf an und blickt �ber den Rand seiner Brille durch den Raum.","#me raises his head slightly and looks over the edge of his glassen through the room.");

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
    
    npc.base.autonpcfunctions.increaseLangSkill(TradSpeakLang)
    thisNPC.activeLanguage=TradStdLang;

end

function nextCycle()  -- ~10 times per second
    initializeNpc();
    npc.base.autonpcfunctions.SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if npc.base.autonpcfunctions.BasicNPCChecks(originator,2) then
        if npc.base.autonpcfunctions.LangOK(originator,TradSpeakLang) then
            npc.base.autonpcfunctions.TellSmallTalk(message,originator);
        else
            npc.base.autonpcfunctions.Confused(
               "#me sieht dich leicht verwirrt an",
               "#me looks at you a little confused"
            );
        end
    end
end
