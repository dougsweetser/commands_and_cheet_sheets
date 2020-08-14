# Pytest use

Notes from [Learn Pytest in 60 Minutes](https://www.youtube.com/watch?v=bbp_849-RZ4)

All python programs should begin with test\_ to aid discovery
```
> cat test_explosions.py
    def test_detonate():
        assert 1 == 1
```

## Running
```
> py.test  # finds/runs all
> pytest test_explosion.py::test_detonate    # run 1
> pytest -k "expl or cheese"      # regex matches
> pytest -s/-q     # prints more or less
```

## Marks
```
> pytest -m foo

@pytest.mark.foo
@pytest.mark.skip("hate tests")
@pytest.mark.skipif(1==1, "yuk")
@pytest.mark.parameterize("var1, var2", [(1, 2), (3, 4)])
def test_whatever(var1, var2):
    pytest.approx(myfunc(var1), var2)
```

## Figures
```
@pytest.fixture(scope='module')
def db():
    db = {}
    dsn = "host=machine.com port=5432..." 
    db["conn"] = pg2.connect(f"{dsn}")
    db["cur"] = db["conn"].cursor(cursor_factory=pg2e.DictCursor)
    yield db
    db.rollback()
    
def test_something(db):
    db["cur"].execute("select count(*) from a_table;")
    row = db["cur"].fetchone()
    count = row["count"]
    ...
```

## Need Fake Data? from faker import Faker

faker = Faker("sv_SE", "fr_FR", "ja_JP")
faker.name(), faker.company(), faker.profile(), faker.catch_phrase()
