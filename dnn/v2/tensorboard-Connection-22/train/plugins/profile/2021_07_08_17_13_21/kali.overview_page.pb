?	??
???@??
???@!??
???@	z?ktY???z?ktY???!z?ktY???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??
???@{???ɚ??1]??????A???????I?gB?Ē@Y?y9??c??rEagerKernelExecute 0*	??Q??X@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeaty?Z??K??!O?n?<@)b֋??h??1??ƽ??6@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceUMu???!h?}?4@)UMu???1h?}?4@:Preprocessing2U
Iterator::Model::ParallelMapV2???????!?-X?,1@)???????1?-X?,1@:Preprocessing2F
Iterator::Model???q??!?|?pZA@)Tol?`??1f?D??
1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?L?֝?![͂?MC=@)v?ꭁ???1?c?e"Q"@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorZd;?O?w?!E??z?@)Zd;?O?w?1E??z?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??kCŰ?!????RrP@)A??ǘ?v?1?c??+K@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap"?uq??!?S?s{?@)?Q,??b?1?2Lr+?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 19.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?53.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9y?ktY???I?n???[R@Qz????9@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	{???ɚ??{???ɚ??!{???ɚ??      ??!       "	]??????]??????!]??????*      ??!       2	??????????????!???????:	?gB?Ē@?gB?Ē@!?gB?Ē@B      ??!       J	?y9??c???y9??c??!?y9??c??R      ??!       Z	?y9??c???y9??c??!?y9??c??b      ??!       JGPUYy?ktY???b q?n???[R@yz????9@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?x??e0??!?x??e0??"&
	Greater_8GreaterBU?P0??!;????Ȭ?"-
LogicalAnd_13
LogicalAnd#??$Gp??!?P??O2??"!
Cast_49Cast?l?r?o??!z>6)N ??"!
Cast_52Cast?l?r?o??!,?wLι?"!
Cast_51Castv♰*??!ah???q??"-
LogicalAnd_12
LogicalAndv♰*??!XRۑˊ??"-
LogicalAnd_14
LogicalAndv♰*??!??<?\??"-
LogicalAnd_15
LogicalAndv♰*??!????p.??"!
Cast_50Cast??.,?w??!?{??????Q      Y@Y?h???7@a{?e?@	S@q g T??@y?@??????"?

both?Your program is POTENTIALLY input-bound because 19.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?53.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 