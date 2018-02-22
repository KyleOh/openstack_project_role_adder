# openstack_project_role_adder



## Parameters

```bash
usage: ./useradder.sh <name>

```


useradder.sh needs only one parameter.

user and project name.

### openstack user create

```bash
usage: openstack user create [-h] [-f {json,shell,table,value,yaml}]
                             [-c COLUMN] [--max-width <integer>] [--fit-width]
                             [--print-empty] [--noindent] [--prefix PREFIX]
                             [--domain <domain>] [--project <project>]
                             [--project-domain <project-domain>]
                             [--password <password>] [--password-prompt]
                             [--email <email-address>]
                             [--description <description>]
                             [--enable | --disable] [--or-show]
                             <name>
```

### openstack project create

```bash
usage: openstack project create [-h] [-f {json,shell,table,value,yaml}]
                                [-c COLUMN] [--max-width <integer>]
                                [--fit-width] [--print-empty] [--noindent]
                                [--prefix PREFIX] [--domain <domain>]
                                [--parent <project>]
                                [--description <description>]
                                [--enable | --disable]
                                [--property <key=value>] [--or-show]
                                <project-name>
```

### openstack quota set

```bash
usage: openstack quota set [-h] [--class] [--properties <properties>]
                           [--server-groups <server-groups>] [--ram <ram>]
                           [--key-pairs <key-pairs>] [--instances <instances>]
                           [--fixed-ips <fixed-ips>]
                           [--injected-file-size <injected-file-size>]
                           [--server-group-members <server-group-members>]
                           [--injected-files <injected-files>]
                           [--cores <cores>]
                           [--injected-path-size <injected-path-size>]
                           [--per-volume-gigabytes <per-volume-gigabytes>]
                           [--gigabytes <gigabytes>]
                           [--backup-gigabytes <backup-gigabytes>]
                           [--snapshots <snapshots>] [--volumes <volumes>]
                           [--backups <backups>] [--l7policies <l7policies>]
                           [--subnetpools <subnetpools>] [--vips <vips>]
                           [--ports <ports>] [--subnets <subnets>]
                           [--networks <networks>]
                           [--floating-ips <floating-ips>]
                           [--secgroup-rules <secgroup-rules>]
                           [--health-monitors <health-monitors>]
                           [--secgroups <secgroups>] [--routers <routers>]
                           [--rbac-policies <rbac-policies>]
                           [--volume-type <volume-type>]
                           <project/class>
```

`PROJECT_ID=$(openstack project show -f value -c id PROJECT_NAME)`



