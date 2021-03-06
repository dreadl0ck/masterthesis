?	?O?޼!@?O?޼!@!?O?޼!@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?O?޼!@=?Е? @1??S㥛??A??Q???I?[>???@rEagerKernelExecute 0*	??Q?UW@2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?-???=??!?0вE7@)?-???=??1?0вE7@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat9??? ??!??t?f>9@)?l??????1`I??w?3@:Preprocessing2F
Iterator::Model)"?*?Ȝ?!?&?ar>@)>????1??2z/@:Preprocessing2U
Iterator::Model::ParallelMapV2y?t????!?r?H?/-@)y?t????1?r?H?/-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateTR'?????!?Cwt?B@)??Bs?F??15??<l~+@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor??Hh˹t?!$??@)??Hh˹t?1$??@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??B???!J??gcxQ@)??6?ُt?1 &
?ڃ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?lscz¢?!?,8 ?C@)???4a?1۾J?8?@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 23.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?60.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noII?xr1U@Q7?8lt.@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	=?Е? @=?Е? @!=?Е? @      ??!       "	??S㥛????S㥛??!??S㥛??*      ??!       2	??Q?????Q???!??Q???:	?[>???@?[>???@!?[>???@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qI?xr1U@y7?8lt.@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?in??!?in??"C
%gradient_tape/sequential/dense/MatMulMatMul/??ۂ?!??夓?0"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul???mI??!F?%j?I??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul???mI??!?~ب)w??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul??)<n?!??])?d??"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul??)<n?!+?⩸R??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul??)<n?!_!h*?@??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul??)<n?!ʫv?#??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul??)<n?!?F????"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul??)<n?!???U???Q      Y@Y???L6@aϺ??lS@q,lB??@y??CXw??"?

both?Your program is POTENTIALLY input-bound because 23.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?60.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 