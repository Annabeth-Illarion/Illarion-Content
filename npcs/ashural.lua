-- INSERT INTO npc VALUES (nextval('npc_seq'),0,,,,0,false,'Flora','npc_flora.lua',1);
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
    
    InitTalkLists();
    
    
    -- ********* START DYNAMIC PART ********
-- Queststats:
-- 1 - Does Player like flowers?
-- 2 - Player likes flower. Can he be asked a question?
-- 3 - Did Player ever see Night Angels Blossom?
-- 4 - Player asked to bring a Night Angels Blossom.
-- 5 - Player never seen a Night Angels Blossom
-- 6 - Player agrees to bring the flower
-- 7 - Player disagrees to bring the flower
-- 8 - Player brought the flower
-- 10 - Quest completed (NPC will offer healing capabilities)
QuestID = 558
-- CYCLE TEXT
AddCycleText( "", "#me crouches down and looks closely at the flowers, frowning slightly." )
AddCycleText( "", "#me sniffs a flower she's holding." )
AddCycleText( "", "#me whispers something inaudible while plucking out the petals of a flower." )
-- Queststatus = 10 (COMPLETED)
    AddTraderTrigger("hello","Hello again. Oh, you seem to be wounded. Would you allow me to tend to your wounds?");
    AddConsequence("state",5);
    AddCondition("attrib","hitpoints ","<",1500);
    AddCondition("qpg","=",10);
    AddTraderTrigger("greet","Greetings again. Hmm, you seem to be hurt. May I tend to your wounds?");
    AddConsequence("state",5);
    AddCondition("attrib","hitpoints ","<",1500);
    AddCondition("qpg","=",10);
    AddTraderTrigger("hello","Hello again there! It is so nice to see you.");
    AddCondition("qpg","=",10);
    AddTraderTrigger("greet","Greetings once again. It is always nice seeing you.");
    AddCondition("qpg","=",10);
    AddTraderTrigger("farewell","Farewell and come back soon to see me!");
    AddCondition("qpg","=",10);
    AddTraderTrigger("yes","#me uses a small bottle of liquid which helps cure the wounds, 'There you go. You should feel better.'");
    AddCondition("state","=",5);
    AddConsequence("state",6);
    AddCondition("attrib","hitpoints ","<",1500);
    AddConsequence("attrib","hitpoints ","+",5000);
    AddCondition("qpg","=",10);
    AddTraderTrigger("sure","#me applies a small bottle of liquid, soothing the pain of the wounds, 'There. You should feel less pain now.'");
    AddCondition("state","=",5);
    AddConsequence("state",6);
    AddCondition("attrib","hitpoints ","<",1500);
    AddConsequence("attrib","hitpoints ","+",5000);
    AddCondition("qpg","=",10);
    AddTraderTrigger("yes","Oh well, you aren't that bad. I'll heal you when you are in a worse condition.");
    AddCondition("state","=",5);
    AddCondition("qpg","=",10);
    AddTraderTrigger("no","If you insist. Take care then.");
    AddCondition("state","=",5);
    AddConsequence("state",0);
    AddCondition("qpg","=",10);
    AddTraderTrigger("thank","I am glad to be of help, just as you were to me.");
    AddCondition("state","=",6);
    AddCondition("qpg","=",10);
-- Queststatus = 1
    AddTraderTrigger("I like flowers","You like the flowers? That makes me happy! May I ask you a question?");
    AddCondition("qpg","=",1);
    AddConsequence("qpg",2);
    AddTraderTrigger("I love flowers","You love the flowers? Wow, I love them too! Can I ask you a question?");
    AddCondition("qpg","=",1);
    AddConsequence("qpg",2);
    AddTraderTrigger("yes","Oh you like them too? That is so nice to hear. May I ask you a question?");
    AddCondition("qpg","=",1);
    AddConsequence("qpg",2);
    AddTraderTrigger("no","Oh, pity. You should look at them closely, their colors, their scent, it's a unique sensation.");
    AddCondition("qpg","=",1);
    AddConsequence("qpg",0);
-- Queststatus = 2
    AddTraderTrigger("ask","Did you ever see a Night Angels Blossom?");
    AddCondition("qpg","=",2);
    AddConsequence("qpg",3);
    AddTraderTrigger("yes","Have you ever seen a Night Angels Blossom?");
    AddCondition("qpg","=",2);
    AddConsequence("qpg",3);
    AddTraderTrigger("of course","#me smiles before she inquires, 'Have you ever seen the lovely Night Angels Blossom?'");
    AddCondition("qpg","=",2);
    AddConsequence("qpg",3);
    AddTraderTrigger("sure","#me smiles before she inquires, 'Have you ever seen the lovely Night Angels Blossom?'");
    AddCondition("qpg","=",2);
    AddConsequence("qpg",3);
    AddTraderTrigger("no","Sorry then, I won't disturb you.");
    AddCondition("qpg","=",2);
-- Queststatus = 3
    AddTraderTrigger("many times","Oh that is so nice to hear. Do you think you'll be able to bring me one?");
    AddCondition("qpg","=",3);
    AddConsequence("qpg",4);
    AddTraderTrigger("yes","Really? You have seen it? Would you be kind enough if you brought me one?");
    AddCondition("qpg","=",3);
    AddConsequence("qpg",4);
    AddTraderTrigger("once","You've seen it once? A rare flower, isn't it? Do you think you'll be able to bring me one?");
    AddCondition("qpg","=",3);
    AddConsequence("qpg",4);
    AddTraderTrigger("of course","That's lovely. Would you be able to bring me one please?");
    AddCondition("qpg","=",3);
    AddConsequence("qpg",4);
    AddTraderTrigger("no","Oh, what a pity. You see, my biggest wish is to see and experience the scent of that flower.");
    AddCondition("qpg","=",3);
    AddConsequence("qpg",5);
    AddTraderTrigger("never","#me frowns then, before she says, 'A pity. You know, my biggest wish is to see the Night Angels Blossom.'");
    AddCondition("qpg","=",3);
    AddConsequence("qpg",5);
    AddTraderTrigger("saw","That is very nice but...I would really wish to see one. Can you bring me one, please?");
    AddCondition("qpg","=",3);
    AddConsequence("qpg",4);
    AddTraderTrigger("seen","Really? You've seen it? Could you bring me one, please?");
    AddCondition("qpg","=",3);
    AddConsequence("qpg",4);
    AddTraderTrigger("why","My mother used to tell me stories about this wonderful flower. But now she passed out, and I have no memories of her. The flower can server as one.");
    AddCondition("qpg","=",3);
-- Queststatus = 4
    AddTraderTrigger("yes","#me smiles widely suddenly before she says, 'You are too kind. I will eagerly wait to see it.'");
    AddCondition("qpg","=",4);
    AddConsequence("qpg",6);
    AddTraderTrigger("sure","You are too kind. I will wait for you to bring it.");
    AddCondition("qpg","=",4);
    AddConsequence("qpg",6);
    AddTraderTrigger("of course","I am so glad you will. Thank you. I will wait patiently.");
    AddCondition("qpg","=",4);
    AddConsequence("qpg",6);
    AddTraderTrigger("will try","Oh please do try. I will be so grateful if you did.");
    AddCondition("qpg","=",4);
    AddConsequence("qpg",6);
    AddTraderTrigger("no","#me frowns and lowers her head before she says, 'Oh, I understand. I would have loved to see it.'");
    AddCondition("qpg","=",4);
    AddConsequence("qpg",7);
    AddTraderTrigger("I have flower","What? You have the Night Angels Blossom?");
    AddCondition("qpg","=",4);
    AddConsequence("qpg",8);
    AddTraderTrigger("I have it","You mean, the Night Angels Blossom? You have it?");
    AddCondition("qpg","=",4);
    AddConsequence("qpg",8);
-- Queststatus = 5
    AddTraderTrigger("seen","What? Have I understood well? You've seen the Night Angels Blossom?");
    AddCondition("qpg","=",5);
    AddConsequence("qpg",3);
    AddTraderTrigger("saw","Have I heard well? Did you see the Night Angels Blossom?");
    AddCondition("qpg","=",5);
    AddConsequence("qpg",3);
    AddTraderTrigger("I have flower","What? You have the Night Angels Blossom? Can you give it to me?");
    AddCondition("qpg","=",5);
    AddConsequence("qpg",8);
    AddTraderTrigger("I have it","You mean, the Night Angels Blossom? You have it? May I take it?");
    AddCondition("qpg","=",5);
    AddConsequence("qpg",8);
-- Queststatus = 6
    AddTraderTrigger("hello","Hello again! Have you brought the Night Angels Blossom?");
    AddCondition("qpg","=",6);
    AddConsequence("qpg",8);
    AddTraderTrigger("greet","Ah it's you! The flower? Have you brought it?");
    AddCondition("qpg","=",6);
    AddConsequence("qpg",8);
    AddTraderTrigger("I have flower","What? You have the Night Angels Blossom? Can you give it to me please?");
    AddCondition("qpg","=",6);
    AddConsequence("qpg",8);
    AddTraderTrigger("I brought flower","You brought the flower? Really? Can I take it please?");
    AddCondition("qpg","=",6);
    AddConsequence("qpg",8);
-- Queststatus = 7
    AddTraderTrigger("hello","#me speaks with a gloomy, unenthusiastic voice, 'Hello.'");
    AddCondition("qpg","=",7);
    AddTraderTrigger("greet","#me shows a lack of enthusiasm as she speaks, 'Greetings.'");
    AddCondition("qpg","=",7);
    AddTraderTrigger("I have flower","#me blinks and lifts her eyebrows, 'What? You have the flower? Can I see it?'");
    AddCondition("qpg","=",7);
    AddConsequence("qpg",8);
    AddTraderTrigger("I brought flower","#me blinks and raises her eyebrows, 'You brought the flower? Really? Can I see it?");
    AddCondition("qpg","=",7);
    AddConsequence("qpg",8);
-- Queststatus = 8
    AddTraderTrigger("yes","Wow. This is the magnificent Night Angels Blossom. It will remind me of my passed away mother. Here, take these bottles for your troubles. Thank you.");
    AddConsequence("deleteitem",138,1);
    AddConsequence("item",1316,2,333,0);
    AddCondition("item",138,"all",">=",1);
    AddCondition("qpg","=",8);
    AddConsequence("qpg",10);
    AddTraderTrigger("sure","Wow. This is the magnificent Night Angels Blossom. It will remind me of my passed away mother. Here, take these bottles for your troubles. Thank you.");
    AddConsequence("deleteitem",138,1);
    AddConsequence("item",1316,2,333,0);
    AddCondition("item",138,"all",">=",1);
    AddCondition("qpg","=",8);
    AddConsequence("qpg",10);
    AddTraderTrigger("of course","Wow. This is the magnificent Night Angels Blossom. It will remind me of my passed away mother. Here, take these bottles for your troubles. Thank you.");
    AddConsequence("deleteitem",138,1);
    AddConsequence("item",1316,2,333,0);
    AddCondition("item",138,"all",">=",1);
    AddCondition("qpg","=",8);
    AddConsequence("qpg",10);
    AddTraderTrigger("yes","So? Where is it? Don't lie to me!");
    AddCondition("qpg","=",8);
    AddConsequence("qpg",6);
    AddTraderTrigger("sure","You don't have it! Do not lie!");
    AddCondition("qpg","=",8);
    AddConsequence("qpg",6);
    AddTraderTrigger("of course","Lies! You have none.");
    AddCondition("qpg","=",8);
    AddConsequence("qpg",6);
    AddTraderTrigger("no","A pity. I will continue to wait.");
    AddCondition("qpg","=",8);
    AddConsequence("qpg",6);
-- NPC DESCRIPTION
    AddTraderTrigger("#me examine","#me looks in her mid 20s, with dark orange hair reaching just below her shoulders, brown eyes and freckles on her cheek.");
    AddTraderTrigger("#me examine clothes","#me is wearing a simple white dress, decorated with small pink circles.");
-- SHOUT
    AddTraderTrigger("#s","Ooww! Would you mind not shouting so loud?");
-- GREETINGS/GOODBYES - known person
    AddTraderTrigger("hello","Hello again, Sir %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","male");
    AddTraderTrigger("hello","Hello again, Lady %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","female");
    AddTraderTrigger("greet","Greetings Sir %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","male");
    AddTraderTrigger("greet","Greetings Lady %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","female");
    AddTraderTrigger("farewell","Farewell to you and take care. Sir %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","male");
    AddTraderTrigger("farewell","Farewell to you and stay safe. Lady %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","female");
    AddTraderTrigger("see you","Be well, Sir %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","male");
    AddTraderTrigger("see you","See you another time, Lady %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","female");
    AddTraderTrigger("good night","Have a good night and sleep well, Sir %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","male");
    AddTraderTrigger("good night","Have a good night, Lady %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","female");
    AddTraderTrigger("hello","Hello again, Sir %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","male");
    AddTraderTrigger("hello","Hello again, Lady %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","female");
    AddTraderTrigger("greet","Greetings Sir %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","male");
    AddTraderTrigger("greet","Greetings Lady %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","female");
    AddTraderTrigger("farewell","Farewell to you and take care. Sir %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","male");
    AddTraderTrigger("farewell","Farewell to you and stay safe. Lady %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","female");
    AddTraderTrigger("see you","Be well, Sir %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","male");
    AddTraderTrigger("see you","See you another time, Lady %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","female");
    AddTraderTrigger("good night","Have a good night and sleep well, Sir %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","male");
    AddTraderTrigger("good night","Have a good night, Lady %CHARNAME");
    AddCondition("state","=",1);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","female");
    AddTraderTrigger("hello","Hello again, %CHARNAME");
    AddCondition("state","=",1);
    AddTraderTrigger("greet","Greetings %CHARNAME");
    AddCondition("state","=",1);
    AddTraderTrigger("see you","Be well %CHARNAME");
    AddCondition("state","=",1);
    AddTraderTrigger("good night","Have a good night, %CHARNAME");
    AddCondition("state","=",1);
    AddTraderTrigger("how are you","I am fine, thank you.");
    AddCondition("state","=",1);
-- GREETINGS/GOODBYES - known person (no sir)
    AddTraderTrigger("hello","Hello %CHARNAME. Nice to see you again.");
    AddCondition("state","=",2);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","male");
    AddTraderTrigger("greet","Greetings %CHARNAME. It is always nice seeing you.");
    AddCondition("state","=",2);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","male");
    AddTraderTrigger("farewell","Farewell %CHARNAME, and come talk to me again soon.");
    AddCondition("state","=",2);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","male");
    AddTraderTrigger("see you","See you soon %CHARNAME");
    AddCondition("state","=",2);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","male");
    AddTraderTrigger("good night","Have a good night, %CHARNAME");
    AddCondition("state","=",2);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","male");
    AddTraderTrigger("hello","Hello %CHARNAME. Nice to see you again.");
    AddCondition("state","=",2);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","male");
    AddTraderTrigger("greet","Greetings %CHARNAME. It is always nice seeing you.");
    AddCondition("state","=",2);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","male");
    AddTraderTrigger("farewell","Farewell %CHARNAME, and come talk to me again soon.");
    AddCondition("state","=",2);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","male");
    AddTraderTrigger("see you","See you soon %CHARNAME");
    AddCondition("state","=",2);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","male");
    AddTraderTrigger("good night","Have a good night, %CHARNAME");
    AddCondition("state","=",2);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","male");
-- GREETINGS/GOODBYES - unknown person
    AddTraderTrigger("greet","Greetings good sir.");
    AddCondition("race",CCharacter.human);
    AddCondition("sex","male");
    AddTraderTrigger("greet","Greetings to you, ma'am.");
    AddCondition("race",CCharacter.human);
    AddCondition("sex","female");
    AddTraderTrigger("good night","Have a good night, sir.");
    AddCondition("race",CCharacter.human);
    AddCondition("sex","male");
    AddTraderTrigger("good night","Have a good night, madam.");
    AddCondition("race",CCharacter.human);
    AddCondition("sex","female");
    AddTraderTrigger("greet","Greetings good sir.");
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","male");
    AddTraderTrigger("greet","Greetings to you, ma'am.");
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","female");
    AddTraderTrigger("good night","Have a good night, sir.");
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","male");
    AddTraderTrigger("good night","Have a good night, madam.");
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","female");
    AddTraderTrigger("hello","Hello to you.");
    AddTraderTrigger("greet","Greetings to you.");
    AddTraderTrigger("farewell","Farewell to you and take care.");
    AddTraderTrigger("bye","Goodbye and be well.");
    AddTraderTrigger("see you","Goodbye.");
    AddTraderTrigger("good day","And good day to you too.");
    AddTraderTrigger("good night","Have a good night.");
-- INTRODUCTION PHRASES
    AddTraderTrigger("my name is","It is a real pleasure to meet you, sir %CHARNAME");
    AddConsequence("state",1);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","male");
    AddTraderTrigger("is my name","#me curtsies politely as she says, 'It is my pleasure, sir %CHARNAME.'");
    AddConsequence("state",1);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","male");
    AddTraderTrigger("no sir","#me blushes a bit, then says, 'Excuse me. I'll just say %CHARNAME then.'");
    AddConsequence("state",2);
    AddCondition("race",CCharacter.human);
    AddCondition("sex","male");
    AddTraderTrigger("my name is","It is a real pleasure to meet you, sir %CHARNAME");
    AddConsequence("state",1);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","male");
    AddTraderTrigger("is my name","#me curtsies politely as she says, 'It is my pleasure, sir %CHARNAME.'");
    AddConsequence("state",1);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","male");
    AddTraderTrigger("no sir","#me blushes a bit, then says, 'Excuse me. I'll just say %CHARNAME then.'");
    AddConsequence("state",2);
    AddCondition("race",CCharacter.elf);
    AddCondition("sex","male");
    AddTraderTrigger("my name is","It is a pleasure to meet you, %CHARNAME");
    AddConsequence("state",1);
    AddTraderTrigger("is my name","It is my pleasure to meet you, %CHARNAME'");
    AddConsequence("state",1);
    AddTraderTrigger("who [a']+re you","I am %NPCNAME. What is your name?");
    AddTraderTrigger("who might you be","My name is %NPCNAME. And you might be?");
    AddTraderTrigger("your name","My name is %NPCNAME. What is your name?");
-- HELP
    AddTraderTrigger("help","[Game Help]: ((This is a NPC, you can talk to them just like other player characters. NPCs will react to keywords like 'Hello', so listen closely to what they say.))");
    AddTraderTrigger("hilfe","[Game Help]: ((Das ist ein NPC, du kannst mit ihnen sprechen wie mit anderen Spielercharakteren. NPCs werden auf Schl�sselw�rter wie 'Hallo' reagieren, also achte gut auf das was sie dir sagen.))");
-- GENERAL
    AddTraderTrigger("I[ a']+m new","Nice to meet you, then. I am %NPCNAME, what is your name?");
    AddTraderTrigger("newbie","#w((A newbie? Welcome! I am an NPC. I cannot really help you, but other players can. Please remember to mark OOC talk in double brackets.))");
    AddTraderTrigger("n[0O]b","#w((A newbie? Welcome! I am an NPC. I cannot really help you, but other players can. Please remember to mark OOC talk in double brackets.))");
    AddTraderTrigger("how are you","I am doing well, thank you.");
-- JOB
    AddTraderTrigger("your job","I...sometimes work as a druid. I study the plants, especially the flowers. Aren't they lovely?");
    AddConsequence("qpg",1);
    AddTraderTrigger("what do you","Sometimes I study the plants, or better the flowers. Don't you find them lovely?");
    AddConsequence("qpg",1);
    AddTraderTrigger("what you doing","I'm just observing the flowers. Aren't they pretty?");
    AddConsequence("qpg",1);
-- QUEST STARTERS
    AddTraderTrigger("you like flowers","Yes, I love flowers. They are the passion of my life. Don't you like them too?");
    AddConsequence("qpg",1);
    AddTraderTrigger("i like flowers","You like flowers too? That is so lovely. May I ask you a question then?");
    AddConsequence("qpg",2);
    AddTraderTrigger("i love flowers","You love the flowers? Really? I love them too! Then may I ask you a question?");
    AddConsequence("qpg",2);
    AddTraderTrigger("flowers","What? You mentioned flowers? Do you like them?");
    AddConsequence("qpg",1);
    -- ********* END DYNAMIC PART ********
    TradSpeakLang={0,1};
    TradStdLang=0;
    
    increaseLangSkill(TradSpeakLang)
    thisNPC.activeLanguage=TradStdLang;
    
end

function nextCycle()  -- ~10 times per second
    initializeNpc();
    SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if BasicNPCChecks(originator,2) then
        if LangOK(originator,TradSpeakLang) then
            TellSmallTalk(message,originator);
        else
            Confused(
               "#me sieht dich leicht verwirrt an",
               "#me looks at you a little confused"
            );
        end
    end
end
