import random

jobs = ["No comment", "Others", "Accounting", "Executive", "Manufacturing", "Admin & Clerical", "Franchise", "Nonprofit", "Banking & Finance", "Government", "Part Time", "Business Opportunities", "Health Care", "Retail", "Contract & Freelance", "Hospitality", "Sales & Marketing", "Customer Service", "Human Resources", "Science & Biotech", "Diversity Opportunities", "Information Technology", "Transportation", "Engineering", "Internships & College"]
genders = ["No comment", "Male", "Female"]
zones = ["No comment", "Asia", "Europe", "Africa", "North America", "Sorth America", "Oceania"]

timeout = 0.1

def init_constants(app):
    app.jinja_env.globals.update({
        "jobs": jobs,
        "genders": genders,
        "zones": zones,
        "jobs_re": [".*"] + jobs[1:],
        "genders_re": [".*"] + genders[1:],
        "zones_re": [".*"] + zones[1:]
    })

