class Es
    def da_nil
        response = yield
        return (response == nil)
    end
end

puts Es.new.da_nil {
    x=1+10
}