' How many leads per month
SELECT count(contactid)contact, to_char(creation_date, 'YYYY-MM')"month" 
FROM public.factcontact group by to_char(creation_date, 'YYYY-MM') 
order by to_char(creation_date, 'YYYY-MM')