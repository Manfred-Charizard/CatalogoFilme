USE FilmesInfoD;



INSERT INTO tb_usuario (nm_usuario, ds_email, ds_senha)
     VALUES ('admin', 'admin@admin.com.br', '1234');


select id_usuario 		id,
       nm_usuario		nome,
       ds_email			email
  from tb_usuario
 where ds_email 		= 'admin@admin.com.br'
   and ds_senha			= '1234';


INSERT INTO tb_filme (id_usuario, nm_filme, ds_sinopse, vl_avaliacao, dt_lancamento, bt_disponivel)
     VALUES (1,'Carros 3', 'Filmes fodas', 10, '2019-02-09', true);


UPDATE tb_filme 
   SET img_filme     = '/storage/filme/asdfasdf.jp'
 WHERE id_filme = 1;

UPDATE tb_filme 
   SET nm_filme      = 'Carros 3',
       ds_sinopse    = 'filmes fodas',
       vl_avaliacao  = 10,
       dt_lancamento = '2019-02-09',
       bt_disponivel = true
 WHERE id_filme = 1;


DELETE FROM tb_filme 
      WHERE id_filme = 1;


SELECT id_filme			id,
	  nm_filme			nome,
       vl_avaliacao		avaliacao,
       dt_lancamento	lancamento,
       bt_disponivel	disponivel
  FROM tb_filme;


SELECT id_filme			id,
	  nm_filme			nome,
       vl_avaliacao		avaliacao,
       dt_lancamento	lancamento,
       bt_disponivel	disponivel
  FROM tb_filme
 WHERE nm_filme			like '%a%';
 

SELECT id_filme		id,
	  nm_filme	     nome,
       vl_avaliacao		avaliacao,
	  ds_sinopse		sinopse,
       dt_lancamento	lancamento,
       bt_disponivel	disponivel,
       img_filme         capa
  FROM tb_filme
 WHERE id_filme			= 1;

