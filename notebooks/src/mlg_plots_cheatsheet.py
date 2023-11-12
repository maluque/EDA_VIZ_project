

### VENN DIAGRAM

from matplotlib_venn import venn2

setA=set(product_df["brand"][product_df["shop"]=="asos"])
setB=set(product_df["brand"][product_df["shop"]=="amazon"])

# Calculate the lengths of the sets and their intersection
lenA = len(setA)
lenB = len(setB)
len_intersection = len(setA.intersection(setB))

# Create a Venn diagram
venn2(subsets=(lenA, lenB, len_intersection),
      set_labels=("ASOS", "AMZ"))
