require 'test/unit'
require 'pjson'

PRETTY_JSON = "{\e[39;49;00m\n  \e[39;49;00m\e[34;01m\"json\"\e[39;49;00m:\e[39;49;00m \e[39;49;00m\e[33m\"obj\"\e[39;49;00m\n}\e[39;49;00m\n"

class PJsonPrettyPrintTest < Test::Unit::TestCase
  def test_pjson_initialize_formatted
    assert_equal "{\n  \"json\": \"obj\"\n}", PJson.new("{\"json\":\"obj\"}").instance_variable_get(:@json)
  end

  def test_pjson_to_s
    assert_equal PRETTY_JSON, PJson.new("{\"json\":\"obj\"}").to_s
  end
end

ENV['PATH'] = [File.expand_path('bin'), ENV['PATH']].join(':')

class PJsonCommandTest < Test::Unit::TestCase
  def test_piping_json
    IO.popen("pjson", 'w+') do |io|
      io.puts "{\"json\":\"obj\"}"
      io.flush
      assert_equal PRETTY_JSON, io.read
      io.close_write
      io.close
    end
  end
end