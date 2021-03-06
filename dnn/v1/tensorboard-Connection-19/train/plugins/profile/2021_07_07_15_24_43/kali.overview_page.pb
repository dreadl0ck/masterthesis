?	??PMIv@??PMIv@!??PMIv@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC??PMIv@?l??????1B
?B????A???Ğ?I????%@rEagerKernelExecute 0*	>
ףp-n@2K
Iterator::Model::Map????????!?????jQ@)???&??1?U????N@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat??X???!XH4?x+@)[|
????1pQ 'G%@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2al!?A	??!?)0w?@)al!?A	??1?)0w?@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?Q????!i?gA?$@)?Q????1i?gA?$@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate??Pk?w??!%q/??'@)b?? ????1?2?Ȥ?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor;?f???!??+4??	@);?f???1??+4??	@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip???Hh˱?!?H`??<@)1?߄B|?1?y?w?@:Preprocessing2F
Iterator::Modelp|??%??!???xM?Q@)~t??gyn?1??u???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap֭???7??!?pr(@)1?߄B\?1?y?w???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 15.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?66.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI?}:Z?T@QK	???1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?l???????l??????!?l??????      ??!       "	B
?B????B
?B????!B
?B????*      ??!       2	???Ğ????Ğ?!???Ğ?:	????%@????%@!????%@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q?}:Z?T@yK	???1@?"C
%gradient_tape/sequential/dense/MatMulMatMul0|? ??!0|? ??0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul?\?&?j??!X??s5??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul?y?tު?!????* ??"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul?y?tު?!??+q??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul?y?tު?!??)?????"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul?y?tު?!????(???"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?y?tު?!4?[?????"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul?y?tު?!?(?2pm??"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul?y?tު?!N?Fh??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?y?tު?!????b??Q      Y@Y|?p? 7@a?`???7S@q??{)@y	;?}???"?

both?Your program is POTENTIALLY input-bound because 15.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?66.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 