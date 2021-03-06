?	????$?@????$?@!????$?@	?k?? @?k?? @!?k?? @"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL????$?@??n????1"R?.f??AB?4-???I?$???@Y???)???rEagerKernelExecute 0*	?G?zD^@2Z
#Iterator::Model::ParallelMapV2::Zip???vö?!O ?|\R@)?mQf?L??1???&?=@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice??1ZGU??!??F0/@)??1ZGU??1??F0/@:Preprocessing2U
Iterator::Model::ParallelMapV2"?*??<??!?T?f?k-@)"?*??<??1?T?f?k-@:Preprocessing2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat?f????!??4??1@)X?5?;N??1O?ߕ??+@:Preprocessing2F
Iterator::Model.?!??u??!?~???:@)uv28J^??1Ҩp?S?'@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateʉvR??!?Y??t8@)?J?8????1???#??!@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor???9]s?!?^?O??@)???9]s?1?^?O??@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap???#0??!}???:@)e?z?Fw`?1X6"J*???:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?62.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9?k?? @I(????S@Q	??ʓ2@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??n??????n????!??n????      ??!       "	"R?.f??"R?.f??!"R?.f??*      ??!       2	B?4-???B?4-???!B?4-???:	?$???@?$???@!?$???@B      ??!       J	???)??????)???!???)???R      ??!       Z	???)??????)???!???)???b      ??!       JGPUY?k?? @b q(????S@y	??ʓ2@?"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulWX??!WX??"C
%gradient_tape/sequential/dense/MatMulMatMul?-????!&????0"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul?-????!t$ ?t??"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul?-????!??z$???"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul?-????!???E???"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?-????!P#??f???"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul?-????!)??????"F
*gradient_tape/sequential/dense_16/MatMul_1MatMul?-????!Z?@_TN??"F
*gradient_tape/sequential/dense_17/MatMul_1MatMul?-????!3??dK??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul?-????!?=puH??Q      Y@Y???L6@aϺ??lS@qށ?tn!@y??i?????"?

both?Your program is POTENTIALLY input-bound because 16.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?62.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 