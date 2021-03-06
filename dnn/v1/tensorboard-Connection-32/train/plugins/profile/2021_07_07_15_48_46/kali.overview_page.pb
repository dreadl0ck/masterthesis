?	j??4Ӆ!@j??4Ӆ!@!j??4Ӆ!@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCj??4Ӆ!@??`???1???{l??A??3?Ib??I??Q?(?@rEagerKernelExecute 0*	?G?zZ@2U
Iterator::Model::ParallelMapV2 ?g?????!N?@??@@) ?g?????1N?@??@@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatk?w??#??!?pI??7@)
??ϛ???1?????33@:Preprocessing2F
Iterator::ModelV?F?????!i=???F@)W?}W???1i঺?+*@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?A`??"??!?'??])@)?A`??"??1?'??])@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??MbX??!?A?%??7@)Zd;?O???1`?jY&@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip!????=??!???LUK@)g??j+?w?1Gjf@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?m?2dr?!o?1@)?m?2dr?1o?1@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap}????Y??!?tG?0?9@)X??j`?1?.?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 12.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?71.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?vj'R U@Q?I??n?/@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??`?????`???!??`???      ??!       "	???{l?????{l??!???{l??*      ??!       2	??3?Ib????3?Ib??!??3?Ib??:	??Q?(?@??Q?(?@!??Q?(?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?vj'R U@y?I??n?/@?"C
%gradient_tape/sequential/dense/MatMulMatMul????9??!????9??0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul????9??!????9??"F
*gradient_tape/sequential/dense_10/MatMul_1MatMulM~5A?_~?!???
љ?"E
)gradient_tape/sequential/dense_7/MatMul_1MatMulM~5A?_~?!Y#??????"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul??o?_~?!??oe???"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul??o?_~?!??KIL??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul??o?_~?!?'-??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul??o?_~?!M????"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul??o?_~?!E?o?ױ?"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul??o?_~?!c?]콳?Q      Y@Y?18??5@a??18?S@q????)@y1?ELs???"?
both?Your program is POTENTIALLY input-bound because 12.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?71.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?12.5% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B 