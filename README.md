# Spring Tasks
Forked repo for own workshops, please head over to https://github.com/nikolaus-lemberski/spring-tasks for the original!
## via OpenShift s2i

```
oc new-app --name tasks java:11~https://github.com/karstengresch/spring-tasks --strategy source
oc expose svc tasks --port 8080
```

## via Helm

```
helm dependency update  
helm install tasks kubernetes
```
