?	??O???!@??O???!@!??O???!@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC??O???!@?Q??????1?P????A???????I???$?@rEagerKernelExecute 0*	???Q?[@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat5A?} R??!Œ ??7@)E???V	??1˳ *)G3@:Preprocessing2U
Iterator::Model::ParallelMapV2?0?*??!uV2?-t2@)?0?*??1uV2?-t2@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??n????!mާ?d2@)??n????1mާ?d2@:Preprocessing2F
Iterator::Model?0??????!??7'B@)?uT5A??1??? ?1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate????g???!rW?hI??@)2r??Ï?1	??_??+@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip=
ףp=??!fi????O@)?_?5?!z?1?TCz?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?/???"u?!?{?Y}@)?/???"u?1?{?Y}@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??£???!l?[?	A@)??ZӼ?d?16???OF@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 11.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?72.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI7R	U@Q??Gn?/@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?Q???????Q??????!?Q??????      ??!       "	?P?????P????!?P????*      ??!       2	??????????????!???????:	???$?@???$?@!???$?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q7R	U@y??Gn?/@?"-
IteratorGetNext/_4_Recv.+?Y???!.+?Y???"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul??Ȓ~??!X?h@v??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul?ƫ?????!τ?????"C
%gradient_tape/sequential/dense/MatMulMatMulZv???~??!?????!??0"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul?R??}?!U??Xk???"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul?K!??}?!Ƴ%???"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?K!??}?!8}0??`??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul?K!??}?!U#?RL??"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?K!??}?!?4)???"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul?K!??}?!???д?Q      Y@Y?18??5@a??18?S@q?-??ʈ%@y??	In??"?
both?Your program is POTENTIALLY input-bound because 11.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?72.3 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?10.8% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B 