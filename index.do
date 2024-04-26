<<dd_version: 2>>     
<<dd_include: header.txt>>

# HW4: Building Website

### Chenxi Gao, MBBS, MS

**Graph:** 

<<dd_do:nooutput>>

	cls
clear
	set obs 30
gen age = (rnormal() * 15) + 57
gen age_t=(rt(_N)*15)+57

hist age, ///
   fcolor(orange%40) /// simulated normal 
   addplot(hist age_t, fcolor(midblue%50)) /// simulated t-distribution 
   normal /// theoretical normal
   legend(on ///
      lab(1 "Sampled from Normal") ///
	  lab(2 "Theoretical Normal") ///
	  lab(3 "Sampled from t-distribution") ///
	  )
<<dd_graph>>  
	  graph export hist_age,replace
<</dd_do>>
The distribution of the data follows a normal distribution:
$$\text{Age，years} \sim \mathcal{N}(\mu=57,,sigma^{2}=225)$$

<</dd_do>>
```



