#!/usr/bin/python


##TODO 1. Add resolution input.
##TODO 2. Use enum or switch cases.
import sys
from PIL import Image

'''
Simple resize function. Takes in filename, factor of scale, and output file name.
Does not give a warning of file replace, so use caution.
'''
def resize(filename, factor, output):
    im=Image.open(filename)
    x,y=im.size
    print('Original resolution: '+str(x)+'X'+str(y))
    a=im.resize((int(x*float(factor)),int(y*float(factor))))
    a.save(output)
    print('Image resized as file: '+output)
    print('Final Resolution: '+ str(a.size[0])+'X'+str(a.size[1]))
    im.close()
    a.close()
'''
If final width is known and aspect ratio is to be maintained, then use this method.
Returns factor of resizing.
'''
def factor_width(width,filename):
    tmp=Image.open(filename)
    x=im.size[0]
    factor=width/original
    tmp.close()
    return factor

'''
If final height is known and aspect ratio is to be maintained, then use this method.
Returns factor of resizing.
'''
def factor_height(height,filename):
    tmp=Image.open(filename)
    x=im.size[1]
    factor=height/original
    tmp.close()
    return factor

def main():
    filename=''
    factor=1
    output=''
    if len(sys.argv)==2 or sys.argv=='-h' or sys.argv=='--help':
        f=open('.help.ir','rb')
        a=f.read()
        a=str(a,'UTF-8')
        print(a)
        f.close()
        return
    elif len(sys.argv)==1:
        print("Usage: ./image_resizer.py <<I/P FILENAME>> <<FACTOR>> <<O/P FILENAME>>")
        print("For more information, type ./image-resizer.py -h")
        print("Warning: Same name for output will replace file without warning")
        return
    if len(sys.argv)==3:
        print("Please enter the resizing factor: ", end='')
        factor=input()
        filename=sys.argv[1]
        output=sys.argv[2]
        print("Warning: Same name for output will replace file without warning")
    if len(sys.argv)==4:
        filename=sys.argv[1]
        factor=sys.argv[2]
        output=sys.argv[3]
        print("Warning: Same name for output will replace file without warning")

    resize(filename, factor, output)

if __name__=='__main__':
    main()
