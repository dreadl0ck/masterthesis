?	N??oDw@N??oDw@!N??oDw@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCN??oDw@?~?:p???1?????, @A?P?n???I???1?(
@rEagerKernelExecute 0*	??(\?bV@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?^?D??!p?{|??=@)?I+???1,V!??8@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?lscz?!V???u4@)?lscz?1V???u4@:Preprocessing2U
Iterator::Model::ParallelMapV2z?ަ????!*??:??3@)z?ަ????1*??:??3@:Preprocessing2F
Iterator::Modelvi????!?????B@)q8??9@??1??G?R?1@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??-s???!I?UO@)46<?Rv?1?????X@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensore?I)??r?!?E?l??@)e?I)??r?1?E?l??@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?,	PS˖?!??,C?8@)??V?c#p?1a?;?ߙ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapA?} R???!kr?P?:@)wJ??\?1·??٠??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?51.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI2p,{Q@Q8??O??@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?~?:p????~?:p???!?~?:p???      ??!       "	?????, @?????, @!?????, @*      ??!       2	?P?n????P?n???!?P?n???:	???1?(
@???1?(
@!???1?(
@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q2p,{Q@y8??O??@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?g:ݝ?!?g:ݝ?"&
	Greater_8Greater?k?М?!t'?	W??"-
LogicalAnd_13
LogicalAnd"?H?Z???!B?X?[M??"!
Cast_51Cast??L?:??!??+9?͹?"!
Cast_52Cast??L?:??!B)???M??"-
LogicalAnd_12
LogicalAnd??L?:??!a0i?#g??"!
Cast_49Cast? Ig<{??!zTRY???"-
LogicalAnd_14
LogicalAnd?!Q?{??!?x<?????"-
LogicalAnd_15
LogicalAnd?!Q?{??!??&Ru??"!
Cast_50Cast?eU?????!?Iq???Q      Y@Yr???u7@a}c??"S@q ?jQ?? @yZ`O????"?

both?Your program is POTENTIALLY input-bound because 16.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?51.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 