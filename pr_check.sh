# --------------------------------------------
# Options that must be configured by app owner
# --------------------------------------------
APP_NAME="kibana"  # name of app-sre "application" folder this component lives in
COMPONENT_NAME="kibana"  # name of app-sre "resourceTemplate" in deploy.yaml for this component
IMAGE="quay.io/cloudservices/kibana-oss"  

IQE_PLUGINS="kibana"
IQE_MARKER_EXPRESSION="smoke"
IQE_FILTER_EXPRESSION=""

# Install bonfire repo/initialize
CICD_URL=https://raw.githubusercontent.com/RedHatInsights/bonfire/master/cicd
curl -s $CICD_URL/bootstrap.sh > .cicd_bootstrap.sh && source .cicd_bootstrap.sh

source $CICD_ROOT/build.sh
source $CICD_ROOT/deploy_ephemeral_env.sh
source $CICD_ROOT/post_test_results.sh
