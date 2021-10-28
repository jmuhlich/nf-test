import groovy.json.JsonGenerator
import groovy.json.JsonGenerator.Converter

nextflow.enable.dsl=2


// comes from testflight to find json files
params.nf_testflight_output  = "json"

// process mapping
def input = []
${mapping}
//----

// include test process
include { ${workflow} } from '${script}'

workflow {

  ${process}(*input)


}