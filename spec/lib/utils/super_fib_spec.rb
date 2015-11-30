require 'rails_helper'

RSpec.describe SuperFib do
  describe "#process" do
    let(:arr) { (1..40).to_a }

    it "processes 1..40 at least six orders of magnitude faster than the baseline" do
      baseline_result, optimized_result = nil
      baseline = Benchmark.realtime do
        baseline_result = arr.map do |item|
          fibstub(item)
        end
      end
      optimized = Benchmark.realtime do
        optimized_result = SuperFib.new(arr).process!
      end
      puts "Baseline: #{baseline}. Optimized: #{optimized}"
      expect(optimized_result).to eq baseline_result
      expect(baseline / optimized).to be > 1e6
    end
  end

  def fibstub(n)
    n < 2 ? n : fibstub(n-1) + fibstub(n-2)
  end
end
