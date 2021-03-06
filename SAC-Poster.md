
# **Global Perspective On Risk Factors Associated with Adolescent Birth Rate**

By Hannah Miller and Shyhiem Lawrence

*MSUM Quantitative Biology Students*

**Abstract:**

Adolescent birth rate is the amount of births per 1000 females who give
birth between the ages 15 to 19. There are many possible factors that
could contribute to a high rate of adolescent birth. A high adolescent
birth rate could result in mortality for both mothers and infants while
this is possible factors such as truncated education, lower future
family income and larger family size are also effects of adolescent
birth. If we can understand the relationships between risk factors and
adolescent birth rate , then we can make recommendations about how to
reduce adolescent birth. But, we don’t know enough about those
relationships.The focus of this project is to explore the
characteristics of countries that experienced high adolescent birth rate
and to see how the frequency of those characteristics varied
geographically. To do that, we will use data from the World Health
Organization - Global Health Organization which contains information
about the countries and their birth rates throughout the years 2000 to
2019. Investigation obtained from this data will be used to provide
adequate information in high risk areas for adolescent birth rate.

**Introduction:**

-   Adolescent birth rate measures annual number of births to women
    15-19 years of age per 1,000 women.

-   ABR has become a striking obstacle around the world. 

-   Social determinants of health:

<!-- -->

    -   Low education and low income levels of a teen's family

    -   May contribute to the high teen birth rates

-   Teens in certain areas are at higher risk of teen pregnancy and
    birth than other areas.

-   ABR poses as a risk for better experience and can increase the risk
    of mortality in babies and women when an adolescent birth occurs.

**Methods:**

<img src="Screenshot (1).png" width="12in"/>

\`\`\`{r} # Histogram} abr %>% filter(year == 2018) %>% ggplot() +
geom_col(mapping = aes(x = country, y = abr), fill = “royalblue4”) +
coord_flip()

    ```{r} # World Map}
    ne_countries(scale = "medium", returnclass = "sf") %>%
      filter(sov_a3 != "ATA") %>% 
      left_join(filter(abr, year == 2018), by = c("admin" = "country")) %>% 
      ggplot() +
      geom_sf(aes(fill = abr)) +
      scale_fill_viridis_b() +
      coord_sf(crs = st_crs("ESRI:54030")) +  # Robinson
      theme_void()

**Results:**

<img src="https://lh6.googleusercontent.com/GymQhJKCdND8JCJxrevu961VtzgyMs-QdgQjkX7LqEtUYxeBXKMpZun_opPcOhoZeX9BGpU7WO_SDf8-G_T7wX5So7wJtyieh_YVMJOWM331jZhUF4BVsZ3psaXrlFMQoRqLFyeaNLnV" width="13.58in"/>

**Figure 1.** A Histogram representing the Adolescent Birth Rate (abr)
in the year of 2018 among different countries around the world.

<img src="map.png" width="15.24in"/>

**Figure 2.** A World Map showing the high and low birth rates among
adolescents aged 15 to 19. Yellow representing the highest rates, while
purple represents the lowest rates.

**Discussion:**

Adolescent birth rate is a striking factor that is inconvenient for both
mothers and babies such as not much exposure to education.Our findings
demonstrated higher adolescent birth rates in low to medium income
countries in comparison to other countries. This statistics provides the
ratio that one out of four females give birth before reaching the age of
nineteen.  (Carvajal et al. 2020) In comparison to the data there are
both highs and lows that differ throughout the year, this could be a
result of not basely from developing country or not but income
inequality, a country that is developed does not necessarily means that
everyone is well paid hence a similarity in small income will vary
between a developed and developing countries (Nagata 2016). We cannot
exclude the possibility that a lack of education on the specific topic
could be the leading cause and fluctuations among the years, with the
inclusion of socioeconomic factors as the environment a person may
liveTo combat these issues providing employment opportunities for women
and improved education, urbanization, increased access to contraception
and a delay in the age of marriage and childbearing could help to
decrease adolescent birth rate globally.   

**References:**

“Adolescent Birth Rate (per 1000 Women Aged 15-19 Years).” *World Health
Organization*, THE GLOBAL HEALTH OBSERVATOR,
<https://www.who.int/data/gho/data/indicators/indicator-details/GHO/adolescent-birth-rate-(per-1000-women-aged-15-19-years).>

“Adolescent Pregnancy.” *World Health Organization*, World Health
Organization,
<https://www.who.int/news-room/fact-sheets/detail/adolescent-pregnancy.>

Carvajal, L., Wilson, E., Requejo, J. H., Newby, H., Eriksson, C. D. C.,
Liang, M., Dennis, M., Gohar, F., Kapeu, A. S., Idele, P., & Amouzou, A.
(2020). Basic Maternal Health Care Coverage Among Adolescents in 22
Sub-Saharan African Countries with High Adolescent Birth Rate. *Journal
of global health*, *10*(2). <https://doi.org/10.7189/jogh.10.021401>

Nagata, Jason M. “Global Health Priorities and the Adolescent Birth
Rate.” *Journal of Adolescent Health*, vol. 60, no. 2, 16 Nov. 2016,
pp. 131–132.

**Acknowledgements:**

We express our profound thanks to our Quantitative Biology Professor
Dr. Chris Merkord and to everyone who have helped indirectly in our
preparation.
