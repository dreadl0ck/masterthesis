?	?0`?U @?0`?U @!?0`?U @      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?0`?U @L???|??1%??C???Au???ݟ?Ik?K??@rEagerKernelExecute 0*	23333?k@2K
Iterator::Model::Mapݘ?????!i+trS@)?wE?????1ph>?/R@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat~oӟ?H??!? ??ȉ@)?̯? ???1P{=/xf@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??	??ϋ?!??l?@)??	??ϋ?1??l?@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV28?L???!????B5@)8?L???1????B5@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?????K??!?A?U4?$@)??Ր?ǂ?1??I???@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?H??? ??!?T???m4@)?n??\?q?1?
??0??:Preprocessing2F
Iterator::Model?P1?߄??!?*J??S@)??V?c#p?1??{???:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorkH?c?Cg?!v??A???)kH?c?Cg?1v??A???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap F?6???!|'Y??%@)׆?q?&T?1-_?JI???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?62.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIx0?2/?T@Q">O4C?1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	L???|??L???|??!L???|??      ??!       "	%??C???%??C???!%??C???*      ??!       2	u???ݟ?u???ݟ?!u???ݟ?:	k?K??@k?K??@!k?K??@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qx0?2/?T@y">O4C?1@?"C
%gradient_tape/sequential/dense/MatMulMatMul@?D.C??!@?D.C??0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul@?D.C??!@?D.C??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul?????4~?!'!?*z???"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul?|r?4~?!,?mi????"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?|r?4~?!?/??Cc??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul?|r?4~?!\
?)??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?|r?4~?!??XfJ???"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?|r?4~?!???Ͷ??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul?|r?4~?!?z?????"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul?|r?4~?!?ޡ1ꡳ?Q      Y@Y|?p? 7@a?`???7S@q8???@ @y?TK??P??"?

both?Your program is POTENTIALLY input-bound because 19.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?62.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 