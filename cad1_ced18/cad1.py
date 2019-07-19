class Stack:
     def __init__(self):
         self.items = []

     def isEmpty(self):
         return self.items == []

     def push(self, item):
         self.items.append(item)

     def pop(self):
         return self.items.pop()

     def peek(self):
         return self.items[len(self.items)-1]

     def size(self):
         return len(self.items)

def infixToPostfix(infixexpr):
    prec = {}
    prec["!"] = 4
    prec["."] = 3
    prec["+"] = 2
    prec["("] = 1
    opStack = Stack()
    postfixList = []
    tokenList = list(infixexpr)

    for token in tokenList:
        if token.isidentifier()  :
            postfixList.append(token)
        elif token == '(':
            opStack.push(token)
        elif token == ')':
            topToken = opStack.pop()
            while topToken != '(':
                postfixList.append(topToken)
                topToken = opStack.pop()
        else:
            while (not opStack.isEmpty()) and (prec[opStack.peek()] >= prec[token]):
                postfixList.append(opStack.pop())
            opStack.push(token)

    while not opStack.isEmpty():
        postfixList.append(opStack.pop())
    return "".join(postfixList)


def postfixToNetlist(postfix,exp):

	postfix=infixToPostfix(exp)
	print(postfix)
	postfix_eval = []
	ctr=0
	tok_no=0
	nmos = []	#will have 3 fields src ,gate , drain
	pmos = []
	all_nmos = []
	all_pmos = []
	output = [] 	#has 3 fields nmos_src ,output ,pmos_drain 
	
	for token in postfix:
		if token.isidentifier():
			ctr+=1
			#nmos.append(N+"ctr")
			nmos.append("N"+str(ctr)+"s")
			nmos.append("N"+str(ctr)+"g")
			nmos.append("N"+str(ctr)+"d")

			pmos.append("P"+str(ctr)+"s")
			pmos.append("P"+str(ctr)+"g")
			pmos.append("P"+str(ctr)+"d")			
			all_nmos.append(nmos)
			all_pmos.append(pmos)
			nmos = []	
			pmos = []		

	ctr=0
	ind=-1
	#print(all_nmos)

	for token in postfix:
		if token.isidentifier():
			ind+=1
		
		if not token.isidentifier():
			ctr+=1
			#print(ctr)
			
			if(token == '+'):
				if ctr==1 :
					all_nmos[1][0]=all_nmos[0][0]		#nmos parallel
					all_nmos[1][2]=all_nmos[0][2]
					all_pmos[0][0]=all_nmos[0][2]
					all_pmos[1][0]=all_pmos[0][2]		#pmos series

					output.append(all_nmos[1][0])
					output.append(all_nmos[0][2])
					output.append(all_pmos[1][2])
					#print(output)

				else:
					#ind=tok_no-ctr-1
					all_nmos[ind][0]=output[0]
					all_nmos[ind][2]=output[1]
					all_pmos[ind][0]=output[2]

					output[2]=all_pmos[ind][2]

			if(token == '.'):
				if ctr==1 :
					all_nmos[1][2]=all_nmos[0][0]		#nmos series
					all_pmos[0][0]=all_nmos[0][2]
					all_pmos[1][0]=all_pmos[0][0]		#pmos parallel
					all_pmos[1][2]=all_pmos[0][2]

					output.append(all_nmos[1][0])
					output.append(all_nmos[0][2])
					output.append(all_pmos[1][2])

				else:
					#ind=tok_no-ctr-1
					all_pmos[ind][0]=output[1]
					all_pmos[ind][2]=output[2]
					all_nmos[ind][2]=output[0]

					output[0]=all_nmos[ind][0]						

	
	print("NMOS    ", all_nmos)				
	print("PMOS    ",all_pmos)

postfix=[]
#give expression here , the the complement of the exp is the input.
#give   "!" symbol for the complement operator
exp="A+B+C"                   
postfixToNetlist(postfix,exp)

		
	



	
