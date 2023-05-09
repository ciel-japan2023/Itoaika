select	em_m_item.item_name,
	sum(item_qty)
from	em_m_item
join em_t_stock_item
on	em_m_item.item_cd = em_t_stock_item.item_cd
group by	em_m_item.item_name
order by	sum(item_qty) desc;