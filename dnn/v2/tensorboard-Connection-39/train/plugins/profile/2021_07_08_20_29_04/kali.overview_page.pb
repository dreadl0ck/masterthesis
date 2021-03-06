?	???S@???S@!???S@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC???S@?"k????1??V'g??AM??St$??I8??䝃@rEagerKernelExecute 0*	?p=
?#T@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat^c?????!?jd?o8=@)j???v???1p8?hͨ7@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???Q??!0l$?4@)???Q??10l$?4@:Preprocessing2F
Iterator::Model5?????!?h?3?@@)?=\r?)??1l???1@:Preprocessing2U
Iterator::Model::ParallelMapV2}гY????!֪??20@)}гY????1֪??20@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate$0??{??!7I ??=@)V-?}?1|h???!@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???מYr?!Wɘɉ>@)???מYr?1Wɘɉ>@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipJA??4F??!?????P@)a???)q?1?wg'??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???b('??!??????@)??Q,??Z?1??D?/ @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 24.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?53.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI -??5?S@QLg?)?5@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?"k?????"k????!?"k????      ??!       "	??V'g????V'g??!??V'g??*      ??!       2	M??St$??M??St$??!M??St$??:	8??䝃@8??䝃@!8??䝃@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q -??5?S@yLg?)?5@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??]?j??!??]?j??"!
Cast_50Cast?U?????!?q;?}??"!
Cast_51Cast?U?????!V-??w???"!
Cast_52Cast?U?????!???rD??"&
	Greater_8Greater?U?????!??;Ll???"E
)gradient_tape/sequential/dense_7/MatMul_1MatMul?U?????!!0?C3@??"!
Cast_49CastBBO?????!E$?????"-
LogicalAnd_12
LogicalAndBBO?????!i}?????"-
LogicalAnd_14
LogicalAndg?H?'|??!ߢ1Y???"!
Tile_23Tileg?H?'|??!U-??w???Q      Y@Yhq???@@aLǫ(?P@q :]?@&@yΙ??c??"?
both?Your program is POTENTIALLY input-bound because 24.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?53.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?11.1% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B 