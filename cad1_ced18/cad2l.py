#Giving input be in the form of (a*b), (a+b), ((a*b)*c), ((a+b)+c),((a+b)*c)

infix=raw_input("enter infix expression : keep it in the form of (a*b), (a+b), ((a*b)*c), ((a+b)+c),((a+b)*c), means increase the no of bracket as the no of inputs increases ") #taking the input


infix=raw_input("enter infix expression :")
flag=raw_input("1 if exp is to inverted else 0, press 1 to get the result of inverted version") 
operandarr=[]
onlyoperand=[]
onlyoperandnmo=[]
operatorarr=[]
value=[]
valuenmo=[]
alist=[]
pmos=[]
nmos=[]
outpmos=[]
outnmos=[]
xs=[]
u=-1
o=-1
p=-1

def typeof(s):
    if s is '(':
        return 0
    elif s is '+':
        return 1
    elif s is '*':
        return 2
    elif s is ')':
        return 3
    else:
        return 4

def search(w,xs):
    for i in range(0,len(xs)):
        #print"in search"
        #print w
        #print xs
        if(xs[i]==w):
            #print"in search if"
            #print w
            u=i
    return u

for i in range(0,len(infix)):
    #print "in for"
    k=infix[i]
    #print k
    type=typeof(k)
    #print type
    if(type==1):
        operatorarr.append(k)
    elif(type==2):
        operatorarr.append(k)
    elif(type==3):
        y=operandarr.pop()
        x=operandarr.pop()
        op=operatorarr.pop()
        alist.append(y)
        alist.append(x)
        typeop=typeof(op)
        if(typeop==1):
             pmos.append('s')
             nmos.append('p')
        elif(typeop==2):
              pmos.append('p')
              nmos.append('s')
        #print x
        #print y
        z=x+op+y
        #print z
        operandarr.append(z)
        alist.append(z)
    elif(type==4):
        operandarr.append(k)
        onlyoperand.append(k)
        onlyoperandnmo.append(k)
    elif(type==0):
        continue
#for j in range(0,len(alist)):
print alist
print "pmos"
print pmos
print nmos

print "PMOS"
for h in range(0,len(pmos)):
    if(pmos[h]=='p'):
        if(len(alist[3*h])==1 and len(alist[3*h+1])==1):
            a=alist[3*h]
            b=alist[3*h+1]
            v='*'
            wp=b+v+a
            outpmos.append('VDD')
            outpmos.append(a)
            outpmos.append(wp)
            outpmos.append('||')
            outpmos.append('VDD')
            outpmos.append(b)
            outpmos.append(wp)
            outpmos.append('||')
        elif(len(alist[3*h])!=1 and len(alist[3*h+1])==1):
            a=alist[3*h]
            b=alist[3*h+1]
            v='*'
            wp=b+v+a
            l=outpmos.pop()
            g=outpmos.pop()
            outpmos.append(g)
            outpmos.append(l)
            outpmos.append('VDD')
            outpmos.append(b)
            outpmos.append(g)
            outpmos.append('||')
        elif(len(alist[3*h])==1 and len(alist[3*h+1])!=1):
             a=alist[3*h]
             b=alist[3*h+1]
             v='*'
             wp=b+v+a
             l=outpmos.pop()
             g=outpmos.pop()
             outpmos.append(g)
             outpmos.append(l)
             outpmos.append('VDD')
             outpmos.append(a)
             outpmos.append(g)
             outpmos.append('||')
    elif(pmos[h]=='s'):
        if(len(alist[3*h])==1 and len(alist[3*h+1])==1):
           a=alist[3*h]
           b=alist[3*h+1]
           v='+'
           wp=b+v+a
           outpmos.append('VDD')
           outpmos.append(b)
           outpmos.append('boa')
           outpmos.append('||')
           outpmos.append('boa')
           outpmos.append(a)
           outpmos.append(wp)
           outpmos.append('||')
        elif(len(alist[3*h])!=1 and len(alist[3*h+1])==1):
             a=alist[3*h]
             b=alist[3*h+1]
             v='+'
             wp=b+v+a
             l=outpmos.pop()
             g=outpmos.pop()
             outpmos.append(g)
             outpmos.append(l)
             outpmos.append(g)
             outpmos.append(b)
             outpmos.append(wp)
             outpmos.append('||')
        elif(len(alist[3*h])==1 and len(alist[3*h+1])!=1):
             a=alist[3*h]
             b=alist[3*h+1]
             v='+'
             wp=b+v+a
             l=outpmos.pop()
             g=outpmos.pop()
             outpmos.append(g)
             outpmos.append(l)
             outpmos.append(g)
             outpmos.append(a)
             outpmos.append(wp)
             outpmos.append('||')
print outpmos

print "NMOS"
for h in range(0,len(nmos)):
    if(nmos[h]=='p'):
        if(len(alist[3*h])==1 and len(alist[3*h+1])==1):
            a=alist[3*h]
            b=alist[3*h+1]
            v='+'
            wp=b+v+a
            outnmos.append('GND')
            outnmos.append(a)
            outnmos.append(wp)
            outnmos.append('||')
            outnmos.append('GND')
            outnmos.append(b)
            outnmos.append(wp)
            outnmos.append('||')
        elif(len(alist[3*h])!=1 and len(alist[3*h+1])==1):
            a=alist[3*h]
            b=alist[3*h+1]
            v='+'
            wp=b+v+a
            l=outnmos.pop()
            g=outnmos.pop()
            outnmos.append(g)
            outnmos.append(l)
            outnmos.append('GND')
            outnmos.append(b)
            outnmos.append(g)
            outnmos.append('||')
        elif(len(alist[3*h])==1 and len(alist[3*h+1])!=1):
            a=alist[3*h]
            b=alist[3*h+1]
            v='+'
            wp=b+v+a
            l=outnmos.pop()
            g=outnmos.pop()
            outnmos.append(g)
            outnmos.append(l)
            outnmos.append('GND')
            outnmos.append(a)
            outnmos.append(g)
            outnmos.append('||')
    elif(nmos[h]=='s'):
        if(len(alist[3*h])==1 and len(alist[3*h+1])==1):
            a=alist[3*h]
            b=alist[3*h+1]
            v='*'
            wp=b+v+a
            outnmos.append('GND')
            outnmos.append(b)
            outnmos.append('aaa')
            outnmos.append('||')
            outnmos.append('aaa')
            outnmos.append(a)
            outnmos.append(wp)
            outnmos.append('||')
        elif(len(alist[3*h])!=1 and len(alist[3*h+1])==1):
            a=alist[3*h]
            b=alist[3*h+1]
            v='*'
            wp=b+v+a
            l=outnmos.pop()
            g=outnmos.pop()
            outnmos.append(g)
            outnmos.append(l)
            outnmos.append(g)
            outnmos.append(b)
            outnmos.append(wp)
            outnmos.append('||')
        elif(len(alist[3*h])==1 and len(alist[3*h+1])!=1):
            a=alist[3*h]
            b=alist[3*h+1]
            v='*'
            wp=b+v+a
            l=outnmos.pop()
            g=outnmos.pop()
            outnmos.append(g)
            outnmos.append(l)
            outnmos.append(g)
            outnmos.append(a)
            outnmos.append(wp)
            outnmos.append('||')         
print outnmos
print onlyoperand
for y in range(0,len(onlyoperand)):
    r=raw_input("enter value :")
    value.append(r)
    valuenmo.append(r)
for h in range(0,len(pmos)):
    print"in final fro"
    if(pmos[h]=='p'):
        if(len(alist[3*h])==1 and len(alist[3*h+1])==1):
            o=search(alist[3*h],onlyoperand)
            p=search(alist[3*h+1],onlyoperand)
            if(value[o]=='0' or value[p]=='0'):
                onlyoperand.append(alist[3*h+2])
                value.append('1')
            elif(value[o]=='1' and value[p]=='1'):
                onlyoperand.append(alist[3*h+2])
                value.append('0')
        else:
            o=search(alist[3*h],onlyoperand)
            p=search(alist[3*h+1],onlyoperand)
            if(value[o]=='0' or value[p]=='0'):
                onlyoperand.append(alist[3*h+2])
                value.append('1')
            elif(value[o]=='1' and value[p]=='1'):
                onlyoperand.append(alist[3*h+2])
                value.append('0')
    elif(pmos[h]=='s'):
        if(len(alist[3*h])==1 and len(alist[3*h+1])==1):
            o=search(alist[3*h],onlyoperand)
            p=search(alist[3*h+1],onlyoperand)
            #print o
            #print p
            #print alist[3*h]
            #print value[o]
            #print value[p]
            #print alist[3*h+1]
            #print alist[3*h+2]
            if(value[o]=='0' and value[p]=='0'):
                #print "in 00 value"
                onlyoperand.append(alist[3*h+2])
                value.append('1')
            elif(value[o]=='1' or value[p]=='1'):
                #print"in value 1|1"
                onlyoperand.append(alist[3*h+2])
                value.append('0')
        else:
            o=search(alist[3*h],onlyoperand)
            p=search(alist[3*h+1],onlyoperand)
            if(value[o]=='0' and value[p]=='0'):
                onlyoperand.append(alist[3*h+2])
                value.append('1')
            elif(value[o]=='1' or value[p]=='1'):
                onlyoperand.append(alist[3*h+2])
                value.append('0')
print onlyoperandnmo
for i in range(0,len(nmos)):
    if(nmos[i]=='p'):
        if(len(alist[3*i])==1 and len(alist[3*i+1])==1):
            o=search(alist[3*i],onlyoperandnmo)
            p=search(alist[3*i+1],onlyoperandnmo)
            if(valuenmo[o]=='1' or valuenmo[p]=='1'):
                onlyoperandnmo.append(alist[3*i+2])
                valuenmo.append('1')
            elif(value[o]=='0' and value[p]=='0'):
                onlyoperandnmo.append(alist[3*i+2])
                valuenmo.append('0')
        else:
            o=search(alist[3*i],onlyoperandnmo)
            p=search(alist[3*i+1],onlyoperandnmo)
            if(value[o]=='1' or value[p]=='1'):
                onlyoperandnmo.append(alist[3*i+2])
                valuenmo.append('1')
            elif(value[o]=='0' and value[p]=='0'):
                onlyoperandnmo.append(alist[3*i+2])
                valuenmo.append('0')
    elif(nmos[i]=='s'):
        if(len(alist[3*i])==1 and len(alist[3*i+1])==1):
            o=search(alist[3*i],onlyoperandnmo)
            p=search(alist[3*i+1],onlyoperandnmo)
            if(valuenmo[o]=='1' and valuenmo[p]=='1'):
                onlyoperandnmo.append(alist[3*i+2])
                valuenmo.append('1')
            elif(value[o]=='0' or value[p]=='0'):
                onlyoperandnmo.append(alist[3*i+2])
                valuenmo.append('0')
        else:
            o=search(alist[3*i],onlyoperandnmo)
            p=search(alist[3*i+1],onlyoperandnmo)
            if(value[o]=='1' and value[p]=='1'):
                onlyoperandnmo.append(alist[3*i+2])
                valuenmo.append('1')
            elif(value[o]=='0' or value[p]=='0'):
                onlyoperandnmo.append(alist[3*i+2])
                valuenmo.append('0')
    print onlyoperandnmo


print onlyoperand
print value
print onlyoperandnmo
print valuenmo
t=len(value)
b=len(valuenmo)
print t
print b
t=t-1
b=b-1
print value[1]
print valuenmo
print "final output"
print"flag"
#print flag
if(value[t]=='1' and valuenmo[b]=='0'):
    #print "in if"
    output=1
    if(flag=='1'):
        print output
    else:
        if(output=='1'):
            output=0
            print output
elif(value[t]=='0' and valuenmo[b]=='1'):
    output=0
    #print "in elif"
    #print output
    if(flag=='1'):
        print output
    elif(flag=='0'):
        #print "flag in 0"
        output=int(not output)
        print output
elif(value[t]=='1' and valuenmo[p]=='1'):
    print "x"
elif(value[t]=='0' and valuenmo[p]=='0'):
    print "z"
    
        
            
            
            
    

