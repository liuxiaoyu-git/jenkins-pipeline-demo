
oc patch dc/$1 -p '{"spec": {"template": {"spec": {"containers": [{"name": "tinyapp", "image": "quay.io/siamaksade/tinyapp:v1"}]}}}}'
oc rollout latest $1