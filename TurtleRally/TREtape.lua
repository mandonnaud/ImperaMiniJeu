print("LOAD Etape v0.01")
function tirage()
	etapesTirage={}
	for etapesI=1, #etapes do
		table.insert(etapesTirage,etapesI)
	end
	for i=1, #etapes do
		index=math.random(#etapesTirage)
		game.etapes[i].numero=etapesTirage[index]
		table.remove(etapesTirage,index)
		
		etapes[i].ecran.pp.clear()
		etapes[i].ecran.pp.setTextScale(5)
		etapes[i].ecran.pp.setCursorPos(1,1)
		etapes[i].ecran.pp.write(game.etapes[i].numero)
	end
end
etapes={}
function add(x,y,id)
	table.insert(etapes,{x=x,y=y,numero=0,ecran=ahb.addPeripheral(id)})
end