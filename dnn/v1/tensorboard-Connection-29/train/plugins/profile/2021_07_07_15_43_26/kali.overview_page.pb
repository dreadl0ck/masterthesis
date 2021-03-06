?	?>??@?>??@!?>??@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?>??@P?Lۿ2??1???Du??A?G??Q??I??hU@rEagerKernelExecute 0*	
ףp=?V@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat5)?^Ҙ?!???m??:@)£?#????1?iG?\5@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice5?l?/??!Q<6~*?3@)5?l?/??1Q<6~*?3@:Preprocessing2U
Iterator::Model::ParallelMapV2?n/i?֑?!v?,Fl)3@)?n/i?֑?1v?,Fl)3@:Preprocessing2F
Iterator::ModelTol?`??!y?LG??B@)&p?n????1|BmH?+2@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate='?o|???!??Ik
?;@)??<?~?10A'ڿ? @:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip%̴?++??!???KUO@)?????gv?1y?ɬX@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???"?s?!6ږ15@)???"?s?16ږ15@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???????!f?5?V?=@)?x#??_?1??_gc@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?63.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIHzL)hT@Q??Z_?3@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	P?Lۿ2??P?Lۿ2??!P?Lۿ2??      ??!       "	???Du?????Du??!???Du??*      ??!       2	?G??Q???G??Q??!?G??Q??:	??hU@??hU@!??hU@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qHzL)hT@y??Z_?3@?"V
5gradient_tape/sequential/dense_19/BiasAdd/BiasAddGradBiasAddGrad????(Ԍ?!????(Ԍ?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul-?C????!?w????"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul??%YY~?!?|[
?X??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul??%YY~?!???)????"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul??%YY~?!?£N?¦?"C
%gradient_tape/sequential/dense/MatMulMatMul?????X~?!??,卪?0"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul?????X~?!?|[
?X??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?????X~?!??t??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?????X~?!?	?????"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul?????X~?!z??Qݴ?Q      Y@Y?18??5@a??18?S@q}??^!@y?L??<t??"?

both?Your program is POTENTIALLY input-bound because 16.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?63.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 