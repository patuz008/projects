
# Medical Insurance Cost Analysis

This Jupyter notebook analyses a dataset of medical insurance costs to understand the factors influencing healthcare expenses. The dataset contains anonymized patient records with features such as age, BMI, smoking status, and region.

---

## Key Analysis Steps

### Data Loading & Inspection

- **Dataset**: Loaded from `insurance.csv`
- **Records**: Contains 1,338 records with 7 features:
  - `age`: Beneficiary age
  - `sex`: Gender (male/female)
  - `bmi`: Body Mass Index
  - `children`: Number of dependents
  - `smoker`: Smoking status (yes/no)
  - `region`: Geographic region (northeast, southeast, etc.)
  - `charges`: Individual medical costs
- **Data Quality**: No missing values detected

---

### Exploratory Data Analysis (EDA)

#### Target Variable Distribution:
- **Histogram**:
  - Original `charges` distribution is heavily right-skewed.
  - Applied log transformation (`log_charges = log2(charges)`) to normalize the distribution.

#### Correlation Analysis:
- **Key Correlations**:
  - `age` shows a moderate correlation with `charges` (0.30).
  - After log transformation:
    - Correlation with `age` increases to 0.53.
    - Correlation with `children` improves to 0.16.
  - `bmi` has a weak correlation with `charges` (0.20).

---

### Key Visualizations

1. **Before Transformation**:
   - Histogram of original `charges` shows an exponential distribution.

2. **After Transformation**:
   - Histogram of `log_charges` displays a near-normal distribution.

3. **Correlation Matrix Heatmap**:
   - Highlights relationships between numerical features, emphasizing the impact of log transformation on correlations.

---

## Key Findings

1. **Age**:
   - Strongest predictor of medical costs.
   - Correlation with `charges` increases after log transformation (from 0.30 to 0.53).

2. **Number of Children**:
   - Small but meaningful relationship with medical costs (correlation increases to 0.16 after log transformation).

3. **BMI**:
   - Shows weaker influence on medical costs than commonly assumed (correlation = 0.20).

4. **Log Transformation**:
   - Significantly improves the distribution of the target variable (`charges`) for modelling purposes.

---

## Data Source

- [Kaggle Dataset](https://www.kaggle.com/datasets)

---

## Libraries Used

- `pandas`
- `numpy`
- `matplotlib`
- `seaborn`
- `scikit-learn`


