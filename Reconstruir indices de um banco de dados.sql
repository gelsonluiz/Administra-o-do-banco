---Objetivo: RECONSTRUYE INDICES DE UNA BASE DE DATOS
---Fecha: 19/03/2014
---Autor:  Andrés Noé Michaca Trujillo
select 'ALTER INDEX  [' + ltrim(rtrim(ind.name))+'] on [' + ltrim(rtrim(esq.name))+'].['+ltrim(rtrim(OBJECT_NAME(ind.object_id))) +']  REBUILD PARTITION  =  ALL  WITH  ('+
	   ltrim(rtrim(case  ind.is_padded 
	                  when  1 then ' PAD_INDEX = ON, '
	                  else ' PAD_INDEX = OFF, '
	               end
			 )   )+
	   ' STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, '+
	   ltrim(rtrim(case 
	                  when ind.is_unique =0  and ignore_dup_key= 1 then ' IGNORE_DUP_KEY = ON, '
					  when ind.is_unique =0  and ignore_dup_key= 0 then ' IGNORE_DUP_KEY = OFF, '
                   else '' 
		         end
			)  )
			 +'ONLINE = OFF,'+
	   ltrim(rtrim(case ind.allow_row_locks 
	                    when 1 then ' ALLOW_ROW_LOCKS = ON, '
	                    else ' ALLOW_ROW_LOCKS = OFF, '
	                end
			)  ) +
	   ltrim(rtrim(case ind.allow_page_locks 
	                    when 1 then ' ALLOW_PAGE_LOCKS = ON)'
	                   else ' ALLOW_PAGE_LOCKS = OFF)'
	               end
			)   )     
from sys.indexes ind
inner join sys.sysobjects obj on
obj.id =ind.object_id
inner join sys.schemas esq on 
esq.schema_id =obj.uid
where obj.type='U' and ind.name is not null and upper(OBJECT_NAME(ind.object_id))<> 'SYSDIAGRAMS'
order by OBJECT_NAME(ind.object_id)