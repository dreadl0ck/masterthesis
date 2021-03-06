?	MK???!@MK???!@!MK???!@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsCMK???!@r???????1}?;l"s??A?f????I?? ?r?@rEagerKernelExecute 0*	?z?GV@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??'???!l?%?l;@)?1=a???1??8??86@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSliceY4?????!*J2?4@)Y4?????1*J2?4@:Preprocessing2U
Iterator::Model::ParallelMapV2???P1Ώ?!F&Ψʤ1@)???P1Ώ?1F&Ψʤ1@:Preprocessing2F
Iterator::Model6׆?q??!p'z?a?@@)?ZӼ???1?(&p?!0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[?? ????!?Yx۳??@)?x???1L?RA-&@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?lscz?r?!xS[>?@)?lscz?r?1xS[>?@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipG ^?/ح?!H??9O?P@)?n???q?1??c;s@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap.???=???!???t??@@)??hUM`?1?ml8@:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 12.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?71.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noILu??.U@Q?U?	?>/@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	r???????r???????!r???????      ??!       "	}?;l"s??}?;l"s??!}?;l"s??*      ??!       2	?f?????f????!?f????:	?? ?r?@?? ?r?@!?? ?r?@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qLu??.U@y?U?	?>/@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?IRe???!?IRe???"C
%gradient_tape/sequential/dense/MatMulMatMul?+e?߮??!@Ws"3??0"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul?}?j9U~?!???pș?"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul?}?j9U~?!?+e?߮??"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul?}?j9U~?!H????y??"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul?}?j9U~?! ??-D??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul?}?j9U~?!??{???"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul?}?j9U~?!pj?I|ٯ?"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul?}?j9U~?!???ұ?"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul?}?j9U~?!?IRe???Q      Y@Y?18??5@a??18?S@q?H???@y>?۔???"?

both?Your program is POTENTIALLY input-bound because 12.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?71.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 