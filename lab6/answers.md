Checkpoint Answers
Q1

The control plane controls the Kubernetes cluster and decides what to do. Worker nodes execute application containers (pods).

Q2

Yes, Pod IP was changed when I recreated it. Pods are ephemeral, so when we delete the pod, Kubernetes creates a new one with a new IP address.

Q3

When I deleted the pod, Kubernetes noticed that there are less pods than desired, so the Deployment controller automatically created a new pod.

Q4

The front end and back end (database) are different components. So in Kubernetes, it is possible to scale each Deployment independently; I can scale the frontend without scaling the database.

Q5

Port-forwarding works with one particular pod, but a Service gives a constant IP and name. So even if I recreate pods with new IP addresses, traffic will still work.

Q6

Kubernetes provides rolling updates and rollbacks with low downtime automatically. It is not provided by Docker Compose automatically.

Question 7

The front end and API do not maintain any states; hence, they use Deployments. The PostgreSQL database maintains states since it is the one where data is stored, and hence, it uses StatefulSet with persistent volumes.

Question 8

No. The database data will be lost since there won’t be any PersistentVolumeClaim that stores the data.

Question 9

The broken pod had an image pull error such as ErrImagePull or ImagePullBackOff since the image tag was not available, and hence, the image could not be downloaded.
