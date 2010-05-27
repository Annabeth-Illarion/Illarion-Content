-- INSERT INTO npc VALUES (nextval('npc_seq'),2,-67,-104,0,4,false,'Oldren Shmagging','npc_oldren_shmagging.lua',0);
-- NPC craftmaster for newbie island
-- cooking and baking

require("npcs.base.autonpcfunctions")
-- dofile("/usr/share/servers/illarionserver/scripts/npc_autonpcfunctions.lua");
module("npcs.oldren_shmagging")

function useNPC(user,counter,param)
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "Finger weg!");
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Dont you touch me!");
end

function initializeNpc()
    if TraderFirst then
        return true;
    end

    npcs.base.autonpcfunctions.InitTalkLists();

    -- ********* START DYNAMIC PART ********

    -- general
    -- small talk
    npcs.base.autonpcfunctions.AddTraderTrigger("hello","Hello my friend! I am "..thisNPC.name..", a cook and a baker. I can teach you some things of my craft.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("greet");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("hiho");
    npcs.base.autonpcfunctions.AddCondition("state","=",0);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("hallo","Hallo mein Freund! Ich bin "..thisNPC.name..", ein Koch und B�cker. Ich kann dir ein paar Dinge meines Handwerks beibringen.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("gr[�u][s�]");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("hiho");
    npcs.base.autonpcfunctions.AddCondition("state","=",0);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddTraderTrigger("hello","Hello my friend! Back again, eh? Hm... Where did we stop?.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("greet");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("hiho");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("hallo","Hallo mein Freund! Na, wieder zur�ck? Hm... Wo waren wir stehen geblieben?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("gr[�u][s�]");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("hiho");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddTraderTrigger("hallo","Hallo mein Freund! Na, wieder zur�ck? Hm... Wo waren wir stehen geblieben?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("gr[�u][s�]");
    npcs.base.autonpcfunctions.AddTraderTrigger("who you","I am "..thisNPC.name..", a cook and a baker. I can teach you some things of my craft.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("what you");
    npcs.base.autonpcfunctions.AddTraderTrigger("wer du","Ich bin "..thisNPC.name..", ein Koch und B�cker. Ich kann dir ein paar Dinge meines Handwerks beibringen.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wer ihr");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("was du");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("was ihr");
    npcs.base.autonpcfunctions.AddTraderTrigger("bye","Bye, bye.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("farewell");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("be well");
    npcs.base.autonpcfunctions.AddAdditionalText("Be well, my friend!");
    npcs.base.autonpcfunctions.AddAdditionalText("Farewell, until we meet again.");
    npcs.base.autonpcfunctions.AddTraderTrigger("tsch[�u][�s]","Auf Wiedersehen, mein Freund!");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("tschue[s�]");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("leb wohl");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wiederseh");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("auf bald");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("bis bald");
    npcs.base.autonpcfunctions.AddAdditionalText("Tsch�ss auch.");
    npcs.base.autonpcfunctions.AddAdditionalText("Leb wohl, bis zum n�chsten Mal.");
    -- start teaching
    npcs.base.autonpcfunctions.AddTraderTrigger("cook","So you want to learn some things about cooking and baking, right?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("bake");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("craft");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("teach");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("learn");
	npcs.base.autonpcfunctions.AddAdditionalTrigger("help");
    npcs.base.autonpcfunctions.AddCondition("state","=",0);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddConsequence("state","=",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("koch","So so, du willst also ein paar Dinge �ber Kochen und Backen lernen, richtig?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("back");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("handwerk");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("lern");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("lehr");
	npcs.base.autonpcfunctions.AddAdditionalTrigger("hilf");
    npcs.base.autonpcfunctions.AddCondition("state","=",0);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddConsequence("state","=",1);
    -- STATE 1
    npcs.base.autonpcfunctions.AddTraderTrigger("yes","Very nice. Firstly, take this cooking spoon and this bucket. Go to the water with the bucket in your hands and 'use' it with the water. Come again when you have filled the bucket.");
    npcs.base.autonpcfunctions.AddCondition("state","=",1);
    npcs.base.autonpcfunctions.AddConsequence("state","=",2);
    npcs.base.autonpcfunctions.AddConsequence("item",227,1,999,0);
    npcs.base.autonpcfunctions.AddConsequence("item",51,1,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("ja","Sehr sch�n. Nimm erstmal diesen Kochl�ffel und diesen Eimer. Geh zum Wasser mit dem Eimer in deinen H�nden und 'benutze' ihn mit dem Wasser. Komm wieder, wenn du den Eimer gef�llt hast.");
    npcs.base.autonpcfunctions.AddCondition("state","=",1);
    npcs.base.autonpcfunctions.AddConsequence("state","=",2);
    npcs.base.autonpcfunctions.AddConsequence("item",227,1,999,0);
    npcs.base.autonpcfunctions.AddConsequence("item",51,1,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("no","But why are you here if you don't want to learn anything? Well, you can leave through the portal you just used at any time.");
    npcs.base.autonpcfunctions.AddCondition("state","=",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("nein","Aber warum bist du dann hier, wenn du nichts lernen willst? Nunja, du kannst wieder durch das Portal gehen, das du eben benutzt hast, wann immer du willst.");
    npcs.base.autonpcfunctions.AddCondition("state","=",1);
    -- STATE 2
    npcs.base.autonpcfunctions.AddTraderTrigger("spoon","You need another cooking spoon, right? Here you are.");
    npcs.base.autonpcfunctions.AddCondition("state",">=",2);
    npcs.base.autonpcfunctions.AddCondition("item",227,"all","=",0);
    npcs.base.autonpcfunctions.AddConsequence("item",227,1,999,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("l[�o]ffel","Du brauchst einen neuen Kochl�ffel, richtig? Hier bitte sehr.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("loeffel");
    npcs.base.autonpcfunctions.AddCondition("state",">=",2);
    npcs.base.autonpcfunctions.AddCondition("item",227,"all","=",0);
    npcs.base.autonpcfunctions.AddConsequence("item",227,1,999,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("bucket","You need another bucket, right? Here you are.");
    npcs.base.autonpcfunctions.AddCondition("state",">=",2);
    npcs.base.autonpcfunctions.AddCondition("item",51,"all","=",0);
    npcs.base.autonpcfunctions.AddCondition("item",52,"all","=",0);
    npcs.base.autonpcfunctions.AddConsequence("item",51,1,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("eimer","Du brauchst einen neuen Eimer, richtig? Hier bitte sehr.");
    npcs.base.autonpcfunctions.AddCondition("state",">=",2);
    npcs.base.autonpcfunctions.AddCondition("item",51,"all","=",0);
    npcs.base.autonpcfunctions.AddCondition("item",52,"all","=",0);
    npcs.base.autonpcfunctions.AddConsequence("item",51,1,333,0);
    -- STATE 3
    npcs.base.autonpcfunctions.AddTraderTrigger("pork","You need more pork, right? Here you are.");
    npcs.base.autonpcfunctions.AddCondition("state",">=",3);
    npcs.base.autonpcfunctions.AddCondition("state","<",10);
    npcs.base.autonpcfunctions.AddCondition("item",307,"all","<",3);
    npcs.base.autonpcfunctions.AddConsequence("item",307,5,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("fleisch","Du brauchst mehr Schweinefleisch, richtig? Hier bitte sehr.");
    npcs.base.autonpcfunctions.AddCondition("state",">=",3);
    npcs.base.autonpcfunctions.AddCondition("state","<",10);
    npcs.base.autonpcfunctions.AddCondition("item",307,"all","<",3);
    npcs.base.autonpcfunctions.AddConsequence("item",307,5,333,0);
	npcs.base.autonpcfunctions.AddTraderTrigger("entrail","You need more entrails, right? Here you are.");
    npcs.base.autonpcfunctions.AddCondition("state",">=",3);
    npcs.base.autonpcfunctions.AddCondition("state","<",10);
    npcs.base.autonpcfunctions.AddCondition("item",63,"all","<",3);
    npcs.base.autonpcfunctions.AddConsequence("item",63,5,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("eingeweide","Du brauchst mehr Eingeweide, richtig? Hier bitte sehr.");
    npcs.base.autonpcfunctions.AddCondition("state",">=",3);
    npcs.base.autonpcfunctions.AddCondition("state","<",10);
    npcs.base.autonpcfunctions.AddCondition("item",63,"all","<",3);
    npcs.base.autonpcfunctions.AddConsequence("item",63,5,333,0);
    -- STATE 10
    npcs.base.autonpcfunctions.AddTraderTrigger("yes","Alright, at the very beginning you need flour to make dough. That is made out of grain, but better ask a farmer about milling grain. I give you some bags of flour, place them and a bucket of water at the belt, and a rolling pin. Holding it in your hands and standing in front of the baking house over there, just 'use' that baking house. Come again when you have at least 5 pieces of dough.");
    npcs.base.autonpcfunctions.AddCondition("state","=",10);
    npcs.base.autonpcfunctions.AddConsequence("state","=",11);
    npcs.base.autonpcfunctions.AddConsequence("item",2,10,333,0);
    npcs.base.autonpcfunctions.AddConsequence("item",118,1,999,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("ja","Nun gut, zu allererst brauchst du Mehl um Teig zu machen. Das wird aus Getreide gemacht, aber frage besser einen Bauern �ber das Mahlen von Getreide. Ich gebe dir ein paar S�cke mit Mehl, trage sie und einen Eimer mit Wasser am G�rtel, und ein Nudelholz. Halte jenes in der Hand und stelle dich einfach direkt vor den Backofen dort und 'benutze' ihn. Komm wieder, wenn du mindestens 5 Klumpen Teig hast.");
    npcs.base.autonpcfunctions.AddCondition("state","=",10);
    npcs.base.autonpcfunctions.AddConsequence("state","=",11);
    npcs.base.autonpcfunctions.AddConsequence("item",2,10,333,0);
    npcs.base.autonpcfunctions.AddConsequence("item",118,1,999,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("no","As you want. You can come back whenever you want and continue the lesson about baking.");
    npcs.base.autonpcfunctions.AddCondition("state","=",10);
    npcs.base.autonpcfunctions.AddTraderTrigger("nein","Wie du willst. Du kannst jederzeit wiederkommen und die Lektion �ber Backen fortsetzen.");
    npcs.base.autonpcfunctions.AddCondition("state","=",10);
    -- STATE 11
    npcs.base.autonpcfunctions.AddTraderTrigger("flour","You need more flour, right? Here you are.");
    npcs.base.autonpcfunctions.AddCondition("state","=",11);
    npcs.base.autonpcfunctions.AddCondition("item",2,"all","<",5);
    npcs.base.autonpcfunctions.AddConsequence("item",2,10,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("mehl","Du brauchst mehr Mehl, richtig? Hier bitte sch�n.");
    npcs.base.autonpcfunctions.AddCondition("state","=",11);
    npcs.base.autonpcfunctions.AddCondition("item",2,"all","<",5);
    npcs.base.autonpcfunctions.AddConsequence("item",2,10,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("rolling pin","You need a new rolling pin, right? Here you are.");
    npcs.base.autonpcfunctions.AddCondition("state",">=",11);
    npcs.base.autonpcfunctions.AddCondition("item",118,"all","=",0);
    npcs.base.autonpcfunctions.AddConsequence("item",118,1,999,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("nudelholz","Du brauchst ein neues Nudelholz, richtig? Hier bitte sch�n.");
    npcs.base.autonpcfunctions.AddCondition("state",">=",11);
    npcs.base.autonpcfunctions.AddCondition("item",118,"all","=",0);
    npcs.base.autonpcfunctions.AddConsequence("item",118,1,999,0);
    -- STATE 12
    npcs.base.autonpcfunctions.AddTraderTrigger("help","Oh, you have no more dough, right? You don't need to make it again, so I give you 5 new pieces.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("dough");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("more");
    npcs.base.autonpcfunctions.AddCondition("state","=",12);
    npcs.base.autonpcfunctions.AddCondition("item",5,"all","=",0);
    npcs.base.autonpcfunctions.AddConsequence("item",5,5,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("hilfe","Oh, du hast keinen Teig mehr, richtig? Du musst es nicht nochmal machen, also gebe ich dir 5 neue Klumpen.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("teig");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("mehr");
    npcs.base.autonpcfunctions.AddCondition("state","=",12);
    npcs.base.autonpcfunctions.AddCondition("item",5,"all","=",0);
    npcs.base.autonpcfunctions.AddConsequence("item",5,5,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("peel","You need a new peel, right? Here you are.");
    npcs.base.autonpcfunctions.AddCondition("state",">=",12);
    npcs.base.autonpcfunctions.AddCondition("item",121,"all","=",0);
    npcs.base.autonpcfunctions.AddConsequence("item",121,1,999,0);
    npcs.base.autonpcfunctions.AddTraderTrigger("ofenschieber","Du brauchst einen neuen Ofenschieber, richtig? Hier bitte sch�n.");
    npcs.base.autonpcfunctions.AddCondition("state",">=",12);
    npcs.base.autonpcfunctions.AddCondition("item",121,"all","=",0);
    npcs.base.autonpcfunctions.AddConsequence("item",121,1,999,0);
    -- standard explanations
    npcs.base.autonpcfunctions.AddTraderTrigger("dough","Dough is made out of flour, which is made out of grain. But I don't know how to mill grain to flour. I am just a baker, not a farmer. If you need flour for one of my tasks, I can give you some bags.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("flour");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("grain");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("mill");
    npcs.base.autonpcfunctions.AddTraderTrigger("teig","Teig wird aus Mehl gemacht, welches wiederrum aus Getreide gemacht wird. Aber ich wei� nicht, wie man Getreide zu Mehl zermahlen kann. Ich bin nur ein B�cker, kein Bauer. Falls du f�r eine meiner Aufgaben Mehl brauchst, kann ich dir ein paar S�cke geben.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("mehl");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("getreide");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("mahlen");
    npcs.base.autonpcfunctions.AddTraderTrigger("pork","Pork can be cooked to sausages. You always get a pair out of it. Kill a pig. Then you can easily take the pork from the cadaver. But if you need it for one of my tasks, I can give you some pork.");
    npcs.base.autonpcfunctions.AddTraderTrigger("fleisch","Schweinefleisch kann zu W�rsten gekocht werden. Du bekommst immer gleich ein Paar. T�te ein Schwein. Dann kannst du ganz einfach dessen Fleisch vom Kadaver entfernen. Falls du f�r eine meiner Aufgaben Schweinefleisch brauchst, kann ich dir auch etwas geben.");
	npcs.base.autonpcfunctions.AddTraderTrigger("entrail","Entrails are used to cook sausages. You always get a pair out of it. Kill a pig. Then you can easily take the entrails from the cadaver. But if you need it for one of my tasks, I can give you some entrails.");
    npcs.base.autonpcfunctions.AddTraderTrigger("eingeweide","Eingeweide kann zu W�rsten gekocht werden. Du bekommst immer gleich ein Paar. T�te ein Schwein. Dann kannst du ganz einfach dessen Eingeweide vom Kadaver entfernen. Falls du f�r eine meiner Aufgaben Eingeweide brauchst, kann ich dir auch etwas geben.");
    npcs.base.autonpcfunctions.AddTraderTrigger("baking house","The baking house is over there, next to the cherry tree. You need a baking house to bake bread, cakes or other delicacies.");
    npcs.base.autonpcfunctions.AddTraderTrigger("backofen","Der Backofen ist dort dr�ben bei dem Kirschbaum. Du brauchst einen Backofen, um Brot, Kuchen und andere Leckereien zu backen.");
    npcs.base.autonpcfunctions.AddTraderTrigger("fire","You can cook tasty dishes at any campfire, like the one next to me. Amelia has surely shown you how to spark off a fire. But you can use my one of course");
    npcs.base.autonpcfunctions.AddTraderTrigger("feuer","Du kannst an jedem Lagerfeuer, wie das hier neben mir, leckere Gerichte kochen. Amelia hat dir bestimmt gezeigt, wie man eines entfacht. Aber du kannst gern meines benutzen.");
    npcs.base.autonpcfunctions.AddTraderTrigger("soup","Concerning cooking, you can choose between two categories: soups or other dishes. For soups you need a soup bowl, for the most other dishes you need a plate - of course not for sausages. Both can be made by carpenters.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("bowl");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("plate");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("dish");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("category");
    npcs.base.autonpcfunctions.AddTraderTrigger("suppe","Was das Kochen betrifft, kannst du aus zwei Kategorien w�hlen: Suppen oder andere Gerichte. F�r Suppen brauchst du eine Suppensch�ssel, f�r die meisten anderen Gerichte einen Teller - nat�rlich nicht f�r W�rste. Beides k�nnen Schreiner herstellen.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("sch[�u][s�]el");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("schue[s�]el");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("teller");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("gericht");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("kategorie");
    npcs.base.autonpcfunctions.AddTraderTrigger("spoon","Oh of course you need a cooking spoon and a bucket in order to cook anything. They can be made by carpenters. But if you need them for one of my tasks, I can give you one of each.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("bucket");
    npcs.base.autonpcfunctions.AddTraderTrigger("l[�o]ffel","Nat�rlich brauchst du einen Kochl�ffel und einen Eimer, um etwas zu kochen. Beides kann von Schreinern hergestellt werden. Aber falls du sie f�r eine meiner Aufgaben brauchst, kann ich dir jeweils ein Exemplar geben.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("loeffel");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("eimer");
    -- last catch
    -- STATE 1
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","I asked if you want to learn something about cooking and baking. Yes or no?");
    npcs.base.autonpcfunctions.AddCondition("state","=",1);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Ich habe gefragt, ob du etwas �bers Kochen und Backen lernen willst. Ja oder nein?");
    npcs.base.autonpcfunctions.AddCondition("state","=",1);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    -- STATE 2
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","You should first fill the bucket with water. Go to the water with the bucket in your hands and 'use' it with the water. Come again when you have filled the bucket.");
    npcs.base.autonpcfunctions.AddCondition("state","=",2);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddCondition("item",52,"all","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Du solltest erst den Eimer mit Wasser f�llen. Geh zum Wasser mit dem Eimer in deinen H�nden und 'benutze' ihn mit dem Wasser. Komm wieder, wenn du den Eimer gef�llt hast.");
    npcs.base.autonpcfunctions.AddCondition("state","=",2);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddCondition("item",52,"all","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Ah, you have a full bucket. Now I give you pork and entrails, you'll cook sausages. Stand directly in front of the fire with the spoon in your hands and the pork, entrails and the bucket of water at your belt and 'use' the spoon. You can choose a category, soups -represented by a soup bowl- or other dishes -represented by a plate. Choose the plate and then the sausages. When you are finished or if it doesn't work, just come to me again.");
    npcs.base.autonpcfunctions.AddCondition("state","=",2);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddCondition("item",52,"all",">",0);
    npcs.base.autonpcfunctions.AddConsequence("state","=",3);
    npcs.base.autonpcfunctions.AddConsequence("item",307,5,333,0);
	npcs.base.autonpcfunctions.AddConsequence("item",63,5,333,0);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Ah, du hast einen vollen Eimer. Jetzt gebe ich dir Schweinefleisch und Eingeweide, du wirst W�rste kochen. Steh direkt vor das Feuer mit dem L�ffel in der Hand und dem Fleisch und dem Eimer mit Wasser am G�rtel und 'benutze' den L�ffel. Du kannst eine Kategorie w�hlen, Suppen -dargestellt durch eine Sch�ssel- oder andere Gerichte -dargestellt durch einen Teller. W�hle den Teller und dann die W�rste. Wenn du fertig bist oder falls es nicht klappt, komm einfach wieder zu mir.");
    npcs.base.autonpcfunctions.AddCondition("state","=",2);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddCondition("item",52,"all",">",0);
    npcs.base.autonpcfunctions.AddConsequence("state","=",3);
    npcs.base.autonpcfunctions.AddConsequence("item",307,5,333,0);
	npcs.base.autonpcfunctions.AddConsequence("item",63,5,333,0);
    -- STATE 3
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Come again when you have cooked at least one pair of sausages. Stand directly in front of the fire with the spoon in your hands and the pork and the bucket of water at your belt and 'use' the spoon. You can choose a category, soups -represented by a soup bowl- or other dishes -represented by a plate. Choose the plate and then the sausages.");
    npcs.base.autonpcfunctions.AddCondition("state","=",3);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddCondition("item",3051,"all","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Komm wieder, wenn du mindestens ein Paar W�rste gekocht hast. Steh direkt vor das Feuer mit dem L�ffel in der Hand und dem Fleisch und dem Eimer mit Wasser am G�rtel und 'benutze' den L�ffel. Du kannst eine Kategorie w�hlen, Suppen -dargestellt durch eine Sch�ssel- oder andere Gerichte -dargestellt durch einen Teller. W�hle den Teller und dann die W�rste.");
    npcs.base.autonpcfunctions.AddCondition("state","=",3);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddCondition("item",3051,"all","=",0);
    -- STATE 4, unfinished sausages
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Oh wait, I see that you haven't finished cooking those sausages. If you want to continue the work on an unfinished dish, just 'use' the spoon with that dish, having it placed at the belt of course.");
    npcs.base.autonpcfunctions.AddCondition("state","=",4);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddConsequence("state","=",3);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Oh warte, wie ich sehe hast du diese W�rste nicht fertig gekocht. Wenn du die Arbeit an einem unfertigen Gericht weiterf�hren willst, dann 'benutze' den L�ffel mit diesem Gericht, das du nat�rlich am G�rtel tr�gst.");
    npcs.base.autonpcfunctions.AddCondition("state","=",4);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddConsequence("state","=",3);
    -- STATE 5, finished sausages
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Great! You did it! One more hint: It may happen that there are 'unfinished dishes' left, continue the work by 'using' the spoon with that dish, having it placed at the belt of course. Now, we may proceed with baking. Are you ready?");
    npcs.base.autonpcfunctions.AddCondition("state","=",5);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddConsequence("state","=",10);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Gro�artig! Du hast's geschafft! Ein Hinweis noch: Es kann passieren, dass 'unfertige Gerichte' �brigbleiben, setze die Arbeit fort, indem du den L�ffel mit diesem Gericht, das du nat�rlich am G�rtel tr�gst, 'benutzt'. Nun k�nnen wir mit Backen fortfahren. Bereit?");
    npcs.base.autonpcfunctions.AddCondition("state","=",5);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddConsequence("state","=",10);
    -- STATE 10
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","I asked if we can proceed with baking. Yes or no?");
    npcs.base.autonpcfunctions.AddCondition("state","=",10);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Ich fragte, ob wir mit Backen fortfahren k�nnen. Ja oder nein?");
    npcs.base.autonpcfunctions.AddCondition("state","=",10);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    -- STATE 11
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","We can only proceed if you have 5 pieces of dough. Place the flour and a bucket of water at the belt and hold the rolling pin in your hands. Stand in front of the baking house and just 'use' it.");
    npcs.base.autonpcfunctions.AddCondition("state","=",11);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddCondition("item",5,"all","<",5);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Wir k�nnen erst weiter machen, wenn du 5 Klumpen Teig hast. Trage das Mehl und einen Eimer mit Wasser am G�rtel und halte das Nudelholz in den H�nden. Stelle dich direkt vor den Backofen und 'benutze' ihn.");
    npcs.base.autonpcfunctions.AddCondition("state","=",11);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddCondition("item",5,"all","<",5);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Very good! Now take this peel and hold it in your hands. Go again to the baking house and place the dough at your belt. Now 'use' the peel and choose the bread roll. It is the easiest-to-make baked good. Come again when you have at least one bread roll.");
    npcs.base.autonpcfunctions.AddCondition("state","=",11);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddConsequence("state","=",12);
    npcs.base.autonpcfunctions.AddConsequence("item",121,1,999,0);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Sehr gut! Nun nimm diesen Ofenschieber und halte ihn in deinen H�nden. Geh' wieder zum Backofen und trage den Teig am G�rtel. Jetzt 'benutze' den Ofenschieber und w�hle das Br�tchen. Es ist die am einfachsten herzustellende Backware. Komm wieder, wenn du mindestens ein Br�tchen hast.");
    npcs.base.autonpcfunctions.AddCondition("state","=",11);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddConsequence("state","=",12);
    npcs.base.autonpcfunctions.AddConsequence("item",121,1,999,0);
    -- STATE 12
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Come again when you have baked at least one bread roll. Go to the baking house and place the dough at your belt. Now 'use' the peel, while holding it in your hands, and choose the bread roll. It is the easiest-to-make baked good.");
    npcs.base.autonpcfunctions.AddCondition("state","=",12);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Komm wieder, wenn du mindestens ein Br�tchen gebacken hast. Geh' wieder zum Backofen und trage den Teig am G�rtel. Jetzt 'benutze' den Ofenschieber, w�hrend du ihn in der Hand h�ltst, und w�hle das Br�tchen. Es ist die am einfachsten herzustellende Backware.");
    npcs.base.autonpcfunctions.AddCondition("state","=",12);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    -- STATE 13, unfinished bread roll
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Oh wait, I see that you haven't finished baking that bread roll. If you want to continue the work on an unfinished baked good, just 'use' the peel with that baked good, having it placed at the belt of course.");
    npcs.base.autonpcfunctions.AddCondition("state","=",13);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddConsequence("state","=",12);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Oh warte, wie ich sehe hast du dieses Br�tchen nicht fertig gebacken. Wenn du die Arbeit an einer unfertigen Backware weiterf�hren willst, dann 'benutze' den Ofenschieber mit dieser Backware, die du nat�rlich am G�rtel tr�gst.");
    npcs.base.autonpcfunctions.AddCondition("state","=",13);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddConsequence("state","=",12);
    -- STATE 14, finished bread roll
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Great! Your sausages and bread rolls smell very delicious. You can eat them by simply 'using' them. Well then, that's all I can do for you. But you surely will become a master cook and baker one day. I wish you good luck and Oldra with you. Farewell!");
    npcs.base.autonpcfunctions.AddCondition("state","=",14);
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddConsequence("state","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger(".+","Gro�artig! Deine W�rste und Br�tchen riechen wirklich k�stlich. Du kannst sie essen, indem du sie einfach 'benutzt'. Nun denn, das ist alles, was ich f�r dich tun kann. Aber du wirst sicherlich eines Tages ein Meisterkoch und -b�cker. Viel Gl�ck und Oldra mit dir. Leb wohl!");
    npcs.base.autonpcfunctions.AddCondition("state","=",14);
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddConsequence("state","=",0);
    -- ********* END DYNAMIC PART ********
    TradSpeakLang={0,1};
    TradStdLang=0;

    npcs.base.autonpcfunctions.increaseLangSkill(TradSpeakLang);
    thisNPC.activeLanguage=TradStdLang;

end

function nextCycle()  -- ~10 times per second
    initializeNpc();
    npcs.base.autonpcfunctions.SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if npcs.base.autonpcfunctions.BasicNPCChecks(originator,2) then
        if npcs.base.autonpcfunctions.LangOK(originator,TradSpeakLang) then
            local state = NPCStatus[originator.id];
			if state == 3 then
				if CountItemsWithQuality(originator,3051,100,-1) > 0 then
					NPCStatus[originator.id] = 4;
				elseif CountItemsWithQuality(originator,3051,99,1) > 0 then
					NPCStatus[originator.id] = 5;
				end
			elseif state == 12 then
				if CountItemsWithQuality(originator,191,100,-1) > 0 then
					NPCStatus[originator.id] = 13;
				elseif CountItemsWithQuality(originator,191,99,1) > 0 then
					NPCStatus[originator.id] = 14;
				end
			end
			-- debug and testing
		    local a,b,c,d,e,f,g,h = nil;
		    a,b,c = string.find(string.lower(message),"debug (%d+)");
		    d,e = string.find(string.lower(message),"debug");
			f,g,h = string.find(string.lower(message),"questprogress (%d+)");
		    if a~=nil then
				NPCStatus[originator.id]=c+1-1;
				originator:inform("State set to "..c);
		    elseif d~=nil then
				originator:inform("State: "..NPCStatus[originator.id]); 
		    elseif f~=nil then
				originator:setQuestProgress(2,h+1-1);
				originator:inform("Questprogress set to "..h);
			else -- end debug and testing
				npcs.base.autonpcfunctions.TellSmallTalk(message,originator);
		    end
        else
            npcs.base.autonpcfunctions.Confused(
               "#me sieht dich leicht verwirrt an",
               "#me looks at you a little confused"
            );
        end
    end
end

function CountItemsWithQuality( Character, ItemID, Quality, Compare )
	
	local count = 0;
	local i;
	local item;
	for i=0,17 do
		item = Character:getItemAt(i);
		if item.id == ItemID then
			if Compare == 0 or Compare == nil then
				if item.quality == Quality then
					count = count+1;
				end
			elseif Compare == 1 then
				if item.quality > Quality then
					count = count+1;
				end
			elseif Compare == -1 then
				if item.quality < Quality then
					count = count+1;
				end
			end
		end
	end
	local container = nil;
	container = Character:getBackPack();
	if container then
		local worked = false;
		for i=1,100 do
			worked, item = container:viewItemNr(i);
			if worked then
				if item.id == ItemID then
					if Compare == 0 or Compare == nil then
						if item.quality == Quality then
							count = count+1;
						end
					elseif Compare == 1 then
						if item.quality > Quality then
							count = count+1;
						end
					elseif Compare == -1 then
						if item.quality < Quality then
							count = count+1;
						end
					end
				end
			else
				break;
			end
		end
	end
	return count;
end
