execute "Install uWSGI" do
    command "pip install uwsgi"
    action :run
end
