?	??mU?@??mU?@!??mU?@	+?5Bti??+?5Bti??!+?5Bti??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??mU?@??x?@e??1	?c???A?3iSu???I?5w??|@Y??E?>??rEagerKernelExecute 0*	|?G??m@2K
Iterator::Model::MapCV?zN??!?S?f??M@)??'???1+S ;K@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeatY?O0???!?m4w??,@)?L??ݜ?1?v????'@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice'?;??![?)?j0%@)'?;??1[?)?j0%@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatec('?UH??!?;3???4@)?)Wx????1??<??#@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2a??+e??!w?52?@)a??+e??1w?52?@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zipo*Ral!??!?q???C@)??ܵ?|??1??M{??
@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor|DL?$zy?!???0F?@)|DL?$zy?1???0F?@:Preprocessing2F
Iterator::Model??y?]???!??@rYN@)?h㈵?d?1 a?7???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap??ݓ????!?????5@)3?f??c?1???z?$??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?57.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9+?5Bti??I?K?JdS@Q=$?2c?5@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??x?@e????x?@e??!??x?@e??      ??!       "		?c???	?c???!	?c???*      ??!       2	?3iSu????3iSu???!?3iSu???:	?5w??|@?5w??|@!?5w??|@B      ??!       J	??E?>????E?>??!??E?>??R      ??!       Z	??E?>????E?>??!??E?>??b      ??!       JGPUY+?5Bti??b q?K?JdS@y=$?2c?5@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul??N?eނ?!??N?eނ?"C
%gradient_tape/sequential/dense/MatMulMatMulh?2J?K??!x???!??0"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul?".??r?!vL?????"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?".??r?!`?k+;???"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul?".??r?!??1_?դ?"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?".??r?!????è?"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul?".??r?!VL??:???"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul?".??r?!T?A?GP??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?".??r?!}j$?rG??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul?".??r?!?L1?>??Q      Y@Y|?p? 7@a?`???7S@q??*@y?
??????"?

both?Your program is POTENTIALLY input-bound because 19.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?57.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 