?	?N???@?N???@!?N???@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?N???@?.o?*??18iͣ @A??bg??I??*l	@rEagerKernelExecute 0*	??Q?E]@2F
Iterator::Model???"?ߪ?!? i?jF@)?D?$]??1I?T׾&@@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceJ+???!]??U?4@)J+???1]??U?4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??1 {???!????U#7@)M-[닄??1??3?2@:Preprocessing2U
Iterator::Model::ParallelMapV2???N??!9?1GN)@)???N??19?1GN)@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipE?a????!?ߖm?K@)??Pk?w|?1\??(??@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??ZӼ?t?!"&t0?l@)??ZӼ?t?1"&t0?l@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenateh˹W???!??X??8@)z?ަ??q?1?]0 ?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap*:??H??!0͊??:@)??m?2[?1?!??r???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?48.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIp??P@Q?Ž?%@@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?.o?*???.o?*??!?.o?*??      ??!       "	8iͣ @8iͣ @!8iͣ @*      ??!       2	??bg????bg??!??bg??:	??*l	@??*l	@!??*l	@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qp??P@y?Ž?%@@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsf?I@+???!f?I@+???"&
	Greater_8Greater????????!&UleW???"!
Cast_52Cast??hO??!?K??nɳ?"-
LogicalAnd_13
LogicalAnd??hO??!?lj?1??"-
LogicalAnd_14
LogicalAnd???J͔?!??_?P??"-
LogicalAnd_15
LogicalAnd???J͔?!<?W?????"!
Cast_49Cast??4*͔?!???ː[??"!
Cast_51Cast??4*͔?!??]6???"-
LogicalAnd_12
LogicalAnd??4*͔?!>j?Xێ??"!
Cast_50Cast+??ɓ?!?O?:??Q      Y@Yr???u7@a}c??"S@q&ޘ???@y?s????"?

both?Your program is POTENTIALLY input-bound because 18.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?48.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 