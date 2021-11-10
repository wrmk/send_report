class Report
  class << self
    def generate(data)
      data.reduce(''){|report, hash| report << generate_string(hash)}
    end

    private
    def generate_string(hash)
      "#{hash[:code]}. Guest: #{hash[:guest]}. #{hash[:type].capitalize} #{hash[:entity]} at '#{hash[:created_at]}'\n"
    end
  end
end