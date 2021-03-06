?	?\??@?\??@!?\??@	?%?.dc???%?.dc??!?%?.dc??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?\??@<K?Pa??1Gr??7??A???V?/??I??XP?@Yj???늡?rEagerKernelExecute 0*	43333?i@2K
Iterator::Model::Map\ A?c???!Hc???Q@)?qm????1d???}N@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?aod??!T[? (@)+MJA????1?A<2??#@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?Q,????!?e???M!@)?Q,????1?e???M!@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2!v??y???!X??_?>@)!v??y???1X??_?>@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???#0??!??Zh?.@)[?? ????1?=5BYI@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip;ǀ?????!??6k?>@)e?I)??r?1??/2 @:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?Q,??r?!?e???M@)?Q,??r?1?e???M@:Preprocessing2F
Iterator::Modelx?W?f,??!HH?<?^Q@)G?ŧ h?14@9?????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap??̯? ??!׵_8d@0@)[|
??Z?1?o?`???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 17.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?63.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?%?.dc??I|??;T@Q???cR?2@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	<K?Pa??<K?Pa??!<K?Pa??      ??!       "	Gr??7??Gr??7??!Gr??7??*      ??!       2	???V?/?????V?/??!???V?/??:	??XP?@??XP?@!??XP?@B      ??!       J	j???늡?j???늡?!j???늡?R      ??!       Z	j???늡?j???늡?!j???늡?b      ??!       JGPUY?%?.dc??b q|??;T@y???cR?2@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul???v?[??!???v?[??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul???Ԁ?!8?`|ݗ??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul?DϘ~?![e&C>??"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul?DϘ~?!???"r??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?DϘ~?!?Yh<E??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?DϘ~?!c??KV??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?DϘ~?!??/p???"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul?DϘ~?!???????"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul?DϘ~?!S???ȱ?"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul?DϘ~?!Uǣ?^???Q      Y@Y|?p? 7@a?`???7S@q??r/\@y?-*?a???"?

both?Your program is POTENTIALLY input-bound because 17.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?63.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 