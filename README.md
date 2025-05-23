# MTA Transit Data Equity Analysis

This project explores public transit accessibility and infrastructure equity across Maryland using the MTA Transit-Oriented Development (TOD) dataset. The goal is to understand how transit access varies by zone and identify disparities through SQL queries and data modeling.

---

## Key Questions Explored

- **Which stations are the most and least accessible?**  
  Urban stations like Union and Penn rank highest in bike and pedestrian access. Rural stations like Harpers Ferry score lowest.

- **Where is there a gap between pedestrian and bike access?**  
  Some walkable stations lack adequate bike infrastructure, revealing inconsistent investment.

- **How do TOD area types compare?**  
  Downtown zones score highest on accessibility and lowest on parking, aligning with car-free design priorities. Suburban zones show poor bike/ped scores despite having more stations.

- **Which stations show consistent weekday vs weekend ridership?**  
  Residential or community-centered stations show stable ridership, while business-focused stations drop on weekends.

- **Do amenities impact ridership?**  
  There's a weak positive correlation on weekdays and slight negative correlation on weekends, suggesting high-amenity stations are more commuter-oriented.

---

## Files in This Repo

- `queries.sql`: Final SQL queries used in analysis
- `backup.sql`: SQL dump of the database
- `erd_logical.mwb`: MySQL Workbench ERD file
- `README.md`: Overview and highlights
- `report.md`: (optional) Extended writeup with full analysis

---

## Tools Used

- MySQL / MySQL Workbench
- Microsoft Excel (data cleaning)
- Markdown (report formatting)

---

## How to Use

1. Clone the repository
2. Import `backup.sql` into your MySQL instance
3. Open `erd_logical.mwb` in MySQL Workbench to explore schema
4. Run queries from `queries.sql` to replicate insights
