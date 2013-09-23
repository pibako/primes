# A sample Guardfile
# More info at https://github.com/guard/guard#readme

guard :minitest do
  notification :off
  # with Minitest::Unit
  watch(%r{^test/(.*)\/?test_(.*)\.rb})
  watch(%r{^lib/(.*/)?([^/]+)\.rb})     { |m| "test/lib/#{m[1]}test_#{m[2]}.rb" }
end
