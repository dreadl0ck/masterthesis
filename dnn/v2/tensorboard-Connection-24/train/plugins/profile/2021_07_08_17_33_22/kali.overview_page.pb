?	q?QeG@q?QeG@!q?QeG@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCq?QeG@C?+???1???z????Av??ң??I?.\s?@rEagerKernelExecute 0*?G?z?Z@)      =2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?Ue????!B????<@)?{???S??1)?7@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???[???!?,U??2@)???[???1?,U??2@:Preprocessing2F
Iterator::Modele???V??!???L^?@@)v?ꭁ???1ܱ=??0@:Preprocessing2U
Iterator::Model::ParallelMapV2T5A?} ??!C?M\?Q0@)T5A?} ??1C?M\?Q0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate3???yS??!???.j?@)?@H0???1??NA]?(@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?g??s?u?!???O??@)?g??s?u?1???O??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip+??	h??!+??ЯP@)/?$?u?1?L?w?~@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????g???!??????@@)??H?}]?1?h?Si???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 20.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?50.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI$??(4?Q@Qn?u\/?<@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	C?+???C?+???!C?+???      ??!       "	???z???????z????!???z????*      ??!       2	v??ң??v??ң??!v??ң??:	?.\s?@?.\s?@!?.\s?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q$??(4?Q@yn?u\/?<@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits)Xj5?o??!)Xj5?o??"&
	Greater_8Greater??d??!+???>ѫ?"!
Cast_49Castzb?????!??$ߠ??"!
Cast_52Castzb?????!t???Y??"-
LogicalAnd_13
LogicalAndzb?????!?0??^??"!
Cast_51Cast????v??!z?,E7???"-
LogicalAnd_12
LogicalAnd????v??!?6???"-
LogicalAnd_14
LogicalAnd?u?n?+??!g(!?@???"-
LogicalAnd_15
LogicalAnd?u?n?+??!Ɵ??|??"!
Cast_50Cast2'J?V???!9B@>???Q      Y@Yr???u7@a}c??"S@q~:?r?@y????C7??"?

both?Your program is POTENTIALLY input-bound because 20.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?50.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 