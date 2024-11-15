# Market Sentiment & Index Movements - A Correlation Study​

## Team Members
- Brijgopal Bharadwaj, DSBA
- Chandan Rao, DSBA
- Danish Akhlaq, DSBA


## Table of Contents

- [Introduction](#introduction)
- [Problem Statement](#problem-statement)
- [How to Reproduce the Project](#how-to-reproduce-the-project)
- [Dataset Overview](#dataset-overview)
- [Data Preparation and Preprocessing](#data-preparation-and-preprocessing)
- [Exploratory Data Analysis (EDA)](#exploratory-data-analysis-eda)
- [Modeling and Prediction](#modeling-and-prediction)
- [Evaluation Metrics](#evaluation-metrics)
- [Key Findings](#key-findings)


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


## How to Reproduce the Project

1. Clone the repository:
    ```git clone https://github.com/BrijAtIISc/DSP_project.git```
2. Navigate to the project folder:
    ```cd DSP_project```
3. Install dependencies:
    ```pip install -r requirements.txt```
4. In case fresh data is required:
    * Set the following environment variables:
        ```
            export GCSJ_API_KEY=<YOUR_GOOGLE_CUSTOM_SEARCH_API_KEY>
            export GCSJ_ENGINE_ID=<YOUR_GOOGLE_SEARCH_ENGINE_ID>
        ```
    * Run the data collection playbooks:
        - `Code/01-data-collection-news-companies.ipynb`
        - `Code/02-data-collection-news-market.ipynb`
5. Run the data preprocessing playbooks:
    * `Code/03-data-preprocessing-news-companies.ipynb`
    * `Code/04-data-preprocessing-news-market.ipynb`
5. To perform EDA, use the following playbooks:
    * `Code/05-EDA-news-companies.ipynb`
    * `Code/06-EDA-news-market.ipynb`


---

## Dataset Overview

The dataset consists of two main components:
1. **News Articles Dataset:**
    - Contains news articles from various sources related to companies and the stock market.
    - Features include Title, Description, URL, Source, and Date.
    - The dataset is collected using the Google Custom Search API.
2. **Market Data Dataset:**
    - Contains historical stock market data, including Open, High, Low, Close, Volume, and Adjusted Close prices.
    - Features include Date, Ticker, and Company Name.

## Data Preparation and Preprocessing

- Handled missing values using imputation techniques.
- Removed outliers.
- Converted categorical data into appropriate formats using one-hot encoding.
- Created new features for VADER Sentiment Scores using NLP pipelines from `nltk`.
- Created news article summaries using `pipeline` from `transformers` library (by HuggingFace).


## Exploratory Data Analysis (EDA)

Comprehensive EDA was performed to understand data distributions and relationships:

- Distribution of News across dates: Found that ratings were positively skewed, with most apps rated above 3.5.
- Distribution of News-article summary lengths: Found that most summaries were between 100-200 words.
- Distribution of Sentiment Scores: Found that most articles had a neutral sentiment.
- Distribution of Market Data across time


## Modeling and Prediction

### Machine Learning Models Implemented:
> To be completed in near future
### Hyperparameter Tuning:
> To be completed in near future


## Evaluation Metrics

> To be completed in near future


## Key Findings

> To be completed in near future
