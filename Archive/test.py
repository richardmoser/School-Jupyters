from numpy import sqrt

n = 1
L1 = 0
L2 = 1
Lnext = L1

# Print header
print("%+5s | %-22s | %-22s" % ("n", "lambda w/ equ.", "lambda w/ recur."))
print("=========================================================")

# Calculate and print lambda for each choice of $n$.
while (n <= 5):
    a = (1 / 2 * (1 + sqrt(5))) ** n
    b = (1 / 2 * (1 - sqrt(5))) ** n
    lamb1 = (1 / sqrt(5)) * (a - b)

    Lnext = L1 + L2
    L1 = L2
    L2 = Lnext

    # Print roots.
    print("%5d | %1.15e | %1.15e" % (n, lamb1, Lnext))

    # Increment n.
    n += 1