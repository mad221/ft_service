cp telegraf-config_old.yaml ./telegraf-config.yaml
max=$(cat ip_file)
echo "    [[inputs.kubernetes]] \
     url = \"https://$max:10250\"
     bearer_token_string = \"$(kubectl describe secret kubernetes-dashboard -n kubernetes-dashboard | grep token: | tr -s ' ' | cut -d ' ' -f 2)\"
     response_timeout = \"5s\"
     insecure_skip_verify = true" >> telegraf-config.yaml
