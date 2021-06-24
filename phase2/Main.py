def convert_reg2str(r):
    a = bin(int(r)).replace('0b','')
    a = ((4-len(a))*'0')+a
    return a

def convert_reg2str8(r):
    a = bin(int(r)).replace('0b','')
    a = ((8-len(a))*'0')+a
    return a

def R_type(Opcode, rs, rt, rd, func):
    res = list()
    res.append(Opcode)
    res.append(convert_reg2str(rs))
    res.append(convert_reg2str(rt))
    res.append(convert_reg2str(rd))
    res.append(func)
    return res

def I_type(Opcode, rs, rt, imd):
    res = list()
    res.append(Opcode)
    res.append(convert_reg2str(rs))
    res.append(convert_reg2str(rt))
    res.append(convert_reg2str8(imd))
    return res

def print_result(li):
    final = list()
    for i in li:
        decimal = int(i, 2)
        hexi = hex(decimal)
        final.append(hexi[2:])
    if len(final[-1]) == 1 and len(li) == 4:
        final[-1] = '0'+final[-1]
    return final

inputfile = open('inputfile.txt', 'r')
outputfile=open("outputfile.txt","w")
outputfile.write('v2.0 raw\n')
lines = inputfile.readlines()
counter = 0
for line in lines:
    counter += 1
    function = ''
    result = list()
    op = line.strip()
    arg1 = op.split()
    arg = arg1[0]
    if(arg == 'and'):
        function = '0010'
        result = R_type('0000', arg1[1], arg1[2], arg1[3], function)
    elif(arg == 'or'):
        function = '0100'
        result = R_type('0000', arg1[1], arg1[2], arg1[3], function)
    elif(arg == 'xor'):
        function = '0110'
        result = R_type('0000', arg1[1], arg1[2], arg1[3], function)
    elif(arg == 'add'):
        function = '1000'
        result = R_type('0000', arg1[1], arg1[2], arg1[3], function)
    elif(arg == 'sub'):
        function = '1010'
        result = R_type('0000', arg1[1], arg1[2], arg1[3], function)
    elif(arg == 'mul'):
        function = '1100'
        result = R_type('0000', arg1[1], arg1[2], arg1[3], function)
    elif(arg == 'div'):
        function = '1110'
        result = R_type('0000', arg1[1], arg1[2], arg1[3], function)
    elif(arg == 'lw'):
        result = I_type('0011', arg1[1], arg1[3], arg1[2])
    elif(arg == 'sw'):
        result = I_type('1011', arg1[1], arg1[3], arg1[2])
    elif(arg == 'beq'):
        result = I_type('0001', arg1[1], arg1[2], arg1[3])
    final = print_result(result)
    result1 = ''.join(result)
    result2 = ''.join(final)+'\n'
    outputfile.write(result2)
    # print('\n---------------------------')
    # print(str(counter)+') line of file')
    # print('this is your result :')
    # print('     *binary : ',result1)
    # print('     *hex : ',result2)
    # print('---------------------------')
