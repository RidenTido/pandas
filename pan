INTERNSHIP RECORDS:

Set 1:
import pandas as pd

# 1.Load the dataset
df = pd.read_csv(r"U:\Internship.csv", encoding='ISO-8859-1')  # Replace with your actual file path

# 2.Display first 5 rows
print("First 5 rows:\n", df.head())

# 3.Basic Statistics
print("\nBasic Statistics:\n", df.describe())

# 4. Filter internships at 'ABC Corp'
filtered_df = df[df['Organization Name'].str.contains('Nitroware Technologies', case=False, na=False)]
print("\nInternships at Nitroware Technologies:\n", filtered_df)

Set 2:

import pandas as pd

#1.Sort Data by Name of the Student
sorted_df = df.sort_values(by="Name of the Student", ascending=True)
print("\nSorted Data by Name of the Student:\n", sorted_df)

#2.  Save filtered data to a new CSV file
filtered_df.to_csv("filtered_internships_at_ABC.csv", index=False)
print("\nFiltered data saved to 'filtered_internships_at_ABC.csv'")

# 3. Count the Number of Internships Per Organization**
internship_counts = df['Organization Name'].value_counts()
print("\nInternship Counts Per Organization:\n", internship_counts)

# 4. Find the Most Frequent Internship Location**
most_frequent_org = internship_counts.idxmax()
most_frequent_count = internship_counts.max()
print(f"\nMost Frequent Internship Organization: {most_frequent_org} with {most_frequent_count} internships.")

INDUSTRIAL RECORD:

Set 1:
import pandas as pd

#1. Load the CSV file
file_path = "U:/III_BCA_A_Industrial.csv"  # Replace with your actual file path
df = pd.read_csv(file_path, encoding='ISO-8859-1')

#2. Clean column names
df.columns = df.columns.str.strip()
print(df.columns)

# Convert 'Date' column to datetime
df["Date"] = pd.to_datetime(df["Date"], errors="coerce", dayfirst=True)

# 3. Most Common Month for Industry Visits
df["Month"] = df["Date"].dt.month_name()
most_common_month = df["Month"].mode()[0] if not df["Month"].isna().all() else "No valid dates"
print("Month Visited:", most_common_month)

# 4. Unique Staff Members Who Accompanied Students
unique_staff_count = df["Name of the Staff in charge"].nunique()
print("Unique Staff Members Who Accompanied Students:", unique_staff_count)

Set 2:
import pandas as pd

# 1. Staff Member Who Accompanied the Most Visits
most_frequent_staff = df["Name of the Staff in charge"].mode()[0]
print("Most Students Under a Single staff:", most_frequent_staff)

# 2. Total Number of Industry Visits
total_visits = len(df)
print("Total Number of Industry Visits:", total_visits)

# 3. Student Who Attended the Most Visits
most_active_student = df["Name of the Student"].mode()[0]
print("Student Who Attended the Most Visits:", most_active_student)

# 4. Visits Per Industry
visits_per_industry = df["Details of Industry Visited"].value_counts()
print("\nNumber of Visits Per Industry:\n", visits_per_industry)

