Config = Config or {}
-- type Config['NAME OF THE TELEPORT']
-- outsideLocation = vector4(outside location with view direction)
-- insideLocation = vector4(inside Location with viewing Direction)
Config['casino'] = {
	outsideLocation = vector4(936.02, 47.22, 81.1, 112.9), -- Outsite the second casino door IMPORTANT !!! +set sv_enforceGameBuild 2372 !!!
	insideLocation = vector4(1089.89, 205.76, -49.0, 352.01), -- Inside the bob74 casino
}
Config['penthouse'] = {
    outsideLocation = vector4(968.04, 63.5, 112.55, 230.47), -- Door on the roof of the casino
    insideLocation = vector4(969.32, 63.3, 112.55, 240.44) -- Door to the casino in the penthouse
}
Config['weed'] = {
    outsideLocation = vector4(2221.86, 5614.76, 54.9, 283.78), -- Door to the House next to the outside weed farm next to the highway
    insideLocation = vector4(1066.4, -3183.37, -39.16, 87.07) -- Biker DLC weed Farm from BOB74 needed !!!
}