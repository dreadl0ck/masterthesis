?	??jHܛ!@??jHܛ!@!??jHܛ!@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC??jHܛ!@h??'???1??+d.??A??vۅ???Ih?
?O@rEagerKernelExecute 0*	
ףp=?a@2U
Iterator::Model::ParallelMapV2g'???թ?!???G?A@)g'???թ?1???G?A@:Preprocessing2F
Iterator::Model?l?????!3&???J@)?c#????1,????x0@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?$#gaO??!???7?2@)?-s?,&??1e?n??.@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice82??????!?k?g4+@)82??????1?k?g4+@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate*??g\8??!?q???V6@)9(a??_??1
xq?y!@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?? ?rh??!??Ur[?G@)P?}:3??1GH8ZO@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensorMۿ?Ҥt?!?yC/n@)Mۿ?Ҥt?1?yC/n@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??m??!?$???7@)?"??\?1?@?i???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 13.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?71.9 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIq???!kU@Qzd????,@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	h??'???h??'???!h??'???      ??!       "	??+d.????+d.??!??+d.??*      ??!       2	??vۅ?????vۅ???!??vۅ???:	h?
?O@h?
?O@!h?
?O@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qq???!kU@yzd????,@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits_???Σ?!_???Σ?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul??tq6???!??H~?q??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul????܀?!?U2??"C
%gradient_tape/sequential/dense/MatMulMatMul䁁ۥۀ?![?2?o??0"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul䁁ۥۀ?!H???C???"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul䁁ۥۀ?!??i?????"E
)gradient_tape/sequential/dense_3/MatMul_1MatMul䁁ۥۀ?!???d-¶?"E
)gradient_tape/sequential/dense_4/MatMul_1MatMul䁁ۥۀ?!?J ?ݸ?"E
)gradient_tape/sequential/dense_6/MatMul_1MatMul䁁ۥۀ?!8L?????"E
)gradient_tape/sequential/dense_7/MatMul_1MatMul䁁ۥۀ?!t|*????Q      Y@Y?h???7@a{?e?@	S@q?q-%`@y?Z?&3W??"?

both?Your program is POTENTIALLY input-bound because 13.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
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