# Project Title: Market Sentiment & Index Movements - A Correlation Study​

## Table of Contents

- [Introduction](#introduction)
- [Problem Statement](#problem-statement)
- [Team Members](#TeamMembers)
- [Dataset Overview](#dataset-overview)
- [Data Preparation and Preprocessing](#data-preparation-and-preprocessing)
- [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)
- [Modeling and Prediction](#modeling-and-prediction)
- [Evaluation Metrics](#evaluation-metrics)
- [Key Findings](#key-findings)
- [How to Reproduce the Project](#how-to-reproduce-the-project)


## Introduction

The news media plays a pivotal role in shaping public opinion, including investor sentiment. This influence can significantly impact stock prices and market trends. By leveraging the power of data science, we aim to quantify and analyze the impact of news media on stock market movements.

## Problem Statement
While news media is a valuable source of information for investors, it can also be a tool for manipulating public perception and influencing investment decisions. This dynamic presents a significant challenge for investors seeking to make informed decisions.
#### Why is it important?
- This dynamic provides us a metric that can be utilized in forecasting and market-movement prediction models.
- Knowledge about these influences might help the common investor be more perceptive to the way these influences can creep into their investment patterns.
- An extremely biased media-source might be a candidate for further investigation by the regulatory authorities like SEBI to uncover undue practices/agendas.
#### Objectives of the project
- We want to develop a machine-learning pipeline that enables real-time sentiment analysis of incoming news articles, and computation of correlation scores that feed into a forecasting model for near-term market movement prediction.
#### How can Data Science solve the problem?
- Build a market-news bias-score assigning model, using BERT embeddings and DNN regressor.
- Use the model to assign bias scores to news in real-time, and compute correlation scores with the index movements on the fly.
- Use the insights gathered in various time-windows to forecast market trends in a limited capacity.

## Team Members
- Brijgopal Bharadwaj, DSBA
- Chandan Rao, DSBA
- Danish Akhlaq, DSBA


## Dataset Overview

The project utilizes a comprehensive dataset sourced from the app store, consisting of:

- Total Records: 10,000 rows
- Key Features:
    - App Name: Name of the application.
    - Category: App's category (e.g., Games, Productivity).
    - Reviews: Number of user reviews.
    - Average User Rating: Average rating from users.
    - Size (MB): App size in megabytes.
    - Price: App price (Free or Paid).

## Initial Observations
- The dataset had missing values and inconsistent formats that required standardization.
- Non-numeric data types needed transformation for modeling.

## Data Preparation and Preprocessing

### Data Cleaning:
- Handled missing values using imputation techniques.
- Removed outliers based on Z-scores and IQR.
- Converted categorical data into appropriate formats (e.g., one-hot encoding).

### Feature Engineering:
- Created new features such as Review Sentiment from text analysis.
- Binned continuous variables like Size (MB) into categorical ranges for better interpretability.

## Exploratory Data Analysis (EDA)

Comprehensive EDA was performed to understand data distributions and relationships:

- Distribution of News: Found that ratings were positively skewed, with most apps rated above 3.5.
- Correlation Analysis: Discovered that Reviews and Category had strong correlations with Average User Rating.
- Visualizations: Used histograms, scatter plots, and heatmaps to illustrate key insights.

## Modeling and Prediction

### Machine Learning Models Implemented:
- Baseline Model: Linear Regression to establish initial performance.
- Advanced Models:
    - Random Forest Regressor
    - Gradient Boosting Regressor
### Hyperparameter Tuning:
- Used GridSearchCV for fine-tuning the models and optimizing performance.

## Evaluation Metrics

- Primary Metrics:
    - RMSE (Root Mean Squared Error) for prediction accuracy.
    - R² (Coefficient of Determination) to measure model fit.
- Best Model Performance:
    - Random Forest Regressor: RMSE = 0.45, R² = 0.88

## Key Findings



## How to Reproduce the Project

1. Clone the repository:
```git clone https://github.com/BrijAtIISc/DSP_project.git```
2. Navigate to the project folder:
```cd mrkt-sent-indx-move```
3. Install dependencies:
```pip install -r requirements.txt```
4. Run the data generation script
```python data_generation.py```
5. Run the data preprocessing script:
```python data_preprocessing.py```
5. Open and run the Jupyter Notebook:
```jupyter notebook```
6. Execute analysis.ipynb for complete steps.