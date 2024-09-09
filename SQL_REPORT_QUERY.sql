SELECT CONCAT(
'THIS IS A SREE ELECTRONIC SHOP THAT SELLS A VARIETY OF ELECTRONIC ITEMS. WE CURRENTLY HAVE ',
(SELECT COUNT(*) FROM ITEMS), ' ITEMS AVAILABLE, ',
GROUP_CONCAT(
CONCAT(
ItemId, ' ', DESCRIPTION, ' (', StockQty, ' IN STOCK) EACH COSTS ', PRICE,' AND SOLD QUANTITY: ', get_total_sold_qty(ItemId)
)
SEPARATOR ', '
),
'.'
) AS MESSAGE FROM ITEMS;
