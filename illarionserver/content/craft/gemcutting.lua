require("item.base.crafts")

module("content.craft.gemcutting", package.seeall)

gemcutting = item.base.crafts.Craft:new{
                          craftEN = "gemcutting",
                          craftDE = "Edelsteine schleifen",
                          handTool = 2140,
                          leadSkill = Character.gemcutting,
                          DefaultFoodConsumption = 200,
                        };

gemcutting:addTool(270)  -- cutting stone

local catGems = gemcutting:addCategory("gems", "Edelsteine")
local catDust = gemcutting:addCategory("gem dust", "Edelsteinstaub")

---------------- AMETHYST - 197 ----------------
local product = gemcutting:addProduct(catGems, 197, 0, 40, 10, 20)
product:addIngredient(251) -- Schritt 1: Rohe Amethysten(251) 1x
-------------- AMETHYST - FERTIG ---------------

---------------- AMETHYSTSTAUB - 450 ----------------
product = gemcutting:addProduct(catDust, 450, 0, 30, 20, 40)
product:addIngredient(197, 4) -- Schritt 1: Amethyst(197) 4x
-------------- AMETHYSTSTAUB - FERTIG ---------------

------------------ RUBIN - 46 ------------------
product = gemcutting:addProduct(catGems, 46, 10, 50, 15, 30)
product:addIngredient(255) -- Schritt 1: Rohe Rubine(255) 1x
--------------- RUBIN - FERTIG -----------------

---------------- RUBINSTAUB - 447 ----------------
product = gemcutting:addProduct(catDust, 447, 10, 40, 30, 60)
product:addIngredient(46, 4) -- Schritt 1: Rubin(46) 4x
-------------- RUBINSTAUB - FERTIG ---------------

--------------- BLAUSTEIN - 284 ----------------
product = gemcutting:addProduct(catGems, 284, 20, 60, 20, 40)
product:addIngredient(253) -- Schritt 1: Roher Saphir(253) 1x
------------- BLAUSTEIN - FERTIG ---------------

--------------- BLAUSTEINSTAUB - 446 ----------------
product = gemcutting:addProduct(catDust, 446, 20, 50, 40, 80)
product:addIngredient(284, 4) -- Schritt 1: Saphir(284) 4x
------------- BLAUSTEINSTAUB - FERTIG ---------------

------------- SCHWARZSTEIN - 283 ---------------
product = gemcutting:addProduct(catGems, 283, 30, 70, 25, 50)
product:addIngredient(252) -- Schritt 1: Roher Obsidian(252) 1x
----------- SCHWARZSTEIN - FERTIG --------------

------------- SCHWARZSTEINSTAUB - 449 ---------------
product = gemcutting:addProduct(catDust, 449, 30, 60, 50, 100)
product:addIngredient(283, 4) -- Schritt 1: Obsidian(283) 4x
----------- SCHWARZSTEINSTAUB - FERTIG --------------

---------------- SMARAGD - 45 ------------------
product = gemcutting:addProduct(catGems, 45, 40, 90, 30, 60)
product:addIngredient(256) -- Schritt 1: Roher Smaragd(256) 1x
------------- SMARAGD - FERTIG -----------------

---------------- SMARAGDSTAUB - 448 ------------------
product = gemcutting:addProduct(catDust, 448, 40, 80, 60, 120)
product:addIngredient(45, 4) -- Schritt 1: Smaragd(45) 4x
------------- SMARAGDSTAUB - FERTIG -----------------

--------------- TOPAS - 198 --------------------
product = gemcutting:addProduct(catGems, 198, 50, 100, 35, 70)
product:addIngredient(257) -- Schritt 1: Roher Topas(257) 1x
--------------- TOPAS - FERTIG -----------------

--------------- TOPASSTAUB - 451 --------------------
product = gemcutting:addProduct(catDust, 451, 50, 100, 70, 140)
product:addIngredient(198, 4) -- Schritt 1: Topas(198) 4x
--------------- TOPASSTAUB - FERTIG -----------------

--------------- DIAMANT - 285 --------------------
product = gemcutting:addProduct(catGems, 285, 60, 100, 40, 80)
product:addIngredient(254) -- Schritt 1: Rohdiamanten(254) 1x
--------------- DIAMANT - FERTIG -----------------

--------------- DIAMANTSTAUB - 452 --------------------
product = gemcutting:addProduct(catDust, 452, 60, 100, 80, 160)
product:addIngredient(285, 4) -- Schritt 1: Diamant(285) 4x
--------------- DIAMANTSTAUB - FERTIG -----------------
