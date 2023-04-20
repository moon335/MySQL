
-- 입금 내역
select h.id, h.amount, h.d_balance as balance, h.created_at,
		ifnull(wa.number, 'ATM') as sender,
        da.number as receiver
from history_tb as h
left join account_tb as da
on h.d_account_id = da.id
left join account_tb as wa
on h.w_account_id = wa.id
where h.d_account_id = 1;

-- 출금 내역
select h.id, h.amount, h.w_balance as balance, h.created_at,
		ifnull(da.number, 'ATM') as recevier,
        wa.number as sender
from history_tb as h
left join account_tb as wa
on h.w_account_id = wa.id
left join account_tb as da
on h.d_account_id = da.id
where h.w_account_id = 1
or h.d_account_id = 1;

-- 입출금 쿼리


