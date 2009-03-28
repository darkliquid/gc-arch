require 'test/unit'

begin 
  require 'redgreen' 
rescue LoadError
end

class Test::Unit::TestCase

  def vvp(inputs = {})
    program = self.class.name.gsub(/::/, '/').
      gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').
      gsub(/([a-z\d])([A-Z])/,'\1_\2').
      tr("-", "_").
      downcase + '.out'
    command = File.expand_path(File.join(File.dirname(__FILE__), program))
    args = inputs.inject('') do |str, (k, v)|
      str << "+#{k}=#{v} "
      str
    end
    output = `#{command} #{args}`.strip
    output.split(',').inject({}) do |hash, keyval|
      key, val = keyval.split('=')
      hash[key.to_sym] = val.to_i
      hash
    end
  end

end
