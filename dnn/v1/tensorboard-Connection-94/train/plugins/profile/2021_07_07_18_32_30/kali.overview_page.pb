?	??^??w@??^??w@!??^??w@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC??^??w@öE????1?? ?Xt??A??+?`p??Ic??ɡ@rEagerKernelExecute 0*	?p=
?CX@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatS\U?]??!?x???=<@)Ϡ?????1??bd?5@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??X???!A?y/1@)??X???1A?y/1@:Preprocessing2U
Iterator::Model::ParallelMapV2Pp??Ӑ?!?Zn|?0@)Pp??Ӑ?1?Zn|?0@:Preprocessing2F
Iterator::ModelX??0_^??!??Tx@@)?=~oӏ?1Ā;8?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateX9??v???!^??b??@)G=D?;???1?!? ??-@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???mz?!?Qv)v@@)???mz?1?Qv)v@@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??K?????!??p??P@)??~j?ts?1ƜTLU?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?Sr3ܠ?!U¬A??@@);?f??_?1?h7????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 27.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?52.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?G??S@Q???ʠC4@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	öE????öE????!öE????      ??!       "	?? ?Xt???? ?Xt??!?? ?Xt??*      ??!       2	??+?`p????+?`p??!??+?`p??:	c??ɡ@c??ɡ@!c??ɡ@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?G??S@y???ʠC4@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulrMF???!rMF???"C
%gradient_tape/sequential/dense/MatMulMatMul????{??!?	.G??0"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul??ʃ??!?? s9??"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul??ʃ??!w?	???"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul??ʃ??!o!????"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul??ʃ??!g1E?J??"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul??ʃ??!_A?u{??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul??ʃ??!??r?U}??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul??ʃ??!??4?y??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul??ʃ??!???p?v??Q      Y@Y???L6@aϺ??lS@q???[?@y?c4?n???"?

both?Your program is POTENTIALLY input-bound because 27.1% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?52.2 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 