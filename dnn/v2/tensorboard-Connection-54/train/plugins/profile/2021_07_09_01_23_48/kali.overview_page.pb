?	3??30@3??30@!3??30@	\?D???\?D???!\?D???"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL3??30@??x]??1Q?\?m? @AN??oD???I Q??9@Y)#. ?ҹ?rEagerKernelExecute 0*	    p^@2U
Iterator::Model::ParallelMapV2???N?`??!??D???7@)???N?`??1??D???7@:Preprocessing2F
Iterator::Model-?i??&??!
]Y:?E@)xE??????1L9u???3@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat[Υ?????!?J??e6@)f?L2r??1?8L9u?1@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice????	???!ǊH?0@)????	???1ǊH?0@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?0????!??^Դ;@)5?l?/??1?',te?$@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::ZipHĔH????!?????8L@)?C4???y?1??8#?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?+e?Xw?!&???@)?+e?Xw?1&???@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???????!?????<@)"??u??a?1???.A??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 15.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?53.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9\?D???I??g??fQ@Qr??=@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??x]????x]??!??x]??      ??!       "	Q?\?m? @Q?\?m? @!Q?\?m? @*      ??!       2	N??oD???N??oD???!N??oD???:	 Q??9@ Q??9@! Q??9@B      ??!       J	)#. ?ҹ?)#. ?ҹ?!)#. ?ҹ?R      ??!       Z	)#. ?ҹ?)#. ?ҹ?!)#. ?ҹ?b      ??!       JGPUY\?D???b q??g??fQ@yr??=@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?ݺP????!?ݺP????"!
Cast_52Cast?Jä3z?!Y???]!??"&
	Greater_8Greater?Jä3z?!?A???g??"-
LogicalAnd_13
LogicalAnd?Jä3z?!?&????"!
Cast_49Castn1y?/x?!??????"!
Cast_50Castn1y?/x?!m?6湭?"!
Cast_51Castn1y?/x?!????_??"-
LogicalAnd_12
LogicalAndn1y?/x?!???r????"-
LogicalAnd_15
LogicalAndn1y?/x?!?4??e??"C
%gradient_tape/sequential/dense/MatMulMatMuln1y?/x?!??ʹ???0Q      Y@Y???tϵ1@a?"??T@qu?.e0@y????????"?

both?Your program is POTENTIALLY input-bound because 15.7% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?53.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 