name = input('what is your name?: ')
weight = float(input('what is your weight in kg?: '))
height = float(input('what is your height in metres?: '))
waist = float(input('what is your waist measurement in metres?: '))

BMI = weight/(height**2)
waistFatRatio = waist/height
BMI_Prime = BMI/25

#Body Mass Index
if BMI > 0:
    if BMI <= 18.4:
        print (name +' you are underweight')
    elif BMI <= 24.9:
        print (name + ' you are normal weight')
    elif BMI <= 29.9:
        print (name + ' you are over weight')
    elif BMI >= 30:
        print (name + ' you are obese')
else:
    print('Enter valid input?')

#for Waist fat ratio
if waistFatRatio > 0:
    if waistFatRatio <= 0.49:
        print (name +' you have a healthy fat ratio')
    elif waistFatRatio <= 0.59:
        print (name + ' you have an increased chance of health issue')
    elif waistFatRatio >= 0.60:
        print (name + ' you have higher risk of health problems')
    else:
        print('Enter valid input?')

#BMI prime

if BMI_Prime > 0:
    if BMI_Prime <= 0.73:
        print (name +' you are underweight')
    elif BMI_Prime <= 1:
        print (name + ' you have a normal weight')
    elif BMI_Prime <= 1.20:
        print (name + ' you are overweight')
    elif BMI_Prime >= 1.20:
        print (name + ' you Obese')
    else:
        print('Enter valid input?')


print (BMI)
print (waistFatRatio)
print (BMI_Prime)

# print ( name, +'' your BMI is: ', + BMI)


"""BMI Categories:
Underweight = <18.5
Normal weight = 18.5–24.9
Overweight = 25–29.9
Obesity = BMI of 30 or greater
"""