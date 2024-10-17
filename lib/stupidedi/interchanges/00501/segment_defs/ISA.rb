# frozen_string_literal: true
module Stupidedi
  module Interchanges
    module FiveOhOne
      module SegmentDefs
        s = Schema
        e = ElementDefs
        r = ElementReqs

        # https://www.stedi.com/edi/x12-005010/segment/ISA

        ISA = s::SegmentDef.build(:ISA, "Interchange Control Header",
          "To start and identify an interchange of zero or more functional groups and interchange-related control segments",
          e::I01.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # ISA-01
          e::I02.simple_use(r::Optional,  s::RepeatCount.bounded(1)), # ISA-02
          e::I03.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # ISA-03
          e::I04.simple_use(r::Optional,  s::RepeatCount.bounded(1)), # ISA-04
          e::I05.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # ISA-05
          e::I06.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # ISA-06
          e::I05.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # ISA-07
          e::I07.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # ISA-08
          e::I08.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # ISA-09
          e::I09.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # ISA-10
          e::I65.simple_use(r::Optional,  s::RepeatCount.bounded(1)), # ISA-11
          e::I11.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # ISA-12
          e::I12.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # ISA-13
          e::I13.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # ISA-14
          e::I14.simple_use(r::Mandatory, s::RepeatCount.bounded(1)), # ISA-15
          e::I15.simple_use(r::Optional,  s::RepeatCount.bounded(1))) # ISA-16
      end
    end
  end
end
