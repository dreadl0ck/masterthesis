?	1?q??@1?q??@!1?q??@	[	@[	@![	@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL1?q??@????????1pC?׼???Al#???I????D
@Y??^EF??rEagerKernelExecute 0*	??????Z@2U
Iterator::Model::ParallelMapV2?&1???!???|>?7@)?&1???1???|>?7@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??̒ 5??!?O/3@)??̒ 5??1?O/3@:Preprocessing2F
Iterator::Modelg?CV??!?]??E@)??6?ُ??15????2@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?(?A&??!b)?w?6@)1%??e??1R!	??s2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??????!(ߺ??<@)?ُ?a??1!?S1?W#@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip;ǀ?????!|??~l?L@)f?ʉvu?1"???j@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??7???r?!@ @)??7???r?1@ @:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap3d?????!????7>@)?*5{?X?1?^ ?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?55.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9[	@Ido??}R@Q-j~??6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	????????????????!????????      ??!       "	pC?׼???pC?׼???!pC?׼???*      ??!       2	l#???l#???!l#???:	????D
@????D
@!????D
@B      ??!       J	??^EF????^EF??!??^EF??R      ??!       Z	??^EF????^EF??!??^EF??b      ??!       JGPUY[	@b qdo??}R@y-j~??6@?"C
%gradient_tape/sequential/dense/MatMulMatMul`?G?Tڂ?!`?G?Tڂ?0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul`?G?Tڂ?!`?G?Tڒ?"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul??RL?l?!ȟ\X???"E
)gradient_tape/sequential/dense_7/MatMul_1MatMul??RL?l?!???UH??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul??w3?k?!??'\?5??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul??w3?k?!@???M#??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul??w3?k?!??????"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul??w3?k?!?L?#??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul??w3?k?!??:?u??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul??w3?k?!HI)^?l??Q      Y@Y???L6@aϺ??lS@qh&f6@y?5?H???"?

both?Your program is POTENTIALLY input-bound because 18.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?55.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 