#execute "clone-skeletone" do
#    "git clone https://github.com/e0ne/flask-empty.git"
#    action :nothing
#end

git "Checkout skeleton" do
    repository "https://github.com/e0ne/flask-empty.git"
    reference "master"
    action :checkout
    destination "/home/vagrant/flask-app"
end

execute "Install Virtualenv" do
    command "virtualenv /home/vagrant/flask-app/.venv"
    action :run
end

execute "Install dependencies" do
    command "/home/vagrant/flask-app/.venv/bin/pip install -r /home/vagrant/flask-app/tools/pip-requirements"
    action :run
end

execute "Fix permissions" do
    command "chown -R vagrant:vagrant /home/vagrant/flask-app"
    action :run
    only_if do File.exists?("/home/vagrant/flask-app") end
end

