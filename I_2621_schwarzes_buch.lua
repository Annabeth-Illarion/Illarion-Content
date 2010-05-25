-- BIG HEAVY BLACK BOOK

-- UPDATE common SET com_script='I_2621_schwarzes_buch.lua' WHERE com_itemid=2621;
-- UPDATE itemname SET itn_german='schwarzes Buch', itn_english='black book' WHERE itn_itemid=2621;
require("base.books")

function UseItem(User, SourceItem, TargetItem, Counter, Param)
    if ( TargetItem.id == 266 ) or ( TargetItem.id == 267 ) then
        world:erase(SourceItem,1);
    else
        if base.books.InitBook() then
            base.books.AddLanguage("common language",0);
            
base.books.AddGermanBookText("Handbuch der Alchemie",0,0,0);
base.books.AddGermanBookText("niedergelegt von den M�nchen des Klosters Eldan",0,0,0);
base.books.AddGermanBookText("Geheimnisse der Alchemie besch�ftigen uns schon seit Generationen.",0,0,0);
base.books.AddGermanBookText("Dieses Buch soll dem geneigten Leser dabei helfen, Tr�nke zu brauen.",0,0,0);
base.books.AddGermanBookText("Die Geheimnisse dieses Buches sind vertraulich zu behandeln.",0,0,0);
base.books.AddGermanBookText("Tr�nke im Sinne dieses Buches sind Pflanzenausz�ge und andere Elixiere.",0,0,0);
base.books.AddGermanBookText("Pflanzenausz�ge und Elixiere dienen nicht der Ern�hrung.",0,0,0);
base.books.AddGermanBookText("Zur Herstellung einfacher Tr�nke bedarf es keiner Magie.",0,0,0);
base.books.AddGermanBookText("Jede leere Flasche ist als Beh�lter f�r Tr�nke geeignet.",0,0,0);
base.books.AddGermanBookText("Am Anfang der Alchemie stehen umfassende Kenntnisse der Pflanzenkunde.",0,0,0);
base.books.AddGermanBookText("Viele Pflanzen haben Inhaltsstoffe, die man f�r Tr�nke verwenden kann.",0,0,0);
base.books.AddGermanBookText("Bier ist ein Getr�nk, aber kein alchemistisches Gebr�u",0,0,0);
base.books.AddGermanBookText("Heilpflanzen haben jeweils zwei einander ausgleichende Eigenschaften.",0,0,0);
base.books.AddGermanBookText("Die Eigenschaften in Pflanzen nennen wir ihre Wirkstoffe.",0,0,0);
base.books.AddGermanBookText("Jede Pflanze besitzt also zwei Wirkstoffe.",0,0,0);
base.books.AddGermanBookText("Jeder Trank ist von sich aus zun�chst neutral, also ohne Wirkstoffe",0,0,0);
base.books.AddGermanBookText("Wirkstoffneutralit�t stellt man sich vor als die Mitte eines Flusses.",0,0,0);
base.books.AddGermanBookText("Zu den Ufern hin ver�ndert sich der Wirkstoffgehalt ins Extreme",0,0,0);
base.books.AddGermanBookText("Zu einer der beiden Seiten des Flusses steigt der Gehalt ins Extreme.",0,0,0);
base.books.AddGermanBookText("Zur anderen Uferseite des Flusses sinkt der Gehalt ins Extreme.",0,0,0);
base.books.AddGermanBookText("Es gibt genau acht Wirkstoffe, jede Pflanze besitzt zwei davon.",0,0,0);
base.books.AddGermanBookText("Jede Pflanze wirkt einerseits erh�hend, andererseits senkend.",0,0,0);
base.books.AddGermanBookText("Alchemie ist eine Grundlage zum Erwerb druidischer F�higkeiten.",0,0,0);
base.books.AddGermanBookText("Mit Erhalt der ersten Rune kann der Druide Pflanzeninhalte bestimmen.",0,0,0);
base.books.AddGermanBookText("Die zweite Rune hilft dem Druiden bei der Analyse eines Trankes.",0,0,0);
base.books.AddGermanBookText("Beim Abf�llen des Saftes in eine Flasche, Pflanze in der Hand halten.",0,0,0);
base.books.AddGermanBookText("Pflanzensaft f�ngt man in einer Flasche auf, die man in der Hand h�lt.",0,0,0);
base.books.AddGermanBookText("Durch Zusatz weiterer Extrakte l�sst sich die Wirkung gezielt �ndern.",0,0,0);
base.books.AddGermanBookText("Hydrazin ist ein Wirkstoffname.",0,0,0);
base.books.AddGermanBookText("In der Reihe der Wirkstoffe folgt Illidrium auf Orcanol.",0,0,0);
base.books.AddGermanBookText("Der letzte der acht Wirkstoffe hei�t Dracolin.",0,0,0);
base.books.AddGermanBookText("Caprazin und Dracolin stehen nacheinander in der Wirkstoffliste.",0,0,0);
base.books.AddGermanBookText("Hyperborelium ist der erste Wirkstoff der zweiten Gruppe.",0,0,0);
base.books.AddGermanBookText("Die acht Wirkstoffe werden in zwei Vierergruppen gegliedert.",0,0,0);
base.books.AddGermanBookText("Eine pflanze kann nur einenn Wirkstoff jeder Gruppe ansprechen.",0,0,0);
base.books.AddGermanBookText("Echolon geh�rt wie Illidrium zur ersten Gruppe der Wirkstoffe.",0,0,0);
base.books.AddGermanBookText("Der zweite Wirkstoff der ersten Gruppe ist Echolon.",0,0,0);
base.books.AddGermanBookText("Tr�nke mit Wirkungen haben Nebenwirkungen.",0,0,0);
base.books.AddGermanBookText("Tr�nke k�nnen auch Speisen und Getr�nken beigemischt werden.",0,0,0);
base.books.AddGermanBookText("Es gibt Tr�nke, die sich zum Vergiften von Waffen und Pfeilen eignen.",0,0,0);
base.books.AddGermanBookText("Mit Tr�nken lassen sich Krankheitserreger erzeugen.",0,0,0);
base.books.AddGermanBookText("Ork-Fieber lautet eine h�ufige Diagnose.",0,0,0);
base.books.AddGermanBookText("Eine gef�rchtete Seuche ist die sogenannte Wolfspest.",0,0,0);
base.books.AddGermanBookText("Der Sumpfkrampf wirkt nicht ansteckend, sagt man.",0,0,0);
base.books.AddGermanBookText("Skorpionseuche soll vor allem in W�stengegenden verbreitet sein.",0,0,0);
base.books.AddGermanBookText("Eine noch weitgehend unerforschte Krankheit ist die Trollsucht.",0,0,0);
base.books.AddGermanBookText("Es sollen schon Menschen durch Gnom-Wahn ums Leben gekommen sein.",0,0,0);
base.books.AddGermanBookText( "Drachenpocken klingen gef�hrlich, tats�chlich sind sie eher l�stig.",0,0,0);
base.books.AddGermanBookText("Das Vein'sche Syndrom ist eine sehr seltene Krankheit.",0,0,0);
base.books.AddGermanBookText("Hydrazin wirkt unmittelbar auf das allgemeine Gesundheitssystem.",0,0,0);
base.books.AddGermanBookText("Magier vertrauen bei Manaschwund auf Echolon.",0,0,0);
base.books.AddGermanBookText("Deinen Hunger bek�mpfst du wirksam mit ein paar Tropfen Orcanol.",0,0,0);
base.books.AddGermanBookText("Illidrium wirkt in hohen Konzentrationen giftig.",0,0,0);
base.books.AddGermanBookText("Richtig dosiert ist Illidrium ein wirksames Gegengift.",0,0,0);
base.books.AddGermanBookText("Hyperborelium soll helfen, die Manieren zu verbessern.",0,0,0);
base.books.AddGermanBookText("Kenner sprechen von Fenolin als der Gl�cksdroge.",0,0,0);
base.books.AddGermanBookText("Pr�flinge schw�ren auf Dracolin, wenn es um die Lernf�higkeit geht.",0,0,0);
base.books.AddGermanBookText("Eine hohe Antidosis Dracolin hilft, schlechte Erinnerungen zu tilgen.",0,0,0);
base.books.AddGermanBookText("Orcanol wurde in den Orkkriegen benutzt, um Gegner hungern zu lassen.",0,0,0);
base.books.AddGermanBookText("Starker Entzug von Fenolin kann zu vegetativen St�rungen f�hren.",0,0,0);
base.books.AddGermanBookText("Echolonentzug wirkt fatal auf die F�higkeiten eines Zauberers.",0,0,0);
base.books.AddGermanBookText("Alchimisten behaupten, mit Hydrazin K�rperkraft beeinflussen zu k�nnen.",0,0,0);
base.books.AddGermanBookText("Der mit Echolon zu erzielende Effekt ist nicht anhaltend.",0,0,0);
base.books.AddGermanBookText("Illidrium soll aus einem dummen Schwein einen Gelehrten machen.",0,0,0);
base.books.AddGermanBookText("Ein Mangel von Fenolin soll hilflos vor magischen Einfl�ssen machen.",0,0,0);
base.books.AddGermanBookText("Die schnellsten L�ufer Gobiaths vertrauen auf Dracolin.",0,0,0);
base.books.AddGermanBookText("Eine falsche Dosierung von Dracolin f�hrt zu L�hmungserscheinungen",0,0,0);
base.books.AddGermanBookText("3x t�glich Caprazin macht Zwerge unempfindlich gegen jedes Wetter.",0,0,0);

        end
        base.books.SendBookPage(User,SourceItem.data,Counter);
    end
end  -- function

function LookAtItem(User,Item)
    if base.books.InitTitle() then
        base.books.AddGermanBookTitle("Buch mit dem Titel \"Handbuch der Alchemie\"",0);
        
        base.books.AddEnglishBookTitle("Book with the title \"Handbook of alchemy\"",0);
    end
    base.books.GetBookItemInform(User,Item);
end
