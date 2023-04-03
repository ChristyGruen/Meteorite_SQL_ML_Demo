select 'meteorite_class' as category, mt.meteorite_class as value, min(mm.mass_grams) as min_mass_gr, round(cast(avg(mm.mass_grams)as numeric),0) as avg_mass_gr, max(mm.mass_grams) as max_mass_gr
from meteorite_main mm, meteorite_type mt
where
mm.recclass = mt.recclass
and 
mm.year > 1900
-- mm.year between 1832 and 1868
group by mt.meteorite_class
order by mt.meteorite_class



