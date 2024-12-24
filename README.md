# LSAT vs GPA: Least Squares Fit

This project models the relationship between GPA and LSAT scores using linear, quadratic, and cubic least squares fits. The script computes the coefficients, evaluates the errors, and visualizes the data alongside the fitted models.

## Features

- Computes linear, quadratic, and cubic least squares fits.
- Evaluates the Mean Squared Error (MSE) for each model.
- Visualizes the data and fitted models on a single plot.

## Data

The script uses `lawdata`, which contains:
- `gpa`: Grade Point Average data.
- `lsat`: Law School Admission Test scores.

## Visualization

- **Blue Points**: Original data.
- **Black Line**: Linear fit.
- **Green Line**: Quadratic fit.
- **Red Line**: Cubic fit.

## Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/lsat-gpa-fit.git

2. Load the lawdata file containing gpa and lsat.
3. Run the gpa_lsat_fit.m script in MATLAB.
4. View the plot comparing the data points and fitted models.

## Outputs

- Fit Coefficients: Computed for linear, quadratic, and cubic models.
- Mean Squared Errors: Displayed for error evaluation.

