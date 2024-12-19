e = 3
c = 174422460809195453539354885823735245900172562989776845322302
n = 245841236512478852752909734912575581815967630033049838269083
p = 416064700201658306196320137931
q = 590872612825179551336102196593
phi_n = (p - 1) * (q - 1)
d = pow(e, -1, phi_n)
m = pow(c, d, n)

print(bytes.fromhex(hex(m)[2:]).decode('utf-8'))