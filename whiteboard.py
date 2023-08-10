def pair_gloves(gloves):
    new_list = {}
    count = 0
    for glove in gloves:
        if glove not in new_list:
            new_list[glove] = 1
        else:
            new_list[glove] += 1

    for v in new_list.values(): 
        if v % 2 == 0:
          count += v//2
    return count


print(pair_gloves(["red", "red", "red", "blue", "blue", "red"]))

      