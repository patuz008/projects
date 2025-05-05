import os, shutil
path = r"C:\Users\patsy\Desktop\My Folder\PRACTICE- HTML, CSS, JAVASCRIPT, PYTHON CODES\Data Analysis - Excel Tutorial materials\Python for Data Analysis\practiceFolder/"
file_name = os.listdir(path)

folderNames = ['excel sheets','photos','word docs','pdf files', 'others']

for items in range(0, 5):
    if not os.path.exists(path + folderNames[items]):
        os.makedirs(path + folderNames[items])
        
for file in file_name:
    if ".csv" in file and not os.path.exists(path + "excel sheets/" + file):
        shutil.move (path + file, path + "excel sheets/" + file)
    elif ".xls" in file and not os.path.exists(path + "excel sheets/" + file):
        shutil.move (path + file, path + "excel sheets/" + file)
    elif ".jpg" in file and not os.path.exists(path + "photos/" + file):
        shutil.move (path + file, path + "photos/" + file)
    elif ".doc" in file and not os.path.exists(path + "word docs/" + file):
        shutil.move (path + file, path + "word docs/" + file)
    elif ".pdf" in file and not os.path.exists(path + "pdf files/" + file):
        shutil.move (path + file, path + "pdf files/" + file)
    elif ".3gp" in file and not os.path.exists(path + "others/" + file):
        shutil.move (path + file, path + "others/" + file)
    elif ".exe" in file and not os.path.exists(path + "others/" + file):
        shutil.move (path + file, path + "others/" + file)



