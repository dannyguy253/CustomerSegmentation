

# Customer Segmentation Project

## Table of Contents
- [Project Overview](#project-overview)
- [Data Source](#data-source)
- [Objectives](#objectives)
- [Tools and Technologies](#tools-and-technologies)
- [Project Workflow](#project-workflow)
- [Data Collection](#data-collection)
- [Data Preparation](#data-preparation)
- [Clustering Analysis](#clustering-analysis)
- [Visualization and Insights](#visualization-and-insights)
- [Results](#results)
- [Conclusion](#conclusion)
- [How to Run the Project](#how-to-run-the-project)
- [Future Work](#future-work)
- [Acknowledgments](#acknowledgments)

## Project Overview
This project aims to segment customers based on their purchasing behavior to identify distinct customer groups. Understanding these segments can help businesses tailor marketing strategies and improve customer satisfaction.

## Data Source
The dataset used for this project is sourced from Kaggle, which contains customer transaction data.

## Objectives
- Segment customers based on purchasing behavior.
- Identify key characteristics of each customer segment.
- Provide actionable insights for targeted marketing strategies.

## Tools and Technologies
- **SQL**: Data extraction and initial preparation.
- **Python**: Data cleaning, preprocessing, and clustering (using Pandas and Scikit-Learn).
- **Tableau**: Data visualization and dashboard creation.
- **Jupyter Notebook**: Documentation and analysis.

## Project Workflow
1. **Data Collection**: Gather customer transaction data.
2. **Data Preparation**: Clean and preprocess the data.
3. **Clustering Analysis**: Apply clustering algorithms to segment customers.
4. **Visualization and Insights**: Visualize the segments and extract insights.
5. **Results**: Summarize the findings and present the segments.

## Data Collection
The dataset was collected from Kaggle and includes the following fields:
- `Customer_Name`
- `Num_Visits`
- `Total_Spent`
- `First_Purchase_Date`
- `Last_Purchase_Date`
- `Recency`
- `Avg_Spend`
- `Avg_Items`
- `Discount_Usage`
- `Preferred_Payment_Method`
- `City`
- `Customer_Category`
- `Cluster`

## Data Preparation
Steps taken to prepare the data:
- Extracted relevant features using SQL queries.
- Cleaned and preprocessed the data using Python (Pandas).
- Scaled features for clustering.
- Converted date fields to datetime format.

## Clustering Analysis
- Used K-means clustering algorithm from Scikit-Learn.
- Determined the optimal number of clusters using the elbow method.
- Added a `Cluster` column to the dataset based on the clustering results.

## Visualization and Insights
- Created various visualizations using Tableau to analyze customer segments:
  - Cluster distribution bar chart.
  - Preferred payment method per cluster.
  - Customer category per cluster.
  - City distribution per cluster.
  - Average purchase value per cluster.
  - Purchase frequency per cluster.
  - Recency heatmap.

## Results
- Identified distinct customer segments based on purchasing behavior.
- Highlighted key characteristics and behaviors of each segment.
- Provided actionable insights for targeted marketing strategies.

## Conclusion
The customer segmentation analysis helped in understanding the different customer groups, their preferences, and behaviors. These insights can be leveraged to enhance customer engagement and optimize marketing efforts.

## How to Run the Project
1. Clone the repository:
   ```sh
   git clone https://github.com/yourusername/customer-segmentation.git
   ```
2. Navigate to the project directory:
   ```sh
   cd customer-segmentation
   ```
3. Install the required dependencies:
   ```sh
   pip install -r requirements.txt
   ```
4. Run the Jupyter notebook for data preparation and clustering analysis.
5. Load the prepared dataset into Tableau for visualization.

## Future Work
- Integrate additional data sources for more comprehensive analysis.
- Explore other clustering algorithms and techniques.
- Implement predictive modeling for customer behavior.

## Acknowledgments
- Kaggle for providing the dataset.
