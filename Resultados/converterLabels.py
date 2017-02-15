import os

# flabels = open("c", "r")
# fnew = open("ATH_L_161221171107", "w")
#
# actualLine = flabels.readline()
#
# for i in range(3006):
#     if actualLine == 'Normal\n':
#         fnew.write(str(1) + '\n')
#     elif actualLine == 'Cancer\n':
#         fnew.write(str(2) + '\n')
#     elif actualLine == 'Benigno\n':
#         fnew.write(str(3) + '\n')
#     actualLine = flabels.readline()

fmeta = open("ATH_M_161221171106", "r+")

actLine = fmeta.readline()
actLine.split(';', 1)

print(actLine)

fmeta.close
# flabels.close
# fnew.close
