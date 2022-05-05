require "kube-client/v1.21"
require "./crds/com/example/cache/v1alpha1/*"
require "log"

module Memcached::Operator
  VERSION = "0.1.0"

  # Initialize the connection with a default client.
  # client = Kube::Client.config(Kube::Config.load_file("/home/cmizzi/.kube/config.kind"))
  client = Kube::Client.autoconfig

  # Create a channel to watch all pods within the `default` namespace.
  #
  # In fact, the channel will be used as loop to fetch information directly from
  # the Kubernetes API. It's lighweight as possible for the API Server.
  channel = client.api("cache.example.com/v1alpha1").resource("memcacheds").watch(namespace: "default")

  # While the channel is not closed (potentially if the API server restarts ?),
  # loop and iterate on every new entry.
  until channel.closed?
    event = channel.receive

    # If the event is not a pod, we don't want to parse it.
    unless event.is_a? K8S::Kubernetes::WatchEvent(K8S::Com::Example::Cache::V1alpha1::Memcached)
      # If there's an API error, just log it and continue the loop.
      if event.is_a? Kube::Error::API || event.is_a? Kube::Error::UndefinedResource
        Log.for("reconcile").error &.emit(event.to_s)
      end

      next
    end

    # Simply log the pod spec and status.
    Log.for("reconcile").info { "namespace=#{event.object.metadata!.namespace} pod=#{event.object.metadata!.name}" }
  end
end
