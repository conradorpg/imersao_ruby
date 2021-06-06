require 'json'
require 'yaml'
require 'ostruct'

# Classe responsavel por converter dados em json
class UserData
  @data = JSON.parse(YAML.safe_load(File.read('features/support/data/user_info.yml')).to_json, object_class: OpenStruct)

  def self.get(info)
    @data.send(info)
  end
end
