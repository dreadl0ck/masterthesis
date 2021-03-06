?	???߉"@???߉"@!???߉"@	?=#??{???=#??{??!?=#??{??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL???߉"@S?Z?!??1t?Y?b???A?_??ME??Ih?>??@Y??5?e???rEagerKernelExecute 0*	]???(|p@2K
Iterator::Model::Mapߦ???"??!???uRZS@)w?T????1r??N?Q@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2=?U?????!??O:1F"@)=?U?????1??O:1F"@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat{?G?z??!3˧o?T@)Pp??Ӑ?1bJ????@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???VC???!??Ј?@)???VC???1??Ј?@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateW?}W???!Z?i? ?$@)$EdX???1??????@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::ZipOGɫs??!?=C^?5@) ?o_?y?1?9A?@:Preprocessing2F
Iterator::Model?W?L????!?0oh??S@)??-?lp?1??L?<S??:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorW!?'?>m?!C??????)W!?'?>m?1C??????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?s????!?Qdt?1&@);?f??_?1R???Lj??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 12.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?72.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?=#??{??I]?сh>U@Q++??8-@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	S?Z?!??S?Z?!??!S?Z?!??      ??!       "	t?Y?b???t?Y?b???!t?Y?b???*      ??!       2	?_??ME???_??ME??!?_??ME??:	h?>??@h?>??@!h?>??@B      ??!       J	??5?e?????5?e???!??5?e???R      ??!       Z	??5?e?????5?e???!??5?e???b      ??!       JGPUY?=#??{??b q]?сh>U@y++??8-@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulv?H5?G??!v?H5?G??"C
%gradient_tape/sequential/dense/MatMulMatMul?l??k?!B???~??0"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul?l??k?!I?Zb?Y??"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul?l??k?!???L??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?l??k?!??ռ??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul?l??k?!?7?&-???"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?l??k?!???x????"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul?l??k?!?o??Я?"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul?l??k?!܅_?ޱ?"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?l??k?!?SV7wճ?Q      Y@Y|?p? 7@a?`???7S@q&fN%?@yvf?t??"?

both?Your program is POTENTIALLY input-bound because 12.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?72.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 