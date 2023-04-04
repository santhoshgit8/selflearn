# Types of printing
virus = "sar_cov"
disease = "covid19"

# type1:
print("name of virus:", virus)
# type2
print("name of virus {}".format(virus))
# type3
print(f"name of virus {virus}")
# type4
print("name of virus " + virus)

# multiplelines
# type1:
print("name of virus and causes ", virus, disease)
# type2
print("name of virus {} and causes {}".format(virus, disease))
# type3
print(f"name of virus {virus} and causes {disease}")
# type4
print("name of virus " + virus + " and causes " + disease)
