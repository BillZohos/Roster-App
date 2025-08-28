select player_name,position,CAST(jersey_number AS INTEGER) AS jersey_number,
  CAST(week AS INTEGER) AS week,headshot_url,
case
     when position = 'wr' then 'Offence'
     when position = 'QB' then 'Defence'
     when position = 'RB' then 'Offence'
     when position = 'TE' then 'Offence'
     when position = 'K' then 'Special Teams'
     when position = 'P' then 'Special Teams'
     when position = 'DB' then 'Defence'
     when position = 'DL' then 'Defence'
     when position = 'LB' then 'Defence'
     when position = 'OL' then 'Offence'
     when position = 'ST' then 'Special Teams'
     when position = 'LS' then 'Special Teams'
end as Team_Side
from roster;


select distinct position
from roster;