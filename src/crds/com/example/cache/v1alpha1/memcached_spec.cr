# THIS FILE WAS AUTO GENERATED FROM THE K8S SWAGGER SPEC

require "yaml"
require "json"

::K8S::Kubernetes::Resource.define_object("MemcachedSpec",
  namespace: "::K8S::Com::Example::Cache::V1alpha1",
  properties: [

    {name: "size", kind: Int32, key: "size", nilable: false, read_only: false, description: nil},

  ]
)
