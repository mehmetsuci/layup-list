#!/bin/bash
# Call this from root directory of repo

python manage.py migrate

# import term data
python scripts/importers/import_term.py 16W data/terms/201601_courses.json
python scripts/importers/import_term.py 16S data/terms/201603_courses.json
python scripts/importers/import_term.py 16X data/terms/201606_courses.json
python scripts/importers/import_term.py 16F data/terms/201609_courses.json
python scripts/importers/import_term.py 17W data/terms/201701_courses.json

# import reviews
# python scripts/importers/import_layups_as_reviews.py
python scripts/importers/import_reviews.py

# compute the initial scorings
python scripts/compute/compute_initial_scores.py
