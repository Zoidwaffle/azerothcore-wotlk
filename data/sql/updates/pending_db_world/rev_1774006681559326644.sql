-- Boots of Pure Thought should use spell power and not differentiate healing and power
-- https://www.wowhead.com/wotlk/item=19437/boots-of-pure-thought
UPDATE `item_template`
SET 
    `stat_type4` = 45,    -- 45 is the ID for Spell Power
    `stat_value4` = 33,   -- This is the standard SP value
    `spellid_1` = 0       -- Removes the +62 Healing spell
WHERE `entry` = 19437;
