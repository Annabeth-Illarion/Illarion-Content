-- I_533 playing the drum

-- UPDATE common SET com_script='I_533_drum.lua' WHERE com_itemid=533;

dofile( "base_music.lua" );
dofile( "base_lookat.lua" );

addTalkText("#me hits the drum chaoticly, making a lot of noise.", "#me schl�gt planlos auf die Trommel ein und macht eine Menge L�rm." );
addTalkText("#me makes chattering uncoordinated noises on the drum.", "#me macht klappernde, unkoordinierte Ger�usche auf der Trommel.");
addTalkText("#me pounds upon the drum in a low sounding monotonous rythm.","#me schl�gt im monotonen Rhythmus klangarm auf die Trommel. ");
addTalkText("#me drums a loud though simple rhythm.","#me trommelt einen lauten aber einfachen Rhythmus. ");
addTalkText("#me bangs a powerful, coordinated beat upon the drum.","#me trommelt gut klingende mehrteilige Rhythmen. ");
addTalkText("#me beats in a wild, frenzied pulse, a deep broad sound emitting from the drum.","#me schl�gt in wilden vielschichtigen Rhythmen, mit vollem, tiefen Kl�ngen auf die Trommel.");

function UseItem(User,SourceItem,TargetItem,Counter,Param)
    PlayInstrument(User,SourceItem,"drum");
end 

function LookAtItem( User, Item )
    world:itemInform( User, Item, base.lookat.GetItemDescription( User, Item, 2, false, false) );
end



 
