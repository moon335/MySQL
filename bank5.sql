
-- 3단계 
-- 1번 계좌 출금 내역 --> 계좌번호
-- d_account_id 표시 하기
select h.id, h.amount, h.w_balance, 
		wa.number as sender, 
        ifnull(h.d_account_id, 'ATM') as receiver, 
        da.number,
        h.created_at
from history_tb as h
left join account_tb as wa
on h.w_account_id = wa.id
left join account_tb as da
on h.d_account_id = da.id
where h.w_account_id = 1;

-- 1번 계좌의 입금 내역 위와 같이 뽑아보기 + 출금 계좌번호(이체시)
select h.id, h.amount, h.d_balance,
	 da.number as receiver,
	 ifnull(h.w_account_id, 'ATM') as sender,
     wa.number,
	 h.created_at
from history_tb as h
left join account_tb as da
on h.d_account_id = da.id
left join account_tb as wa
on h.w_account_id = wa.id
where h.d_account_id = 1 or h.w_account_id = 1;

 -- 출금 내역 + 입금 내역
 select * from
 history_tb where w_account_id = 2 or d_account_id = 2;


