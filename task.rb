class Task
    def initialize(name)
        @name = name
        @done = false
    end

    def done?
        @done
    end

    def capitalize
        @name.capitalize
    end

    def mark!
        @done = true
    end
end
