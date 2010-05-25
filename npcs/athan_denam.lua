-- INSERT INTO npc VALUES (nextval('npc_seq'),3,-102, -71, 0 ,0,false,'Athan Denam','npc_athan_denam.lua',0);
dofile("npc_autonpcfunctions.lua")
function useNPC(user,counter,param)
    thisNPC:increaseSkill(1,"common language",100);
    thisNPC:talkLanguage(CCharacter.say, CPlayer.german, "Finger weg!");
    thisNPC:talkLanguage(CCharacter.say, CPlayer.english, "Don't you touch me!");
end
function initializeNpc()
    if TraderFirst then
        return true;
    end
    
    npcs.base.autonpcfunctions.InitTalkLists();
    
    QuestID=556;
    -- ********* START DYNAMIC PART ********
    npcs.base.autonpcfunctions.AddCycleText("Die armen Schweinchen","Those poor piggies");
    npcs.base.autonpcfunctions.AddCycleText("#me seufzt","#me sighs");
    npcs.base.autonpcfunctions.AddTraderTrigger("Hallo","Hallo, mein Freund. Bist du dir sicher, dass du die kleinen Schweinchen t�ten willst?");
    npcs.base.autonpcfunctions.AddConsequence("state",1);
    npcs.base.autonpcfunctions.AddCondition("qpg","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger("Gr�sse","Gr�sse, mein Freund. Bist du dir sicher, dass du die kleinen Schweinchen t�ten willst?");
    npcs.base.autonpcfunctions.AddConsequence("state",1);
    npcs.base.autonpcfunctions.AddCondition("qpg","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger("Gr��e","Gr��e, mein Freund. Bist du dir sicher, dass du die kleinen Schweinchen t�ten willst?");
    npcs.base.autonpcfunctions.AddConsequence("state",1);
    npcs.base.autonpcfunctions.AddCondition("qpg","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger("Guten Tag","Guten Tag, mein Freund. Bist du dir sicher, dass du die kleinen Schweinchen t�ten willst?");
    npcs.base.autonpcfunctions.AddConsequence("state",1);
    npcs.base.autonpcfunctions.AddCondition("qpg","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger("Hello","Hello, my friend. Are you really sure that you will kill those lovely piggies?");
    npcs.base.autonpcfunctions.AddConsequence("state",1);
    npcs.base.autonpcfunctions.AddCondition("qpg","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger("Greetings","Greetings, my friend. Are you really sure that you will kill those lovely piggies?");
    npcs.base.autonpcfunctions.AddConsequence("state",1);
    npcs.base.autonpcfunctions.AddCondition("qpg","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger("Greets","Greets, my friend. Are you really sure that you will kill those lovely piggies?");
    npcs.base.autonpcfunctions.AddConsequence("state",1);
    npcs.base.autonpcfunctions.AddCondition("qpg","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger("Be greeted","Be greeted, my friend. Are you really sure that you will kill those lovely piggies?");
    npcs.base.autonpcfunctions.AddConsequence("state",1);
    npcs.base.autonpcfunctions.AddCondition("qpg","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger("Nein","Du bist ein wahrer Tierfreund. Ich gebe dir etwas gegen deinen Hunger.");
    npcs.base.autonpcfunctions.AddCondition("state","=",1);
    npcs.base.autonpcfunctions.AddConsequence("state",3);
    npcs.base.autonpcfunctions.AddConsequence("item",49,1,333,0);
    npcs.base.autonpcfunctions.AddConsequence("qpg",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("No","You are a real animals friend. I'll give you something against your hunger.");
    npcs.base.autonpcfunctions.AddCondition("state","=",1);
    npcs.base.autonpcfunctions.AddConsequence("state",3);
    npcs.base.autonpcfunctions.AddConsequence("item",49,1,333,0);
    npcs.base.autonpcfunctions.AddConsequence("qpg",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("Ja","Kann ich dich nicht umstimmen? Ich gebe dir f�nf Kupfer. Dann kannst du dir ein Brot kaufen. Bist du einverstanden?");
    npcs.base.autonpcfunctions.AddCondition("state","=",1);
    npcs.base.autonpcfunctions.AddConsequence("state",2);
    npcs.base.autonpcfunctions.AddTraderTrigger("Yes","Can I change your mind somehow? I will give you five copper. You can buy yourself a bread with the money. Do you consider?");
    npcs.base.autonpcfunctions.AddCondition("state","=",1);
    npcs.base.autonpcfunctions.AddConsequence("state",2);
    npcs.base.autonpcfunctions.AddTraderTrigger("Ja","Du bist klug mein Freund. Hier ist dein Kupfer.");
    npcs.base.autonpcfunctions.AddCondition("state","=",2);
    npcs.base.autonpcfunctions.AddConsequence("state",3);
    npcs.base.autonpcfunctions.AddConsequence("money","+",5);
    npcs.base.autonpcfunctions.AddConsequence("qpg",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("Yes","You are bright my friend. Here's your copper");
    npcs.base.autonpcfunctions.AddCondition("state","=",2);
    npcs.base.autonpcfunctions.AddConsequence("state",3);
    npcs.base.autonpcfunctions.AddConsequence("money","+",5);
    npcs.base.autonpcfunctions.AddConsequence("qpg",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("Nein","Dann kann ich dir leider nicht helfen. M�gen dich die Schweine beissen!");
    npcs.base.autonpcfunctions.AddCondition("state","=",2);
    npcs.base.autonpcfunctions.AddConsequence("state",3);
    npcs.base.autonpcfunctions.AddConsequence("qpg",2);
    npcs.base.autonpcfunctions.AddTraderTrigger("No","In that case I can't help you. May the pigs bite you!");
    npcs.base.autonpcfunctions.AddCondition("state","=",2);
    npcs.base.autonpcfunctions.AddConsequence("state",3);
    npcs.base.autonpcfunctions.AddConsequence("qpg",2);
    npcs.base.autonpcfunctions.AddTraderTrigger("Hallo","Hallo, mein Freund.");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("Gr�sse","Gr�sse, mein Freund.");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("Gr��e","Gr��e, mein Freund.");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("Guten Tag","Guten Tag, mein Freund.");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("Hello","Hello, my friend.");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("Greetings","Greetings, my friend.");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("Greets","Greets, my friend.");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("Be greeted","Be greeted, my friend.");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("Hallo","Verschwinde, elender M�rder! ");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddTraderTrigger("Gr�sse","Verschwinde, elender M�rder! ");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddTraderTrigger("Gr��e","Verschwinde, elender M�rder! ");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddTraderTrigger("Guten Tag","Verschwinde, elender M�rder! ");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddTraderTrigger("Hello","Get along with you, wretched murderer! ");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddTraderTrigger("Greetings","Get along with you, wretched murderer! ");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddTraderTrigger("Be greeted","Get along with you, wretched murderer! ");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    npcs.base.autonpcfunctions.AddTraderTrigger("Greets","Get along with you, wretched murderer! ");
    npcs.base.autonpcfunctions.AddCondition("qpg","=",2);
    -- ********* END DYNAMIC PART ********
    TradSpeakLang={0,1};
    TradStdLang=0;
    
    npcs.base.autonpcfunctions.increaseLangSkill(TradSpeakLang)
    thisNPC.activeLanguage=TradStdLang;
    
end
function nextCycle()  -- ~10 times per second
    initializeNpc();
    npcs.base.autonpcfunctions.SpeakerCycle();
end
function receiveText(texttype, message, originator)
    if npcs.base.autonpcfunctions.BasicNPCChecks(originator,2) then
        if npcs.base.autonpcfunctions.LangOK(originator,TradSpeakLang) then
            npcs.base.autonpcfunctions.TellSmallTalk(message,originator);
        else
            npcs.base.autonpcfunctions.Confused(
               "#me sieht dich leicht verwirrt an",
               "#me looks at you a little confused"
            );
        end
    end
end