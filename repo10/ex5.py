import sqlite3
dbname = 'db1.db'
conn = sqlite3.connect(dbname)
cur = conn.cursor()
cur.execute('SELECT fruits.name, SUM(price*quantity) FROM sales JOIN fruits ON sales.fruit_id=fruits.id GROUP BY fruits.id')
for row in cur:
    print(row)
cur.close()
conn.close()