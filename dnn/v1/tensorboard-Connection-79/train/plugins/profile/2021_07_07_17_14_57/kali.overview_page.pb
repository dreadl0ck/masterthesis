?	?.oת@?.oת@!?.oת@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?.oת@???mn???13?ٲ|??A????????If???-?@rEagerKernelExecute 0*	??Q??T@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?L2r???!???G?}8@)X?eS???1???ބ}3@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????E??!?j|?E2@)????E??1?j|?E2@:Preprocessing2U
Iterator::Model::ParallelMapV2?ȓ?k&??!8???22@)?ȓ?k&??18???22@:Preprocessing2F
Iterator::Model)?*????!r??ʋA@)???Q????1?????0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??V?I???!??^r?Q@@)Է?鲘??1????*?,@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip-????ƫ?!?p?:P@)?x?s?1?R???Z@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???4q?!\8??9@)???4q?1\8??9@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??j+????!4I?p?IA@)????ŊZ?1?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 22.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?52.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?-???R@Q?H?7?8@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???mn??????mn???!???mn???      ??!       "	3?ٲ|??3?ٲ|??!3?ٲ|??*      ??!       2	????????????????!????????:	f???-?@f???-?@!f???-?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?-???R@y?H?7?8@?"C
%gradient_tape/sequential/dense/MatMulMatMul??ȸG+??!??ȸG+??0"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul??bi????!??zi??"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul??bi????!?7?EP???"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul?n?3"H~?!??bi????"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?n?3"H~?!u?ᯰp??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul?n?3"H~?!H%a??9??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?n?3"H~?!S?<???"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul?n?3"H~?!??_??˯?"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul?n?3"H~?!aW??`ʱ?"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?n?3"H~?!K?.㮳?Q      Y@Y?18??5@a??18?S@qAΐ7??@y?׹?c??"?

both?Your program is POTENTIALLY input-bound because 22.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?52.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 