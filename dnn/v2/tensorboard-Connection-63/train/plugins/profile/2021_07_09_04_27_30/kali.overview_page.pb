?	??t^(@??t^(@!??t^(@      ??!       "?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsC??t^(@6?$#ga??1X歺?@A/?o??e??I???9]@rEagerKernelExecute 0*	ףp=
?]@2F
Iterator::Model?W?L???!??˛?A@)?\?].???1g???6?6@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?}ƅ!??!?D?QE?4@)?}ƅ!??1?D?QE?4@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeatS??.???!?^?LP8@)?bE?a??1kTѳ?3@:Preprocessing2U
Iterator::Model::ParallelMapV2X??j??!CCf_F*@)X??j??1CCf_F*@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenatel?`q8??!?@?zys?@)9??v????1??[Rh?%@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?y?):???!??2P@);?f???1;±i?@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?-???=v?!??'?q2@)?-???=v?1??'?q2@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap??	?8??!Yƃ@ڊ@@)?q????_?1???b?#??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 10.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?57.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*noIs??IQ@Q3??;???@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	6?$#ga??6?$#ga??!6?$#ga??      ??!       "	X歺?@X歺?@!X歺?@*      ??!       2	/?o??e??/?o??e??!/?o??e??:	???9]@???9]@!???9]@B      ??!       J      ??!       R      ??!       Z      ??!       b      ??!       JGPUb qs??IQ@y3??;???@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits?'q?F??!?'q?F??"!
Cast_49Cast?A+???l?!??]?ۓ?"!
Cast_50Cast?A+???l?!A?{??q??"!
Cast_51Cast?A+???l?!{`????"&
	Greater_8Greater?A+???l?!?Ȇ˝??"-
LogicalAnd_14
LogicalAnd?A+???l?!x????"-
LogicalAnd_15
LogicalAnd?A+???l?!??H"????"-
LogicalAnd_12
LogicalAnd_?ҡzj?!??r?????"-
LogicalAnd_13
LogicalAnd_?ҡzj?!A??\*4??"F
*gradient_tape/sequential/dense_67/MatMul_1MatMul_?ҡzj?!?p?y?ۧ?Q      Y@Y???cj`'@a?O???V@qB?B?B?'@y??,=??"?
both?Your program is POTENTIALLY input-bound because 10.5% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?57.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQb?11.9% of Op time on the host used eager execution. Performance could be improved with <a href="https://www.tensorflow.org/guide/function" target="_blank">tf.function.</a>2"Nvidia GPU (Ampere)(: B 