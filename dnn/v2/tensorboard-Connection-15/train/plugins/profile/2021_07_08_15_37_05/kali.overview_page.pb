?	?Q???@?Q???@!?Q???@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC?Q???@???.Q=??1???z6??A?;FzQ??I?fIm	@rEagerKernelExecute 0*	????̌W@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatcAJ??!?_3.9@)???"???1?ŌK?w4@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?2???y??!M?s??04@)?2???y??1M?s??04@:Preprocessing2F
Iterator::Model?m??4??!?r???B@)??k&?l??1F??T#4@:Preprocessing2U
Iterator::Model::ParallelMapV2"7?????!??????1@)"7?????1??????1@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateF???jH??!&?zR=@)"??u????1~??ZOB"@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip??y???!?P?d O@)??9̗w?1R???fu@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor5?l?/r?!5`I/?@)5?l?/r?15`I/?@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??gyܝ?!?B??>@)A??h:;Y?14Gˆ8(??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 21.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?53.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noI8?0:??R@Q?<߀8@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	???.Q=?????.Q=??!???.Q=??      ??!       "	???z6?????z6??!???z6??*      ??!       2	?;FzQ???;FzQ??!?;FzQ??:	?fIm	@?fIm	@!?fIm	@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb q8?0:??R@y?<߀8@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsS??????!S??????"!
Cast_49Castb?bM??!,?j+袩?"&
	Greater_8Greaterb?bM??!	???e??"-
LogicalAnd_13
LogicalAndb?bM??!n?:nG???"!
Cast_51Castn?:nG???!\?\?Ƴ?"!
Cast_52Castn?:nG???!JG?IY???"-
LogicalAnd_12
LogicalAndn?:nG???!8??7?+??"-
LogicalAnd_14
LogicalAndn?:nG???!&?W%k^??"-
LogicalAnd_15
LogicalAndn?:nG???!C????"C
%gradient_tape/sequential/dense/MatMulMatMuln?:nG???!?? }þ?0Q      Y@Y?h???7@a{?e?@	S@q???+@y?;??w??"?
both?Your program is POTENTIALLY input-bound because 21.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?53.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?13.6% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B 