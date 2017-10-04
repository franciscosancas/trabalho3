xml.instruct!
xml.boletims do
	@boletims.each do |boletim|
		xml.informacao_pessoal do
			xml.nome  boletim.nome
			xml.cpf  boletim.cpf	
			xml.matricula  boletim.matricula
			xml.endereco  boletim.endereco	
			xml.telefone  boletim.telefone
		end
		xml.informacao_periodo do	
			xml.informacao_periodo
			xml.data  boletim.data
			xml.cr_periodo  boletim.cr_periodo
		xml.materia do
			xml.carga_horaria  boletim.carga_horaria	
			xml.creditos  boletim.creditos
			xml.situacao_final  boletim.situacao_final
			xml.informacao_periodo
		
		end
		end
	end
end