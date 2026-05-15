# Metrocar Funnel & Operations Analysis
### SQL · Excel · Power BI

## Overview

This project analyzes the full user journey of Metrocar — a ride-hailing service —
from app download to completed ride.

The goal was to identify where users drop off, what affects ride completion,
and which operational factors influence revenue and customer experience.

**Pipeline:** SQL → Excel → Power BI

<img width="1454" height="817" alt="page_1" src="https://github.com/user-attachments/assets/a40ea310-d634-41fa-838a-5e96d911abd5" />


## Links

- [Power BI Dashboard](https://app.powerbi.com/view?r=eyJrIjoiNDMxMzQ0MTgtMGIyZC00NDQ4LWI1OTAtOGI4MWIyYzNhZmVlIiwidCI6ImRmODY3OWNkLWE4MGUtNDVkOC05OWFjLWM4M2VkN2ZmOTVhMCJ9&embedImagePlaceholder=true)
- [PDF Report](https://github.com/OlenaBabko/Metrocar_DataAnalysis_Project/blob/main/Metrocar_DA_Report.pdf)
- [SQL Scripts](https://github.com/OlenaBabko/Metrocar_DataAnalysis_Project/tree/main/SQL%20queries)
- [Excel Calculations](https://github.com/OlenaBabko/Metrocar_DataAnalysis_Project/blob/main/Metrocar_DataAnalysisProject.xlsx)

## Dataset

PostgreSQL database with 5 tables: 
- `app_downloads`,
- `signups`,
-  `ride_requests`
-  `transactions`,
-  `reviews`.

## What I Did

- Wrote SQL queries for funnel calculations, aggregations, and KPIs
- Used Excel for supporting calculations and validation
- Built a 3-page interactive Power BI dashboard with DAX measures

**Dashboard pages:**
1. Executive Overview & Funnels
2. Operations & Time Analysis
3. Audience & Platforms

## Key Metrics

| Metric | Value |
|---|---:|
| Total Revenue | €4.25M |
| Avg Revenue per Ride | €20 |
| Avg Revenue per User | €682 |
| Ride Completion Rate | 58% |
| Completed User Conversion | 35% |
| Cancellation Rate | 42% |

## Key Findings

**Drop-off happens after ride acceptance, not at the top of the funnel.**
The largest loss occurs between *Ride accepted → Ride completed* — meaning the issue
is operational, not just acquisition.

**Waiting time drives cancellations.**
Cancellation risk increases with waiting time. Reducing it is the most direct
lever for improving completion rates.

**iOS leads in completed rides.**
iOS also has a strong signup conversion rate, making it the most valuable platform
for both acquisition and revenue.

**Age groups differ more by volume than by conversion rate.**
The 25–44 groups dominate in activity, but conversion rates are similar across
all age groups — so volume and absolute drop-offs matter more than percentages.

## Recommendations

1. Reduce waiting time — especially during peak hours
2. Investigate the accepted → completed stage more deeply
3. Prioritize iOS while monitoring growth potential on other platforms
4. Analyze age groups by absolute volume, not just conversion rate

## Repository Structure

```text
Metrocar_DataAnalysis_Project/
├── README.md
├── Dashboard screenshots/
│   ├── page_1.png
│   ├── page_2.png
│   └── page_3.png
├── SQL queries/
│   ├── UsersFunnel.sql
│   ├── RidesFunnel.sql
│   ├── KeyRevenueKPIs.sql
│   └── ...
├── Metrocar_DA.pdf
├── Metrocar_DA_Project.pbix
├── Metrocar_DA_Report.pdf
├── Metrocar_DataAnalysisProject.xlsx
├── Metrocar_Data_Analysis_SQL.pdf
└── schema.webp

```
