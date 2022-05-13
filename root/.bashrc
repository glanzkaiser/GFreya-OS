

if [ -f "/etc/bashrc" ] ; then
  source /etc/bashrc
  source /etc/profile
  source /opt/hamzstlib/openfoam/OpenFOAM-9/etc/bashrc
  alias of9='source /opt/hamzstlib/openfoam/OpenFOAM-9/etc/bashrc'
  source ~/export 
fi



