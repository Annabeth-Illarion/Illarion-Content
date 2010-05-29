require("base.class")

module("handler.deletebridge", package.seeall);

deleteBridge = class(function(delbrg, posi)
    delbrg.pos=posi;
end);

function deleteBridge:execute()
    if (world:isItemOnField(self.pos)==true) then
        item=world:getItemOnField(self.pos);
        if(item.id==618 or item.id==621 or item.id==614 or item.id==617) then
            t=0;
            if item.data==1 then
                keepGoing=1;
                while keepGoing==1 do
                    delPos=position(self.pos.x,self.pos.y-t,self.pos.z)
                    if (world:isItemOnField(delPos)==true) then
                        item=world:getItemOnField(delPos);
                        if (item.data==1 and (item.id==617 or item.id==615 or item.id==614)) then
                            world:erase(item,1);
                            t=t+1;
                        else
                            keepGoing=0;
                        end
                    else
                        keepGoing=0;
                    end
                end
            elseif item.data==2 then
                keepGoing=1;
                while keepGoing==1 do
                    delPos=position(self.pos.x+t,self.pos.y,self.pos.z)
                    if (world:isItemOnField(delPos)==true) then
                        item=world:getItemOnField(delPos);
                        if (item.data==2 and (item.id==621 or item.id==619 or item.id==618)) then
                            world:erase(item,1);
                            t=t+1;
                        else
                            keepGoing=0;
                        end
                    else
                        keepGoing=0;
                    end
                end
            elseif item.data==3 then
                keepGoing=1;
                while keepGoing==1 do
                    delPos=position(self.pos.x,self.pos.y+t,self.pos.z)
                    if (world:isItemOnField(delPos)==true) then
                        item=world:getItemOnField(delPos);
                        if (item.data==3 and (item.id==617 or item.id==615 or item.id==614)) then
                            world:erase(item,1);
                            t=t+1;
                        else
                            keepGoing=0;
                        end
                    else
                        keepGoing=0;
                    end
                end
            elseif item.data==4 then
                keepGoing=1;
                while keepGoing==1 do
                    delPos=position(self.pos.x-t,self.pos.y,self.pos.z)
                    if (world:isItemOnField(delPos)==true) then
                        item=world:getItemOnField(delPos);
                        if (item.data==4 and (item.id==621 or item.id==619 or item.id==618)) then
                            world:erase(item,1);
                            t=t+1;
                        else
                            keepGoing=0;
                        end
                    else
                        keepGoing=0;
                    end
                end
            end
        end
    end
end