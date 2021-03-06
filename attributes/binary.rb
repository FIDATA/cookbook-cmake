#
# Cookbook:: cmake
# Attributes:: binary
#

default["cmake"]["binary"]["repo"]    = "https://github.com/Kitware/CMake.git"
default["cmake"]["binary"]["prefix"]  = "/usr/local"

case node["kernel"]["machine"]
when "amd64", "x86_64"
  default["cmake"]["binary"]["architecture"] = "x86_64"
when "i386", "i686"
  default["cmake"]["binary"]["architecture"] = "i386"
# else
#   fail "Unsupported processor: '#{node['kernel']['machine']}'"
end

case node["platform"]
when "debian", "ubuntu", "redhat", "centos", "fedora"
  default["cmake"]["binary"]["platform"] = "Linux"
# else
#   fail "Unsupported platform: '#{node['platform']}'"
end
