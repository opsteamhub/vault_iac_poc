secret_path = "dev/k8s"

# reading the data from the file
with open('dev.tfvars','r+',encoding='utf-8') as f:
    for line in f:
        if secret_path in line:
            for line in f:
                if line.strip().startswith("}"):
                    print(line)
                    break
                else:
                    print(line.strip())
        # else:
        #     print("This secret don't exists, creating...")
        #     continue

# Closing file
f.close()
