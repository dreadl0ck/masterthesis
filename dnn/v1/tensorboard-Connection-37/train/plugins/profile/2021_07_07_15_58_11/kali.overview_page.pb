?	j??%A!@j??%A!@!j??%A!@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCj??%A!@???zOe??1?ND???A <?.??I?rL??@rEagerKernelExecute 0*	=
ףpV@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??	??ϛ?!r?W(?>@)R,????1?K?wx9@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice{Nz??ړ?!k?ue?5@){Nz??ړ?1k?ue?5@:Preprocessing2F
Iterator::Model?v??/??!?????@@)?????%??1?>???0@:Preprocessing2U
Iterator::Model::ParallelMapV2??J?8??!%??W?'/@)??J?8??1%??W?'/@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[|
????!"??)>?<@)??@???x?1?c0d[@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??"????!????P@)??f??u?1MK=?;H@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensore?I)??r?!??HÞ?@)e?I)??r?1??HÞ?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap-??#???!??;$?@)??hUM`?1?c??0?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 12.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?71.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI\D?|U@Q$?]$?/@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???zOe?????zOe??!???zOe??      ??!       "	?ND????ND???!?ND???*      ??!       2	 <?.?? <?.??! <?.??:	?rL??@?rL??@!?rL??@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q\D?|U@y$?]$?/@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?a1? ??!?a1? ??"C
%gradient_tape/sequential/dense/MatMulMatMul??/7???!ƶ?&dZ??0"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul	????~?!Hf?%??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul	????~?!?
???j??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul	????~?!?b*??I??"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul	????~?!g??e?(??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul	????~?!(Q:???"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul	????~?!?4r?;s??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul	????~?!?????b??"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul	????~?!??\R??Q      Y@Y???L6@aϺ??lS@q#y,?Y#@yƶ?&dZ??"?

both?Your program is POTENTIALLY input-bound because 12.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?71.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 