FROM centos:7
MAINTAINER yzhang3@linkernetworks.com

ENV VERSION 1.0
ENV CLUSTER_DIR /linker

RUN ln -f -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN yum -y install openssh-server

COPY clustermgmt/cluster_mgmt $CLUSTER_DIR/
COPY clustermgmt/cluster_mgmt_policy.json $CLUSTER_DIR/
COPY clustermgmt/cluster_mgmt.properties $CLUSTER_DIR/
COPY clustermgmt/swagger-ui $CLUSTER_DIR/

COPY entrypoint.sh $CLUSTER_DIR/entrypoint.sh

RUN chmod +x $CLUSTER_DIR/cluster_mgmt
RUN chmod +x $CLUSTER_DIR/entrypoint.sh

EXPOSE 10002

VOLUME ["/var/log"]

ENTRYPOINT ["/linker/entrypoint.sh"]

