' How many quotes per month
SELECT count(quoteid)quotes, to_char(creation_date, 'YYYY-MM')"month"
FROM public.factquotes group by to_char(creation_date, 'YYYY-MM')
order by to_char(creation_date, 'YYYY-MM')