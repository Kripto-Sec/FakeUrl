require 'os'
require 'colorize'

def clear

    if OS.windows?
        system('cls')
    elsif OS.linux?
        system('clear')
    end
end

def check_dependencies
    
    if system('gem list os -i') == false

        puts "You dont have os gem instaled"
        print "do you whant install? (Y/n): "
        ques = gets.chomp

        if ques.upcase == "Y" or ques == ""
            system('gem install os')

        elsif ques.upcase == "N"
            puts "Ah ok bye..."
            exit
    
        end
    end

    if system('gem list colorize -i') == false

        puts "You dont have colorize instaled"
        print "Do you whant install it ? (Y/n) : "
        ques2 = gets.chomp

        if ques2.upcase == "Y" or ques == ""
            system('gem install colorize')
            puts "colorize installed"

        elsif ques2.upcase == "N"
            puts "Ah ok bye"
            exit
        end
      
    end
end

def banner2
    puts "
░░░░░░░░░░░░░░░░░░░░░░░░░░░░
░░░░░░█▀▀░█▀█░█▀▀░█░█░░░░░░░
░░░░░░█▀▀░█▀█░▀▀█░▀█▀░░░░░░░
░░░░░░▀▀▀░▀░▀░▀▀▀░░▀░░░░░░░░
░░░░░░░░░░░░░░░░░░░░░░░░░░░░

    Made By -> Kripto-Sec
    github  -> https://github.com/Kripto-Sec

How to use:
 Site name >> facebook
 domain >> .com   

".white
end



def banner

   
    
    puts"███████  █████  ██   ██ ███████ ".blue+"██    ██ ██████  ██   ".red
    puts"██      ██   ██ ██  ██  ██".blue+"      ██    ██ ██   ██ ██ ".red
    puts"█████   ███████ █████   █████".blue+"   ██    ██ ██████  ██ ".red
    puts"██      ██   ██ ██  ██  ██".blue+      "      ██    ██ ██   ██ ██  ".red
    puts"██      ██   ██ ██   ██ ███████".blue+"  ██████  ██   ██ ███████ ".red

    puts"
    Made By -> Kripto-Sec
    github  -> https://github.com/Kripto-Sec

How to use:
 Site name >> facebook
 domain >> .com   

".white

end

def main()
    
    uni = Array["\u0430", "\u0435", "\u0456", "\u043E"]

    check_dependencies
    clear
    banner

    print "[+] Site name ".blue+">> ".red
    url = gets.chomp
    url.downcase
    
    print "[+] Domain ".blue+">> ".red
    dom = gets.chomp


    urlQuant = 0
    charChange = ""
   if url.include? "a"
    url = url.gsub("a", uni[0])
    urlQuant += 1
    charChange += "a, "
    #puts url.encode('utf-8')+dom
   end

   if url.include? "e"
    url = url.gsub("e", uni[1])
    urlQuant += 1
    charChange += "e, "
   end 

   if url.include? "i"
    url = url.gsub("i", uni[2])
    urlQuant += 1 
    charChange += "i, "
    
   end

   if url.include? "o"
    url = url.gsub("o", uni[3]) 
    urlQuant += 1
    charChange += "o"
   end

   puts "\n"
   puts "[*] Amount of chars changed ".blue+">> #{urlQuant}".red
   puts "[*] Chars chnged ".blue+">> #{charChange}".red
   puts "[*] New URL ".blue+">> #{url+dom}".red

end

clear
main