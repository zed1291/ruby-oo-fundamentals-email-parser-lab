class EmailAddressParser
    def initialize address=nil
        @address = address
    end

    def parse
      addresses = @address.split(" ")
      no_commas = []
      addresses.each do |address|
        no_commas << address.chomp(",")
      end
      no_commas.uniq
    end
end