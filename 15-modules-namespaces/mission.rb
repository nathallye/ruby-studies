module Person
  class Juridic
    def initialize(name, cnpj)
      @name = name
      @cnpj = cnpj
    end
    
    def add
      puts 'Pessoa Jurídica Adicionada'
      puts "Nome: #{@name}"
      puts "CNPJ: #{@cnpj}"
      @cnpj
    end
  end

  class Physical
    def initialize(name, cpf)
      @name = name
      @cpf = cpf
    end

    def add
      puts 'Pessoa Física Adicionada'
      puts "Nome: #{@name}"
      puts "CPF: #{@cpf}"
      return self
    end

    def ok
      puts 'Esta cadastrado'
    end
  end
end

Person::Juridic.new('M.C. Investimento', '4241.123/0001').add # Só funciona assim quando tem o initialize(cria a intância, passa os parâmetros e já chama o método)
puts''
Person::Physical.new('José de Almeida', '425.123.123-12').add.ok