select
	em_m_item.item_name,
	em_t_stock_item.item_qty
from
	em_t_stock_item
left outer join
	em_m_item
on
	em_m_item.item_cd = em_t_stock_item.item_cd
where
	location_cd = 'CN001'
order by
	item_qty asc ;