--[[
    Teach rune: HEPT
    Rune 03 & 26
        HEPT BHONA

    Teaching-Spell

    SQL:    INSERT INTO spells VALUES (2^2+2^25,0,'m_03_26_teach-hept.lua');
]]

dofile("m_teachspell.lua");

-- Informations about the rune
Rune = {
    ["name"] = "HEPT",   -- name of the rune
    ["class"] = 1,      -- class of the rune ( 1 = weak, 2 = normal, 3 = strong )
    ["value"] = 2       -- value of the rune
}

-- Teacher related informations
Teacher = {
    ["skill"] = {               -- The required skill of the teacher
        ["name"] = "commotio",  -- name of the skill that is required
        ["value"] = 40          -- value of the skill that is required
    },
    ["attribsum"] = 33          -- sum of attributes that are required
}

-- Student related informations
Student = {
    ["skill"] = nil,            -- Skill requirements to the student
    ["attribsum"] = nil         -- attribute requirements to the student
}
