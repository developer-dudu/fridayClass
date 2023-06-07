//find all cases, and if the case is orphan (no related account), then set default account to Softinnovas.
CaseBatch cb = new CaseBatch();
Database.executebatch(cb, 50);