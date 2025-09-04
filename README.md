<h1>Marketing Promotions A/B Test — Fast-Food Chain</h1>
<p>This repository contains the analysis and outputs for a controlled experiment comparing three marketing promotions for a new menu item. The goal: <strong>identify which promotion yields the highest average weekly sales per store</strong> while validating randomization and checking for confounders.</p>
<h2>Contents</h2>
<ul>
   <li><strong>Google Doc file with the project docummentation</strong> — <a href="https://docs.google.com/document/d/1fJIUI9OwN2n-h_baARnLNj2Rere1NYlGaVQHUURNkZg/edit?usp=sharing">View report</a></li>
   <li><strong>SQL files with all the queries used for the project</strong> — data_for_anova.sql, market_location_distribution.sql, missing_data.sql, primary_metric.sql, secondary_metric.sql, store_age.sql</li>
   <li><strong>Fast Food Marketing Campaign dataset in Kaggle</strong> — <a href="https://www.kaggle.com/datasets/chebotinaa/fast-food-marketing-campaign-ab-test">View dataset</a></li>
</ul>
<h2>Summary</h2>
<ul>
   <li>Validated experiment data: group sizes and distributions (MarketSize: Small/Medium/Large), store age balance, and data completeness (no missing weeks).</li>
   <li>Primary metric: average weekly sales per location (in thousands) — computed as the 4-week mean per LocationID and used as the unit of analysis.</li>
   <li>Ran a one-way ANOVA on location-level means to test for differences between Promotion 1, 2, 3</li>
   <li>Followed ANOVA with Bonferroni-corrected pairwise t-tests (99% CI) using Evan Miller’s A/B tools</li>
   <li>Secondary metric: total 4-week sales per location used for valiation</li>
</ul>
<h2>Key Insights</h2>
<ul>
   <li><strong>Promotion 1 is the recommended campaign.</strong> It shows 10.77k higher weekly sales over Promotion 2 (≈+43.1k per store across 4 weeks)</li>
   <li>Promotion 1 vs Promotion 3: small gap (+2.73k, ≈ +4.9%), not statistically significant (p = 0.43) — a tie under our strict 99% confidence</li>
   <li>Randomization checks confirmed balanced store characteristics (MarketSize, AgeOfStore), minimizing confounding bias</li>
   <li>Promotion 3 > Promotion 2 by ~8.04k per week (~17%), but not significant after Bonferroni (p = 0.0136 > 0.00333).</li>
</ul>
<h2>Tools Used</h2>
<ul>
   <li>Google BigQuery (SQL) — data prep, aggregation and exports</li>
   <li>SocSciStatistics.com — statistical calculators</li>
   <li>Evan Miller A/B Test Calculator — A/B testing tool</li>
   <li>Google Sheets / Docs — project docummentation</li>
</ul>
