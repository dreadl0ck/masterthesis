?	?+J	?j@?+J	?j@!?+J	?j@	??W(?????W(???!??W(???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?+J	?j@???3K??1???u????A???[??IPqx??@Yh+?m???rEagerKernelExecute 0*	???(\\@2F
Iterator::Modelx$(~???!{ ???:F@)l??[??1??t3Ҁ7@:Preprocessing2U
Iterator::Model::ParallelMapV2?*5{???!j??/??4@)?*5{???1j??/??4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat,?????!`mާ?5@)???&??1???g%?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateK<?l???!J???-:@)G8-x?W??1??X.fp,@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???{??!???7??'@)???{??1???7??'@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?wJ???!??uNV?K@)?	.V?`z?1\2?h?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorkH?c?Cw?!&wi?	>@)kH?c?Cw?1&wi?	>@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??V?c#??!???*<@)?n???a?1?<?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 14.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?65.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??W(???I?????<T@Qܸ??1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???3K?????3K??!???3K??      ??!       "	???u???????u????!???u????*      ??!       2	???[?????[??!???[??:	Pqx??@Pqx??@!Pqx??@B      ??!       J	h+?m???h+?m???!h+?m???R      ??!       Z	h+?m???h+?m???!h+?m???b      ??!       JGPUY??W(???b q?????<T@yܸ??1@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul7|$?ف?!7|$?ف?"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul??qT:??!K??	??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?Y?|?9??!???Sj&??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul?Y?|?9??!?6	????"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?Y?|?9??!FJ????"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul?Y?|?9??!????x???"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul?Y?|?9??!????̬?"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?Y?|?9??!BH?B?m??"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul?Y?|?9??!w??2?t??"E
)gradient_tape/sequential/dense_5/MatMul_1MatMul?Y?|?9??!?."|??Q      Y@Y???L6@aϺ??lS@qȑ???@y0\H??"?

both?Your program is POTENTIALLY input-bound because 14.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?65.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 