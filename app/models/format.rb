filer = File.new("f-names.txt", "r")
filew = File.new("f-names.yml", "w")
while (line = filer.gets)
	tok = line.split(", ")
	filew.write("\t- name: " + tok.first + "\n\t\tdescrip:" + tok.drop(1).to_s + "\n\n")
end
filer.close
filew.close