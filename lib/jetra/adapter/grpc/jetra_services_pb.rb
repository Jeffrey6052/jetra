# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: jetra.proto for package 'jetra.grpc'

require 'grpc'
require_relative 'jetra_pb'

module Jetra
  module Grpc
    module Interface
      class Service

        include GRPC::GenericService

        self.marshal_class_method = :encode
        self.unmarshal_class_method = :decode
        self.service_name = 'jetra.grpc.Interface'

        rpc :Call, Request, Response
      end

      Stub = Service.rpc_stub_class
    end
  end
end
