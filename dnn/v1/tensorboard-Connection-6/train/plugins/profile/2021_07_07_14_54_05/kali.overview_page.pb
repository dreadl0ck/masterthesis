?	D??)X?@D??)X?@!D??)X?@	?:?Ď?@?:?Ď?@!?:?Ď?@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLD??)X?@-?????1j????4??Ae??????I0e????@Y??۞ ???rEagerKernelExecute 0*	33333?Z@2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice,??ypw??!Q"U??~4@),??ypw??1Q"U??~4@:Preprocessing2U
Iterator::Model::ParallelMapV2??&k?C??!%]y??|2@)??&k?C??1%]y??|2@:Preprocessing2F
Iterator::Model???V???!??3???A@)7l[?? ??1???l%s1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateDio??ɤ?!?Wtύ?B@)]3?f???1???]n1@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?.񝘕?!?]?y?3@)@x?=\??1۸nʿ0@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??(yu???!?;f?P@)??q?@Hv?1??)??S@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??? ?i?!?/%]y?@)??? ?i?1?/%]y?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap+??ݓ???!9?M??C@)?????W?1Q??????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?64.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?:?Ď?@I?)?)T@QgQ%7?)1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	-?????-?????!-?????      ??!       "	j????4??j????4??!j????4??*      ??!       2	e??????e??????!e??????:	0e????@0e????@!0e????@B      ??!       J	??۞ ?????۞ ???!??۞ ???R      ??!       Z	??۞ ?????۞ ???!??۞ ???b      ??!       JGPUY?:?Ď?@b q?)?)T@ygQ%7?)1@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulG?h?C??!G?h?C??"C
%gradient_tape/sequential/dense/MatMulMatMul#?vYmC??!??﷠C??0"E
)gradient_tape/sequential/dense_5/MatMul_1MatMul??????! ????J??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMulr??ʅ??!\-{𬨡?"F
*gradient_tape/sequential/dense_10/MatMul_1MatMulr??ʅ??!??c???"F
*gradient_tape/sequential/dense_12/MatMul_1MatMulr??ʅ??!??o???"F
*gradient_tape/sequential/dense_13/MatMul_1MatMulr??ʅ??!poeHѲ??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMulr??ʅ??!fm?]۰?"F
*gradient_tape/sequential/dense_15/MatMul_1MatMulr??ʅ??!#??ܲ?"F
*gradient_tape/sequential/dense_17/MatMul_1MatMulr??ʅ??!??'?z޴?Q      Y@Y???L6@aϺ??lS@q?\??a<!@y7???Z??"?

both?Your program is POTENTIALLY input-bound because 16.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?64.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 