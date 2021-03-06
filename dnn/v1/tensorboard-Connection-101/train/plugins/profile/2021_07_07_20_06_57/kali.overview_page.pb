?	/??w7"@/??w7"@!/??w7"@	?qCYΒ???qCYΒ??!?qCYΒ??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL/??w7"@1???6T??1'??>???AS??%?њ?I,???C@Y4GV~???rEagerKernelExecute 0*	???(\On@2K
Iterator::Model::Map???N?`??!{0hP8Q@)V?F????1??X??O@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeatl>????!?;??D'@)g?CV??1-&$?"@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???_???!?9???`!@)???_???1?9???`!@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?4F??j??!?????-@)2??%䃎?1N[?P?@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2??#0???!??#O@)??#0???1??#O@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip5???#b??!O?rld?=@)??q?@Hv?1s???@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??+H3v?!v?x[??@)??+H3v?1v?x[??@:Preprocessing2F
Iterator::Model?C4?????!-^?䦘Q@)?<,Ԛ?m?1]lK5???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapD? ????!????y/@)ƊL??a?1p??????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 13.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?69.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?qCYΒ??In?????T@Q?j?+0@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	1???6T??1???6T??!1???6T??      ??!       "	'??>???'??>???!'??>???*      ??!       2	S??%?њ?S??%?њ?!S??%?њ?:	,???C@,???C@!,???C@B      ??!       J	4GV~???4GV~???!4GV~???R      ??!       Z	4GV~???4GV~???!4GV~???b      ??!       JGPUY?qCYΒ??b qn?????T@y?j?+0@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?? ????!?? ????"!
Cast_49Cast?J?@M???!T0>Pq???"!
Cast_52Cast?J?@M???!?o?\??"&
	Greater_8Greater?J?@M???!ުP????"-
LogicalAnd_14
LogicalAnd?J?@M???!8ti??]??"C
%gradient_tape/sequential/dense/MatMulMatMul?????M??!????G???0"!
Cast_51Cast??@?3M??!	???"-
LogicalAnd_12
LogicalAnd??@?3M??!\ݎ??ں?"-
LogicalAnd_13
LogicalAnd??@?3M??!??V?:??"-
LogicalAnd_15
LogicalAnd??@?3M??!l?-??Q      Y@Y'oe??8@a?9?&?R@q?ŝ?2@y^|d?0???"?

both?Your program is POTENTIALLY input-bound because 13.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?69.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 