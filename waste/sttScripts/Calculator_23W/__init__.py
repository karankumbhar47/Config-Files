import json
from flask import Flask, render_template, request, jsonify
import math

app = Flask(__name__)

@app.route("/")
def home():
    return render_template("InputOutput.html")        

@app.route("/Find_MIN", methods=["POST"])
def Find_MIN(): 
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    mini=min(a,b)
    response = "Minimum is = " + str(mini)
    return response

@app.route("/add", methods=["POST"])
def ADD(): 
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    sum=a+b
    response = "sum = " + str(sum)
    return response


@app.route("/nand", methods=["POST"])
def NAND(): 
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    nand=~(a&b)
    response = "bitwise nand = " + str(nand)
    return response

@app.route("/sub", methods=["POST"])
def SUB(): 
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    sub=a-b
    response = "Difference = " + str(sub)
    return response

@app.route("/LOGICALAND", methods=["POST"])
def LOGICALAND(): 

    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    ans= a and b
    response = "Logical AND is = " + str(ans)
    return response

@app.route("/logical_or", methods=["POST"])
def logical_or():

    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)

    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    ans= a or b
    response = "Logical OR is = " + str(ans)
    return response



@app.route("/exp", methods=["POST"])
def EXP(): 
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    exp=a**b
    response = "exponent = " + str(exp)
    return response


@app.route("/antilog", methods=["POST"])
def ANTILOG(): 
    jsonStr = request.get_json() 
    jsonObj = json.loads(jsonStr) 
     
    a=int(jsonObj['N1']) 
    b=int(jsonObj['N2']) 
    antilog = b**a 
    response = "antilog of "+str(a)+" with base "+str(b)+" = " + str(antilog) 
    return response

@app.route("/modulus", methods=["POST"])
def MODULUS(): 
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    modulus=a%b
    response = "modulus = " + str(modulus)
    return response
    
@app.route("/log", methods=["POST"])
def LOG(): 
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    log =math.log(a,b)
    response = "log = " + str(log)
    return response

@app.route("/lsd", methods=["POST"])
def LSD():
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)

    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    response = "Left Shift Decimal = " + str(a<<b)
    return response

@app.route("/isEqual", methods=["POST"])
def ISEQUAL():
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)

    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    response = str("Equal" if (a == b) else "Not Equal")
    return response
    
@app.route("/right_shift", methods=["POST"])
def right_shift():
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    right_shift=a>>b
    response = "right_shift = " + str(right_shift)
    return response

@app.route("/is_different", methods=["POST"])
def IS_DIFFERENT():
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    response = f" {a} and {b} "

    if a == b:
        response += "Is Not Different "
    else:
        response += "Is Different "
    return response


@app.route("/left_shift", methods=["POST"])
def left_shift(): 
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    left_shift=a<<b
    response = "Left Shift = " + str(left_shift)
    return response

@app.route("/maximum", methods=["POST"])
def MAX(): 
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    maximum=max(a,b)
    response = "Maximum = " + str(maximum)
    return response

def gcd_calc(a,b):
    if b==0:
        return a
    return gcd_calc(b,a%b)

@app.route("/gcd", methods=["POST"])
def gcd():
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    ans = gcd_calc(a,b)
    response = "HCF = " + str(ans)
    return response
    
@app.route("/nRoot", methods=["POST"])
def nRoot(): 

    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    nroot = a**(1/b)
    response = "nRoot =" + str(nroot)
    return response

@app.route("/bitwise_or", methods=["POST"])
def BITWISEOR(): 
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    bitwise_or=a|b
    response = "bitwise_or = " + str(bitwise_or)
    return response




# @app.route("/bitwiseNOR", methods=["POST"])
# def bitwiseNOR():
@app.route("/bitwisexor", methods=["POST"])
def bitwisexor():
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    bitwisexor=a^b
    response = "Bitwise XOR = " + str(bitwisexor)
    return response


@app.route("/div", methods=["POST"])
def DIV(): 
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    div=a/b
    response = "Quotient = " + str(div)
    return response




@app.route("/LCM", methods=["POST"])
def LCM(): 
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    lcm1=lcm(a,b)
    response = "LCM = " + str(lcm1)
    return response

def gcd(a, b):
    if b == 0:
        return a
    else:
        return gcd(b, a % b)

def lcm(a, b):
    return (a*b) // gcd(a, b) 

@app.route("/shiftdecimalright", methods=["POST"])
def shiftdecimalright(): 
    jsonStr = request.get_json()
    jsonObj = json.loads(jsonStr)
    
    a=int(jsonObj['N1'])
    b=int(jsonObj['N2'])
    new=a*((10)**(b))
    response = "shifted decimal = " + str(new)
    return response












if __name__== "__main__":
    app.run()
