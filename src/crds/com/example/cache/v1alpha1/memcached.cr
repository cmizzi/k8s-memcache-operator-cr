# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

require "./memcached_spec"
require "./memcached_status"

::K8S::Kubernetes::Resource.define_resource("cache.example.com", "v1alpha1", "Memcached",
  namespace: "::K8S::Com::Example::Cache::V1alpha1",
  properties: [

    {name: "spec", kind: ::K8S::Com::Example::Cache::V1alpha1::MemcachedSpec, key: "spec", nilable: true, read_only: false, description: nil},
    {name: "status", kind: ::K8S::Com::Example::Cache::V1alpha1::MemcachedStatus, key: "status", nilable: true, read_only: false, description: nil},

  ],
  description: "Memcached is the Schema for the memcacheds API",
  versions: [{group: "cache.example.com", kind: "Memcached", version: "v1alpha1"}],
)
