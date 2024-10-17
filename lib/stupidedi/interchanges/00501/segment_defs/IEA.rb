# frozen_string_literal: true
module Stupidedi
  module Interchanges
    module FiveOhOne
      module SegmentDefs
        s = Schema
        e = ElementDefs
        r = ElementReqs

        # https://www.stedi.com/edi/x12-005010/segment/IEA

        IEA = s::SegmentDef.build(:IEA, "Interchange Control Trailer",
          "To define the end of an interchange of zero or more functional groups and interchange-related control segments",
          e::I16.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # IEA-01
          e::I12.simple_use(r::Mandatory, s::RepeatCount.bounded(1))) # IEA-02
      end
    end
  end
end
