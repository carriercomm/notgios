class Object
  def exists?
    true
  end
end

class NilClass
  def exists?
    false
  end
end

class TrueClass
  def to_b
    true
  end
end

class FalseClass
  def to_b
    false
  end
end

class String
  def to_b
    downcase == 'true'
  end
end

module Notgios
  module Helpers

    extend self

    def with_nodis
      nodis = Nodis.new(host: REDIS_HOST, port: REDIS_PORT)
      return yield nodis
    ensure
      nodis.quit
    end

  end
end
