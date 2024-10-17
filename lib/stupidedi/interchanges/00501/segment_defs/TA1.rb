# frozen_string_literal: true
module Stupidedi
  module Interchanges
    module FiveOhOne
      module SegmentDefs
        s = Schema
        e = ElementDefs
        r = ElementReqs

        # https://www.stedi.com/edi/x12-005010/segment/TA1

        TA1 = s::SegmentDef.build(:TA1, "Interchange Acknowledgement",
          "To report the status of processing a received interchange header and trailer or the non-delivery by a network provider",
          e::I12.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # TA1-01
          e::I08.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # TA1-02
          e::I09.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # TA1-03
          e::I17.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # TA1-04
          e::I18.simple_use(r::Mandatory, s::RepeatCount.bounded(1))) # TA1-05
      end
    end
  end
end
