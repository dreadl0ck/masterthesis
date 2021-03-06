?	?Z?[!? @?Z?[!? @!?Z?[!? @	?Ug??????Ug?????!?Ug?????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?Z?[!? @J_9????1Tn???? @A!?J͞?I???wC@Y???1ZG??rEagerKernelExecute 0*	q=
ףo@2K
Iterator::Model::Mapke?/????!?0?	R@)?~?T????1??d?PP@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat????#??!??????)@)?FZ*oG??1KQO??#@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2&6׆???!#y??;?@)&6׆???1#y??;?@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?%??:???!L?W??@)?%??:???1L?W??@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate̗`???!???Is?$@)?	?????1?<&?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorv??ݰm??!N6??d@)v??ݰm??1N6??d@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?(yu???!??15??:@)ض(?A&y?1><??@:Preprocessing2F
Iterator::Model??v??N??!???CQR@)?m?f?1V?'e???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapu???a???!o	ߟ??&@)C?8
a?1???_U???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 15.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?57.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?Ug?????I?H??R@Q4???X|9@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	J_9????J_9????!J_9????      ??!       "	Tn???? @Tn???? @!Tn???? @*      ??!       2	!?J͞?!?J͞?!!?J͞?:	???wC@???wC@!???wC@B      ??!       J	???1ZG?????1ZG??!???1ZG??R      ??!       Z	???1ZG?????1ZG??!???1ZG??b      ??!       JGPUY?Ug?????b q?H??R@y4???X|9@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits=x9l???!=x9l???"!
Cast_51Cast1??x&z?!?g?7???"&
	Greater_8Greater1??x&z?!+?S?ޤ?"-
LogicalAnd_13
LogicalAnd1??x&z?!?*Pn?#??"!
Cast_49Casth??>?#x?!??.?(??"!
Cast_50Casth??>?#x?!?>?,??"!
Cast_52Casth??>?#x?!?M?Rz???"-
LogicalAnd_12
LogicalAndh??>?#x?!??冲??"-
LogicalAnd_14
LogicalAndh??>?#x?!?պꜳ?"-
LogicalAnd_15
LogicalAndh??>?#x?!ޅ??"??Q      Y@Y??.?d|2@aH???`T@q?<G@y??P?=n??"?

both?Your program is POTENTIALLY input-bound because 15.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?57.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 