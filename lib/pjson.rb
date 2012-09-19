require 'pygments'
require 'json/pure'

class PJson
  include Pygments

  attr_accessor :json

  def initialize(json)
    @json = JSON.pretty_generate(JSON.load(json))
  end

  def to_s
    Lexer.find_by_name('JSON').highlight(@json, { formatter: 'terminal' })
  end
end