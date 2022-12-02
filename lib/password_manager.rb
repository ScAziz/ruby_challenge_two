
class PasswordManager
    def initialize
        @passwords = {}
    end

    def valid?(password)
        return password.length >= 8 && password[/[!|@|$|%|&]/] ? true : false
    end 

    def add(service, password)
        if valid?(password)
            @passwords[service] = password
        else 
            return "Invalid password"
        end
    end

    def password_for(service)
        return @passwords[service]
    end

    def services
        return @passwords.keys
    end
end
