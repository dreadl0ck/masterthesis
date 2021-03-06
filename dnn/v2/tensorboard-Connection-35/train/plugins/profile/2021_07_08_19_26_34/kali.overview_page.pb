?	???<?P@???<?P@!???<?P@	?=.?F	@?=.?F	@!?=.?F	@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL???<?P@H?}8???1t??z?Q??AeS??.??I??pYE??Yi?"?~??rEagerKernelExecute 0*	?p=
?Cm@2K
Iterator::Model::Map??d?,??!??????P@)3???VC??1G?^??xN@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeatm????!T???y?*@)&S????1??R?	+&@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicesh??|???!???ع!@)sh??|???1???ع!@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2??7?ܘ??!7???~?@)??7?ܘ??17???~?@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??*????!?%p,,@)??=?
??1??H>0?@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?`????!S?????@)>??m|?1????޶@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor
K<?l?u?!?	??-@)
K<?l?u?1?	??-@:Preprocessing2F
Iterator::Model?i?WV???!,?~0Q@)겘?|\k?1??Cn???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapۊ?e????!-X??B?-@)??V?c#`?1Ƶ?&???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 27.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?46.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?=.?F	@I?נ?R@Q5l???v6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	H?}8???H?}8???!H?}8???      ??!       "	t??z?Q??t??z?Q??!t??z?Q??*      ??!       2	eS??.??eS??.??!eS??.??:	??pYE????pYE??!??pYE??B      ??!       J	i?"?~??i?"?~??!i?"?~??R      ??!       Z	i?"?~??i?"?~??!i?"?~??b      ??!       JGPUY?=.?F	@b q?נ?R@y5l???v6@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?m??j??!?m??j??"S
2gradient_tape/sequential/dense/BiasAdd/BiasAddGradBiasAddGrad?x????!J32?ٙ??"U
4gradient_tape/sequential/dense_3/BiasAdd/BiasAddGradBiasAddGrad?x????!????ɺ?"!
Cast_49Cast?ࢢ???!??R????"!
Cast_52Cast?ࢢ???!?]?0#??"!
Cast_50Cast6?n,???!?F?#W??"!
Cast_51Cast6?n,???!	0e????"&
	Greater_8Greater6?n,???!,,	????"-
LogicalAnd_12
LogicalAnd?Kd5???!??m_<{??"-
LogicalAnd_14
LogicalAnd?Kd5???!????5??Q      Y@Y??c.?A@a?,?h?0P@q??x]??@yh?)m5 ??"?

both?Your program is POTENTIALLY input-bound because 27.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?46.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 