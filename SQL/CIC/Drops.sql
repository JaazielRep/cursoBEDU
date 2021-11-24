

/*-------------------Foraneas-------------------*/



alter table EP_Direccion
drop foreign key fk_dir_usu;


alter table EP_Estado
drop foreign key fk_est_pai;



alter table EP_Municipio
drop foreign key fk_mun_est;



alter table EP_Empresa
drop foreign key fk_emp_usu;


alter table ep_usuarios
drop foreign key fk_usu_tip;


alter table direccion
drop foreign key fk_dir_est;



alter table direccion
drop foreign key fk_dir_pai;


alter table ep_empresa
drop foreign key fk_emp_tip;

alter table direccion
drop foreign key fk_dir_mun;

alter table ep_cta_empresa
drop foreign key fk_CTA_emp;

alter table ep_cta_empresa
drop foreign key fk_CTA_ban;

alter table ep_emp_fletes
drop foreign key fk_fle_emp;

alter table ep_emp_fletes
drop foreign key fk_fle_fle;

alter table ep_portada
drop foreign key fk_por_emp;



alter table ep_planes_tienda
drop foreign key fk_tip_tie;


alter table ep_banner
drop foreign key fk_ban_emp;

alter table ep_banner
drop foreign key fk_ban_pub;



alter table ep_faq
drop foreign key fk_faq_pro;



alter table ep_carrusel
drop foreign key fk_car_pub;



alter table ep_carrusel
drop foreign key fk_car_pro;


alter table ep_fotos_productos
drop foreign key fk_fot_pro;


alter table ep_subcategorias
drop foreign key fk_sub_cat;

alter table ep_productos
drop foreign key fk_pro_emp;



alter table ep_productos
drop foreign key fk_pro_mon;


alter table ep_productos
drop foreign key fk_pro_cat;


alter table ep_productos
drop foreign key fk_pro_sub;



alter table ep_productos
drop foreign key fk_pro_est;



alter table ep_productos
drop foreign key fk_pro_cat;



alter table ep_productos
drop foreign key fk_pro_pai;

#------------------------Detalles de Compras---------------------

#Compra Tienda
#-- A Empresa
alter table ep_detalle_compratienda
add constraint fk_det_emp
foreign key (empresa_id)
references ep_empresa (id_empresa);

alter table ep_detalle_compratienda
add constraint fk_det_tie
foreign key (tipo_tienda)
references ep_tiendas (id_tipo);

alter table ep_detalle_compratienda
add constraint fk_det_pla
foreign key (plan_tienda)
references ep_planes_tienda (id_plan_tienda);

#----------------------------DROP TABLES--------------------------------
drop table ep_bancos;
drop table ep_banner;
drop table ep_carrusel;
drop table ep_categorias;
drop table ep_cta_empresa;
drop table ep_detalle_compratienda;
drop table ep_direccion;
drop table ep_emp_fletes;
drop table ep_empresa;
drop table ep_estado;
drop table ep_faq;
drop table ep_fletes;
drop table ep_fotos_productos;
drop table ep_moneda;
drop table ep_municipio;
drop table ep_pais;
drop table ep_planes_publicidad;
drop table ep_planes_tienda;
drop table ep_portada;
drop table ep_productos;
drop table ep_subcategorias;
drop table ep_tiendas;
drop table ep_tipo_publicidad;
drop table ep_tipo_usuario;
drop table ep_usuarios;
drop table ep_videos;