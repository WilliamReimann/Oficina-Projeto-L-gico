-- Inserção de dados e queries
use Oficina;



show tables;
insert into Cliente (Nome, CPF, Contato)
	values('Giannis', '12345678901','55984567890'),
          ('Kevin', '23456789012','55985678901'),
		  ('Stephen', '34567890123','55986789012'),
		  ('Luka', '45678901234','5597890123'),
          ('LeBron', '56789012345','55988901234'),
          ('Anthony', '78901234567','55989012345');
          

insert into Veículo(Modelo, Revisão/Reparo, Liberado ) 
values     ('Renault Kwid Zen 1.0 flex',Revisão,Liberado),
           ('Peugeot 208 Like 1.0',Revisão,null),
           ('Chevrolet Onix Plus LT 1.0 flex',Reparo,Liberado,null),
	       ('Chevrolet Onix 1.0 flex',Reparo,null),
           ('Fiat Argo Drive 1.0 flex',Revisão,Liberado),
           ('Hyundai HB20 Platinum 1.0 turbo flex',Reparo,Liberado);
      

    insert into Mecânico(Código, Nome, Endereço, Especialidade)
      values (1,Joseph Junior,Vila Olimpia 2050, Reparo),
             (2,Morgan Freeman,Alphville 3070, Revisão);
			
             
             
	  insert into Ordem de Serviço(Número, Situação, Emissão, Entrega, Valor Mão de Obra, Valor da Peça)
             values (1,Pronto,26/11/2022,26/11/2022,500),
					(2,Pronto,26/11/2022,26/11/2022,200),
                    (3,Espera,26/11/2022,null,500),
                    (4,Espera,26/11/2022,null,200),
                    (5,Reparando,26/11/2022,null,500),
                    (6,Revisão,26/11/2022,null,200);
       
      
    
       
       
       
       -- Relação de mecânicos e veículos:
select idProduct, Fname, SocialName, CNPJ from product
		inner join product_supplier on idProduct=idSProduct
        inner join supplier on idSupplier = idSSupllier;
        
         -- Mostrar o nome e preço dos serviços com preço maior que 200 reais
select Fname, Category, Price from product having Price > 200 order by Fname, Category;

       -- Quantos veículos cadastrados têm o modelo igual Chevrolet?
select count(*) from Veículos where Modelo = 'Chevrolet';


    