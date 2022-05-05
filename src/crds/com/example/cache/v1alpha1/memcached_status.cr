# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("MemcachedStatus",
  namespace: "::K8S::Com::Example::Cache::V1alpha1",
  properties: [

    {name: "nodes", kind: ::Array(String), key: "nodes", nilable: false, read_only: false, description: nil},

  ]
)
