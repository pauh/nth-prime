cdef bint is_prime(unsigned int n):
    # pre: n >= 0
    if n == 2: return True
    if n%2 == 0 or n == 1: return False

    cdef unsigned int i
    i = 3
    while (i*i < n):
        if n%i == 0: return False
        i += 2
    return i*i != n

def nth_prime(unsigned int n):
    # pre: n > 0
    if n == 1: return 2
    cdef unsigned int count, r
    count = 1
    r = 1
    while count < n:
        r += 2
        if is_prime(r):
            count += 1
    return r
