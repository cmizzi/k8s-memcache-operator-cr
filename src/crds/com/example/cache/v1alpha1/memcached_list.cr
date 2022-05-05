# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./memcached"

::K8S::Kubernetes::Resource.define_resource("cache.example.com", "v1alpha1", "MemcachedList",
  namespace: "::K8S::Com::Example::Cache::V1alpha1",
  list: true,
  list_kind: K8S::Com::Example::Cache::V1alpha1::Memcached,
  description: nil,
)
