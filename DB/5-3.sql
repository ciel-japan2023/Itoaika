select
	em_m_location.location_name,
	sum(item_qty)
from
	em_m_location
join
	em_t_stock_item
on
	em_m_location.location_cd  = em_t_stock_item.location_cd
group by
	em_m_location.location_name
order by
	em_m_location.location_name asc;