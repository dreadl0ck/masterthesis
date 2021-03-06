?	??V?8@??V?8@!??V?8@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC??V?8@5F??j??1???)@A??0?*??I??0Bx?@rEagerKernelExecute 0*??(\?zh@)       =2K
Iterator::Model::Map??:ǀ???!????`?Q@):d?w??1G??|NtP@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeatS?!?uq??!?m???^+@)?IF???1XF?Su?&@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??ƌ?!?J`?ǲ@)??ƌ?1?J`?ǲ@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?ek}?І?!?%?P"?@)?ek}?І?1?%?P"?@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?hUM??!?K?i%@)??Q,??z?1?????
@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor	3m??Js?!W???=@)	3m??Js?1W???=@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip-?i??&??!???Oa;@)??ek}q?1??[f?q@:Preprocessing2F
Iterator::Model?4?8EG??!V???:R@)?m?f?1?,f?¡??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?G??|??!l?u:xm&@)???"?V?1h}?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?54.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIeq8n??Q@Qk:G?)=@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	5F??j??5F??j??!5F??j??      ??!       "	???)@???)@!???)@*      ??!       2	??0?*????0?*??!??0?*??:	??0Bx?@??0Bx?@!??0Bx?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qeq8n??Q@yk:G?)=@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits??????!??????"!
Cast_51CastAB??z?!D??dB??"!
Cast_52CastAB??z?!? ?$؂??"&
	Greater_8GreaterAB??z?!?(??Kç?"-
LogicalAnd_13
LogicalAndAB??z?!1????"F
*gradient_tape/sequential/dense_35/MatMul_1MatMulAB??z?!d9?t2D??"-
LogicalAnd_14
LogicalAnd????x?!b*??V???"!
Cast_50Cast?d6vTx?!??bʋ"??"-
LogicalAnd_12
LogicalAnd?d6vTx?!???????"-
LogicalAnd_15
LogicalAnd?d6vTx?!=])Y?"??Q      Y@Y??.?d|2@aH???`T@q[??hd#@y?~Z?????"?

both?Your program is POTENTIALLY input-bound because 16.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?54.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 