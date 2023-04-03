select s.state, min(mm.mass_grams) as min_mass_gr, round(cast(avg(mm.mass_grams)as numeric),0) as avg_mass_gr, max(mm.mass_grams) as max_mass_gr
from meteorite_main mm, state s
where
mm.state_abbrev = s.state_abbrev
and 
mm.year > 1900
-- mm.year between 1832 and 1868
group by s.state
order by s.state



