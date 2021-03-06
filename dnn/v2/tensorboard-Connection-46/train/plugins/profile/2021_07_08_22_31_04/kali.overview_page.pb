?	??s?@??s?@!??s?@	c?0??@c?0??@!c?0??@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??s?@??n???1?lXSY???AZH?????I?g??7@Y?2R臭??rEagerKernelExecute 0*	*\???Xq@2K
Iterator::Model::Map????	???!???p?iQ@)?*?????1	??h?O@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?????	??!?HXe?%@)?}:3P??1?zL%??!@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??ʡE???!?/L??+@)???쁖?1?ɞ??@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice&p?n????!ӕ???@)&p?n????1ӕ???@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?S ?gА?!???pѩ@)?S ?gА?1???pѩ@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?[Z?{??!?ӁӁ?<@)????g???1Q?Q?Q?	@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorI?2??v?!9/ ? @)I?2??v?19/ ? @:Preprocessing2F
Iterator::Model???QI??! ???Q@)~oӟ?Hq?1?j??S??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapQ?Hm???!???Od-@)?lscz?b?1?-???f??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 24.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?48.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9c?0??@I?T?-?*R@Q??<#j?7@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??n?????n???!??n???      ??!       "	?lXSY????lXSY???!?lXSY???*      ??!       2	ZH?????ZH?????!ZH?????:	?g??7@?g??7@!?g??7@B      ??!       J	?2R臭???2R臭??!?2R臭??R      ??!       Z	?2R臭???2R臭??!?2R臭??b      ??!       JGPUYc?0??@b q?T?-?*R@y??<#j?7@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?v?Q??!?v?Q??"!
Cast_51CastdvL???!u??NR ??"&
	Greater_8GreaterdvL???!?????7??"!
Cast_52Cast??j?Ҽ??!?13?O??"-
LogicalAnd_13
LogicalAnd??j?Ҽ??!??ވ0g??"-
LogicalAnd_14
LogicalAnd??o?(ֆ?!?????A??"!
Cast_49CastlvǮՆ?!k???U??"!
Cast_50CastlvǮՆ?!?-e??{??"-
LogicalAnd_12
LogicalAndlvǮՆ?!??ܒ???"F
*gradient_tape/sequential/dense_11/MatMul_1MatMullvǮՆ?!??SfV??Q      Y@Yt?E]?=@a??.???Q@q??@yd>ԋ????"?

both?Your program is POTENTIALLY input-bound because 24.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?48.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 