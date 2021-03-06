?	W??: @W??: @!W??: @      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCW??: @??A{?1??1?ᱟ?R??A??=?>t??I?n?1 @rEagerKernelExecute 0*	?Q??+V@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatAJ?i???!g?h:@)?2???y??1dk.??r5@:Preprocessing2U
Iterator::Model::ParallelMapV2T??????!KT?M?r2@)T??????1KT?M?r2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?ȓ?k&??!S?ab?&1@)?ȓ?k&??1S?ab?&1@:Preprocessing2F
Iterator::Model??x]??!>EA@)}????9??1ݯ??p0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??H.?!??!?Ջ=s
@@)??????19?k14?-@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip)?Ǻ???!??`?q]P@)?a???r?1`?Nfz@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor/n??r?!?~_??@)/n??r?1?~_??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap????Ϟ?!????*?@@)t^c???Z?1???????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?65.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI??8???T@Q;?3]1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??A{?1????A{?1??!??A{?1??      ??!       "	?ᱟ?R???ᱟ?R??!?ᱟ?R??*      ??!       2	??=?>t????=?>t??!??=?>t??:	?n?1 @?n?1 @!?n?1 @B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q??8???T@y;?3]1@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul????8R??!????8R??"E
)gradient_tape/sequential/dense_7/MatMul_1MatMul?n??ˀ?!J(???"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul??f?~?!?0E?0??"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul??f?~?!? 9?hi??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul??f?~?!?٧u:??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul??f?~?!f?zj???"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul??f?~?!??-?ܫ?"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul??f?~?!ڼ??"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul??f?~?!+?.YT???"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul??f?~?!Sc?ڧ??Q      Y@Y?18??5@a??18?S@q?$M?$@yvn?????"?
both?Your program is POTENTIALLY input-bound because 16.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?65.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?10.0% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B 