--schwarzes_buch

--BIG THICK BLACK BOOK

-- UPDATE common SET com_script='I_2604_schwarzes_buch.lua' WHERE com_itemid=2604;
-- UPDATE itemname SET itn_german='schwarzes Buch', itn_english='black book' WHERE itn_itemid=2604
require("base.books")

function UseItem(User, SourceItem, TargetItem, Counter, Param)
      if ( TargetItem.id == 266 ) or ( TargetItem.id == 267 ) then
          world:erase(SourceItem,1);
      else
          if base.books.InitBook() then
            base.books.AddLanguage("common language",0);

            base.books.AddEnglishBookText("\n \n Orcish History and Culture",0,0,0);
            base.books.AddEnglishBookText("Legend states that orcs were created by Bragon as a gift to Moshran. He tried to ease his suffering, though the orcs therefore were infused with Moshran's anger.",0,0,0);
            base.books.AddEnglishBookText("Orcs are a little shorter than a human with greenish skin and often their lower jaw is jutted out.",0,0,0);
            base.books.AddEnglishBookText("Their society is not organized, in fact it consists of different tribes. Most of these tribes live as nomads, herding livestock. Pigs and sheep are the main source of supplies.",0,0,0);
            base.books.AddEnglishBookText("Orcs do not build houses instead they prefer living in caves. A Tribe's territory will often consist of many caves, some are natural and some are extended caves by the tribe.",0,0,0);
            base.books.AddEnglishBookText("Due to their expansion of these caves, many orcs have specialized in mining for ore and coal. Sometimes they will find rare gems and precious metals.",0,0,0);
            base.books.AddEnglishBookText("When the seasons change, so do the caves of the tribe. Special members, such as Shamans, live in the same cave all year round.",0,0,0);
            base.books.AddEnglishBookText("Larger orc tribes are split into sub-tribes. These sub-tribes have their own chiefs. The tribe leader is mostly the strongest of the pack and the shaman is the smartest. He usually is their leader.",0,0,0);
            base.books.AddEnglishBookText("The shaman's wishes are usually passed down to the leader by impressing him or simply by brewing the chief's favorite beer.",0,0,0);
            base.books.AddEnglishBookText("Most orc tribes are quite poor. Over many centuries, they have developed a rudimentary writing that consists of different scratches and symbols. In times of war, they use an encrypted text.",0,0,0);
            base.books.AddEnglishBookText("Most orc tribes honor differen Gods. Oldra, for most tribes, is prayed to in the spring. She is also called the 'Spring-Goddess' by them. In summer, they honor Bragon the 'Daily-sun-maker'.",0,0,0);
            base.books.AddEnglishBookText("Summertime often means war in orcish tribes, some pray to Moshran, known as the 'Bone-crusher' or 'Blood lord'. The war god of a tribe is either Moshran or Malachin, and sometimes it can be both.",0,0,0);
            base.books.AddEnglishBookText("Their wars are mostly territorial conflicts between other Orc tribes, not resulting in many deaths, but often it is seen as a sport or training for the orcs.",0,0,0);
            base.books.AddEnglishBookText("These wars include espionage, stealing of animals, and some battles and games to prove which clan is the strongest of the two.",0,0,0);
            base.books.AddEnglishBookText("In autumn, most of the tribes pray to Malachin, known as 'The Hunter', for a good hunt so they may prepare for the long winter ahead.",0,0,0);
            base.books.AddEnglishBookText("During winter, tribes live in the winter caves, and Cherga is the honored Goddess. Winter, to them, is the time of death, spirits, and their ancestors. Some ancestors skulls are placed on shrines.",0,0,0);
            base.books.AddEnglishBookText("They can also be placed in the shaman's or chief's quarters of the cave, to help them speak to them in their dreams.",0,0,0);
            base.books.AddEnglishBookText("Since tribes are quite poor, they tend to raid small villages or farms sometimes. Especially if they don't have enough food for the ensuing winter.",0,0,0);
            base.books.AddEnglishBookText("Orcs aren't normally bloodthristy, yet their main tactic against other races is to inspire fear. Captives who are too weak to survive are brutally killed and displayed to the other captives.",0,0,0);
            base.books.AddEnglishBookText("They will then let some of the bravest captives escape so they may tell the tales to the others. The others are sold as slaves or become personal servants, cooks, or are forced to help the women.",0,0,0);
            base.books.AddEnglishBookText("If a slave shows hard work and a strong soul, he will may be given a chance to leave. Sometimes, slaves marry a female orc and are taken into the tribe, creating many half-orcs.",0,0,0);
            base.books.AddEnglishBookText("Orcish art is quite different than the others. Orcish poetry doesn't rhyme, but tells stories and produces disharmonic sounds to underline or describe a situation.",0,0,0);
            base.books.AddEnglishBookText("Their music is mainly produced from horns or flutes and can be considered very loud. Orcs love drums, and often enjoy the strange music of a bard.",0,0,0);
            base.books.AddEnglishBookText("Orcs don't like to complicate matters, as it is better if a man speaks very bluntly and with as little words as possible. This can cause conflicts with elves.",0,0,0);
            base.books.AddEnglishBookText("If an orc is insulted, he usually doesn't strike at first. Instead, he will attempt to insult the person or try to make them look stupid, but since orcish humor is rough, this hardly happens.",0,0,0);

            base.books.AddGermanBookText("\n \n Das Volk der Orks",0,0,0);
            base.books.AddGermanBookText("Die Legende berichtet Bragon habe den Ork erschaffen als Geschenk f�r Moshran. Damit wollte er dessen Leiden lindern, indem er die Orks mit Moshrans Wut ausstattete.",0,0,0);
            base.books.AddGermanBookText("Orks sind etwas kleiner als Menschen, haben eine gr�nliche Haut und oftmals ragt ihr unterer Kieferknochen hervor.",0,0,0);
            base.books.AddGermanBookText("Ihr Zusammenleben wirkt ungeordnet, tats�chlich besteht es aus verschiedenen St�mmen. Die meisten dieser St�mme leben als Nomade und Weide-Hirten. Schweine und Schafe sind ihre Haupteinnahmequelle.",0,0,0);
            base.books.AddGermanBookText("Orks bauen keine H�user, sondern ziehen es vor, in H�hlen zu hausen. Das Stammesgebiet umfasst h�ufig mehrere H�hlen, nat�rliche wie auch solche, die von den St�mmen ausgebaut und erweitert wurden.",0,0,0);
            base.books.AddGermanBookText("Entsprechend der Ausdehnung dieser H�hlen, haben sich viele Orks auf den Kohle- und Erzbergbau verlegt. Manchmal sto�en sie auch auf Edelsteine und wertvolle Metalle.",0,0,0);
            base.books.AddGermanBookText("Mit dem Wandel der Jahreszeiten wechseln die Orks ihre H�hlen. Sonderlinge, wie die Schamanen, leben jedoch das ganze Jahr �ber in der gleichen Unterkunft.",0,0,0);
            base.books.AddGermanBookText("Gro�e Ork-Clans unterteilen sich in Unterst�mme mit jeweils eigenen Anf�hrern, meist der Kr�ftigste innerhalb des Rudels, wohingegen der Shamane meist der Geschickteste ist.",0,0,0);
            base.books.AddGermanBookText("Die W�nsche des Schamanen werden gew�hnlich dem Anf�hrer unterbreitet, indem man ihn beeindruckt - oder indem man ihm sein Lieblingsbier braut.",0,0,0);
            base.books.AddGermanBookText("Die meisten Orks sind ziemlich arm. �ber mehrere Jahrhunderte hinweg habe sie eine einfache Schrift entwickelt, die aus mehreren Zeichen und Symbolen besteht. In Kriegszeiten benutzen sie verschl�sselte Nachrichten.",0,0,0);
            base.books.AddGermanBookText("Die meisten Orksippen verehren mehrere G�tter. Oldra wird von vielen St�mmen im Fr�hjahr gehuldigt. Sie wird deshalb auch die \"Fr�hjahrsg�ttin\" genannt. Im Sommer verehren sie dann Bragon als den \"Gott der Sonnenwiederkehr\".",0,0,0);
            base.books.AddGermanBookText("Der Sommer ist f�r viele Orkst�mme die Zeit der Kriegsf�hrung, einige beten zu Moshran, auch als \"Knochen-Kracher\" oder als der \"Blut-Herr\" bekannt. Der Kriegsgott einer Sippe ist entweder Moshran oder Malachin, bisweilen auch beide.",0,0,0);
            base.books.AddGermanBookText("Ihre Kriege untereinander sind meist Gebietsstreitereien, bei denen es aber nicht zu vielen Todesopfern kommt und die oftmals eher als eine Art sportlicher Bet�tigung unter den Orks angesehen wird.",0,0,0);
            base.books.AddGermanBookText("Solche Kriege schlie�en auch Spionage ein, Viehdiebstahl und einige Schlachten dienen vor allem der �berpr�fung, welcher der rivalisierenden Clans der St�rkere ist.",0,0,0);
            base.books.AddGermanBookText("Im Herbst wenden sich dann die meisten Sippen Malachin, dem \"J�ger\" zu, zugunsten einer erfolgreichen Jagdsaison im Hinblick auf die bevorstehende Winterzeit.",0,0,0);
            base.books.AddGermanBookText("W�hrend der kalten Jahreszeit leben die Orks in ihren Winterquartieren und Cherga wird zur ehrenden Gottheit. Der Winter ist die Zeit des Todes, der Geister und der Ahnen. Die Sch�del einiger Ahnen werden in Schreinen aufbewahrt.",0,0,0);
            base.books.AddGermanBookText("Sie k�nnen aber auch in den von Schamanen oder H�uptlingen bewohnten H�hlenabschnitten aufbewahrt werden, wo sie dann zu jenen im Schlafe sprechen.",0,0,0);

            ---------
            
            AddLanguage("dwarf language",1);
            
            base.books.AddEnglishBookText( "Within this book you will find the written speech of our great King, founding father of Silverbrand, on behalf of our town.", 0, 0, 1 );
            base.books.AddEnglishBookText( "Dear citizens, allies and friends of Silverbrand,", 0, 0, 1 );
            base.books.AddEnglishBookText( "Silverbrand was no gift from the gods, it's the result of hard work of the founder dwarves, who digged the first caverns with their own hands, who payed every brick, every anvil and every furnace", 0, 0, 1 );
            base.books.AddEnglishBookText( "with their gold. This town was build using a total of more than 10.000 silvercoins (translated to current prices) which was payed by the founder dwarves alone.", 0, 0, 1 ); 
            base.books.AddEnglishBookText( "3/4 of this sum 10 dwarves payed and worked for all on their own, I myself have contributed about 5000 coins.", 0, 0, 1 );
            base.books.AddEnglishBookText( "Rugosch, Bombor, Caranthir and Gandela contributed about 1000 silvercoins, each through his own hard work.", 0, 0, 1 );
            base.books.AddEnglishBookText( "All founder dwarves agreed that every dwarf may find a home in this town if he is willing to proclaim the oath of trust.", 0, 0, 1 ); 
            base.books.AddEnglishBookText( "These dwarves, which buildings you take as if they'd been gifted by someone and which you use as if it'd be natural have decided that I should be king.", 0, 0, 1 );
            base.books.AddEnglishBookText( "Bombor smithed my crown with his own hands, Rugosch as the highest priest of Irmorom in this lands crowned me during a big festivity. ", 0, 0, 1 );
            base.books.AddEnglishBookText( "All dwarves that helped to build the town spoke their oath on myself, and thus elected myself to be the guardian of the finances, the lord and overseer over their work (the town) for my lifetime. ", 0, 0, 1 ); 
            base.books.AddEnglishBookText( "Even Irmoroms voice could be heard on the day of the coronation, blessing our kingdom and our work. ", 0, 0, 1 );
            base.books.AddEnglishBookText( "I demand respect from all who use the gifts these fouder dwarves have brought to us and live in Silverbrand. Only the elves have done simmilar to the dwarves, creating a similar kingdom on their ", 0, 0, 1 );
            base.books.AddEnglishBookText( "island. Nevertheless us dwarves were the first to have an own kingdom and that is one thing that shall never be forgotten. ", 0, 0, 1 ); 
            base.books.AddEnglishBookText( "And to stop the forgetting hear my voice and read my words. ", 0, 0, 1 );
            base.books.AddEnglishBookText( "Never forget that it were 3 dwarves who sat at a campfire and decided: WE WILL BUILD A TOWN, FOR US DWARVES ONLY. These three whose idea incited a burning desire in ", 0, 0, 1 );
            base.books.AddEnglishBookText( "the hearts of the dwarves were Bombor, Rugosch and Tialdin, and immediately, others followed: Caranthir, Gandela, Torekin, Galim, Belegi, Josef, Ingrain, Grimbart, Whisler, Rackere, Mishrak,", 0, 0, 1 ); 
            base.books.AddEnglishBookText( "Crotkin and many others but the ones listed where those who gave the most to help build this town.", 0, 0, 1 );
            base.books.AddEnglishBookText( "Now I hear the question why there's an oath and why Silverbrand is a monarchy with a soveign wielding absolute power.", 0, 0, 1 );
            base.books.AddEnglishBookText( "I answer this question: The founder dwarves wanted it to be like that. Every dwarf that comes to Silverbrand is a guest of those first dwarves, who have elected me to be their ", 0, 0, 1 ); 
            base.books.AddEnglishBookText( "king. Every dwarf that proclaims his oath, so these dwarves have decided, may call Silverbrand his home. ", 0, 0, 1 );
            base.books.AddEnglishBookText( "The only demand they ask is respect for their work. Respect and obedience for the king. ", 0, 0, 1 );
            base.books.AddEnglishBookText( "Who doesn't want to respect the founder dwarves should decide to find a new home, before he takes the oath. ", 0, 0, 1 ); 
            base.books.AddEnglishBookText( "Tialdin, King of Silverbrand ", 0, 0, 1 );
            base.books.AddGermanBookText( "Im Folgenden befindet sich eine Mitschrift einer Rede unseres gro�en K�nigs und Gr�nders von Silberbrand zur Gr�ndung von Silberbrand:", 0, 0, 1 );   
            base.books.AddGermanBookText( "Wehrte Untertanen, Verb�ndete und Freunde Silberbrands, ", 0, 0, 1 );
            base.books.AddGermanBookText( "Silberbrand wurde uns nicht von den G�ttern geschenkt, es ist das Ergebnis harter Arbeit der Gr�nderzwerge, ", 0, 0, 1 );      
            base.books.AddGermanBookText( "die mit ihren eigenen H�nden die Tunnel in den Fels trieben, jeden Stein, jeden Amboss und jede Esse mit ihrem Gold bezahlten. In dieser Stadt steckt nach damals g�ltigen Preisen der Gegenwert von ", 0, 0, 1 );   
            base.books.AddGermanBookText( "weit �ber 10.000 Silberbarren die die Gr�nderzwerge aufbrachten. Von diesen Mengen an Silber haben weniger als zehn Zwerge drei viertel alleine aufgebracht, ich selbst habe den Gegenwert von ", 0, 0, 1 );
            base.books.AddGermanBookText( "�ber 5.000 Barren aufgebracht. Rugosch, Bombor, Caranthir und Gandela jeweils alleine weit �ber 1.000 durch Silber oder Arbeit. Alle Gr�nderzwerge haben entschieden, das sie jeden Zwerg dieses ", 0, 0, 1 );   
            base.books.AddGermanBookText( "K�nigreich Heimat nennen lassen, der bereit ist den Treueeid abzulegen. Diese Zwerge deren Bauten ihr so selbstverst�ndlich hinnehmt und nutzt haben mich zum K�nig erkl�rt. Bombor schmiedete meine ", 0, 0, 1 );   
            base.books.AddGermanBookText( "Krone mit seinen eigenen H�nden, Rugosch als h�chster Vertreter Irmoroms in diesen Landen setzte sie mir in einer feierlichen Zeremonie auf. Alle Zwerge die sich am Bau beteiligt hatten leisteten ", 0, 0, 1 );
            base.books.AddGermanBookText( "mir ihren Treueeid und erkl�rten mich damit auf Lebenszeit zum Verwalter ihres Verm�gens, zum Herrn und H�ter �ber ihrer H�nde Arbeit. Irmoroms Stimme selbst erschallte am Tage der Kr�nung im ", 0, 0, 1 );   
            base.books.AddGermanBookText( "Tempel und segnete unser K�nigreich unserer H�nde Arbeit. ", 0, 0, 1 );   
            base.books.AddGermanBookText( "Ich erwarte Respekt von jenen die die Gaben der Gr�nderzwerge nutzen von jenen die in Silberbrand leben. Einzig die Elfen haben es uns gleichgetan und ein �hnlich eindrucksvolles Reich auf ihrer ", 0, 0, 1 );
            base.books.AddGermanBookText( "Insel geschaffen. Dennoch waren wir Zwerge es die als erste ein eigenes Reich hatten und das darf niemals vergessen werden. ", 0, 0, 1 );   
            base.books.AddGermanBookText( "Um dem Vergessen Einhalt zu gebieten h�ret meine Stimme und lest meine Worte. ", 0, 0, 1 );   
            base.books.AddGermanBookText( "Niemals darf vergessen werden das es drei Zwerge waren die am Lagerfeuer sa�en und entschieden. WIR BAUEN UNS ZWERGEN EINE STADT, NUR F�R UNS ZWERGE. Diese drei deren Idee die Herzen der ", 0, 0, 1 );
            base.books.AddGermanBookText( "Zwerge entflammten waren Bombor, Rugosch und Tialdin und es schlossen sich schnell weitere an: Caranthir, Gandela, Torekin, Galim, Belegi, Josef, Ingrain, Grimbart, Whisler, Rackere, Mishrak, ", 0, 0, 1 );   
            base.books.AddGermanBookText( "Croktin und etliche mehr doch die ersten waren es die auch am meisten gaben um die Stadt zu bauen. ", 0, 0, 1 );   
            base.books.AddGermanBookText( "Nunmehr h�re ich die Frage warum ein Treueeid gefordert wird, warum es in Silberbrand einen K�nig gibt der �ber absolute Macht verf�gt. Auf diese Frage antworte ich: Die Gr�nderv�ter wollten es so. ", 0, 0, 1 );
            base.books.AddGermanBookText( "Jeder Zwerg der Silberbrand betritt ist Gast der Gr�nderv�ter, die mich zum K�nig und zu ihrem Verwalter machten. Jeder Zwerg der den Treueeid ablegt, so haben es die Gr�nderv�ter entschieden, ", 0, 0, 1 );      
            base.books.AddGermanBookText( "darf Silberbrand seine Heimat nennen. Die einzigen Forderungen die sie haben ist Respekt gegen�ber ihrer Arbeit und Schaffenskraft. Respekt und Gehorsam gegen�ber dem K�nig.", 0, 0, 1 );   
            base.books.AddGermanBookText( "Wer den Gr�nderv�tern diesen Respekt nicht entgegenbringen will, sollte sich noch bevor er seinen Eid ablegt entscheiden und sich eine andere Heimat suchen.", 0, 0, 1 );
            base.books.AddGermanBookText( "Tialdin, K�nig von Silberbrand", 0, 0, 1 );  
            
            --------------------------------
            
			AddLanguage("halfling language",2); 
			
			base.books.AddEnglishBookText("About the Humans from Thomas Berryard",2862,15,2); -- ### Human ### scarecrow instead of human
			base.books.AddEnglishBookText("On all of my adventures through the wild scenery Salkamar, i have seen a lot of humans and even had the chance to get to know some of them. Because they are living there.",0,15,2); 
			base.books.AddEnglishBookText("When someone is asking me now, Thomas Berryard how are those humans? Then i have to tell many stories. Some are funny and some might appear weird. But that's the way those humans are.",0,15,2); 
			base.books.AddEnglishBookText("First of all they are way too tall, and that is what you will recognize immediately when seeing them. Almost as twice as tall as the tallest fellow of your kin. They are like trees.",0,15,2); 
			base.books.AddEnglishBookText("They creak and crackle when they move and they are generally quite awkward and clumsy. But that is quite understandable because with such long legs it is surely difficult to walk. It surely is",0,15,2); 
			base.books.AddEnglishBookText("difficult for the head to tell the feet what they shall do since they are far apart from each other. Another reason might be, that the tall ones are enclosing their feet, like the dwarves. They are",0,15,2); 
			base.books.AddEnglishBookText("doing it because their feet are really doesn't look well and they are scared that we laugh at them. I have seen one, a human foot and i can tell that it didn't have hair and it was smooth and",0,15,2); 
			base.books.AddEnglishBookText("slick like a fish.",0,15,2); 
			base.books.AddEnglishBookText("But what i really have to say is that a lot of the humans have their heart on the right spot. They may be clumsy but they do care about their children with love and care.",0,15,2); 
			base.books.AddEnglishBookText("And since their children are as tall as we are, what really appears a little strange when they talk with you, then it can happen that they doesn't understand that you are an halfling is, at first.",0,15,2); 
			base.books.AddEnglishBookText("Generally, their big heads appear as if they have a lot more free space for mischief. When they doesn't have no more space in their city then they just build a second house on top of the house which",0,15,2); 
			base.books.AddEnglishBookText("is already built on the ground. Then it looks as if it would crash in the next moment. I was too afraid to go inside. Then they have a king. They pick the king when he is still drinking milk from his",0,15,2); 
			base.books.AddEnglishBookText("mother or so, and he is allowed to say what the humans are allowed to do and what not. The things he says which are forbidden are not allowed to do then. They sometimes try to school you because they",0,15,2); 
			base.books.AddEnglishBookText("are thinking we are children. They try to persuade you of their big-head nonsense and give you advices of which you didn't even ask for. Best to get along with them then is to just say yes to all the",0,15,2); 
			base.books.AddEnglishBookText("things they try to persuade you, but you definitely won't do what they want you to do. When you try to discuss a matter then they just give you more advices.",0,15,2); 
			base.books.AddEnglishBookText("Some humans become fidgety when it's calm and cosy. Then they go and cause troubles and even more. In the big cities it is never quiet and there is always riot.",0,15,2); 
			base.books.AddEnglishBookText("But the tall ones like that and tell you about much more worse places. I somehow can't believe that but why should they all trump up the same story?",0,15,2); 
			base.books.AddEnglishBookText("When you meet tall ones who deal with the Albar-city then run away! They lock you up and compel you to eat awful things.",0,15,2); 
			
			base.books.AddGermanBookText("�ber die Menschen von Thomas Berryard",2862,15,2); -- ### Human ### scarecrow instead of human 
			base.books.AddGermanBookText("Auf meinen Abenteuern durch das wilde Land Salkamar habe ich nat�rlich viele Menschen gesehen und manche auch kennen gelernt. Denn die leben ja dort.",0,15,2); 
			base.books.AddGermanBookText("Und wenn mich nun jemand fragt, Thomas Berryard, wie sind die Menschen so? Habe ich viele Geschichten zu erz�hlen. Manche sind lustig und andere werden uns verr�ckt erscheinen.",0,15,2); 
			base.books.AddGermanBookText("Aber so sind die Menschen eben. Zuerst einmal sind sie und das f�llt einem sofort auf, wenn man einen sieht, viel zu lang. Beinahe doppelt so lang wie der Gr��te in deiner Sippschaft, lass dir das",0,15,2); 
			base.books.AddGermanBookText("sagen! Die sind wie B�ume. Sie knarren und knacken wenn sie sich bewegen, dabei sind sie aber in der Regel ungelenk und plump. Aber das ist auch ganz verst�ndlich so, weil mit so langen Beinen ist es",0,15,2); 
			base.books.AddGermanBookText("sicher schwierig zu laufen und so. Es ist dann bestimmt schwierig f�r den Kopf, den F��en zu sagen was sie tun sollen, weil sie so weit weg sind. Ein weiter Grund daf�r ist wohl, dass die Langen ihre",0,15,2); 
			base.books.AddGermanBookText("F��e einsperren. gleich wie die Zwerge. Das machen sie, weil ihre F��e auch wirklich nicht sch�n sind und sie Angst haben, dass wir sie auslachen. Ich hab einen gesehen und der hatte gar keine Haare",0,15,2); 
			base.books.AddGermanBookText("und war weich und glatt wie ein Fisch.",0,15,2); 
			base.books.AddGermanBookText("Was ich aber wirklich sagen muss, ist dass es ganz viele Lange gibt, die ihr Herz am richtigen Fleck tragen. Obwohl sie so ungeschickt sind k�mmern sie sich um ihre Kinder sehr liebevoll und bem�ht.",0,15,2); 
			base.books.AddGermanBookText("Und weil ihre Kinder genauso lang sind wie wir, was wirklich seltsam wirkt wenn sie mit dir reden, kann es sein dass sie zuerst gar nicht begreifen, dass man ein Halbling ist. �berhaupt scheint ihr",0,15,2); 
			base.books.AddGermanBookText("riesiger Kopf viel mehr Platz f�r Unsinn zu haben. Wenn sie in der Stadt keinen Platz mehr haben, bauen sie ein zweites Haus auf das was auf der Erde steht.",0,15,2); 
			base.books.AddGermanBookText("Dann sieht es aus, als w�rde es jeden Moment wieder herunterfallen. Dort hineinzugehen habe ich mich jedenfalls nicht getraut. Dann haben sie einen K�nig. Der wird schon ausgesucht",0,15,2); 
			base.books.AddGermanBookText("wenn er noch Brustmilch trinkt oder so und darf dann alle anderen sagen was sie d�rfen und was nicht. Das was er sagt nicht zu machen ist aber nicht erlaubt. Und weil sie uns manchmal",0,15,2); 
			base.books.AddGermanBookText("f�r Kinder halten erziehen sie dich immer ein bisschen. Versuchen dir den Groskopf-Unsinn einzureden und geben Ratschl�ge um die man nicht gefragt hat. Am Besten kommst du dann mit ihnen aus, wenn",0,15,2); 
			base.books.AddGermanBookText("du zustimmst zu all den Dingen die sie dir einreden m�chten, aber nat�rlich machst du das dann nicht. Wenn du versuchst mit ihnen zu diskutieren geben sie dir nur noch viel mehr Ratschl�ge.",0,15,2); 
			base.books.AddGermanBookText("Manche Menschen werden zappelig, wenn es ruhig und gem�tlich ist. Dann gehen sie Unruhe stiften und ich weis nicht was noch alles. In den gro�en St�dten ist es aber nie ruhig und immerzu gibt",0,15,2); 
			base.books.AddGermanBookText("es Krawall. Doch die Langen m�gen das und erz�hlen dir von noch viel schlimmeren Orten. Ich kann das alles nicht glauben, aber warum sollten die alle die selbe Geschichte erfinden?",0,15,2); 
			base.books.AddGermanBookText("Wenn du Lange triffst die irgendwas mit dieser Albar-stadt zu tun haben, schau das du ganz schnell weg kommst! Die sperren dich n�mlich ein und zwingen dich schreckliche Dinge zu essen.",0,15,2);
            
          end
      end
      base.books.SendBookPage(User,SourceItem.data,Counter);
  end

function LookAtItem(User,Item)
  if base.books.InitTitle() then
      base.books.AddEnglishBookTitle("Book with the title \"Orcish Culture and History\"",0);
      base.books.AddGermanBookTitle("Buch mit dem Titel \"Ork'sche Gesellschaftsgeschichte\"",0);
      
      base.books.AddEnglishBookTitle( "Book with the title \" The founding of Silverbrand \"", 1 );
      base.books.AddGermanBookTitle( "Buch mit dem Titel \" Von der Gr�ndung Silverbrands \"", 1 );
      
	  base.books.AddEnglishBookTitle("Book with the title \"About the Humans\"",2); 
	  base.books.AddGermanBookTitle("Buch mit dem Titel \"�ber die Menschen\"",2);
	  
  end
  base.books.GetBookItemInform(User,Item);
end
