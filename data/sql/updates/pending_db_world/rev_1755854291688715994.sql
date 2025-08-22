SET
@POOL            = '22414',
@POOLSIZE        = '3',
@POOLDESC        = 'Badlands - Battered Footlockers in Angor Fortress 3/6',
@RESPAWN         = '300',
@GUID = '11454,11470,11471,11472,11474,11475,';

-- Create pool(s)
DELETE FROM `pool_template` WHERE `entry`=@POOL;
INSERT INTO `pool_template` (`entry`,`max_limit`,`description`) VALUES (@POOL,@POOLSIZE,@POOLDESC);

-- Add gameobjects to pools
DELETE FROM `pool_gameobject` WHERE FIND_IN_SET (`guid`,@GUID);
INSERT INTO `pool_gameobject` (`guid`,`pool_entry`,`chance`,`description`) VALUES
(217184,@POOL,0,@POOLDESC),
(217185,@POOL,0,@POOLDESC),
(217186,@POOL,0,@POOLDESC),
(217187,@POOL,0,@POOLDESC),
(217188,@POOL,0,@POOLDESC),
(217189,@POOL,0,@POOLDESC);

-- Respawn rates of gameobjects
UPDATE `gameobject` SET `spawntimesecs`=@RESPAWN WHERE FIND_IN_SET (`guid`,@GUID);
