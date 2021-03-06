?	?:?? ?@?:?? ?@!?:?? ?@	??.??i????.??i??!??.??i??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL?:?? ?@??j???1]R?????A?\???I??sb?@Y? ?rh???rEagerKernelExecute 0*	֣p=
?l@2K
Iterator::Model::Map?^)????!{?S?cS@)??:M??1ْgiGQ@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?ܵ?|Г?!?bWm? @)?ܵ?|Г?1?bWm? @:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?Q????!?y?8v?@)?aod??1d?P@I?@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice}\*????!4H?Y??@)}\*????14H?Y??@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?ԕ??<??!hm?\Q?$@)UMu???1??N_?r@:Preprocessing2F
Iterator::Model?yS?
c??!H!????S@)?kC?8s?1?y?OB? @:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip???=????!?z???`4@)?6?ُq?1?&??`??:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor?I+?f?!?-???,??)?I+?f?1?-???,??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap????????!??:?%@)
K<?l?U?1?i?????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 15.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?64.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9??.??i??I??????S@QO???~2@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	??j?????j???!??j???      ??!       "	]R?????]R?????!]R?????*      ??!       2	?\????\???!?\???:	??sb?@??sb?@!??sb?@B      ??!       J	? ?rh???? ?rh???!? ?rh???R      ??!       Z	? ?rh???? ?rh???!? ?rh???b      ??!       JGPUY??.??i??b q??????S@yO???~2@?"7
sequential/dense_6/MatMulMatMul? Z??V??!? Z??V??0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulH?߁?!?-~2ZF??"E
)gradient_tape/sequential/dense_5/MatMul_1MatMulՃ??}?!Qg?h\??"C
%gradient_tape/sequential/dense/MatMulMatMul)?"??}?!?*???0"E
)gradient_tape/sequential/dense_1/MatMul_1MatMul)?"??}?!??H?Ϊ?"F
*gradient_tape/sequential/dense_10/MatMul_1MatMul)?"??}?!?w?fч??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMul)?"??}?!3i?Bz ??"F
*gradient_tape/sequential/dense_12/MatMul_1MatMul)?"??}?!???????"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul)?"??}?!??a?ٴ?"F
*gradient_tape/sequential/dense_14/MatMul_1MatMul)?"??}?!\?:?.???Q      Y@Y|?p? 7@a?`???7S@q?=?a@yP7?}E??"?

both?Your program is POTENTIALLY input-bound because 15.2% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?64.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 