# Covid-19 Detection
 Project on Covid-19 Detection

“Covid-19 Positive” is the most negative word heard in the year 2019. Detection of covid-19 was very important to stop the spread of pandemic. There was severe shortage of doctors as more people got infected. In these kinds of situations, if we could develop a Machine Learning model which could predict and diagnose Covid-19 accurately would help doctors and also lessen the burden on healthcare systems.
Tools Required: MySQL, Python, PowerBI 
Using Python packages like NumPy, Pandas we do data cleaning for the given dataset first. We deal with all wrong data, missing and null values in data cleaning. Then this cleaned data is loaded into MySQL and we try to get few useful insights from various queries. Later, we transform the data such that it is suitable for ML models. This transformed data is splitted into two parts: training dataset, testing dataset. We train Machine Learning model using training dataset. After training the model we give testing dataset to the model. ML model predicts the output as covid-19 positive or negative based on its learning from training dataset (which contains various symptoms). We calculate few metrics like Accuracy, precision etc to know the ML model performance. We develop 4 ML models namely: Decision tree, Random Forest, Logistic Regression, K-Nearest Neighbour models/Algorithms. Lastly, we compare these four models to know which ML model works best and gives better prediction results.

Our Problem statement was “Prediction of COVID-19 diagnosis based on symptoms” (a dataset is given to us we need to predict whether a person is affected with covid-19 or not based on symptoms. output: Yes/No)
The following are the columns/features used by the ML models:
A. Basic information:
1.	ID (Individual ID) --- int
2.	Sex (male/female) --- categorical
3.	Age ≥60 above years (true/false) --- categorical
4.	Test date (date when tested for COVID) --- date
B. Symptoms:
5.	Cough (true/false) --- categorical
6.	Fever (true/false) --- categorical
7.	Sore throat (true/false) --- categorical
8.	Shortness of breath (true/false) --- categorical
9.	Headache (true/false) --- categorical
C. Other information:
10.	Known contact with an individual confirmed to have COVID-19 (true/false) --- categorical
D. Covid report
11.	Corona positive or negative --- categorical

Files Description:
1. ### covid_detection.xlsx: 
It an excel file which contains 278848 patient records which above columns. It is out dataset. This Dataset was provided by odin School, Hyderabad,India.

2. ### covid_detection.ipynb :
It is a jupyter file which contains python code for EDA, Data cleaning, Data Transformation and ML model generation code.

3. ### Prediction of covid19 documentation.pdf 
It is a pdf file which contains complete documentation about the project.

4. ### covid-detection-sql-queries.sql:
It is a sql file which contains few sql queries and we can cross check these results with powerbi results.

5. ### covid_dashboard.pbix:
It is a powerBI file which contains dynamic dashboards of the above dataset.