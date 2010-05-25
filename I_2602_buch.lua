--Tageb�cher
dofile("quest_createMaze.lua")
function init()

        BookGerman={};
        BookEnglish={};
        BookGerman[0]={};  
        BookEnglish[0]={}; 
        BookGerman[1]={};  
        BookEnglish[1]={}; 
        BookGerman[2]={};
        BookEnglish[2]={};
        BookGerman[3]={};
        BookEnglish[3]={};

        --Deutsche Bucheintr�ge: Tagebuch eines Abenteurers
        BookGerman[1][0] = "Tagebuch eines Abenteurers";
        BookGerman[1][1] = "Die H�hle von Irundar muss hier irgendwo sein...Ein Waldl�ufer hat genau diese Bucht beschrieben!";
        BookGerman[1][2] = "Diese H�hle ist recht entt�uschend.";
        BookGerman[1][3] = "Wenn ich hier noch l�nger suche werde ich bald den Verstand verlieren...";
        BookGerman[1][4] = "Ha! Jetzt ist mir alles klar. Dies ist nicht die H�hle von Irundar...dies ist nur eine Passage, ein Zugang.";
        BookGerman[1][5] = "Wahrscheinlich wurde der Zugang vor langer Zeit versch�ttet versch�ttet...obwohl...was w�re wenn...";
        BookGerman[1][6] = "Endlich jenseits der Zugangsh�hle und nun: Die H�hle von Irundar...die H�hle ist Irundar, Irundar ist die H�hle. Dies ist einfach �berw�ltigend!";
        --Ende Deutsche Bucheintr�ge: Tagebuch eines Abenteurers

        --Englische Bucheintr�ge: Tagebuch eines Abenteurers
        BookEnglish[1][0] = "Diary of an adventurer";
        BookEnglish[1][1] = "The Cave of Irundar must be somewhere near...A Ranger described exactly this bay!";
        BookEnglish[1][2] = "This cave is really disappointing.";
        BookEnglish[1][3] = "If I continue to search around down here, I will go crazy...";
        BookEnglish[1][4] = "Ha! Now everything becomes clear to me. This is not the Cave of Irundar...this is just a passage, an entrance.";
        BookEnglish[1][5] = "The entrance was properbly closed a long time ago...on the other hand...what if...";
        BookEnglish[1][6] = "Finally I went passed the entrance cave and now: The Cave of Irundar...the cave is Irundar, Irundar is the cave. This is just amazing!";
        --Ende Englische Bucheintr�ge: Tagebuch eines Abenteurers

        --Deutsche Bucheintr�ge: Schmiedelehrling Irenur
        BookGerman[2][0] = "Irenurs Tagebuch";
        BookGerman[2][1] = "Endlich bin ich in Irundar, der verborgenen Stadt angelangt. Was ein Treiben auf dem Marktplatz! Ich h�tte nicht gedacht dass hier jeder so besch�ftigt ist."
        BookGerman[2][2] = "Soeben habe ich bei Quartiermeister Solarin in Schlo� Irundar vorgesprochen und ihm das Empfehlungsschreiben von Meister Delarod gezeigt. Ich kann in einer kleinen Wohnung mit Blick auf den Marktplatz wohnen."
        BookGerman[2][3] = "Viele H�ndler scheinen von au�erhalb zu kommen, ich frage mich wie sie die Stadt erreichen; auf meinem Hinweg bin ich nicht vielen Leuten begegnet, bis auf den Torw�chter am eher unscheinbaren Stadttor."
        BookGerman[2][4] = "Heute habe ich mich Gro�meister Rinaad vorgestellt und ihm das Empfehlungsschreiben von Meister Delarod gezeigt."
        BookGerman[2][5] = "Er hat kurz gel�chelt und gemeint: 'Delarod meint also, dass du zum Meister berufen bist? Irenur, richtig? Hmhm...bei mir z�hlt nur harte Arbeit. Folge mir und ich werde dich in der magischen Schmiedekunst unterweisen!'"
        BookGerman[2][6] = "Die erste Woche war recht hart, so dass ich kaum dazu kam Eintr�ge hinzuzuf�gen. Jeden Abend wenn ich von der Arbeit heimkehre bin ich todm�de."
        BookGerman[2][7] = "Rinaad ist ein harter aber guter Lehrer. Heute war ich in der Lage meine erste magische Dolchklinge zu schaffen. Auch wenn sie nur zu gl�hen vermag, so ist es doch ein Anfang."
        BookGerman[2][8] = "Es gibt Probleme mit dem Lieferanten. Er ist seit einer Woche �berf�llig. Gro�meister Rinaad hat mich damit beauftragt nach dem Norden zu wandern und bei den Minen nach ihm zu fragen. Das bedeutet dass ich Zwerge sehen werde!"
        BookGerman[2][9] = "Au�erdem ist dies die erste Gelegenheit Irundar f�r einige Zeit zu verlassen und wieder auf der Oberfl�che zu wandeln. Ich denke, ich werde wohl einige Zeit unterwegs sein."
        --Ende Deutsche Bucheintr�ge: Schmiedelehrling Irenur

        --Englische Bucheintr�ge: Schmiedelehrling Irenur
        BookEnglish[2][0] = "Irenur's diary";
        BookEnglish[2][1] = "Finally I am in the hidden city of Irundar. What a crowded marketplace! I did not imagine that this was such a busy place."
        BookEnglish[2][2] = "Right now I spoke to quartermaster Solarin in Irundar Castle and showed him the EMPFEHLUNGSSCHREIBEN from master Delarod. I can live in a small flat with view on the marketplace."
        BookEnglish[2][3] = "Many merchants seem to be commuters, I ask myself how they reach the city; on my way to Irundar I did not meet many people, except the guard at the UNSCHEINBAR city gate."
        BookEnglish[2][4] = "Today I introduced myself to grandmaster Rinaad and showed him the EMPFEHLUNGSSCHREIBEN from master Delarod."
        BookEnglish[2][5] = "He merely smiled and said: 'So Delarod thinks that you are worthy to become a master? Irenur, correct? Well, well...what counts with me is hard work only. Follow me and I will teach you the art of magic smithing.'"
        BookEnglish[2][6] = "The first week was really tough, so that I had little time to add new entries. Each evening when I return from work, I am just exhausted and fall asleep."
        BookEnglish[2][7] = "Rinaad is a demanding but very able teacher. Today I was able to create my first magic DOLCHblade. Even if it is just able to glow, it is still a beginning."
        BookEnglish[2][8] = "Problems with the supplier have occurred. He is one week late. Grandmaster Rinaad has told me to wander to the north and ask for him at the mines. This means that I am going to see dwarfs!"
        BookEnglish[2][9] = "Furthermore this is my first opportunity to leave Irundar for a longer peroid of time and to wander on the surface again. I will be away for quite a while, I think."
        --Ende Englische Bucheintr�ge: Schmiedelehrling Irenur

        --Deutsche Bucheintr�ge: Auftragsbuch Rinaads
        BookGerman[3][0] = "Rinaads Auftragsbuch";
        BookGerman[3][1] = "Die ersten Seiten sind herausgerissen..."
        BookGerman[3][2] = "Zwei leuchtende Dolche f�r Haredar."
        BookGerman[3][3] = "Ein Feuerschwert f�r Selan."
        BookGerman[3][4] = "Ein Giftdolch f�r Murnan."
        BookGerman[3][5] = "Ein giftresistenter Plattenpanzer f�r den Lord von Krotir."
        BookGerman[3][6] = "50 schnelle Stahlbolzen f�r Serunir."
        BookGerman[3][7] = "Ein Smaragdschwert f�r Haldon."
        BookGerman[3][8] = "Ein Ring gegen b�se Geister f�r Cirdon."
        BookGerman[3][9] = "Ein S�uredolch f�r Murnan."
        BookGerman[3][10] = "Ein s�ureresistenter Plattenpanzer f�r den Lord von Krotir."
        BookGerman[3][11] = "Ein Kurzschwert mit Namensgravur f�r Juroon."
        BookGerman[3][12] = "Ein leichter Metall-Kampfstab f�r Alatur."
        BookGerman[3][13] = "Ein Eisschwert f�r Welian."
        BookGerman[3][14] = "Ein Langschwert mit der Gravur 'Lothlendar' f�r Erzmagier Liv. (Hat seinen Hut bei mir vergessen! - zur�ckbringen)"
        BookGerman[3][15] = "Ein K�ltedolch f�r Murnan."
        BookGerman[3][16] = "Ein k�lteresistenter Plattenpanzer f�r den Lord von Krotir."
        BookGerman[3][17] = "Ein Eisschwert f�r Urnon."
        BookGerman[3][18] = "Ein Schutzring gegen b�se Geister f�r Cirdon."
        BookGerman[3][19] = "Ein Reiseamulett mit eingefasstem gesegnetem Wasser f�r Norolith."
        BookGerman[3][20] = "Ein Skimitar des Waldes f�r Erenar."
        BookGerman[3][21] = "Ein Feuerdolch f�r Murnan."
        BookGerman[3][22] = "Ein feuerresistenter Plattenpanzer f�r den Lord von Krotir."
        BookGerman[3][23] = "Ein Schutzring f�r Cirdon. (gegen b�se Geister)"
        BookGerman[3][24] = "Eine Katana der Kraft f�r Ordar."



        --Ende Deutsche Bucheintr�ge: Auftragsbuch Rinaads

        --Englische Bucheintr�ge: Auftragsbuch Rinaads
        BookEnglish[3][0] = "Rinaad's order book";
        BookEnglish[3][1] = "The first pages have been torn out...";
        BookEnglish[3][2] = "Two shining daggers for Haredar.";
        BookEnglish[3][3] = "A firesword for Selan.";
        BookEnglish[3][4] = "A poison dagger for Murnan.";
        BookEnglish[3][5] = "A poison resistent plate armor for the Lord of Krotir.";
        BookEnglish[3][6] = "50 fast steel bolts for Serunir.";
        BookEnglish[3][7] = "A smaragd sword for Haldon.";
        BookEnglish[3][8] = "A ring against evil spirits for Cirdon.";
        BookEnglish[3][9] = "An acid dagger for Murnan.";
        BookEnglish[3][10] = "An acid resistent plate armor for the Lord of Krotir.";
        BookEnglish[3][11] = "A short sword with engraved name for Juroon.";
        BookEnglish[3][12] = "A lightweight metall battle staff for Alatur.";
        BookEnglish[3][13] = "An ice sword for Welian.";
        BookEnglish[3][14] = "A longsword with the engraved word 'Lothlendar' for the archmage Liv. (He left his hat behind! - have to bring it back)";
        BookEnglish[3][15] = "A frost dagger for Murnan.";
        BookEnglish[3][16] = "A frost resistent plate armor for the Lord of Krotir.";
        BookEnglish[3][17] = "An ice sword for Urnon.";
        BookEnglish[3][18] = "A ring of protection against evil spirits for Cirdon.";
        BookEnglish[3][19] = "A travel amulet with embedded blessed water for Norolith.";
        BookEnglish[3][20] = "A scimitar of the forrest for Erenar.";
        BookEnglish[3][21] = "A fire dagger for Murnan.";
        BookEnglish[3][22] = "A fire resistent plate armor for the Lord of Krotir.";
        BookEnglish[3][23] = "A ring of protection for Cirdon. (against evil spirits)";
        BookEnglish[3][24] = "A katana of power for Ordar.";
        --Ende Englische Bucheintr�ge: Auftragsbuch Rinaads


        checkFirst = 2;
end


function LookAtItem( User, Item )
    if (checkFirst==nil) then
        init();
    end
    if ( User:getPlayerLanguage()==0 ) then
        world:itemInform(User, Item, BookGerman[Item.data][0]);
    else
        world:itemInform(User, Item, BookEnglish[Item.data][0]);
    end;
end


function UseItem(User, Item, TargetItem, Counter, Param)
    if (checkFirst==nil) then
        init();
    end

    --Ab hier braucht nichts mehr ge�ndert werden um verschiedene B�cher zu erstellen.

    if (Counter == 250) then createWaterCaveMaze() end;
--    if Counter >= 240 then
--        User:inform( "Progress for Quest 1: "..User:getQuestProgress( 1 ) );
--        User:inform( "Progress for Quest 2: "..User:getQuestProgress( 2 ) );
--        User:setQuestProgress( 0, 0 );
--        User:setQuestProgress( 1, Counter );
--    end;

    --Spieler ist Deutsch sprechend
    if ( User:getPlayerLanguage()==0 ) then
        --Pr�fen ob eine BookGerman gr��er als die eigentlichen BuchBookGermann angeschaut werden soll
        if ( Counter > table.getn(BookGerman[Item.data]) ) then
            User:inform("Das Buch hat nicht soviele Seiten!");
        else
            x = BookGerman[Item.data][Counter]
            User:inform( ""..x);
        end
        --Spieler ist Englisch sprechend
    elseif ( User:getPlayerLanguage()==1 ) then
        --Pr�fen ob eine BookGerman gr��er als die eigentlichen BuchBookGermann angeschaut werden soll
        if ( Counter > table.getn(BookEnglish[Item.data]) ) then
            User:inform("The book hasn't so many pages!");
        else
            x = BookEnglish[Item.data][Counter]
            User:inform( ""..x);
        end
    end

    User:learn(4,"library research",2,100)
end
