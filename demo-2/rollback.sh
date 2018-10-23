
oc patch dc/tinyapp-blue -p '{"spec": {"template": {"spec": {"containers": [{"name": "tinyapp", "image": "quay.io/siamaksade/tinyapp:v1"}]}}}}'
oc patch dc/tinyapp-green -p '{"spec": {"template": {"spec": {"containers": [{"name": "tinyapp", "image": "quay.io/siamaksade/tinyapp:v1"}]}}}}'
oc rollout latest tinyapp-blue
oc rollout latest tinyapp-green