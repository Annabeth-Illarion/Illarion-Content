--Name:        Garabosch
--Race:        Dwarf
--Town:        Silverbrand
--Function:    Restricted trader
--Position:    x=110 y=-210 z=-3
--Facing:      South
--Last Update: 03/13/2008
--Update by:   Ardian

require("npcs.base.trader_functions")
require("npcs.base.functions")

function useNPC(user,counter,param)
    local lang=user:getPlayerLanguage();
    thisNPC:increaseSkill(1,"common language",100);
    if (lang==0) then thisNPC:talk(CCharacter.say, "Arrr! Was willst du? Verschwinde! Ich arbeite!") end
    if (lang==1) then thisNPC:talk(CCharacter.say, "Arrr! What did you want? Leave! I'm working!") end
end

function initializeNpc()
    npcs.base.functions.InitTalkLists()
    npcs.base.trader_functions.InitItemLists()

    thisNPC:increaseSkill(1,"common language",100);
    --------------------------------------------- *** EDIT BELOW HERE ***--------------------------------------
    --            EPr ,ID  ,Am   ,SPr,SA ,Qual ,Dura   ,Data,Catagory
    npcs.base.trader_functions.AddTraderItem( 10 ,2535,1000 ,2  ,500 ,{3}  ,{33}   ,0   ,0       ); -- iron ingots
    npcs.base.trader_functions.AddTraderItem( 10 ,2550,1000 ,2  ,500 ,{3}  ,{33}   ,0   ,0       ); -- copper ingots
    npcs.base.trader_functions.AddTraderItem(200 , 236, 500 ,50 ,200 ,{3}  ,{33}   ,0   ,0       ); -- gold ingots
    npcs.base.trader_functions.AddTraderItem( 60 ,  46, 500 ,6  ,100 ,{3}  ,{33}   ,0   ,0       ); -- rubin
    npcs.base.trader_functions.AddTraderItem( 60 , 197, 500 ,6  ,100 ,{3}  ,{33}   ,0   ,0       ); -- amethyst
    npcs.base.trader_functions.AddTraderItem( 70 , 284, 500 ,7  ,100 ,{3}  ,{33}   ,0   ,0       ); -- bluestone
    npcs.base.trader_functions.AddTraderItem( 80 , 283, 500 ,8  ,100 ,{3}  ,{33}   ,0   ,0       ); -- blackstone
    npcs.base.trader_functions.AddTraderItem( 60 ,  45, 500 ,6  ,100 ,{3}  ,{33}   ,0   ,0       ); -- emerald
    npcs.base.trader_functions.AddTraderItem( 80 , 198, 500 ,8  ,100 ,{3}  ,{33}   ,0   ,0       ); -- topas
    npcs.base.trader_functions.AddTraderItem( 80 , 285, 500 ,8  ,100 ,{3}  ,{33}   ,0   ,0       ); -- diamont
    npcs.base.trader_functions.AddTraderItem( 25 , 122, 200 ,5  ,100 ,{5,6},{77,90},0   ,0       ); -- fine hammer
    npcs.base.trader_functions.AddTraderItem( 25 ,  23, 200 ,5  ,100 ,{5,6},{77,90},0   ,0       ); -- hammer
    npcs.base.trader_functions.AddTraderItem( 25 ,2763, 200 ,5  ,100 ,{5,6},{77,90},0   ,0       ); -- pickaxe
    npcs.base.trader_functions.AddTraderItem( 25 ,2751, 200 ,5  ,100 ,{5,6},{77,90},0   ,0       ); -- crucible pincers
    npcs.base.trader_functions.AddTraderItem( 25 ,2140, 200 ,5  ,100 ,{5,6},{77,90},0   ,0       ); -- tongs

    TraderCopper=10000;

    npcs.base.functions.AddTraderTrigger("[Gg]reetings","#me grumbles \"Ya ya. Can't ya see me workin'?\"");
    npcs.base.functions.AddAdditionalText("#me looks up and shows a fresh smithed swordblade \"Isn't it good? Aye, of course it is, it's crafted by me, har har...Oh, right. Greetings or whatever.\"");
    npcs.base.functions.AddTraderTrigger("[Hh]ello","Whatever. Need somethin'? If not, bye");
    npcs.base.functions.AddAdditionalText("Hello? Did you just say \"Hello\"?! Are ya a darn elven girl? That's \"Hey boss\" or \"Greetings ol' buddy\". Try it again!");
    npcs.base.functions.AddTraderTrigger("[Yy]ou.+[Tt]rader","Aye, I sell an' buy different wares, all a matter of money.");
    npcs.base.functions.AddAdditionalText("No, I am a damn elf kneelin' on the floor and wearin' a damn false beard because I want to spy for the damn secret of 'ow to make really good dwarven beer....Of course I am a trader!");
    npcs.base.functions.AddAdditionalText("#me grumbles and looks around \" Let me see. I am standin' in front of some smithed stuff offered for sale and, oh, yeh, I have a 'uge purse full of coins .... No, dunno think I am a darn trader.\"");
    npcs.base.functions.AddTraderTrigger("[Ww]hat.+sell","I'm sellin' important things for the daily dwarven life. So ya should buy them, 'eard? BUY!. With money an' so, I 'ope ya hav' money?");
    npcs.base.functions.AddTraderTrigger("[Ww]hat.+[Tt]hings","Narrrr. You are stealin' my time. Weapons, helmets, shields an' tools, that kinda stuff...");
    npcs.base.functions.AddTraderTrigger("[Ww]hat.+[Tt]ools","#me grumbles and numerates in a harried voice \"pickaxes, moulds, crucibles an' crucible-pincers. Happy now? Ya stole alot of my time, so buy somethin'!\"");
    npcs.base.functions.AddTraderTrigger("[Ww]hat.+[Ww]eapon","Gaaaaarrg...serinjah-swords, sabres, short swords, daggers an' maces. An' if you don't but anythin' now, i throw all this stuff on you head!");
    npcs.base.functions.AddTraderTrigger("[Ww]hat.+[Hh]elmet","Grmpf...horned an' orc helmets and steel caps i sell. And now stop disruptin' me from my work!");
    npcs.base.functions.AddTraderTrigger("[Ww]hat.+[Ss]hield","#me grumbles \"simple, normal, advanced and round metal shields. Okay? Now leave.\"");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Ss]omething","Do I look like ya Grandpa? Go an' ask 'im, I won't waste my time tellin' ya storys");
    npcs.base.functions.AddAdditionalText("Ever 'eard the story of the little dwarf who annoyed that dwarven trader too much with questions an' got thrown into the damn oven for that? Aye, there ya hav' ya story! Now let me alone.");
    npcs.base.functions.AddAdditionalText("Well, think ya won't stop askin' until I tell ya somethin'. What do ya want to 'ear? About our gods? Somethin' about famous dwarves of our town? The work of a smith? Or perhaps somethin' about the isle or Silverbrand?");
    npcs.base.functions.AddTraderTrigger("[Gg]oodbye","Finally. Thank's Irmorom!");
    npcs.base.functions.AddAdditionalTrigger("[Bb]ye");
    npcs.base.functions.AddAdditionalTrigger("[Ff]arewell");
    npcs.base.functions.AddAdditionalText("Ya, leave. Why are ya still 'ere?");
    npcs.base.functions.AddAdditionalText("Ya, go away. Fast.");
    npcs.base.functions.AddTraderTrigger("[Ww]hat.+buy","#me speaks with a faked, sophisticated voice \"Oooh, I buy pretty flowers an' the sunshine in a glas...BAH! Damn it, what do ya think? I am a dwarf in a dwarven town! Of course I buy smithed stuff!\"");
    npcs.base.functions.AddTraderTrigger("[Ww]ho.+you?","What's ya interest in my name? I won't marry ya. Well, I'm called "..thisNPC.name..".");
    npcs.base.functions.AddTraderTrigger("I'm .+","Iiiinteresting...no, not really, just wanted to be nice. Who cares? Me not!");
    npcs.base.functions.AddTraderTrigger("[hH]elp","'What do you sell?', 'I want to buy <number> <wares>', 'I want to buy a <ware>', 'I want to sell <number|a> <wares>', 'Price of ...','What do you pay for ...', 'What wares do you buy?'");
    npcs.base.functions.AddTraderTrigger("[Gg]r�[�s]e","#me grummelt \"Ja ja. Siehste net dat Ick am arbeiten bin?! pfff...\"");
    npcs.base.functions.AddAdditionalText("#me sieht auf und zeigt dir eine frisch geschmiedete Schwertklinge \"Is' es nich' nen Prachtst�ck? Aye, nat�rlich isses, is' ja auch von mir, har har...Oh, richtig. Gr��e, oder wat auch immer.\"");
    npcs.base.functions.AddTraderTrigger("[Hh]allo","Aye, Wat auch immer. Brauchste wat? Wenn net, geh!");
    npcs.base.functions.AddAdditionalText(" Hallo? Haste gerade \"Hallo\" gesagt?! Wat bisse? Nen Elfenm�dchen? Dat heisst \"Hey Meister\" oder \"Gr�� dich alter Kumpel\". Versuchs nochmal!");
    npcs.base.functions.AddTraderTrigger("[Dd]u.+[Hh]�ndler","Aye, Ick verkauf un' kauf verschiedenstes Zeuch, allet ne Sach vom Geld!");
    npcs.base.functions.AddAdditionalText("Ne, ick bin nen verdammter Elf der hier aufm Boden kniet un' nen falschen Bart tr�gt um dat Geheimniss des verdammt guten Zwerchenbieres aus zu spionieren....Nat�rlich bin ick nen H�ndler!");
    npcs.base.functions.AddAdditionalText("#me brummt und sieht sich um \"Lass mal sehn. Ick steh hier vor ner menge geschmiedetes Zeuch welches zum Verkauf angeboten wird un', oh, ja, ick hab hier diesen gro�en Geldbeutel voller M�nzen...Nein, denke nich' dat ick nen H�ndler bin\"");
    npcs.base.functions.AddTraderTrigger("[Ww]as.+verkauf","Ick verkauf wichtiges Zeuch f�r dat t�glich Zwergenleben. Du solltest dat also kaufn, verstanden? KAUFEN! Dat heisst mit Geld un' so. Du hast doch Geld, oder?");
    npcs.base.functions.AddTraderTrigger("[Ww]as.+[Zz]eug","Gaaaa! Du stiehlst mir de Zeit! Waff'n, Helme, Schilde un' Werkzeuch, so'n Zeuch halt. Grmpf");
    npcs.base.functions.AddTraderTrigger("[Ww]as.+[Ww]erkzeug","#me grummelt und z�hlt genervt auf \"Spitzhacken, Gu�formen, Tiegel, Tiegelzangen! Biste nu gl�cklich? Du hast mir wichtig Zeit gestohln, nu kauf auch wat!");
    npcs.base.functions.AddTraderTrigger("[Ww]as.+[Ww]affe","Gaaaaaarrg...Serinjahschwerter, S�bel, Kurzschwerter, Dolche un' Streitkolben. Un' wenn du nu nix kaufst, dann schmeiss ich dir das ganze Zeug gegn deinen Kopp!");
    npcs.base.functions.AddTraderTrigger("[Ww]as.+[Hh]elm","Grmpf...H�rner un' Ork Helme und Stahlkappn verkauf ich. Un' nu h�r auf mich von der Arbeit abzuhalten!");
    npcs.base.functions.AddTraderTrigger("[Ww]as.+[Ss]child","#me grummelt \"einfache, normale, gute und Rundschilde. Okay? Jetzt zieh ab.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Ee]twas","Seh ick aus wie dein Gro�vater, oder wat?! Geh un' frag den! Ick werd mein Zeit nich' vergeudn un' dir Geschichtn erz�hln.");
    npcs.base.functions.AddAdditionalText("Na jut. Schonmal die Geschicht von dem Zwerchen geh�rt der nen alten Zwerchenh�ndler mit Fragen �rgerte un' von dem desshalb innen Ofen gesteckt wurde? Aye, da hasse deine Geschicht. Un' nu lass mich allein!");
    npcs.base.functions.AddAdditionalText("Nun, ick f�rchte du h�rst doch nich' auf zu fragen bis ick wat erz�hl, aye? Nun gut, wat willste h�ren? Wat �ber die G�tter? Wat �ber manche der ber�hmten Zwerche Silverbrands? Wat �bers Schmieden? Oder gar wat �ber die Insel oder Silverbrand?");
    npcs.base.functions.AddTraderTrigger("[Aa]uf.+[Bb]ald","Na endlich. Irmorom sei dank!");
    npcs.base.functions.AddAdditionalTrigger("[Bb]is.+[Bb]ald");
    npcs.base.functions.AddAdditionalTrigger("[Tt]sch�ss");
    npcs.base.functions.AddAdditionalText("Ja! Verschwinde! Warum bisse noch hier?");
    npcs.base.functions.AddAdditionalText("Ja! Geh weg! Schnell.");
    npcs.base.functions.AddTraderTrigger("[Ww]as.*%skauf","#me spricht mit verstellt gehobener Stimme \" Ooooh, ick kaufe h�bsche Blumen un' den Sonnenschein im Einmachglas....BAH! Verflucht nochmal, wat denkste denn? Ick bin' Zwerg inner Zwergenstadt! Nat�rlich kauf ick geschmiedetes Zeuch!\"");
    npcs.base.functions.AddTraderTrigger("[Ww]er.+du?","Wat interessiert dich mein Name?! Ick w�rd dich eh nich' heiraten! Nun...nen mich "..thisNPC.name..".");
    npcs.base.functions.AddTraderTrigger("Ich bin .+","Iiiiinteressant...ne, nich' wirklich, wollt nur freundlich sein. Wen interessierts? Mich nich'!");
    npcs.base.functions.AddTraderTrigger("[Hh]ilfe","'Was f�r Waren verkauft ihr', 'Ich m�chte <Anzahl> <Ware> kaufen', 'Ich m�chte <Ware> kaufen', 'Ich m�chte <Anzahl> <Ware> verkaufen', 'Was ist der Preis von <Ware>','Was zahlt ihr f�r <Ware>', 'Was kauft ihr?'");
    npcs.base.functions.AddTraderTrigger("[Ww]hat.+[Ww]orking","#me rolls with his eyes \"How does it look like, huh? Of course I am smithin', and that damn good, by Irmorom. But I am also a trader 'ere, so if ya want to trade, go on!\"");
    npcs.base.functions.AddTraderTrigger("[Ww]ho.+[Ii]rmorom","#me raises an eyebrow \"Ya don't know Irmorom? Come on, ya can't be serious! He is tha father of us dwarves. Tha creator of tha world. God of craftmenship and trade! Tha worldsmith! An' we tha dwarves are his masterwork, don't forget that!\"");
    npcs.base.functions.AddTraderTrigger("[Mm]asterwork","Aye, so it is. Tha dwarves are 'is masterwork! He created us out of stone, with tha earth of mother Ushara. An' Irmorom gav' us Brag�ns fire which burns in us an' let us be such damn good craftmens.");
    npcs.base.functions.AddTraderTrigger("[Ww]ho.+[Uu]shara","#me sighs \"Again a question. Well, this times it's an important one, so listen! Ushara is tha great goddess of earth and caves. She is tha mother uf us dwarves, because Irmorom used 'er earth to make us. Ask other dwarves for more.\"");
    npcs.base.functions.AddTraderTrigger("[Ww]ho.+[Bb]rag�n","Brag�n is a fine lad, 'e is tha god of fire. Fire is it which we uses for craftin' great stuff. Fire is it which burns inside of us dwarves, an' giv' us strength an' much more! Respect an' 'onor 'im!");
    npcs.base.functions.AddTraderTrigger("[Oo]ther.+[Gg]ods","Arrr! I am busy, an' no priest. Go an' ask one of them. Ask around for one!");
    npcs.base.functions.AddTraderTrigger("[Ww]as.+%s[Aa]rbeit","#me rollt mit den Augen \"Nach wat siehts denn aus, h�? Nat�rlich schmiede ick, un' dat verdammt gut, bei Irmorom! Doch bin ick hier auch der H�ndler, wenn du also wat handeln wills', dann nur zu.\"");
    npcs.base.functions.AddTraderTrigger("[Ww]er.+[Ii]rmorom","#me hebt eine Augenbraue \"Wat? Du kennst den Irmorom nich'? Dat kann nich' dein Ernst sein! Er is' der Vater der Zwerche. Der Erschaffer der Welt! Gott des Handwerks un' des Handelns! Der Weltenschmied! Un' wir Zwerche sin' sein Meisterst�ck, vergiss dat nich'!\"");
    npcs.base.functions.AddTraderTrigger("[Mm]eisterwerk","Aye, so isses. Die Zwerche sin' sein Meisterwerk! Er machte uns aus Stein, genommen von der Erde Mutter Usharas. Un' er gab uns dat Feuer Brag�ns welches in uns allen brennt un' uns zu so klasse Handwerkern macht.");
    npcs.base.functions.AddTraderTrigger("[Ww]er.+[Uu]shara","#me seufzt \"Da is' ja schon wieder ne Frage...was solls, is' immerhin ne wichtige, also h�r zu! Ushara is' die gro�e G�ttin der Erde un' der H�hlen. Sie is' die Mutter der Zwerche da Irmorom ihren Fels nahm um uns zu schaffen. Frag andre Zwerche f�r mehr �ber sie.\"");
    npcs.base.functions.AddTraderTrigger("[Ww]er.+[Bb]rag�n","Brag�n is' nen gro�artiger Bursche. Gott des Feuers, aye. Feuer isses wat wir zum Schmieden nehmen. Feuer isses wat in uns brennt un' uns Kraft und mehr gibt! Respektiere un' Ehre ihn!");
    npcs.base.functions.AddTraderTrigger("[Aa]ndere.+[Gg]�tter","Arrr! Ick bin besch�ftigt, un' auch kein Priester. Geh un' frag so einen. Frag die andern nach einem.");
    npcs.base.functions.AddTraderTrigger("[Hh]ow.+[Ww]eather","#me raises an eyebrow and looks up to the ceiling of the cave \"What?!\"");
    npcs.base.functions.AddAdditionalText("#me looks around in the cave and says with a sarcastic voice \"It's rainin', dunno ya see it?\"");
    npcs.base.functions.AddTraderTrigger("[Ww]ie.+[Ww]etter","#me hebt eine Augenbraue und sieht zur H�hlendecke rauf \"WAS?!\"");
    npcs.base.functions.AddAdditionalText("#me blickt sich in der H�hle um und spricht in einem sarkastischen Tonfall \"Es regnet, siehste dat nich'?\"");
    npcs.base.functions.AddTraderTrigger("[Hh]ey.+[Bb]oss","Aye, that sounds good.Ya sound like a dwarf with tha necessary respect! So, 'ow can I help ya?");
    npcs.base.functions.AddTraderTrigger("[Hh]ey.+[Mm]eister","Aye, Dat klingt gut. Klingst wien Zwerch mit dem n�tigen Respekt! Nun, wie kann ick dir helfen?");
    npcs.base.functions.AddTraderTrigger("[Gg]reetings.+[Bb]uddy","#me looks with a serious look into your eyes and speaks with a rough and deep voice \"I am not yer buddy, okay? But its much better than \"hello\". Good, what do ya want?\"");
    npcs.base.functions.AddTraderTrigger("[Gg]r��e.+[Kk]umpel","#me sieht dir mit ernstem Gesicht in die Augen und spricht mit tiefer, rauer Stimme \"Ick bin nich' dein Kumpel, verstanden? Aber schonmal besser als \"Hallo\" isses. Gut, wat willste?\"");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Gg]ods","Well, our world 'as many gods, but 4 of them ar' really important for us dwarves, aye. That ar' of cours' Irmorom. Every true dwarf prays to 'im. Than there ar' Ushara an' Bragon. An' Cherga of course, Aye! Want me to tell more about one of them?");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Gg]�tter","Nun, unsre Welt hat viele G�tter, aber nur 4 sin' wirklich wichtich f�r uns Zwerche, aye. Dat is' nat�rlich Irmorom. Jeder echte Zwerch betet zu ihm. Un' dann sin' da Ushara un' Bragon. Un' nat�rlich Cherga, aye! Willste dat ick mehr �ber einen Erz�hl?");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Ii]rmorom","Aye, Irmorom is of course tha most important god. He is tha god of craftmenship an' Trade. We call 'im also Worldsmith. Because we know 'e made the world, tha dwarves an' everythin' else. Of course tha surfacers don't believe that, bah! Want 'ear more?");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Ii]rmorom","Aye, Irmorom is' nat�rlich der wichtigste Gott. Er is' Gott des Handwerks un' des Handels. Wir nennen ihn auch Weltenschmied. Denn wir wissen dat er die Welt, die Zwerche un' alles andre schuf. Nat�rlich glauben die Oberweltler dat nich', bah! Willste mehr h�rn?");
    npcs.base.functions.AddTraderTrigger("[Mm]ore.+[Ii]rmorom","Well, ask a priest about tha creation of world. I know for sure that Irmorom 'ates thieves an' cheaters. He loves treasures like gold, an' good beer, har har. Like every good dwarf. Irmorom lives in Borag-Urubur together with all gods an' good dwarves who died.");
    npcs.base.functions.AddTraderTrigger("[Mm]ehr.+[Ii]rmorom","Nun, frach nen Priester �ber die Sch�pfung. Ick weiss jedenfalls dat Irmorom Diebe un' Betr�ger hasst. Er liebt Sch�tze, wie Gold, un' nen gutes Bier, har har. Wie jeder gute Zwerch. Irmorom lebt allen G�ttern un' mit bisher verstorbenen, guten Zwerchen im Borag-Urubur.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Bb]orag","Thats tha great mountain from which Irmorom took a single rock to form Illarion, our world. It's 'uge! Every dwarf who dies comes to that mountain, an' Irmorom will ask tha dwarf abouts 'is life an' decides if 'e is worth to enter tha halls, aye. Want 'ear more?");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Bb]orag","Dat is' der gro�e Berch von dem Irmorom nen Felsen nam un' unsre Welt Illarion draus schuf. Er is' riesig! Jeder Zwerch der stirbt kommt zum Berg, un' Irmorom befragt ihn �ber sein Leben un' entscheidet ob ers Wert is' die Hallen zu betreten, aye. M�chtest mehr h�rn?");
    npcs.base.functions.AddTraderTrigger("[Mm]ore.+[Bb]orag","When ya stand in front of Irmorom in tha great mountain 'e asks what ya done in ya life, an' if ya was a dwarf of 'onor and justness 'e will let ya into tha great halls. If not 'e will send ya in front of tha gates. To live as farmers next to tha orcs an' elves");
    npcs.base.functions.AddTraderTrigger("[Mm]ehr.+[Bb]orag","Wenn du vor Irmorom im gro�en Berge stehst wird er dich �ber dein Zwerchenleben befragen. Wenns nen Leben voll Ehre un' Gerechtigkeit war, l�sst er dich rein in die Hallen. Wenn nich', musste vorm Tor als Bauer leben, gleich neben den Elfen un' Orks.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Ss]urfacers","The surfacers, that ar' all tha other more or less state buildin' races who ar' livin' at tha surface, an' not under it. Tha Elves, Halflings, Humans, Orcs an' Lizards.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Oo]berweltler","Die Oberweltler, dat sin' all die andern mehr oder weniger staatenbildende Rassen die anner Oberfl�che leben, un' nich' drunter. Die Elfen, Halblinge, Menschen, Orks un' Echsen.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Ee]lves","Bah, damn longears. They ar' arrogant, treehugging smart alecks! Never trust an elf as far as ya can throw 'im! They think they ar' somethin' better, with their silly love to nature an' their long age. They think they just hav' to sneeze an' wisdom grow out of that!");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Ee]lfen","Bah, verdammte Langohrn. Sie sin' arrogante, baumknuddelnde Klugscheisser! Trau keinem Langohr so weit wie du ihn werfen kannst! Sie denken sie sin' wat besseres, mit ihrer bl�den Liebe zur Natur un' ihrem langen Leben. Sie denken sie m�ssen nur Nie�en un' Weisheit w�chst draus.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Hh]alflings","Halflings ar' not so bad. Nice little fellows. They love a good meal an' a good drink more than anythin' else, aye. Great farmers an' so. But be careful, many hav' too long fingers. They ar' also great an' shameless thieves! Hold ya purse close when ya meet one!");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Hh]alblinge","Halblinge sin' nich' so �bel. Nette kleine Kerlchen. Sie lieben nen gutes Mahl un' Tropfen mehr als alles andre. Gro�artige Bauern un' so. Doch sei vorsichtig, viele haben auch lange Finger. Sie sin' auch gute un' schamlose Diebe! Achte auf deinen Geldbeutel wenn du einem begegnest.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Hh]umans","Well, longlegs. Ya find them everywhere on tha world. They spread like rats. Some ar' okay, others ar' not even an axestrike worth. Dunno trust them too fast. Seldom one 'uman is like tha other, aye. Ya can find everythin' typ of persons by them. Very chaotic guys, if ya ask me.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Oo]rcs","Arrr! The greenskins, or pignoses, aye. Be carefuly by that stinky bastards. They ar' untrustworthy, wild an' violent. They love it to fight an' to kill. Best way to talk with an orc is through a sharp axe, aye! They dunno understand an other language. Never turn ya back to one!");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Mm]enschen","Nun, die Langbeine. Du findest sie �berall auf der Welt. Wie Ratten verbreiten sie sich. Manche sin' okay, manche nich'mal nen Axthieb wert. Trau denen nich' zu schnell. Die Menschen sin'recht vielschichtig un' vielseitig. Nen sehr chaotisches Volk, wenn du mich fragst.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Oo]rks","Arrr! Die Gr�nh�ute, oder auch Schweinenasen. Sei vorsichtig bei diesen stinkenden Bastarden. Sie sin' hinterh�ltig, wild un' gewaltt�tig. Sie lieben es zu K�mpfen un' zu t�ten. Sie verstehn nur die Sprache der scharfen Axt, aye. Dreh niemals einen von den Mistkerlen den R�cken zu.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Ll]izards","They live under water! That says everythin'. Damn fishys an' scalefaces. They ar' more animal than peoples. An' all that hissin', ya can't understand a single worth. Not that they would hav' somethin' important to say. Bah, waterbreather, don't trust them.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Ee]chsen","Sie leben unter Wasser! DAT sagt ja schon alles. Verdammte Fische un' Schuppenfressen. Die sin' mehr Tier als Person. Un' all dat Zischeln, man versteht ja kein einziges Wort. Nich' dasse wat wichtiges zu sagen h�tten. Bah, Wasseratmer, trau denen nich'!");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Ii]llarion","Illarion, thats our world which Irmorom made. This isle on which we live, called Gobaith, is just a little part of it. The mainland is much bigger, but I like it to live on this isle, aye. Illarion is 'ome of many races, creatures, secrets an' whatever else. Too much to tell about it.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Ii]llarion","Illarion, so heisst unsre Welt die Irmorom geschaffn hat. Die Insel hier is' nur nen Teil, Gobaith genannt. Dat Festland is' noch viel gr��er. Aber hier gef�llts mir besser, aye. Illarion is' Heimat vieler Rassen, Kreaturen, Geheimnisse, un' wat noch alles. Zuviel um dr�ber zu erz�hln.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Gg]obaith","Aye, so we call this isle on which we live. The isle is 'uge and many races ar' livin' on it. We 'ave many towns 'ere. Silverbrand , Trolls Bane, Varshikar an' Greenbriar. There is more, but I seldom go to tha surface, so ask others about it. Or go an' explore it by yaself.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Gg]obaith","Aye, so heisst die Insel hier. Sie is' riesig, un' ne menge Rassen leben hier. Wir habn einige St�dte. Silberbrand, Trolls Bane, Varshikar un' Greensbriar. Da is' noch mehr, aber ick geh selten anne Oberfl�che, also frag andre aus. Oder geh un' siehs dir selber an.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Ss]ilverbrand","Three dwarves had a long time ago tha plan to build an own dwarven town. Bombor, Rugosch an' Tialdin. An' soon other dwarves joined. They worked together, to built this town! It grew, an' became on of tha greates forces on tha isle! It saw wars, catastrophes, even demons!");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Ss]ilberbrand","Drei Zwerche hatten vor langer Zeit den Plan ne Zwerchenstadt zu baun. Bombor, Rugosch un' Tialdin. Un' schon bald schlossen sich andre an. Sie arbeiteten zusammen, un' bauten diese Stadt. Sie wuchs, un' wurde m�chtig. Sie sah Kriege, Katatrophen, sogar D�monen!");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Ii]sle","Tha Isle is called Gobaith. There ar' many towns on it' an' many races live on tha isle. Tha Isle is a dangerous place, often bad things happen. Some peoples call it \"The cursed Isle\". Its a great place for warriors, adventurers an' guys who like tha danger");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Ii]nsel","Die Insel wird Gobaith genannt. Hier gibts ne menge St�dte un' viele V�lker die hier leben. Die Insel isn gef�hrlicher Ort, oft passieren hier schreckliche Dinge. Manche nennens \"Die verfluchte Insel\". Nen klasse Ort f�r Krieger, Abenteurer un' Leute die die Gefahr lieben.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Tt]owns","The most important ar' Silverbrand 'ere, than Trolls Bane to tha southwest, after that Varshikar, far in tha northeast. An' than there is Greensbriar, far to tha southwest. Tol Vanima, isle of tha elves.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Ss]t�dte","The wichtigsten sin' Silberbrand hier, dann Trolls Bane im S�dwesten, danach kommt Varshikar weit im Nordosten. Dann is' da noch Greensbriar, weit im S�dwesten, un' Tol Vanima, die Insel der Elfen.");
    npcs.base.functions.AddTraderTrigger("[Mm]ore.+[Ss]ilverbrand","If ya want to 'ear more of tha history, ask tha other dwarves around. Tha king 'ere is Tialdin. Belegi is tha leader of tha Clan of Axe, tha force of our town. Rugosch is tha head of our temple. An' there ar' many others. They can tell ya better an' more about Silverbrand.");
    npcs.base.functions.AddTraderTrigger("[Mm]ehr.+[Ss]ilberbrand","Wenn du mehr �ber die Geschichte h�rn willste, dann frag andre Zwerche hier. Tialdin is' der K�nich. Belegi is' chef des Clans der Axt, der K�mpfer unsrer Stadt. Rugosch is' Kopf des Tempels. Un' da sin' noch viele mehr. Die k�nnen dir besser un' mehr erz�hlen als ick.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Tt]rolls [Bb]ane","Trolls Bane, it's tha oldest an' biggest town on tha isle. It lays southwest of 'ere. It's a town for every races. It has tha longest an' biggest 'istory of all towns around. If ya want to sell ya things, or buy some ya can't get 'ere, try it in Trolls Bane. Want to 'ear more?");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Tt]rolls [Bb]ane","Trolls Bane, es is' die �lteste un' gr��te Stadt hier. Sie liegt im s�dwesten von hier. Es is' ne Stadt f�r jede Rasse. Sie hat die l�ngste un' gr��te Geschichte von allen St�dten. Wenn du wat verkaufen m�chtest, oder kaufn wat du hier nich' kriegst, geh nach dort. M�chtest mehr h�ren?");
    npcs.base.functions.AddTraderTrigger("[Mm]ore.+[Tt]rolls [Bb]ane","Trolls Bane has many laws, like no fightin' in town. So be careful, their guards ar' alert. They hav' Eliza's shop, oldest on isle. An' tha seahorse, an inn. Tha Fluffy Sheep Tavern is there, our King foundet it. An' they hav' a 'uge library. There often is somethin' happenin'.");
    npcs.base.functions.AddTraderTrigger("[Mm]ehr.+[Tt]rolls [Bb]ane","Trolls Bane hat viele Gesetze, z.B. kein K�mpfen inner Stadt. Sei also vorsichtig, ihre W�chter sin' aufmerksam. Sie haben Eliza's Laden, �ltester der Insel. Dat Seahorse, nen Gasthof. Die Fluffy Sheep Taverne, un' ne gro�e Bibliothek. Dort passiert immer irgend was.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Vv]arshikar","Varshikar is a realm far northeast. Aristeaus is tha Lord there. Its a 'aven for everyone who don't want or isn't allowed to live in one of tha other towns. They hav' a damn Magic Acadamy, an' tha Kallahorn knighthood lives there. Want to 'ear more about their history?");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Vv]arshikar","Varshikar isn Reich weit im Nordosten. Aristeaus is' der Herrscher dort. Es is' nen Heim f�r alle die nich' inner andern Stadt Leben wolln oder k�nn'. Sie habn ne verdammte Magier Akademie, un' die Kallahorn Ritter leben dort. Wilslte mehr �ber davon h�rn?");
    npcs.base.functions.AddTraderTrigger("[Mm]ore.+[Vv]arshikar","Tha dark Lord Darlok founded it, or better blackmailed us with 'is dark powers to built it. We fought against 'im, an' 'is henchmen, an' we won! He died. He caused alot of mischiefs. Now tha land is more or less peacefully. Better don't go to there, they will tax ya!");
    npcs.base.functions.AddTraderTrigger("[Mm]ehr.+[Vv]arshikar","Der dunkle Herrscher Darlok gr�ndete dat Land. Vielmehr erpresste uns mit dunkler Magie es zu baun. Wir f�hrten Krieg gegen ihn, un' seine Schergen. Un' gewannen, er starb. Er hat viel Unheil gestiftet, nu is' dat Land mehr oder weniger friedlich. Geh besser nich' da hin.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Gg]reensbriar","Not much to tell about it. It got founded by tha halflings of a group called \"Evergreen Halflings\". Its a peaceful town of farmers, far on an isle in tha southwest. Thats all I know of it.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Gg]reensbriar","Gibt nich' viel dr�ber zu erz�hln. Wurde vonner Gruppe genannt \"Evergreen Halflings\" oder so gegr�ndet. Is' ne friedliche Stadt von Bauern, weit im S�dwesten auf ner Insel. Dat is' alles wat ick dar�ber weiss.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Vv]anima","Vanima, tha town of tha elves on tha isle Tol Vanima. It's tha youngest settlement. An isle full of elves, no place for a dwarf. Nothin' interesin' there. Ya can reach it with a damn boat from the harbor southwest of Trolls Bane. But it isn't it worth.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Vv]anima","Vanima, die Stadt der Elfen auf der Insel Tol Vanima. Is' die j�ngste Ansiedlung. Ne Insel voll mit Elfen, kein Ort f�rn Zwerchen. Nicht's interessantes dort. Du erreichst es mit nem verdammten Boot vom Hafen s�dwestlich von Trolls Bane. Aber wozu �berhaupt.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Ss]mithing","Ya need an' hammer, an' ironbars, or ironplates. Tha iron in ya belt, an' tha hammer in ya hand ya stand in front of an anvil. Than ya use ya hammer, an' ya can smith things out of tha iron. Iron ya get when ya melt ironore, want to 'ear about that too?");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Ss]chmieden","Du brauchst nen Hammer, un' nen Eisenbarren, oder ne Eisenplatte. Dat Eisen innen G�rtel, der Hammer inne Hand, stellste dich vorn Ambo� un' benutzt den Hammer, dann kannste dat Eisen Formen. Eisen kriegste wenn du Eisenerz schmilzt, willste davon auch h�rn?");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Mm]elting","Ya need a crucible, crucible-pincers an' a mould. Best ya buy it from me! Crucible an' crucible pincers in ya hand, an' tha mould in ya belt. Use tha crucible, an' ya can melt tha ironore. After ya did that, hold tha crucible with tha pincers in a hand, an' fill it into tha mould. Make an Ironbar for weapons an' so, an' tha plates for tools.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Ss]chmelzen","Du brauchst nen Tiegel, Tiegelzange un' ne Gu�form, am besten gleich von mir kaufen. Tiegel un' Zange inne H�nde, un' Form innen G�rtel. Dann Tiegel benutzen, um dat Eisen zu schmelzen. Tiegel mit Zange inner Hand halten un' inne Form gie�en, mach nen Eisenbarren f�r Waffen un' so, un' Eisenplatte f�r Werkzeuch.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Dd]warves","I don't know storys about every famous dwarf, but about some. I know somethin' about our king, Tialdin. Or Belegi, chef of tha clan. Galim, our priest who died. Rugosch, head of tha temple. Caranthir, former vice-king. Fjalara, tha queen. Tschernebog, Thoram, Ingrain an' Bombor, great warriors.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Zz]werge","Ick wei� nich' von jedem gro�en Zwerchen der Stadt zu erz�hln, aber von einigen. Tialdin, unser K�nich. Belegi, Chef des Klans. Galim, unser verstorbener Priester. Rugosch, Chef des Tempels. Caranthir, ehemaliger Vizek�nig. Fjalara, die K�nigin. Tschernebog, Thoram, Ingrain un' Bombor, gro�e Krieger.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Tt]ialdin","He is our king. A great an' 'onestly dwarf. Toghether with Bombor an' Rugosch 'e planed our town, an' became king. Once 'e lead the Fullfy Sheep tavern, before 'e became king. Best king we could wish for us, done alot on tha isle. But others know more, ask them.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Tt]ialdin","Er is' unser K�nich. Nen gro�er un' ehrenhafter Zwerch. Zusammen mit Bombor un' Rugosch plante er unsre Stadt, un' wurde K�nich. Einst leitete er die Fluffy Sheep Taverne. Bester K�nich den man sich w�nschen kann. Hat vieles auf der Insel getan, doch dat wissen andre besser zu erz�hln.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Bb]elegi","Belegi is a great dwarfess. Aye, what a beauty, an' so strong, everythin' a dwarf could wish for 'imself, har har. She is leadin' tha Clan of Axe since Tschernebog died. An' she do it really good. She is well known as a great warrior, aye. Everyone respects an' 'onors 'er, me too.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Bb]elegi","Belegi is' ne gro�artige Zwergin. Aye, wat f�r ne Sch�nheit, un' so stark. Alles wasn Zwerg sich w�nscht, har har. Sie f�hrt den Klan der Axt seit Tschernebog verstarb. Un' sie tut dat verdammt gut! Sie is' bekannt als gro�artige Kriegerin. Jeder respektiert un' ehrt sie, zurecht.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Gg]alim","Galim was a famous smith an' trader, aye. He also was a priest of Irmorom an' Bishop in Silverbrand. Like every famous dwarf 'e did alot of great things, just ask others about them. He was betrothen with Alora, a great warrior. He died when 'e tried to protect tha peoples from a demon.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Gg]alim","Galim warn ber�hmter Schmied un' H�ndler. Er war auch Priester Irmoroms un' Bischof in Silberbrand. Wie jeder ber�hmte Zwerch vollbrachte er Gro�es, frag einfach andre danach. Er war mit Alora verlobt, eine m�chtige Kriegerin. Er starb als er versuchte die Leute vor nem D�monen zu besch�tzen.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.[Aa]lora","Alora was a mighty warrior an' guard of Trolls Bane. A wonderful dwarfess, aye. She was betrothen to Galim. Everyone liked an' respected 'er. She vanished one day on one of 'er journeys...what a tragedy. Galim never was tha same after that. Noone was as strong as 'er, har.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.[Aa]lora","Alora war eine m�chtige Kriegerin un' ne W�chterin in Trolls Bane. Ne wundervolle Zwergin, aye. Sie war mit Galim verlobt. Jeder mochte un' respektierte sie. Sie verschwand eines Tages auf einer ihrer Reisen...wat f�r ne Trag�die. Galim war niemehr der selbe. Niemand war st�rker als sie, har!");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Cc]aranthir","Caranthir was tha viceking 'ere, before 'e vanished one day. Together with tha treasurey, ha! He was a respected dwarf. Represented together with Mishrack tha Silverstar Merchants. One of tha richest dwarves of our 'istory. Great merchant an' smith. An' damn stingy, har har.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Cc]aranthir","Caranthir war hier Vizek�nig, bevor er eines Tages verschwand. Zusammen mit der Staatskasse, ha! Er warn geachteter Zwerg. Hat zusammen mit Mishrack die Silverstar H�ndler vertreten. Einer der reichsten Zwerge unsrer Geschichte. Gro�artiger H�ndler un' Schmied. Un' verdammt geizig, har har.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Ff]jalara","She is tha wife of our king, an' our sovereign. Like all our dwarven women wonderful an' beautiful, har har. She is good in leadin' tha town, without 'er we wouldn't hav' some of our best improvements of tha town. We can't hav' a better queen, aye!");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Ff]jalara","Sie is' die Frau des K�nichs un' die Herrscherin. Wie alle unsre Fraun is' sie einfach gro�artig un' wundersch�n, har har. Sie is' eine herrvoragende F�hrerin, ohne sie h�tten wir einige der Verbesserungen anner Stadt nich'. Es gibt kene bessre K�nigin f�r uns, aye!");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Tt]schernebog","Tschernebog was tha greates warrior of our time. Together with Ingrain an' others 'e founded an' led the Clan of Axe before 'e died in a fight against a dragon. He also was called \"The Axe\" an' his name plant fear into the hearts of his enemies! He will never be forgotten.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Tt]schernebog","Tschernebog war der gr��te Krieger unsrer Zeit. Zusammen mit Ingrain un' anderen gr�ndete un' f�hrte er den Klan der Axt bevor er in einem Kampf gegen nen Drachen starb. Er wurde auch \"Die Axt\" genannt un' sein Name lies seine Feinde erzittern! Er wird niemals vergessen werden.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Rr]ugosch","Rugosch is tha 'ead of our temple. Priest of Irmorom. He is blessed by tha Dwarvenfather an' 'is words ar' like tha words by Irmorom 'imself! He taught Galim to be a priest, an' 'e spent tha money for our temple. In tha last time 'e is seldom be seen, 'e often is on pilgrimages");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.[Rr]ugosch","Rugosch is' der chef des Tempels. Nen Priester Irmoroms. Er is' vom Zwerchenvater gesegnet un' sein Wort is' wie dat Wort Irmoroms. Er brachte Galim bei Priester zu sein, un' er spendete dat Geld f�r den Tempel. Er wurd nich' oft gesehen in letzter Zeit, er is' oft auf Pilgerfahrten");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Bb]ombor","Bombor, arrr. Together with Tschernebog one of tha greates warriors, aye. He was a respected dwarf in Silverbrand. He was fast with his axe, an' noone could insult surfacers like 'im, har. He really 'ated them, hehe. He was herold in Silverbrand.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Bb]ombor","Bombor, arrr. Zusammen mit Tschernebog einer der gr��ten Krieger, aye. Er war nen respektierter Zwerg in Silverbrand. Er war schnell mit seiner Axt, un' niemand konnte Oberweltler so beleidigen wie er, har. Er hasste sie wirklich, hehe. Er war auch Herold hier.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Cc]lan of [Aa]xe","They ar' the force of our town, a group of tha strongest fighters. Belegi is their leader, ask 'er if ya want to join. They ar' feared by our enemies, aye. They often protected tha isle alone in fights against dangerous enemys. We ar' proud to hav' them.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Kk]lan der [Aa]xt","Sie sin' die Kampftruppe der Stadt, die st�rksten Krieger sin' ihre Mitglieder. Belegi is' die cheffin, frag sie wenn du beitreten willst. Sie sin' gef�rchtet bei unsren Feinden, aye. Sie verteidigten die Insel oft allein gegen gef�hrliche Feinde. Wir sin' stolz auf sie.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Dd]arlok","Arr, Darlok that bastard. He once was a knight of tha Grey Rose, before 'e become a servant of Moshran an' 'is henchmen. He got dark powers an' blackmailed tha isle to build 'im 'is Northerot, now called Varshikar. We fougth together with others of tha isle a war against 'im an' won. He died.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Dd]arlok","Arr, Darlok der Mistkerl. Er war mal nen Ritter von der Grauen Rose, bevor er ein Diener Moshrans un' seiner Schergen wurde. Er bekam dunkle Macht un' erpresste die Insel ihm sein Northerot, nun Varshikar heissend, zu baun. Wir un' andre der Insel f�hrten Krieg gegen ihn un' gewannen. Er starb.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Ii]ngrain","I dunno know much about 'im, because 'e left tha isle before I came. He founded tha Clan of Axe, a great warrior an' proud dwarf. He was also called Grinbogg. If ya wan't to know more, ask Belegi or so.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Ii]ngrain","Ick weiss nich' viel �ber ihn, er verliess die Insel bevor ick her kam. Er gr�ndete den Klan der Axt, aye. Nen gro�er Krieger un' Zwerch. wurde auch Grinbogg genannt. Frag Belegi oder so wenn du mehr wissen willst.");
    npcs.base.functions.AddTraderTrigger("[Tt]ell.+[Tt]horam","Thoram Steinfaust, also called Josef. He was tha best smith of tha clan. An old an' 'onorable dwarf, aye. Was a high member of tha clan. I am sure Belegi can tell ya more, I don't know everythin'.");
    npcs.base.functions.AddTraderTrigger("[Ee]rz�hl.+[Tt]horam","Thoram Steinfaust, auch Josef genannt. Er war der beste Schmied des Klans. Nen alter un' ehrenvoller Zwerch. Hohes Mitglied des Klans. Ick bin sicher Belegi kann dir mehr erz�hln, ick weiss auch net alles.");

    npcs.base.functions.AddCycleText("#me z�hlt und sortiert seine Sachen","#me counts and sorts his wares");
    npcs.base.functions.AddCycleText("#me grummelt \"Die Jugend von heut is' nich' mehr dat selbe wie einstmal\"","#me grumbles \"Tha youth of today isn't tha same like in tha old days\"");
    npcs.base.functions.AddCycleText("#me singt \"99 Flaschn mit Bier anner Wand, 99 Flaschn mit Bier, nimm eine runter un' trink sie aus, 98 Flaschn mit Bier anner Wand....\"","#me sings \"99 bottles of beer on tha wall, 99 bottles of beer. Take one down an' drink it out, 98 bottles of beer on the wall....\"");
    npcs.base.functions.AddCycleText("#me niest","#me sneezes");
    npcs.base.functions.AddCycleText("#me streicht �ber ein Goldnugget und grinst gl�cklich","#me strokes over a goldnugget and grins happily");
    npcs.base.functions.AddCycleText("Komm' un' kauf wat, oder verkauf, wat auch immer. Beste Waren weit un' breit, aye!","Come an' buy, or sell, or whatever. Best wares around, aye!");

    TraderLang={"Gold","gold","Silber", "silver","Kupfer","copper","st�cke","pieces"};
    TraderMonths={"Elos","Tanos","Zhas","Ushos","Siros","Ronas","Bras","Eldas","Irmas","Malas","Findos","Olos","Adras","Naras","Chos","Mas"};

    RefreshTime={10000,40000};

    TradSpeakLang={2};
    TradStdLang=2;
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
end

--------------------------------------------- *** DON'T EDIT BELOW HERE ***--------------------------------------

function nextCycle()  -- ~10 times per second
    if (TraderFirst == nil) then
        initializeNpc();
        npcs.base.functions.increaseLangSkill(TradSpeakLang)
        TraderStdCopper=TraderCopper;
        thisNPC.activeLanguage=TradStdLang;
    end
    npcs.base.trader_functions.TraderCycle();
    npcs.base.functions.SpeakerCycle();
end

function receiveText(texttype, message, originator)
    if npcs.base.functions.BasicNPCChecks(originator,2) then
        if (npcs.base.functions.LangOK(originator,TradSpeakLang)==true) then
            thisNPC.activeLanguage=originator.activeLanguage;
            Status,Values=npcs.base.trader_functions.SayPriceSell(originator, message)
            if (Status==0) then Status,Values=npcs.base.trader_functions.SayPriceBuy(originator, message) end
            if (Status==0) then Status,Values=npcs.base.trader_functions.ShowItemList(originator, message) end
            if (Status==0) then Status,Values=npcs.base.trader_functions.Selling(originator, message) end
            if (Status==0) then Status,Values=npcs.base.trader_functions.Buying(originator, message) end
            if (Status==0) then Status,Values=npcs.base.functions.TellDate(originator, message, TraderMonths) end
            if (Status==0) then npcs.base.functions.TellSmallTalk(message) end

            ----------------------------EDIT BELOW HERE-----------------------------------
            if (Status==1) then -- Verkauf von mehreren Items erfolgreich // npcs.base.trader_functions.Selling of multible items succeed
                gText="Du m�chtest "..Values[1].." "..world:getItemName(Values[2],0).." kaufn? Haste denn Geld? Nun gut, dat macht dann"..npcs.base.trader_functions.MoneyText(0,Values[3],Values[4],Values[5],TraderLang)..". Danke, Irmoroms Segen.";
                eText="Ya want "..Values[1].." "..world:getItemName(Values[2],1).."? Do ya hav' money?  Well, that makes"..npcs.base.trader_functions.MoneyText(1,Values[3],Values[4],Values[5],TraderLang)..".Thanks, Irmoroms blessing.";
            elseif (Status==2) then -- Item kann wegen Platzmangel nicht erstellt werden // Item can't created, cause of lag of space
                gText="Heeey, bevor du dat kaufst musste erst Platz bei dir schaffn, du hast hierf�r kenen mehr.";
                eText="Heeey, before ya buy this, ya hav' to make room by ya, ya hav' non for that 'ere.";
            elseif (Status==3) then -- Nicht genug Geld um das Item zu bezahlen // not enougth money to buy the item
                gText="#me knurrt \"Mein Zeuch kaufen wolln aber net genug Geld haben, wa? Aye DAT haben wa gern, geh und hol Geld, vorher kriegste nichts!\"";
                eText="#me growls \"Want to buy my stuff but 'as not enough money, huh? Aye THAT we like 'ere, go and get some money, before that ya won't get anythin' 'ere!\"";
            elseif (Status==4) then -- Item ausverkauft // item out of stock
                gText="Arrr, dat is mir nu peinlich, dat Zeuch hab ich grad nich' da, musst sp�ter mal wieder komm'";
                eText="Arrr, that is now painful, I 'aven't that stuff around at tha moment, ya hav' to come back later again\"";
            elseif (Status==5) then -- Item wird nicht verkauft // item
                gText="#me grumbles \" Ick verkauf son' Zeuch nich', verstandn'? Kauf wat wat ick auch hab.\"";
                eText="#me grumbles \"I don't sell such stuff, understood? Buy somethin' I hav'.\"";
            elseif (Status==6) then -- Verkauf eines einzelnen Items erfolgreich // npcs.base.trader_functions.Selling of a single item succeed
                gText=npcs.base.functions.GenusSel(Values[2],"Nen","Ne","Nen").." "..world:getItemName(Values[2],0).." willste habn'? Geht klar, dat macht dann"..npcs.base.trader_functions.MoneyText(0,Values[3],Values[4],Values[5],TraderLang)..", aber hurtig.";
                eText="Ya want a "..world:getItemName(Values[2],1).."?Aye, 'ere ya ar', that makes"..npcs.base.trader_functions.MoneyText(1,Values[3],Values[4],Values[5],TraderLang).."but quick.";
            elseif (Status==7) then -- Verkaufspreis Ansage f�r ein Item // selling price announcement for an item
                gText=npcs.base.functions.GenusSel(Values[1],"Nen","Ne","Nen").." "..world:getItemName(Values[1],0).." kost' dich"..npcs.base.trader_functions.MoneyText(0,Values[2],Values[3],Values[4],TraderLang)..", un' kein Kupfer weniger!.";
                eText="Tha "..world:getItemName(Values[1],1).." costs ya"..npcs.base.trader_functions.MoneyText(1,Values[2],Values[3],Values[4],TraderLang)..", an' no single copper less!.";
            elseif (Status==8) then -- Einkaufspreis Ansage f�r ein Item // buying price announcement for an item
                gText=npcs.base.functions.GenusSel(Values[2],"Nen","Ne","Nen").." "..world:getItemName(Values[2],0)..", Hmm, is ja nich' die beste Qualit�t, wa? Na, sin' wa nich' so, dat w�hr' mir"..npcs.base.trader_functions.MoneyText(0,Values[3],Values[4],Values[5],TraderLang).." wert. Un' damit treib ick mich selbst innen Ruin!";
                eText="Hmm, isn' tha best quality, aye? But I will be nice, an' would giv' ya"..npcs.base.trader_functions.MoneyText(1,Values[3],Values[4],Values[5],TraderLang).." for ya "..Values[1].." "..world:getItemName(Values[2],1).." An' with that I cut my own throat through!";
            elseif (Status==9) then -- Einkauf von mehreren Items erfolgreich // npcs.base.trader_functions.Buying of multible items succeed
                gText="Du wills' "..Values[1].." "..world:getItemName(Values[2],0).." verkaufen? Ick geb' dir"..npcs.base.trader_functions.MoneyText(0,Values[3],Values[4],Values[5],TraderLang).."un' kenen Kupfer mehr, aye.";
                eText="Ya want to sell "..Values[1].." "..world:getItemName(Values[2],1).."? I giv' ya"..npcs.base.trader_functions.MoneyText(1,Values[3],Values[4],Values[5],TraderLang).."an' no single copper more, aye.";
            elseif (Status==10) then -- Item das gekauft werden soll nicht vorhanden // item that should be buyed is not aviable
                gText="#me murrt \"Bei Irmoroms Barte! Mir wat verkaufn wolln aber es net haben, wa? Nu geh aber mal schnell und hols, dat sach ick dir! Solang siehste kene M�nze.\"";
                eText="#me grumbles \"By Irmoroms beard! Want to sell me somethin' but dunno havin' it, huh? Now go and get it, that I say ya! Before that ya won't see any coin.\"";
            elseif (Status==11) then -- H�ndler hat nicht genug Geld // trader don't have enough money
                gText="Arrr, verdammt aber auch! Meine Kasse is' leer. Da musste dich gedulden, oder mir einfach wat abkaufen, Harr Harr!";
                eText="Arrr, damn it! My cash box is empty. Ya hav' to be patient, or just buy somethin' from me, Harr Harr!";
            elseif (Status==12) then -- H�ndler kauft das Item nicht // trader didn't buy the item
                gText="Wat willste mir da andrehn? Nee nee, sowas, dat kauf ick nich'. Versuchs bei nem andern Idioten.";
                eText="What do ya want to sell me ther'? Nay nay, I don't buy that stuff. Try it by some other idiot!";
            elseif (Status==13) then -- Einkauf eines einzelnen Items erfolgreich // npcs.base.trader_functions.Buying of a single item succeed
                gText=npcs.base.functions.GenusSel(Values[2],"Nen","Ne","Nen").." "..world:getItemName(Values[2],0).." haste da? Na, is' zwar nich' dat beste Zeuch, dennoch geb ick dir"..npcs.base.trader_functions.MoneyText(0,Values[3],Values[4],Values[5],TraderLang)..". Bin ick nich' nett? Harr Harr!";
                eText="Ya want to sell a "..world:getItemName(Values[2],1).."? Don't seem to be tha best stuff, but I will giv' ya"..npcs.base.trader_functions.MoneyText(1,Values[3],Values[4],Values[5],TraderLang)..". I am nice, I am not? Harr Harr!";
            elseif (Status==14) then -- Liste der Waren die der NPC verkauft ist nicht leer // List of the wares the NPC sells, is not empty
                gText="Ick verkauf dir wichtiges Zeuch f�rn Zwergenalltag! Waffn, Helme, Schilde un' Werkzeuge, siehs dir ruhig an. Ansehen! Dat heisst nich' antatschen!";
                eText="I sell important stuff for tha dwarves everyday life! Weapons, helmets, shields an' tools, just hav' a look! Look! That means no damn touchin'!";
            elseif (Status==15) then -- Liste der Waren die der NPC verkauft ist leer // List of the wares the NPC sells, is empty
                gText="Der Laden hat Heut' zu, wird nich's verkauft. Versuchs nen andersmal wieder, aye!";
                eText="The shop is closed today, nothin' for sale. Try it another day again, aye!";
            elseif (Status==16) then -- Liste der Waren die der NPC kauft ist nicht leer // List of the wares the NPC buys, is not empty
                gText="Ick kauf allerlei Waffen, wie Schwerter un' �xte un' so. Aber auch ne menge Helme, zeich einfach mal watte so hast.";
                eText="I buy all kinds of weapons, swords an' axes an' so on. But I buy alot of helmet stuff too, just show what ya hav'.";
            elseif (Status==17) then -- Liste der Waren die der NPC kauft ist leer // List of the wares the NPC buys, is empty
                gText="Arrr, heut' mach ich frei, ick kaufe nichts. Versuchs nen andermal wieder. Un' nu lass mich in ruh!";
                eText="Arrr, today I hav' free, I don't buy anythin'. Try it an other day again. An' now let me alone!";
            elseif (Status==18) then
                gText="Bei Irmorom, musste mich damit nerven? Najut, es is' der "..Values[1]..". Tach des Monats "..Values[2].." im Jahre "..Values[3]..". Un' nu sei still.";
                local seleced=math.random(1,2)
                if (seleced==1) then
                    eText="By Irmorom! Do ya hav' to annoy me with that? Oookay, it's day "..Values[1].." of "..Values[2].." of tha year "..Values[3]..". An' now be quiet.";
                elseif (seleced==2) then
                    eText="#me grumbles \"Why can't they be just quiet, arrr. We hav' tha "..npcs.base.functions.EnglDigit(Values[1]).." of "..Values[2].." of tha year "..Values[3]..".\"";
                end
            end

            if (Status~=0) then
                outText=npcs.base.functions.GetNLS(originator,gText,eText);
                thisNPC:talk(CCharacter.say,outText);
            end

            ---------------------------------- DON'T EDIT BELOW HERE ------------------------------
            if (string.find(message,"[sS]tatus")~=nil and originator:isAdmin()==true) then
                thisNPC:talk(CCharacter.say,"Copper="..TraderCopper ..", next delivery: "..nextDelivery.."cycCount:"..cycCount);
                statusString="Wares: ";
                for itnCnt=1,table.getn(TraderItemId) do
                    if string.len(statusString)+string.len(world:getItemName(TraderItemId[itnCnt],1))>240 then    -- line too long
                        originator:inform(statusString);                     -- say everything until here
                        statusString="";
                    end
                    statusString=statusString..world:getItemName(TraderItemId[itnCnt],1).."="..TraderItemNumber[itnCnt]..", ";
                end
                originator:inform(statusString);
            end
            if (string.find(message,"[Rr]efill")~=nil and originator:isAdmin()==true) then
                for itnCnt=1,table.getn(TraderItemId) do
                    refill(itnCnt);
                    if (TraderCopper<TraderStdCopper) then TraderCopper=TraderStdCopper end
                end
            end -- string find buy/sell/list...
        else
            if (verwirrt==false) then
                gText="#me sieht dich leicht verwirrt an";
                eText="#me looks at you a little confused";
                outText=npcs.base.functions.GetNLS(originator,gText,eText);
                thisNPC:talk(CCharacter.say,outText);
                verwirrt=true;
            end
        end
    end --id
end--function
