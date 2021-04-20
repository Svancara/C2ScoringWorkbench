select YYYYMMDD, count(distinct(systemid)) as SystemsCount
        from accountequity 
        where 
        dayofweek(date_format(YYYYMMDD,"%Y%m%d")) <> 1
        and
        dayofweek(date_format(YYYYMMDD,"%Y%m%d")) <> 7
        group by YYYYMMDD
        order by YYYYMMDD
		limit 10000	;
        
22501 systems on 20210120 ??? 

select * from accountequity 
        where 
        YYYYMMDD = 20210120        
		limit 10000	;

        
select Date(from_unixtime(added)), count(*) as SystemsAdded from systems 
group by Date(from_unixtime(added))
limit 10000
;

