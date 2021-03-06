?	"3?<n!@"3?<n!@!"3?<n!@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC"3?<n!@]?,σ???1_|?/???A3??O??Ip
+T?@rEagerKernelExecute 0*	q=
ף?T@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatc('?UH??!FE7?>@)I??Q,???1?\Nž?8@:Preprocessing2F
Iterator::Model??<?Κ?!A??Yo??@)??	??ϋ?1????5?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?'????!?c???s>@)y]?`7l??1 >zG0@:Preprocessing2U
Iterator::Model::ParallelMapV2 ?o_Ή?!vEdes?.@) ?o_Ή?1vEdes?.@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??^?2???!??aY,@)??^?2???1??aY,@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip-[닄???!?ғ)$Q@)U???N@s?1$H霷?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorj>"?Dr?!$????@)j>"?Dr?1$????@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?]???T??!8?n[9@@)t^c???Z?1?ł???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 14.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?68.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIę???T@Q??<0@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	]?,σ???]?,σ???!]?,σ???      ??!       "	_|?/???_|?/???!_|?/???*      ??!       2	3??O??3??O??!3??O??:	p
+T?@p
+T?@!p
+T?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qę???T@y??<0@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul??O????!??O????"C
%gradient_tape/sequential/dense/MatMulMatMulnM????!???Zϒ?0"F
*gradient_tape/sequential/dense_17/MatMul_1MatMulnM????!ukA??֛?"F
*gradient_tape/sequential/dense_10/MatMul_1MatMulb+,?~?!G&Mn???"F
*gradient_tape/sequential/dense_11/MatMul_1MatMulb+,?~?!?x?R?q??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMulb+,?~?!_?0X?4??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMulb+,?~?!?;?]????"F
*gradient_tape/sequential/dense_15/MatMul_1MatMulb+,?~?!?Ν1[]??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMulb+,?~?!?`4?>??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMulb+,?~?!H0#7m ??Q      Y@Y?18??5@a??18?S@q?z?? C%@y????0???"?
both?Your program is POTENTIALLY input-bound because 14.9% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?68.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?10.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B 