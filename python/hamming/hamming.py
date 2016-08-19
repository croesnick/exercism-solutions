def distance(first, second):
    strands = zip(first, second)
    counter = lambda acc, (a, b): acc+1 if a != b else acc
    return reduce(counter, strands, 0)

