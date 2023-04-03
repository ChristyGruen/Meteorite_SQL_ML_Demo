select mm.mass_grams, lower(mm.fall), mm.year, mm.reclat, mm.reclong, mm.elevation, s.state_abbrev, s.FIPS, s.area_sqkm, mt.meteorite_class
from meteorite_main mm, meteorite_type mt, state s
where
mm.state_abbrev = s.state_abbrev
and
mm.recclass = mt.recclass
and 
mm.year > 1900
-- mm.year between 1832 and 1868
order by s.state_abbrev, mm.year,mt.meteorite_class, mm.mass_grams



