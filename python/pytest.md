# Pytest use

Notes from [Learn Pytest in 60 Minutes](https://www.youtube.com/watch?v=bbp_849-RZ4)

All python programs should begin with test\_ to aid discovery

> cat test_explosions.py
    def test_detonate():
        assert 1 == 1

## Running

    > py.test  # finds/runs all
> pytest test_explosion.py::test_detonate    # run 1
> pytest -k "expl or cheese"      # regex matches
> pytest -s/-q     # prints more or less

## Marks
> pytest -m foo

@pytest.mark.foo
@pytest.mark.skip("hate tests")
@pytest.mark.skipif(1==1, "yuk")
@pytest.mark.parameterize("var1, var2", [(1, 2), (3, 4)])
def test_whatever(var1, var2):
    pytest.approx(myfunc(var1), var2)

## Figures

def setup_module(modue):
def teardown_module(module):
OR
@pytest.figure(scope='module'):
def db()
    db=connect()
    yield db
    db.rollback()
