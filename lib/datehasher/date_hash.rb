module DateHasher
  class DateHash
    attr_reader :data

    # def self.call(*args, &block)
    #   new(*args, &block).call
    # end

    def initialize()
      @data = {}
    end

    def add(date = Date.today)
      if @data[date.year.to_s]
        if @data[date.year.to_s][date.month.to_s]
          if @data[date.year.to_s][date.month.to_s][date.day.to_s]
            raise StandardError, 'day already logged'
          end
          @data[date.year.to_s][date.month.to_s][date.day.to_s] = true
        end
      else
        @data[date.year.to_s] = {}
        @data[date.year.to_s][date.month.to_s] = { date.day.to_s => true }
      end
      @data
    end
  end
end
