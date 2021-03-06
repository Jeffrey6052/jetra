#
# Autogenerated by Thrift Compiler (0.10.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

module Jetra
  module Thrift

    module Service
      
      class Client
        include ::Thrift::Client

        def call(request)
          send_call(request)
          return recv_call()
        end

        def send_call(request)
          send_message('call', Call_args, :request => request)
        end

        def recv_call()
          result = receive_message(Call_result)
          return result.success unless result.success.nil?
          raise ::Thrift::ApplicationException.new(::Thrift::ApplicationException::MISSING_RESULT, 'call failed: unknown result')
        end

      end

      class Processor
        include ::Thrift::Processor

        def process_call(seqid, iprot, oprot)
          args = read_args(iprot, Call_args)
          result = Call_result.new()
          result.success = @handler.call(args.request)
          write_result(result, oprot, 'call', seqid)
        end

      end

      # HELPER FUNCTIONS AND STRUCTURES

      class Call_args
        include ::Thrift::Struct, ::Thrift::Struct_Union
        REQUEST = 1

        FIELDS = {
          REQUEST => {:type => ::Thrift::Types::STRUCT, :name => 'request', :class => ::Jetra::Thrift::Request}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

      class Call_result
        include ::Thrift::Struct, ::Thrift::Struct_Union
        SUCCESS = 0

        FIELDS = {
          SUCCESS => {:type => ::Thrift::Types::STRUCT, :name => 'success', :class => ::Jetra::Thrift::Response}
        }

        def struct_fields; FIELDS; end

        def validate
        end

        ::Thrift::Struct.generate_accessors self
      end

    end

  end
end
