encoded_flag = "heTfl g as iicpCTo{7F4NRP051N5_16_35P3X51N3_V091B0AE}2"
length = len(encoded_flag)

output_flag = ""

for i in range(0, length , 3):
    output_flag += encoded_flag[i + 2] + encoded_flag[i] + encoded_flag[i + 1]
print(output_flag)

#Output: The flag is picoCTF{7R4N5P051N6_15_3XP3N51V3_109AB02E}
