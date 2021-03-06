?	???;?R@???;?R@!???;?R@	??LQ?????LQ???!??LQ???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL???;?R@?n???>??1K??^b???A,g*??I??L?*?@Y(??????rEagerKernelExecute 0*	z?G??e@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??????!??????H@)??? %??18,????F@:Preprocessing2U
Iterator::Model::ParallelMapV2??h㈵??!w{?L[?+@)??h㈵??1w{?L[?+@:Preprocessing2F
Iterator::Model?c]?F??!4B??;@)??Q?Q??1%?E*@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlicee?X???!?z9??#@)e?X???1?z9??#@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?T???B??!;?N??R2@)? ?X4???1?!d?? @:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorŏ1w-!?!?e?h??@)ŏ1w-!?1?e?h??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??s?//??!3{??_<R@)h??n?|?1??D??P@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap ?M?????!}B/@y3@)8?*5{?U?1I?|H^??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 15.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?65.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??LQ???I?D.??UT@Q߆732@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?n???>???n???>??!?n???>??      ??!       "	K??^b???K??^b???!K??^b???*      ??!       2	,g*??,g*??!,g*??:	??L?*?@??L?*?@!??L?*?@B      ??!       J	(??????(??????!(??????R      ??!       Z	(??????(??????!(??????b      ??!       JGPUY??LQ???b q?D.??UT@y߆732@?"V
5gradient_tape/sequential/dense_19/BiasAdd/BiasAddGradBiasAddGradR?+????!R?+????"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul^????R??!4??????"C
%gradient_tape/sequential/dense/MatMulMatMul?6?ǈ???!FS`; ~??0"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul~?????!VIY?a??"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul~?????!f?R99D??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul~?????!v5K?U'??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul~?????!??9???"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul~?????!ː[?v??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul~?????!???Uh??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul~?????!ۆ??Y??Q      Y@Y???L6@aϺ??lS@qk&?ϴ@y??rK??"?

both?Your program is POTENTIALLY input-bound because 15.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?65.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 