# Spring Tasks

## via OpenShift s2i

```oc new-app --name tasks java:11~https://github.com/nikolaus-lemberski/spring-tasks --strategy source
oc expose svc tasks --port 8080```