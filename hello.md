# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

export NAME=ullagallu.cloud
export MASTER_COUNT=1
export MASTER_SIZE=t3a.small
export MASTER_VOLUME_SIZE=8
export NODE_COUNT=2
export NODE_SIZE=t3a.small
export NODE_VOLUME_SIZE=8
export ZONES=ap-south-1a
export KOPS_STATE_STORE=s3://ullagallu.kops.cloud

export VERIFY_CHECKSUM=false

export PATH











Suggestions:
 * list clusters with: kops get cluster
 * edit this cluster with: kops edit cluster ullagallu.cloud
 * edit your node instance group: kops edit ig --name=ullagallu.cloud nodes-ap-south-1a
 * edit your control-plane instance group: kops edit ig --name=ullagallu.cloud control-plane-ap-south-1a

Finally configure your cluster with: kops update cluster --name ullagallu.cloud --yes --admin

Suggestions:
 * validate cluster: kops validate cluster --wait 10m
 * list nodes: kubectl get nodes --show-labels
 * ssh to a control-plane node: ssh -i ~/.ssh/id_rsa ubuntu@api.ullagallu.cloud
 * the ubuntu user is specific to Ubuntu. If not using Ubuntu please use the appropriate user based on your OS.
 * read about installing addons at: https://kops.sigs.k8s.io/addons.




