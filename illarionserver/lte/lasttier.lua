module("lte.lasttier", package.seeall)
-- Langzeit Effekt f�r Lasttier

-- Aufgabe: Speichern und �bergeben des Lasttierbesitzers

function addEffect(Effect, Carrier)
    return true;
end

function callEffect(Effect, Carrier)
    Effect.nextCalled = 360000;
    return true;
end

function removeEffect(Effect, Carrier)
    return true;
end
