packages = Array.new

case node[:lsb][:codename]
when "lucid"
  packages |= %w/
    libffi5
  /
when "precise"
  packages |= %w/
    libffi5
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
