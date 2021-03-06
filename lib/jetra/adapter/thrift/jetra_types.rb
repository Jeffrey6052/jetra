#
# Autogenerated by Thrift Compiler (0.10.0)
#
# DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
#

module Jetra
  module Thrift
    class Request
      include ::Thrift::Struct, ::Thrift::Struct_Union
      ROUTE = 1
      PARAMS = 2

      FIELDS = {
        ROUTE => {:type => ::Thrift::Types::STRING, :name => 'route'},
        PARAMS => {:type => ::Thrift::Types::STRING, :name => 'params'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

    class Response
      include ::Thrift::Struct, ::Thrift::Struct_Union
      STATUS = 1
      BODY = 2

      FIELDS = {
        STATUS => {:type => ::Thrift::Types::I32, :name => 'status'},
        BODY => {:type => ::Thrift::Types::STRING, :name => 'body'}
      }

      def struct_fields; FIELDS; end

      def validate
      end

      ::Thrift::Struct.generate_accessors self
    end

  end
end
