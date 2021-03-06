?	?2???&@?2???&@!?2???&@	u??@ӕ@u??@ӕ@!u??@ӕ@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?2???&@
J?ʽ???1???????A??8Q???Ij?֍?@YV???5??rEagerKernelExecute 0*	??Q??[@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat3???yS??!Լo?}>@)G=D?;???1?Iy??9@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice333333??!/G???0@)333333??1/G???0@:Preprocessing2U
Iterator::Model::ParallelMapV2????^???!?T8?av0@)????^???1?T8?av0@:Preprocessing2F
Iterator::Model	?/?
??!{B?Y???@)Tol?`??1????.@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateGɫsȞ?!ݍ?;@)(,???)??1?+!?a$@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??V?c??!b/?)?Q@)?HP?x?1ꄛ?f?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??d?`T??!!?B!@@)??v?ӂw?1??L?;?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor{?G?zt?!?)?q@){?G?zt?1?)?q@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 23.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?51.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9u??@ӕ@It#?l?R@Q"?4{?`4@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	
J?ʽ???
J?ʽ???!
J?ʽ???      ??!       "	??????????????!???????*      ??!       2	??8Q?????8Q???!??8Q???:	j?֍?@j?֍?@!j?֍?@B      ??!       J	V???5??V???5??!V???5??R      ??!       Z	V???5??V???5??!V???5??b      ??!       JGPUYu??@ӕ@b qt#?l?R@y"?4{?`4@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits????????!????????"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul????????!S?v??٨?"C
%gradient_tape/sequential/dense/MatMulMatMulDg?[2D??!$?i1???0"8
sequential/dense_19/SoftmaxSoftmaxDg?[2D??!z:.d~??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul?]?Ny?!?d???"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul?g<??My?!'?O˧??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?g<??My?!??ˉ?<??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul?g<??My?!m?Ѷ?"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?g<??My?!?33?Yf??"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul?g<??My?!??94???Q      Y@Yr???u7@a}c??"S@q????z @y?!A?=??"?

both?Your program is POTENTIALLY input-bound because 23.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?51.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 