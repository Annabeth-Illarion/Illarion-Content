-- INSERT INTO npc VALUES (nextval('npc_seq'),halfing,-371,74,0,2,false,'Henning Broomshrub','npc_henning_broomshrub.lua',0);

require("npcs.base.autonpcfunctions")

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

    -- ********* START DYNAMIC PART ********

    QuestID = 21;
    -- Help
   npcs.base.autonpcfunctions.AddTraderTrigger("Help","[Game Help] This NPC is a thimblerig. You can see him shuffling three nuts over and over again. Say 'I bet X coins' to play. Then, say 'right', 'left' or 'middle' to choose a nut.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Hilfe","[Spielhilfe] Dieser NPC ist ein H�tchenspieler. Er schiebt in einer Tour drei N��e hin und her. Sag 'Ich wette X M�nzen' um zu spielen. Sage dann 'rechts', 'links' oder 'mitte' um eine Nuss zu w�hlen.");
    -- General speech

   npcs.base.autonpcfunctions.AddTraderTrigger("Hello","Hiho! Time for gambling, right?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Greetings");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Be greeted");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hail");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Good day");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Good morning");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Good evening");
    npcs.base.autonpcfunctions.AddAdditionalText("Shh, want to play with me?");
    npcs.base.autonpcfunctions.AddAdditionalText("Hey, you look like somebody who is used to winning. Want to play?");
    npcs.base.autonpcfunctions.AddAdditionalText("Hello. Thimblerig is my business. Want to bet, stranger?");
    npcs.base.autonpcfunctions.AddTraderTrigger("Guten Tag","Hiho! Zeit zum Zocken, nicht wahr?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Guten Abend");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Mahlzeit");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Tach");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Moin");
    npcs.base.autonpcfunctions.AddAdditionalText("Shh, willst du mit mir spielen?");
    npcs.base.autonpcfunctions.AddAdditionalText("Hey, du siehtst aus wie jemand, der gerne gewinnt. Willst du wetten?");
    npcs.base.autonpcfunctions.AddAdditionalText("Hallo. Das H�tchenspiel ist mein Handwerk. Willst du was setzen, Fremder?");
    npcs.base.autonpcfunctions.AddTraderTrigger("Hiho","Hiho! Time for gambling, right?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hallo");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hey");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Greebas");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Greebs");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("Shh, want to play with me?");
    npcs.base.autonpcfunctions.AddAdditionalText("Hey, you look like somebody who is used to winning. Want to play?");
    npcs.base.autonpcfunctions.AddAdditionalText("Hello. Thimblerig is my business. Want to bet, stranger?");
    npcs.base.autonpcfunctions.AddTraderTrigger("Hiho","Hiho! Zeit zum Zocken, nicht wahr?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hallo");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hey");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Greebas");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Greebs");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("Shh, willst du mit mir spielen?");
    npcs.base.autonpcfunctions.AddAdditionalText("Hey, du siehtst aus wie jemand, der gerne gewinnt. Willst du wetten?");
    npcs.base.autonpcfunctions.AddAdditionalText("Hallo. Das H�tchenspiel ist mein Handwerk. Willst du was setzen, Fremder?");
    npcs.base.autonpcfunctions.AddTraderTrigger("Farewell","Yes, yes, and come back with more money!");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Good bye");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Bye");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Fare thy well");
    npcs.base.autonpcfunctions.AddAdditionalText("Bye! May your purse fill again.");
    npcs.base.autonpcfunctions.AddAdditionalText("Goodbye and please don't tell what I am doing here.");
    npcs.base.autonpcfunctions.AddAdditionalText("Ronagan may bless you.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Tsch��","Ja, ja, und komm mit mehr Geld zur�ck.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Tsch�ss");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Wiedersehen");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Gehabt euch wohl");
    npcs.base.autonpcfunctions.AddAdditionalText("Auf wiedersehen. Und m�ge sich deine B�rse wieder mit Gold f�llen.");
    npcs.base.autonpcfunctions.AddAdditionalText("Tsch��! Erz�hl bitte nichts von dem, was ich hier mache.");
    npcs.base.autonpcfunctions.AddAdditionalText("M�ge Ronagan dich segnen.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Ciao","Yes, yes, and come back with more money!");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Adieu");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Au revoir");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("Bye! May your purse fill again.");
    npcs.base.autonpcfunctions.AddAdditionalText("Goodbye and please don't tell what I am doing here.");
    npcs.base.autonpcfunctions.AddAdditionalText("Ronagan may bless you.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Ciao","Ja, ja, und komm mit mehr Geld zur�ck.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Adieu");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Au revoir");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("Auf wiedersehen. Und m�ge sich deine B�rse wieder mit Gold f�llen.");
    npcs.base.autonpcfunctions.AddAdditionalText("Tsch��! Erz�hl bitte nichts von dem, was ich hier mache.");
    npcs.base.autonpcfunctions.AddAdditionalText("M�ge Ronagan dich segnen.");
    -- Catching typical NPC phrases
    npcs.base.autonpcfunctions.AddTraderTrigger("what sell","Do I look like a trader!?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("What buy");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("list wares");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("price of");
    npcs.base.autonpcfunctions.AddAdditionalText("Oh, I forgot my vendor's tray at home. Want to play a game instead?");
    npcs.base.autonpcfunctions.AddAdditionalText("You must be kidding me. I am not a huckster!");
    npcs.base.autonpcfunctions.AddTraderTrigger("was verkauf","Sehe ich aus wie ein H�ndler?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("was kauf");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("warenliste");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("preis von");
    npcs.base.autonpcfunctions.AddAdditionalText("Oh, gerade heute hab ich meinen Bauchladen zuhause vergessen. Willst du nicht viel lieber ein Spiel spielen?");
    npcs.base.autonpcfunctions.AddAdditionalText("Willst du mich ver�ppeln? Ich bin kein H�ker!");
    npcs.base.autonpcfunctions.AddTraderTrigger("quest","Let me see... I can send you on an epic quest to choose the right nut! Care to bet?");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("No quest today, my money has gone away. The nuts stand forlorn, a symbol of the dawn.");
    npcs.base.autonpcfunctions.AddAdditionalText("You are the hero, I am the thimblerig!");
    npcs.base.autonpcfunctions.AddTraderTrigger("quest","Lass mich mal �berlegen... Ich kann dich auf die epische Suche nach der richtigen Nuss schicken. Hast du Lust, zu wetten?");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("Leider hab ich keine Abenteuer im Angebot. Wie w�rs mit einer kleinen Wette?");
    npcs.base.autonpcfunctions.AddAdditionalText("Du bist der Held, ich der H�tchenspieler!");
    npcs.base.autonpcfunctions.AddTraderTrigger("task","Let me see... I can send you on an epic quest to choose the right nut! Care to bet?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("adventure");
    npcs.base.autonpcfunctions.AddAdditionalText("No quest today, my money has gone away. The nuts stand forlorn, a symbol of the dawn.");
    npcs.base.autonpcfunctions.AddAdditionalText("You are the hero, I am the thimblerig!");
    npcs.base.autonpcfunctions.AddTraderTrigger("Aufgabe","Lass mich mal �berlegen... Ich kann dich auf die epische Suche nach der richtigen Nuss schicken. Hast du Lust, zu wetten?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Abenteuer");
    npcs.base.autonpcfunctions.AddAdditionalText("Leider hab ich keine Abenteuer im Angebot. Wie w�rs mit einer kleinen Wette?");
    npcs.base.autonpcfunctions.AddAdditionalText("Du bist der Held, ich der H�tchenspieler!");
    npcs.base.autonpcfunctions.AddTraderTrigger("tell something","I don't tell no nothing, no!");
    npcs.base.autonpcfunctions.AddAdditionalText("Who are you anyway, the town guard?");
    npcs.base.autonpcfunctions.AddAdditionalText("I don't cheat! I would never, would I...?");
    npcs.base.autonpcfunctions.AddTraderTrigger("erz�hl was","Ich erz�hl hier gar nichts.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("erz�hl etwas");
    npcs.base.autonpcfunctions.AddAdditionalText("Wer bist du, einer aus Cadomyr?");
    npcs.base.autonpcfunctions.AddAdditionalText("Ich betr�ge nicht! Ich doch nicht...");
    -- Small talk
    npcs.base.autonpcfunctions.AddTraderTrigger("Galmair","Galmair is a nice place for a thimblerig like me. You know, few guards, lots of money... But somehow, I prefer this tavern.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("There is no place like Galmair. But this tavern is also a good place for gambling, isn't it?");
    npcs.base.autonpcfunctions.AddTraderTrigger("Greenbriar","Galmair ist schon ein netter Fleck f�r einen H�tchenspieler wie mich. Du wei�t schon, wenige Wachen, viel Geld... Aber ich bevorzuge irgendwie diese Taverne.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("Es geht doch nichts �ber Galmair. Aber diese Taverne ist genau der richtige Ort f�r ein Spielchen, nicht wahr?");
    npcs.base.autonpcfunctions.AddTraderTrigger("townguard","Guards? Uhm, I better be goin'...");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("guard");
    npcs.base.autonpcfunctions.AddAdditionalText("#me gathers his three nuts and grubs the money, hiding it.");
    npcs.base.autonpcfunctions.AddAdditionalText("Oh, a thug just left the tavern, maybe you catch him when you leave now.");
    npcs.base.autonpcfunctions.AddAdditionalText("#me whistles innocently.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Stadtwache","Wachen? Uhm, ich geh dann jetzt besser...");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Wache");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("W�chter");
    npcs.base.autonpcfunctions.AddAdditionalText("#me rafft seine drei N��e und etwas Geld zusammen und versteckt es schnell.");
    npcs.base.autonpcfunctions.AddAdditionalText("Oh, ein Dieb ist eben gerade zur T�r heraus, wenn ihr euch beeilt, erwischt ihr ihn noch.");
    npcs.base.autonpcfunctions.AddAdditionalText("#me pfeift unschuldig.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Tavern","Welcome to the Hostler Junction Inn.");
    npcs.base.autonpcfunctions.AddAdditionalText("Indeed, this is a tavern. So, how about we do what is done best in a tavern: Gambling!");
    npcs.base.autonpcfunctions.AddAdditionalText("A nice name for a tavern: Hostler Junction Inn. Why don't you make me happy and do some thimblerig with me?");
    npcs.base.autonpcfunctions.AddTraderTrigger("Taverne","Willkommen im Hostler Junction Inn.");
    npcs.base.autonpcfunctions.AddAdditionalText("In der Tat, dies ist eine Taverne. Also, warum machen wir nicht, was man am besten in einer Taverne macht: Zocken!");
    npcs.base.autonpcfunctions.AddAdditionalText("Ein netter Name f�r eine Taverne: Hostler Junction Inn. Warum machst du mich nicht zu einem gl�cklichen Halbling und spielst das H�tchenspiel mit mir?");
    npcs.base.autonpcfunctions.AddTraderTrigger("Hostler","Welcome to the Hostler Junction Inn.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Bar");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("Indeed, this is a tavern. So, how about we do what is done best in a tavern: Gambling!");
    npcs.base.autonpcfunctions.AddAdditionalText("A nice name for a tavern: Hostler Junction Inn. Why don't you make me happy and do some thimblerig with me?");
    npcs.base.autonpcfunctions.AddTraderTrigger("Happy Halfling","Willkommen im Hostler Junction Inn.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Bar");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("In der Tat, dies ist eine Taverne. Also, warum machen wir nicht, was man am besten in einer Taverne macht: Zocken!");
    npcs.base.autonpcfunctions.AddAdditionalText("Ein netter Name f�r eine Taverne: Hostler Junction Inn. Warum machst du mich nicht zu einem gl�cklichen Halbling und spielst das H�tchenspiel mit mir?");
    npcs.base.autonpcfunctions.AddTraderTrigger("Beer","I don't serve here, I am just a guest. A guest with three nuts and a ball.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Drink");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Food");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Dish");
    npcs.base.autonpcfunctions.AddAdditionalText("Get your food yourself.");
    npcs.base.autonpcfunctions.AddAdditionalText("Hmm?");
    npcs.base.autonpcfunctions.AddAdditionalText("What do you want from me?");
    npcs.base.autonpcfunctions.AddTraderTrigger("Bier","Ich serviere hier nicht. Ich bin auch nur ein Gast. Ein Gast mit drei N��en und einer Kugel.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Getr�nk");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Trank");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Speise");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Essen");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Gericht");
    npcs.base.autonpcfunctions.AddAdditionalText("Hol dir deinen Fra� alleine.");
    npcs.base.autonpcfunctions.AddAdditionalText("Hmm?");
    npcs.base.autonpcfunctions.AddAdditionalText("Was willst du von mir?");
    npcs.base.autonpcfunctions.AddTraderTrigger("Halfling","Without a doubt, I am a halfling. And a poor one.");
    npcs.base.autonpcfunctions.AddAdditionalText("What is it you want from me?");
    npcs.base.autonpcfunctions.AddAdditionalText("Sure, I am a halfling, or do you see me having a beard and wielding an axe?");
    npcs.base.autonpcfunctions.AddTraderTrigger("Halbling","Zweifelsohne bin ich ein Halbling. Und dazu noch ein armer.");
    npcs.base.autonpcfunctions.AddAdditionalText("Was genau m�chtest du von mir?");
    npcs.base.autonpcfunctions.AddAdditionalText("Klar bin ich ein Halbling, oder hab ich etwa einen Bart und trag 'ne Axt?");
    npcs.base.autonpcfunctions.AddTraderTrigger("Halfer","Without a doubt, I am a halfling. And a poor one.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hobbit");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("What is it you want from me?");
    npcs.base.autonpcfunctions.AddAdditionalText("Sure, I am a halfling, or do you see me having a beard and wielding an axe?");
    npcs.base.autonpcfunctions.AddTraderTrigger("Halfer","Zweifelsohne bin ich ein Halbling. Und dazu noch ein armer.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Hobbit");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("Was genau m�chtest du von mir?");
    npcs.base.autonpcfunctions.AddAdditionalText("Klar bin ich ein Halbling, oder hab ich etwa einen Bart und trag 'ne Axt?");
    npcs.base.autonpcfunctions.AddTraderTrigger("cheater","Well, ahm, uhm...");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("cheat");
    npcs.base.autonpcfunctions.AddAdditionalText("I swear, I don't cheat! Well, apart from that dwarf back then, he just had too much gold.");
    npcs.base.autonpcfunctions.AddAdditionalText("No cheating here, three nuts, one ball.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Betr�ger","Nunja, �h, �h...");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Betrug");
    npcs.base.autonpcfunctions.AddAdditionalText("Ich schw�r dir, ich betr�ge niemals! Naja, au�er diesen einen Zwerg damals, der hatte einfach zu viel Gold.");
    npcs.base.autonpcfunctions.AddAdditionalText("Hier geht alles mit rechten Dingen zu. Drei N��e, eine Kugel.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Brendan Mason","What do you know about good ol' Brandy? Nah, don't tell me, let's play instead.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Brendan");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddTraderTrigger("Brendan Mason","Was wei�t du denn schon vom guten alten Brandy? Nah, erz�hls mir gar nicht erst, lass uns spielen.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Brendan");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddTraderTrigger("Dwarf","Dwarves have lots of gold, don't they? I wish I'd be a dwarf...");
    npcs.base.autonpcfunctions.AddTraderTrigger("Zwerg","Zwerge haben viel Gold, nicht wahr? Ich w�nschte, ich w�re ein Zwerg...");
    npcs.base.autonpcfunctions.AddTraderTrigger("How are you","That is none of your business.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("How feel");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("How do you do");
    npcs.base.autonpcfunctions.AddAdditionalText("I would feel way better with your money in my purse.");
    npcs.base.autonpcfunctions.AddAdditionalText("I feel like playing. Time for some thimblerig?");
    npcs.base.autonpcfunctions.AddTraderTrigger("Wie geht","Das geht dich nichts an.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Wie f�hlst");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Wie ist es ergangen");
    npcs.base.autonpcfunctions.AddAdditionalText("Es w�rde mir weit besser gehen mit deinem Geld in meiner Tasche.");
    npcs.base.autonpcfunctions.AddAdditionalText("Mir ist nach Zocken. Zeit f�r ein kleines H�tchenspiel?");
    npcs.base.autonpcfunctions.AddTraderTrigger("your name","Henning, yes, that's me. My friends call me Henni.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("who are you");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("who art thou");
    npcs.base.autonpcfunctions.AddAdditionalText("Who wants to know? Nevermind, let's play!");
    npcs.base.autonpcfunctions.AddAdditionalText("Well, I am Henning. Are you happy now?");
    npcs.base.autonpcfunctions.AddTraderTrigger("dein name","Henning, ja, das bin ich. Meine Freunde nennen mich Henni.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wer bist du");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wer seid ihr");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wie hei�t");
    npcs.base.autonpcfunctions.AddAdditionalText("Wer will das wissen? Ach, was solls, lass uns spielen.");
    npcs.base.autonpcfunctions.AddAdditionalText("Also ich bin Henning. Bist du jetzt gl�cklich?");
    npcs.base.autonpcfunctions.AddTraderTrigger("Ronagan","Hail Ronagan!");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("My religion is called gold.");
    npcs.base.autonpcfunctions.AddAdditionalText("How come Ronagan has no temple around here...? He could not lift it as he tried to steal one!");
    npcs.base.autonpcfunctions.AddTraderTrigger("Ronagan","Lobet Ronagan!");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("Meine Religion hei�t Gold.");
    npcs.base.autonpcfunctions.AddAdditionalText("Warum hat Ronagan keinen in dieser Gegend? ... Er hat ihn nicht anheben k�nnen, als er versucht hat einen zu stehlen!");
    -- Thimblerig!

   npcs.base.autonpcfunctions.AddTraderTrigger("silver","I play for copper coins, only.");
    npcs.base.autonpcfunctions.AddAdditionalText("I don't gamble for silver coins, but feel free to bet some copper coins.");
    npcs.base.autonpcfunctions.AddAdditionalText("Since you're winning anyway, please bet copper coins. I will be broke otherwise!");
    npcs.base.autonpcfunctions.AddTraderTrigger("silber","Ich spiele nur um Kupferm�nzen.");
    npcs.base.autonpcfunctions.AddAdditionalText("Ich spiele nicht um Silber, aber setz' doch ein paar Kupferm�nzen.");
    npcs.base.autonpcfunctions.AddAdditionalText("Da du ja eh gewinnst, setze bitte Kupferm�nzen. Sonst geh' ich noch pleite!");
    npcs.base.autonpcfunctions.AddTraderTrigger("gold","I play for copper coins, only.");
    npcs.base.autonpcfunctions.AddCondition("lang","english");
    npcs.base.autonpcfunctions.AddAdditionalText("I don't gamble for gold coins, but feel free to bet some copper coins.");
    npcs.base.autonpcfunctions.AddAdditionalText("Since you're winning anyway, please bet copper coins. I will be broke otherwise!");
    npcs.base.autonpcfunctions.AddTraderTrigger("gold","Ich spiele nur um Kupferm�nzen.");
    npcs.base.autonpcfunctions.AddCondition("lang","german");
    npcs.base.autonpcfunctions.AddAdditionalText("Ich spiele nicht um Gold, aber setz' doch ein paar Kupferm�nzen.");
    npcs.base.autonpcfunctions.AddAdditionalText("Da du ja eh gewinnst, setze bitte Kupferm�nzen. Sonst geh' ich noch pleite!");
    npcs.base.autonpcfunctions.AddTraderTrigger("rules","Thimblerig is simple. You say how much you  want to bet and I place a ball under one of three nuts. I shuffle the nuts and you choose the right one. You get twice the money you bet in case you can follow my hands!");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("thimblerig");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("gamble");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("play");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("playing");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("betting");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("gambling");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("game");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("nuts");
    npcs.base.autonpcfunctions.AddTraderTrigger("regeln","Das H�tchenspiel ist eigentlich ganz einfach. Du sagst mir, wie viel du setzen willst und ich verstecke eine Kugel unter einer von drei N��en. Ich mische dann die N��e und du w�hlst einfach die Richtige. Du bekommst deinen doppelten Einsatz wenn du meinen H�nden folgen kannst.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("H�tchenspiel");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("H�tchen");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wetten");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("spielen");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("zocken");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("spiel");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("spielchen");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("n�sse");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("n��e");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("Einsatz");

   npcs.base.autonpcfunctions.AddTraderTrigger("bet %NUMBER","You already betted, choose a nut: Left, middle or right?");
    npcs.base.autonpcfunctions.AddCondition("state","<>",0);
    npcs.base.autonpcfunctions.AddAdditionalText("You still have to choose a nut. Left, middle or maybe right?");
    npcs.base.autonpcfunctions.AddAdditionalText("I await your decision. Under which nut might the ball be hidden?");

   npcs.base.autonpcfunctions.AddTraderTrigger("bet %NUMBER","I don't play with you anymore.");
    npcs.base.autonpcfunctions.AddCondition("state","=",0);
    npcs.base.autonpcfunctions.AddCondition("qpg",">",14);
    npcs.base.autonpcfunctions.AddAdditionalText("You won too often, you cheater. I don't play with you.");
    npcs.base.autonpcfunctions.AddAdditionalText("Others want to play, too. So, next one.");

   npcs.base.autonpcfunctions.AddTraderTrigger("right","So, you want to play with me? How much do you bet?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("left");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("middle");
    npcs.base.autonpcfunctions.AddCondition("state","=",0);
    npcs.base.autonpcfunctions.AddAdditionalText("First, you have to bet, then I will shuffle the nuts.");
    npcs.base.autonpcfunctions.AddAdditionalText("We did not start playing, did we?");
    ------------------------to edit
   npcs.base.autonpcfunctions.AddTraderTrigger("bet %NUMBER","You don't even have %NUMBER coins.");
    npcs.base.autonpcfunctions.AddCondition("state","=",0);
    npcs.base.autonpcfunctions.AddCondition("money","<","%NUMBER");
    npcs.base.autonpcfunctions.AddAdditionalText("You should not bet more than you have.");
    npcs.base.autonpcfunctions.AddAdditionalText("Are you kiddin' me? Count your money!");
    npcs.base.autonpcfunctions.AddAdditionalText("Nice try, chap. Get your money before we play, right?");

   npcs.base.autonpcfunctions.AddTraderTrigger("bet %NUMBER","Nah, I don't gamble for so much.");
    npcs.base.autonpcfunctions.AddCondition("number",">",100);
   npcs.base.autonpcfunctions.AddAdditionalText("That's too much, I won't be able to pay you in case you win. And you might win!");
    npcs.base.autonpcfunctions.AddAdditionalText("I cannot accept such a high bet, sorry.");
    npcs.base.autonpcfunctions.AddAdditionalText("No way, chap! That's too much.");

   npcs.base.autonpcfunctions.AddTraderTrigger("bet %NUMBER","#me accepts your bet and places the ball under a nut. He shuffles the nuts and gestures you to choose one. You are pretty sure the ball is under the left one.");
    npcs.base.autonpcfunctions.AddConsequence("money","-","%NUMBER");
    npcs.base.autonpcfunctions.AddConsequence("state","=","%NUMBER");
    npcs.base.autonpcfunctions.AddAdditionalText("#me accepts your bet and places the ball under a nut. He shuffles the nuts and gestures you to choose one. You are pretty sure the ball is under the right one.");
    npcs.base.autonpcfunctions.AddAdditionalText("#me accepts your bet and places the ball under a nut. He shuffles the nuts and gestures you to choose one. You are pretty sure the ball is under the one in the middle.");
    npcs.base.autonpcfunctions.AddAdditionalText("#me accepts your bet and places the ball under a nut. He shuffles the nuts and gestures you to choose one. You have no clue where the ball is now.");
    npcs.base.autonpcfunctions.AddAdditionalText("#me accepts your bet and places the ball under a nut. He shuffles the nuts and gestures you to choose one. The ball might be anywhere, his hands were too fast for you.");


   npcs.base.autonpcfunctions.AddTraderTrigger("right","#me lifts the nut. You see... a ball! You won twice your bet.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("left");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("middle");
    npcs.base.autonpcfunctions.AddCondition("state","<>",0);
    npcs.base.autonpcfunctions.AddCondition("chance",33);
    npcs.base.autonpcfunctions.AddAdditionalText("We have a winner! Here, the ball was under your nut. Take your won money.");
    npcs.base.autonpcfunctions.AddAdditionalText("#me curses as he lifts the nut and a ball can be seen. You win twice your bet!");
    npcs.base.autonpcfunctions.AddConsequence("money","+",function( a ) return 2*state; end);
    npcs.base.autonpcfunctions.AddConsequence("state","=",0);
    npcs.base.autonpcfunctions.AddConsequence("qpg","+",1);

    npcs.base.autonpcfunctions.AddTraderTrigger("right","#me lifts the nut. There is no ball, so you lost your bet.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("left");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("middle");
    npcs.base.autonpcfunctions.AddCondition("state","<>",0);
    npcs.base.autonpcfunctions.AddAdditionalText("Bad luck today, chap. No ball under your nut, sorry. Your bet is mine.");
    npcs.base.autonpcfunctions.AddAdditionalText("#me lifts the nut with a grin. No ball is under it, so you've lost your bet");
    npcs.base.autonpcfunctions.AddAdditionalText("Oh, how sad, no ball under this nut. But maybe you'll have more luck next time?");
    npcs.base.autonpcfunctions.AddConsequence("state","=",0);
    npcs.base.autonpcfunctions.AddTraderTrigger("setze %NUMBER","Du hast doch schon gesetzt. W�hl' eine Nu�: Links, mitte oder vielleicht rechts?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wette %NUMBER");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("setz %NUMBER");
    npcs.base.autonpcfunctions.AddCondition("state","<>",0);
    npcs.base.autonpcfunctions.AddAdditionalText("Ich warte noch auf deine Wahl. Unter welche Nu� verbirgt sich wohl die Kugel?");
    npcs.base.autonpcfunctions.AddTraderTrigger("setze %NUMBER","Mit dir spiel ich nicht mehr!");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wette %NUMBER");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("setz %NUMBER");
    npcs.base.autonpcfunctions.AddCondition("state","=",0);
    npcs.base.autonpcfunctions.AddCondition("qpg",">",14);
    npcs.base.autonpcfunctions.AddAdditionalText("Du hast schon viel zu oft gewonnen, du Trickser. Mit dir spiel ich nicht.");
    npcs.base.autonpcfunctions.AddAdditionalText("Andere wollen auch mal spielen. Also, der n�chste bitte.");
    npcs.base.autonpcfunctions.AddTraderTrigger("setze %NUMBER","Du hast ja nichtmal %NUMBER M�nzen.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("wette %NUMBER");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("setz %NUMBER");
    npcs.base.autonpcfunctions.AddCondition("state","=",0);
    npcs.base.autonpcfunctions.AddCondition("money","<","%NUMBER");
    npcs.base.autonpcfunctions.AddAdditionalText("Du solltest nicht mehr setzen als du eigentlich hast.");
    npcs.base.autonpcfunctions.AddAdditionalText("Willst du mich ver�ppeln? Z�hl mal dein Geld!");
    npcs.base.autonpcfunctions.AddAdditionalText("Netter Versuch. Hol erstmal dein Geld, before wir spielen.");
    npcs.base.autonpcfunctions.AddTraderTrigger("setze %NUMBER","Nah, um so viel spiele ich nicht.");
    npcs.base.autonpcfunctions.AddCondition("number",">",100);
    npcs.base.autonpcfunctions.AddAdditionalText("Das ist zu viel. Ich k�nnte dich nicht auszahlen, solltest du gewinnen. Und du k�nntest gewinnnen!");
    npcs.base.autonpcfunctions.AddAdditionalText("So einen hohen Einsatz kann ich leider nicht aktzeptieren.");
    npcs.base.autonpcfunctions.AddAdditionalText("Nichts da, das ist zu viel.");
    npcs.base.autonpcfunctions.AddTraderTrigger("setze %NUMBER","#me nimmt deine Wette an und legt die Kugel unter eine Nu�. Er schiebt die N��e hin und her und deutet dir, eine zu w�hlen. Du bist ziemlich sicher, dass die Kugel unter der linken Nu� ist.");
    npcs.base.autonpcfunctions.AddConsequence("money","-","%NUMBER");
    npcs.base.autonpcfunctions.AddConsequence("state","=","%NUMBER");
    npcs.base.autonpcfunctions.AddAdditionalText("#me nimmt deine Wette an und legt die Kugel unter eine Nu�. Er schiebt die N��e hin und her und deutet dir, eine zu w�hlen. Du bist ziemlich sicher, dass die Kugel unter der rechten Nu� ist.");
    npcs.base.autonpcfunctions.AddAdditionalText("#me nimmt deine Wette an und legt die Kugel unter eine Nu�. Er schiebt die N��e hin und her und deutet dir, eine zu w�hlen. Du bist ziemlich sicher, dass die Kugel unter der mittleren Nu� ist.");
    npcs.base.autonpcfunctions.AddAdditionalText("#me nimmt deine Wette an und legt die Kugel unter eine Nu�. Er schiebt die N��e hin und her und deutet dir, eine zu w�hlen. Du hast keine Ahnung, wo die Kugel nun ist.");
    npcs.base.autonpcfunctions.AddAdditionalText("#me nimmt deine Wette an und legt die Kugel unter eine Nu�. Er schiebt die N��e hin und her und deutet dir, eine zu w�hlen. Die Kugel k�nnte �berall sein, so schnell waren seine H�nde.");
    npcs.base.autonpcfunctions.AddTraderTrigger("rechts","So, du willst also mit mir spielen? Wieviel setzt du denn?");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("links");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("mitte");
    npcs.base.autonpcfunctions.AddCondition("state","=",0);
    npcs.base.autonpcfunctions.AddAdditionalText("Erst mu�t du was setzen. Dann schiebe ich die N��e hin und her.");
    npcs.base.autonpcfunctions.AddAdditionalText("Wir haben noch nicht zu spielen angefangen, oder?");
    npcs.base.autonpcfunctions.AddTraderTrigger("rechts","#me hebt die Nu�. Du siehst... eine Kugel! Du hast deinen Einsatz verdoppelt.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("links");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("mitte");
    npcs.base.autonpcfunctions.AddCondition("state","<>",0);
    npcs.base.autonpcfunctions.AddCondition("chance",33);
    npcs.base.autonpcfunctions.AddAdditionalText("Wir haben einen Gewinner! Hier, die Kugel war unter deiner Nu�. Nimm dein gewonnenes Geld.");
    npcs.base.autonpcfunctions.AddAdditionalText("#me flucht als er die Nu� anhebt und eine Kugel zum Vorschein kommt. Du gewinnst deinen doppelten Einsatz.");
    npcs.base.autonpcfunctions.AddConsequence("money","+",function( a ) return 2*state; end);
    npcs.base.autonpcfunctions.AddConsequence("state","=",0);
    npcs.base.autonpcfunctions.AddConsequence("qpg","+",1);
    npcs.base.autonpcfunctions.AddTraderTrigger("rechts","#me hebt die Nu�. Es ist keine Kugel drunter, also hast du deinen Einsatz verloren.");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("links");
    npcs.base.autonpcfunctions.AddAdditionalTrigger("mitte");
    npcs.base.autonpcfunctions.AddCondition("state","<>",0);
    npcs.base.autonpcfunctions.AddAdditionalText("Kein Gl�ck heute, was? Keine Kugel unter dieser Nu�, dein Einsatz ist mein.");
    npcs.base.autonpcfunctions.AddAdditionalText("#me hebt die Kugel mit einem Grinsen. Keine Kugel ist drunter, also hast du deinen Einsatz verloren.");
    npcs.base.autonpcfunctions.AddAdditionalText("Oh, wie schade, keine Kugel unter dieser Nu�. Vielleicht hast du beim n�chsten mal mehr Gl�ck?");
    npcs.base.autonpcfunctions.AddConsequence("state","=",0);
    -- Last catch
    npcs.base.autonpcfunctions.AddTraderTrigger("Yes","Yes? Fine, what was the question again? Anyway, if you want to play, say how many coins you want to bet.");
    npcs.base.autonpcfunctions.AddTraderTrigger("Ja","Ja? Fein, was war nochmal die Frage? Ach, egal, wenn du wetten willst, sag einfach, wieviele M�nzen du setzen willst.");
    npcs.base.autonpcfunctions.AddTraderTrigger("No","No... what?");
    npcs.base.autonpcfunctions.AddAdditionalText("#me shrugs and replies: I don't quite understand...");
    npcs.base.autonpcfunctions.AddTraderTrigger("Nein","Nein... was?");
    npcs.base.autonpcfunctions.AddAdditionalText("#me zuckt mit den Schultern und erwidert: Ich versteh' nicht recht...");
    --DELETE THIS LINES ON REALSERVER!!!!!
    npcs.base.autonpcfunctions.AddTraderTrigger("debugging","Debugging - queststatus reset to 0");
    npcs.base.autonpcfunctions.AddConsequence("qpg","=",0);
    ---------------------------------------
    -- Cycletext
    npcs.base.autonpcfunctions.AddCycleText("#me schiebt gelangweilt drei N��e hin und her.","#me shuffels three nuts around, seeming rather bored.");
    npcs.base.autonpcfunctions.AddCycleText("#me pfeift vor sich hin.","#me whistles innocently.");
    npcs.base.autonpcfunctions.AddCycleText("#me z�hlt sein Geld nach und grinst","#me counts his money and grins.");
    npcs.base.autonpcfunctions.AddCycleText("#me sitzt vor einem Brett mit drei N��en darauf. Seine Finger spielen mit einer kleinen, grauen Kugel.","#me is sitting in front of a board. On the board are three nuts. He is playing around with a small, grey ball.");
    npcs.base.autonpcfunctions.AddCycleText("Shh, Lust auf ein Spiel?","Shh, want to play?");
    npcs.base.autonpcfunctions.AddCycleText("Psst, du, komm mal her. Ich kann dich reich machen.","Hush, you, come here. I can make you rich.");
    npcs.base.autonpcfunctions.AddCycleText("Zeit f�r die Kr�tenwanderung. Die Kr�ten wandern von euren in meinen Geldbeutel.","Time for a coin march from your purse to mine.");
    npcs.base.autonpcfunctions.AddCycleText("#me nimmt ein Schluck aus seinem Krug.","#me takes a sip from his mug.");
    npcs.base.autonpcfunctions.AddCycleText("Denn Geld regiert die Welt...","Money makes the world go round, the world go round...");
    npcs.base.autonpcfunctions.AddCycleText("#me summt vor sich hin.","#me hums silently.");
    npcs.base.autonpcfunctions.AddCycleText("Finger weg von meinen N�ssen!","Hands off my nuts!");
    npcs.base.autonpcfunctions.AddCycleText("#me hebt seine Augenklappe hoch und blickt in die Gegend.","#me lifts his patch and looks around.");

    -- ********* END DYNAMIC PART ********
    TradSpeakLang={0,6};
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

               npcs.base.autonpcfunctions.TellSmallTalk(message,originator);

      else
            npcs.base.autonpcfunctions.Confused(
               "#me sieht dich leicht verwirrt an",
               "#me looks at you a little confused"
            );
        end
    end
end

function lookAtNpc(Char, mode)
    if initLook==nil then
        output={};
        output[0]="Er hat ein schmutziges Gesicht und tr�gt eine lange Hose. �ber sein linkes Auge hat er eine Augenklappe.";
        output[1]="He has a dirty face and wears some long trousers. Over his left eye he has an patch.";
        initLook=1;
    end

    lang=Char:getPlayerLanguage();
    Char:sendCharDescription( thisNPC.id , output[lang] );
end