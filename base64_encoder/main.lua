local base64 = require'base64'

function writeGui()
    print('> Base64 Encoder <')
    print(' ======Menu======')
    print('1) Encode')
    print('2) Decode')
    print('3) Quit')
end

local option = '0'
while (option == '0') 
do
    os.execute('clear')
    writeGui()
    io.write('select an option: ')
    option = io.read()
    
    if (option == '1') then
        os.execute('clear')
        io.write('\nProvide a string to encode: ')
        local str = io.read()
        print(base64.encode(str))
        print('\nPress Q to quit or R to return to the main menu: ')
        local response = io.read()
        if (response == 'q') then
            os.execute('clear')
            os.exit()
        elseif (response == 'r') then
            os.execute('clear')
            option = '0'
        end
    
    elseif(option == '2') then
        os.execute('clear')
        io.write('\nProvide a string to decode: ')
        local decstr = io.read()
        print(base64.decode(decstr))
        print('\nPress Q to quit or R to return to the main menu: ')
        local response = io.read()
        if (response == 'q') then
            os.execute('clear')
            os.exit()
        elseif (response == 'r') then
            os.execute('clear')
            option = '0'
        end
    
    elseif(option == '3') then
        os.execute('clear')
        os.exit()
    end
end

