select
	em_m_location.location_name,
	em_m_code.code_name,
sum(item_qty)
from
	em_t_stock_item
left join
	em_m_location
on
	em_t_stock_item.location_cd = em_m_location.location_cd
left join
	em_m_item
on
	em_t_stock_item.item_cd = em_m_item.item_cd
left join
	em_m_code
on
	em_m_item.item_type = em_m_code.code_value
where
	code_type = 'item_type'
group by
	em_m_location.location_name,
	em_m_code.code_name
having
	sum(item_qty) >=30
order by
	em_m_location.location_name desc,
	em_m_code.code_name asc;