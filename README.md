# PROG8300

Update: 2024-08-28
- new versions of everything
- with recent advancements of text editor capabilities, code-server has been removed from this setup
- Jupyter Project has experienced a significant change in their architecture, as such so has this config
- there is no need to have multiple python kernels anymore
- some seldom used tools have been removed 
- there may be issues with this version (as we started from scratch for this one).  If you experience issues please email Professor Steve

Minor update: 2024-04-06
- jupyter container gets 32 bit compiler libraries

Update: 2024-04-04
- new versions of everything
- some new tools installed into Jupyter container
- change to naming conventions
- as always, please email Professor Steve if you are having issues.

Update: 2023-08-25
- New versions of everything.
- If you have trouble with these images, your can revert back to the :1.1 versions (see docker-compose.yml file). Also email Professor Steve.

Update: 2023-05-31
- New versions of images uploaded to dockerhub. These images are configured the same, but with the latest versions available.
    These versions have been tested, but not battle-proven.  Should you run into issues, either revert the 1.1 version back to 1.0
    or email Professor Steve.
- Notice the 'extra' IP field in the docker-compose file.  Some may wish to connect Owncloud to a 2nd IP, in the case of both bridged
    and host-only networking or through a NAT'ing firewall, this entry can be modified for that purpose.

Files for jump-starting binary analysis technique used in PROG8300.
