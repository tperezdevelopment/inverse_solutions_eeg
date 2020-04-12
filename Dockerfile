#Docker Build file to create the Inverse Solutions Image. Version 1.0 Montreal Institute and Cuban Center for Neurosciences
from tperezdevelopment90/runtime_matlab:2018a
MAINTAINER tperezdevelopment@gmail.com


ADD InverseSolutions /bin
ADD InverseSolutions.sh /bin
ADD data /bin/data
RUN chmod 755 -R /bin/data
RUN chmod 755 /bin/InverseSolutions /bin/InverseSolutions.sh
