class Report
  class << self
    def generate(data)
      report = data.reduce(''){|message, hash| message << generate_string(hash)}
    end

    private
    def generate_string(hash)
      string = "#{hash[:code]}. Guest: #{hash[:guest]}. #{hash[:type].capitalize} #{hash[:entity]} at '#{hash[:created_at]}' \n"
    end
  end
end