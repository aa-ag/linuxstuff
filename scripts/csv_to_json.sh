cat ../test_data/fake_data.csv | python -c 'import csv, json, sys; print(json.dumps([dict(r) for r in csv.DictReader(sys.stdin)]))' > ../test_data/fake_data.json
