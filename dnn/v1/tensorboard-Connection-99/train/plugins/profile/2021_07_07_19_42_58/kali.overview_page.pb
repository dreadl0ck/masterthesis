?	?\o??@@?\o??@@!?\o??@@	?V???N@?V???N@!?V???N@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?\o??@@q?{??#??1-wf??\??A??Sr3??I?PۆQ?@Y???je???rEagerKernelExecute 0*	R???!Y@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat*t^c????!J?XH;?=@)ض(?A&??1??q6n8@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice|~!<ژ?!H0?3]$8@)|~!<ژ?1H0?3]$8@:Preprocessing2U
Iterator::Model::ParallelMapV2'?Wʒ?!???@2@)'?Wʒ?1???@2@:Preprocessing2F
Iterator::Model?p>????!?6+S&@@)?> ?M???1x?BM??+@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate"?uq??!I???I/?@)wJ??|?1?*??+@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorE???V	v?!f.zZh@)E???V	v?1f.zZh@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipٙB?5v??!?dj?l?P@)Mۿ?Ҥt?1z?VI?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap3?}ƅ??!x?}??@@)!?J?^?1}???????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 25.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?47.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?V???N@I?C??YR@Quk6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	q?{??#??q?{??#??!q?{??#??      ??!       "	-wf??\??-wf??\??!-wf??\??*      ??!       2	??Sr3????Sr3??!??Sr3??:	?PۆQ?@?PۆQ?@!?PۆQ?@B      ??!       J	???je??????je???!???je???R      ??!       Z	???je??????je???!???je???b      ??!       JGPUY?V???N@b q?C??YR@yuk6@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?????!?????"C
%gradient_tape/sequential/dense/MatMulMatMul??F?Ӈ??!?????S??0"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul??)???!X"jO?K??"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul??)???!?????!??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul??)???!?Q2r???"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul??)???!=?pW???"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul??)???!???<???"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul??)???!y?ֈ??"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul??)???!?i?ц??"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul??)???!ӹ5?˄??Q      Y@Y???L6@aϺ??lS@q?FH8?!@y8j??????"?

both?Your program is POTENTIALLY input-bound because 25.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?47.0 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 