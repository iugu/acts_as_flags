module ActsAsFlags
  def acts_as_flags( field, flags )

    flag_variable = '@' + field.to_s.upcase() + '_FLAGS'
    instance_variable_set flag_variable, flags

    flags.each do |flag|
      (class << self; self; end).send(:define_method, "only_#{flag}") do
        where(["#{field}_mask & ? > 0", 2**flags.index( flag.to_s ) ] )
      end
    end

    define_method "#{field}=" do |new_flags|
      self.send("#{field}_mask=", (new_flags & flags).map { |r| 2**flags.index(r) }.sum )
    end

    define_method "#{field}" do
      flags.reject { |r| (( self.send("#{field}_mask") || 0 ) & 2**flags.index(r)).zero? }
    end

    define_method "#{field}?" do |flag|
      self.send("#{field}").include? flag.to_s
    end
  end
end

if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend ActsAsFlags
end
