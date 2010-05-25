require("base.common")

module("items.books.2620_language_book", package.seeall())

-- UPDATE common SET com_script='items.books.2620_language_book' WHERE com_itemid = 2620;

function UseItem(User,SourceItem,TargetItem,Counter,Param,ltstate)
    local langcode = math.floor(SourceItem.data/10);
    local modecode = SourceItem.data - (langcode * 10);
    
    if (modecode == 2) then
        if (User:getSkill("ancient language") < 60) then return end
        if ( ltstate == nil or ltstate == Action.success ) then
            User:warp(position(-243,-340,-3));
        elseif ( ltstate == Action.none ) then
            User:startAction( 100,53, 4, 0, 0);
            User:talkLanguage( CCharacter.say, CPlayer.german, "#me beginnt in einem Buch zu lesen.");
            User:talkLanguage( CCharacter.say, CPlayer.english, "#me starts reading in a book.");
        elseif ( ltstate == Action.abort ) then
            User:talkLanguage(CCharacter.say, CPlayer.german, "#me h�rt auf in dem Buch zu lesen.");
            User:talkLanguage(CCharacter.say, CPlayer.english,"#me stops reading in the book.");
        end
        return
    end 
    
    local Skillname = GetLanguage(langcode,true);
    
    local Skill=User:getSkill(Skillname);
    if (Skill==0 and modecode==1) then
        User:increaseSkill(1,Skillname,1);
        SourceItem.data=SourceItem.data-1;
        world:changeItem(SourceItem);
    end
    
    if (User:increaseAttrib("intelligence",0) < GetDifficulty(langcode)) then
        base.common.InformNLS(User,"Du verstehst nichts von dem, was hier steht","You understand nothing from the things, written in this book");
    end
           
    if (Skill<1) then
        base.common.InformNLS(User,"Du verstehst nichts von dem, was hier steht","You understand nothing from the things, written in this book");
    elseif (Skill>59) then
        base.common.InformNLS(User,"Du findest nichts was du noch nicht weist, in diesem Buch","You find nothing new in this book");
    else
        if (Counter ==1) then
            if (Skill<15) then
                if Learning(User,15,Skillname) then
                    base.common.InformNLS(User,"Du lernst erste Grundlagen der "..GetLanguage(langcode,false),"You learn first basics of the "..Skillname);
                else
                    base.common.InformNLS(User,"Du kannst dich nicht auf dieses schwere Thema konzentrieren","You can't concentrate on this topic");
                end
            else
                base.common.InformNLS(User,"Das was hier steht kannst du schon","The things written here, you know allready");
            end
        elseif (Counter==2) then
            if (Skill<30) then
                if (Skill>14) then
                    if Learning(User,30,Skillname) then
                        base.common.InformNLS(User,"Du lernst die Grundlegenden Vokabeln der Sprache","You learn the basic words of the language");
                    else
                        base.common.InformNLS(User,"Du kannst dich nicht auf dieses schwere Thema konzentrieren","You can't concentrate on this topic");
                    end
                else
                    base.common.InformNLS(User,"Was hier steht, verstehst du noch nicht","You don't understand the things written down on this page");
                end
            else
                base.common.InformNLS(User,"Das was hier steht kannst du schon","The things written here, you know allready");
            end
        elseif (Counter==3) then
            if (Skill<45) then
                if (Skill>29) then
                    if Learning(User,45,Skillname) then
                        base.common.InformNLS(User,"Du lernst die Grammatik der Sprache.","You learn the grammatics of the "..Skillname..".");
                    else
                        base.common.InformNLS(User,"Du kannst dich nicht auf dieses schwere Thema konzentrieren","You can't concentrate on this topic");
                    end
                else
                    base.common.InformNLS(User,"Was hier steht, verstehst du noch nicht","You don't understand the things written down on this page");
                end
            else
                base.common.InformNLS(User,"Das was hier steht kannst du schon","The things written here, you know allready");
            end            
        elseif (Counter==4) then
            if (Skill>30) then
                if Learning(User,60,Skillname) then
                    base.common.InformNLS(User,"Du lernst die letzten Feinheiten der Sprache.","You learn the last intricacies of the "..Skillname..".");
                else
                    base.common.InformNLS(User,"Du kannst dich nicht auf dieses schwere Thema konzentrieren","You can't concentrate on this topic");
                end
            else
                base.common.InformNLS(User,"Was hier steht, verstehst du noch nicht","You don't understand the things written down on this page");
            end
        end
    end               
    if ((TargetItem.id == 266) or (TargetItem.id == 267)) then
        world:erase(SourceItem,1)
        --printerr("Erase aus skript ausgefuehrt");
    elseif (TargetItem.id == 329 ) then
        if ( Skill > 50) then
            if (modecode==0) then
                base.common.InformNLS(User,"Du schreibst eine Kurze Notiz in das Buch die dem n�chsten Lernenden Helfen wird, den Einstieg in die Sprache zu finden",
                "You write a short note into the book, which will help the next one, who wants to learn, to start learning the language");
                SourceItem.data=SourceItem.data+1;
                world:changeItem(SourceItem);
                world:erase(TargetItem,1);
            end
        end
    end
    User:learn(4,"library research",2,100)
end

function LookAtItem(User,Item)
    local langcode = math.floor(Item.data/10);
    local modecode = Item.data - (langcode * 10);
    if (modecode == 2) then
        world:itemInform(User,Item,base.common.GetNLS(User,"Buch des Ephraim","Book of Ephraim"));
    else
        world:itemInform(User,Item,base.common.GetNLS(User,"Lehrbuch der "..GetLanguage(langcode,false),"textbook of the "..GetLanguage(langcode,true)));
    end
end

function Learning(User,Value,Skillname)
    MC=User:getMentalCapacity();
    if (MC>100) then
        return false
    else
        User:setMentalCapacity(2100);
        local Skill=User:getSkill(Skillname);
        User:increaseSkill(1,Skillname,Value-Skill);
        return true
    end
end

function GetLanguage(code,engl)
    if (code==0) then return ( engl and "ancient language" or "Altert�mlichen Sprache" );
    elseif (code==1) then return ( engl and "common language" or "Gemeinsammen Sprache" );
    elseif (code==2) then return ( engl and "human language" or "Sprache der Menschen" );
    elseif (code==3) then return ( engl and "dwarf language" or "Sprache der Zwerge" );
    elseif (code==4) then return ( engl and "elf language" or "Sprache der Elfen" );
    elseif (code==5) then return ( engl and "orc language" or "Sprache der Orks" );
    elseif (code==6) then return ( engl and "halfling language" or "Sprache der Halblinge" );
    elseif (code==7) then return ( engl and "lizard language" or "Sprache der Echsen" );
    elseif (code==8) then return ( engl and "goblin language" or "Sprache der Goblins" );
    elseif (code==9) then return ( engl and "fairy language" or "Sprache der Feen" );
    elseif (code==10) then return ( engl and "gnome language" or "Sprache der Gnome" );
    end
end

function GetDifficulty(code)
    if (code==0) then return 13;
    elseif (code==1) then return 2;
    elseif (code==2) then return 5;
    elseif (code==3) then return 5;
    elseif (code==4) then return 8;
    elseif (code==5) then return 2;
    elseif (code==6) then return 6;
    elseif (code==7) then return 10;
    elseif (code==8) then return 5;
    elseif (code==9) then return 7;
    elseif (code==10) then return 5;
    end
end