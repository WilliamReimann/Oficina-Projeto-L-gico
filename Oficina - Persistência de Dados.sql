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
          

insert into Veículo (Modelo, Revisão/Reparo, Liberado) 
values     ('Renault Kwid Zen 1.0 flex','Revisão',true),
           ('Peugeot 208 Like 1.0','Revisão',false),
           ('Chevrolet Onix Plus LT 1.0 flex','Reparo',true),
	       ('Chevrolet Onix 1.0 flex','Reparo',true),
           ('Fiat Argo Drive 1.0 flex','Revisão',true),
           ('Hyundai HB20 Platinum 1.0 turbo flex','Reparo',false);
      

    insert into Mecânico(Código, Nome, Endereço, Especialidade)
      values (1,'Joseph Junior','Vila Olimpia 2050', 'Reparo'),
             (2,'Morgan Freeman','Alphville 3070', 'Revisão');
			
             
             
	  insert into OrdemDeServiço(Número, Situação, Emissão, Entrega, Valor Mão de Obra, Valor da Peça)
             values (1,Pronto,'26/11/2022','26/11/2022','500.00'),
					(2,Pronto,'26/11/2022','26/11/2022','200.00'),
                    (3,Espera,'26/11/2022',null,'500.00'),
                    (4,Espera,'26/11/2022',null,'200.00'),
                    (5,Reparando,'26/11/2022',null,'500.00'),
                    (6,Revisão,'26/11/2022',null,'200.00');
       
      
    
       
       
       
       -- Relação de veículos e mecânicos:
select Código, Modelo, Revisão/Reparo, Liberado from Mecânico
		inner join Veículo_Mecânico on idVeículo=idMVeículo
        inner join Mecânico on idMecânico = idMecânico;
        
         -- Mostrar a situação dos serviços com preço maior que 200 reais
select Número, Situação, Valor from OrdemDeServiço having Valor > 200 order by Número, Situação;

       -- Quantos veículos cadastrados têm o modelo igual Chevrolet?
select count(*) from Veículos where Modelo = 'Chevrolet';


    