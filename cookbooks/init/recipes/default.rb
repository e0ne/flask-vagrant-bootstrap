include_recipe "init::apt-update"

apt_package "build-essential" do
    action :install
end

apt_package "python-dev" do
    action :install
end

apt_package "python-virtualenv" do
    action :install
end

apt_package "python-virtualenv" do
    action :install
end

apt_package "vim-nox" do
    action :install
end

