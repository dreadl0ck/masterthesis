?	y??[Yr@y??[Yr@!y??[Yr@	?s?:???s?:??!?s?:??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLy??[Yr@?L2r???1֪]????AF?6?X??I[[x^*?@Y??-?|???rEagerKernelExecute 0*	?p=
??g@2K
Iterator::Model::Map6?U?????!??N??QQ@)~t??gy??1?/t@?CO@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat$???~???!??f?Ԯ+@)<???	.??1??3?t?&@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??4)ݎ?!?y??&?@)??4)ݎ?1?y??&?@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2p_?Q??!??Kq @)p_?Q??1??Kq @:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate#??<??!?!?`y?'@).s?,&6?1??d?@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?M?»??!???<?z=@)?0?*u?1?	?f^?@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?O?I?5s?!?^?8??@)?O?I?5s?1?^?8??@:Preprocessing2F
Iterator::Model?v??/??!????P?Q@)??1ZGUc?1y?0]????:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMapgaO;?5??!]y?)??)@);?f??_?1)?
J?8??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 18.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?58.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?s?:??I_? 7hQS@QOS?tY6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?L2r????L2r???!?L2r???      ??!       "	֪]????֪]????!֪]????*      ??!       2	F?6?X??F?6?X??!F?6?X??:	[[x^*?@[[x^*?@![[x^*?@B      ??!       J	??-?|?????-?|???!??-?|???R      ??!       Z	??-?|?????-?|???!??-?|???b      ??!       JGPUY?s?:??b q_? 7hQS@yOS?tY6@?"C
%gradient_tape/sequential/dense/MatMulMatMul?*??!???!?*??!???0"F
*gradient_tape/sequential/dense_17/MatMul_1MatMulQ????!ls֊ב?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulQ????!?Q
?`??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul6??H??!Q????"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul6??H??!?O&?????"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul6??H??!_?6m?Ҩ?"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul6??H??!?vGɳ??"F
*gradient_tape/sequential/dense_15/MatMul_1MatMul6??H??!6?_]J??"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul6??H??!?N44?:??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul6??H??!???O+??Q      Y@Y|?p? 7@a?`???7S@q??T? @ysR?s??"?

both?Your program is POTENTIALLY input-bound because 18.4% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?58.5 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 