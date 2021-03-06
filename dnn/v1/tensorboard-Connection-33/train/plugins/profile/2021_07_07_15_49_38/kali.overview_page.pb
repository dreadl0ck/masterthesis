?	??lY?!@??lY?!@!??lY?!@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC??lY?!@?(?'?$??1??$??I??A|??Pk???I????dY@rEagerKernelExecute 0*	p=
ף?[@2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice`YiR
???!?a??:@)`YiR
???1?a??:@:Preprocessing2U
Iterator::Model::ParallelMapV23?f?ӓ?!??*?f1@)3?f?ӓ?1??*?f1@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??"??J??!??3@)/4?i????1?3H-?]0@:Preprocessing2F
Iterator::ModelLl>???! X?&¿@@)e???V??1:??"?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate???s????!J?^h,D@)B??=??1!?=??,@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zipp%;6???!?S???P@)#-??#?v?15p?l?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?=\r?)m?!?P???	@)?=\r?)m?1?P???	@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMapEGr????!??d??D@)d?????]?1۩?xt??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 11.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?72.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIV"???U@QM?&???/@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?(?'?$???(?'?$??!?(?'?$??      ??!       "	??$??I????$??I??!??$??I??*      ??!       2	|??Pk???|??Pk???!|??Pk???:	????dY@????dY@!????dY@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qV"???U@yM?&???/@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulwW"i?ۃ?!wW"i?ۃ?"C
%gradient_tape/sequential/dense/MatMulMatMul?M>?9̀?!?R0ToT??0"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul???h?~?!???Y????"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul???h?~?!t???Q͠?"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul???h?~?!GN?ޞ??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul???h?~?!??
?kp??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul???h?~?!0?Ƿ?A??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul???h?~?!b2B??	??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul???h?~?!???^????"E
)gradient_tape/sequential/dense_8/MatMul_1MatMul???h?~?!????O۳?Q      Y@Y?18??5@a??18?S@qw?A`<"@yRJ??????"?

both?Your program is POTENTIALLY input-bound because 11.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?72.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 