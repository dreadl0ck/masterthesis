?	?u?+.>@?u?+.>@!?u?+.>@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?u?+.>@3?68}??1E?????A?n??????I?8F?G?@rEagerKernelExecute 0*	     0Y@2F
Iterator::Model??&k?C??!i~????C@)????????1????+9@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceQ??C?R??!???aº2@)Q??C?R??1???aº2@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatZd;?O???!?/2+?6@)e?I)????1?_???a2@:Preprocessing2U
Iterator::Model::ParallelMapV2:̗`??!v?kq:,@):̗`??1v?kq:,@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate* ?3h???!<{???>@)????+??1R?mA?e(@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip????Q??!??|Ty[N@)?-???=v?1{????@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???מYr?!??n?^?@)???מYr?1??n?^?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?ŊLà?!S????@@)??? ?Y?1?6?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 17.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?62.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?p	?S@Q????;4@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	3?68}??3?68}??!3?68}??      ??!       "	E?????E?????!E?????*      ??!       2	?n???????n??????!?n??????:	?8F?G?@?8F?G?@!?8F?G?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?p	?S@y????;4@?"V
5gradient_tape/sequential/dense_19/BiasAdd/BiasAddGradBiasAddGrad/+??_??!/+??_??"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul ??!??!"Ǟ0??"E
)gradient_tape/sequential/dense_9/MatMul_1MatMul?S???~?!??[K????"C
%gradient_tape/sequential/dense/MatMulMatMult-????~?!?x$@?R??0"F
*gradient_tape/sequential/dense_11/MatMul_1MatMult-????~?!???Z/0??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMult-????~?!V?u???"F
*gradient_tape/sequential/dense_14/MatMul_1MatMult-????~?!
??????"F
*gradient_tape/sequential/dense_15/MatMul_1MatMult-????~?!?G?Td??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMult-????~?!??:??R??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMult-????~?!??uovA??Q      Y@Y???L6@aϺ??lS@q??$@y܈??e???"?

both?Your program is POTENTIALLY input-bound because 17.0% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?62.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 