





#Giving input be in the form of (a*b), (a+b), ((a*b)*c), ((a+b)+c),((a+b)*c)

infix=raw_input("enter infix expression : keep it in the form of (a*b), (a+b), ((a*b)*c), ((a+b)+c),((a+b)*c), means increase the no of bracket as the no of inputs increases ") #taking the input
operandarr=[]
operatorarr=[]
alist=[]
pmos=[]
nmos=[]
outpmos=[]
outnmos=[]

def typeof(s):
    if s is '(':
        return 0
    elif s is '+':
        return 1
    elif s is '*':
        return 2
    elif s is ')':
        return 3
    elif s is '~':
        return 5
    elif s is '[':
        return 6
    elif s is ']':
        return 7
    else:
        return 4

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
             pmos.append('s')  #series
             nmos.append('p')  #parallel
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
    elif(type==5):
        operatorarr.append(k)
    elif(type==0):
        continue
    elif(type==6):
        continue
    elif(type==7):
        y=operandarr.pop()
        opp=operatorarr.pop()
        alist.append(y)
        alist.append(opp)
        zz=opp+y
        alist.append(zz)
        operandarr.append(zz)
        pmos.append('n')
        nmos.append('n')
#for j in range(0,len(alist)):
#print alist
print "pmos"
print pmos
print nmos

print "PMOS"
for h in range(0,len(pmos)):
    if(pmos[h]=='p'):
        print "in pmos p"  
        if(len(alist[3*h])==1 and len(alist[3*h+1])==1):
            a=alist[3*h]
            b=alist[3*h+1]
            v='*'
            wp=b+v+a
            outpmos.append('VDD')
            outpmos.append(a)
            outpmos.append(wp)
            outpmos.append('||')  #stopping by between each configuration of transistor
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
        elif(len(alist[3*h])!=1 and len(alist[3*h+1])!=1):
             a=alist[3*h]
             b=alist[3*h+1]
             print "in pmos 2 2"
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
    elif(pmos[h]=='n'):
         print "in pmos n"
         if(len(alist[3*h])==1 and len(alist[3*h+1])==1 and alist[3*h]=='~' or alist[3*h+1]=='~'):
            a=alist[3*h]
            b=alist[3*h+1]
            if(a=='~'):
                wp=a+b
                outpmos.append('VDD')
                outpmos.append(b)
                outpmos.append(wp)
                outpmos.append('||')
            elif(b=='~'):
                wp=b+a
                outpmos.append('VDD')
                outpmos.append(a)
                outpmos.append(wp)
                outpmos.append('||')
    elif(pmos[h]=='s'):
        print "in pmos s"
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
             print a
             print b
             v='+'
             wp=b+v+a
             print wp
             l=outpmos.pop()
             g=outpmos.pop()
             outpmos.append(g)
             outpmos.append(l)
             outpmos.append(g)
             outpmos.append(a)
             outpmos.append(wp)
             outpmos.append('||')
        elif(len(alist[3*h])!=1 and len(alist[3*h+1])!=1):
             a=alist[3*h]
             b=alist[3*h+1]
             print a
             print b
             v='+'
             wp=b+v+a
             print wp
             l=outpmos.pop()
             g=outpmos.pop()
             outpmos.append(g)
             outpmos.append(l)
             outpmos.append(g)
             outpmos.append(b)
             outpmos.append(wp)
             outpmos.append('||')
            
print outpmos
print alist
print "NMOS"
for h in range(0,len(nmos)):
    if(nmos[h]=='p'):
        print "nmos in p"
        if(len(alist[3*h])==1 and len(alist[3*h+1])==1):
            print "nmos 11"
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
            #print "nmos in 21"
            a=alist[3*h]
            b=alist[3*h+1]
            #print a
            #print b
            v='+'
            wp=b+v+a
            #print wp
            #print outnmos
            l=outnmos.pop()
            g=outnmos.pop()
            outnmos.append(g)
            outnmos.append(l)
            outnmos.append('GND')
            outnmos.append(b)
            outnmos.append(wp)
            outnmos.append('||')
            print outnmos
        elif(len(alist[3*h])==1 and len(alist[3*h+1])!=1):
            print "nmos 1 2"
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
            outnmos.append(wp)
            outnmos.append('||')
        elif(len(alist[3*h])!=1 and len(alist[3*h+1])!=1):
            print "nmos 2 2"
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
            outnmos.append(wp)
            outnmos.append('||')
    elif(nmos[h]=='n'):
        if(len(alist[3*h])==1 and len(alist[3*h+1])==1 and alist[3*h]=='~' or alist[3*h+1]=='~'):
            a=alist[3*h]
            b=alist[3*h+1]
            if(a=='~'):
                wp=a+b
                outnmos.append('GND')
                outnmos.append(b)
                outnmos.append(wp)
                outnmos.append('||')
            elif(b=='~'):
                wp=b+a
                outnmos.append('GND')
                outnmos.append(a)
                outnmos.append(wp)
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
        elif(len(alist[3*h])!=1 and len(alist[3*h+1])!=1):
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
            
    

