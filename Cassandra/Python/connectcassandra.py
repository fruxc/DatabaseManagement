from cassandra.cluster import Cluster
if __name__ == "__main__":
    cluster = Cluster(port=9042)
    session = cluster.connect('company',wait_for_all_pools=True)
    session.execute('USE company')
    rows = session.execute('SELECT * FROM employee')
    for row in rows:
        print(row.id,row.desg,row.job,row.name,row.salary,row.sector)