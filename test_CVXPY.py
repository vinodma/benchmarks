
import timeit

# Problem data.
setup = '''
from cvxpy import *
import numpy



m = 800
n = 350
numpy.random.seed(1)
A = numpy.random.randn(m, n)
b = numpy.random.randn(m)

# Construct the problem.
x = Variable(n)
objective = Minimize(sum_squares(A*x - b))
constraints = [0 <= x, x <= 1]
prob = Problem(objective, constraints)
'''
start_ecos = timeit.timeit("prob.solve(solver='ECOS')",setup=setup,number=100)
start_scs = timeit.timeit("prob.solve(solver='SCS')",setup=setup,number=100)
