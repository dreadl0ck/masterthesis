?	vR_?v*@vR_?v*@!vR_?v*@	B?8B @B?8B @!B?8B @"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsLvR_?v*@?^)ː??18gDi???A?????"??IX??e@Y???i??rEagerKernelExecute 0*	???(\oW@2l
5Iterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat??ޫV&??!פ?HgS=@)????7???1;	y(u?7@:Preprocessing2?
OIterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?L2r???!???]E?5@)?L2r???1???]E?5@:Preprocessing2U
Iterator::Model::ParallelMapV2y?&1???!?????-@)y?&1???1?????-@:Preprocessing2F
Iterator::Model?[='?o??!???ޟ=@)??Sr3??1?K9?a-@:Preprocessing2v
?Iterator::Model::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate;?f????!`??^?x@@)o/i??Q??1?????5&@:Preprocessing2Z
#Iterator::Model::ParallelMapV2::Zip?a??h???!:WM?Q@)??{w?1?`
@:Preprocessing2x
AIterator::Model::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor8?*5{?u?!pnƁȇ@)8?*5{?u?1pnƁȇ@:Preprocessing2f
/Iterator::Model::ParallelMapV2::Zip[0]::FlatMap?X?Ѡ?!?4??A@)??V?c#`?1$??`?? @:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 22.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?53.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9B?8B @I???,S@Q5Y??_I5@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	?^)ː???^)ː??!?^)ː??      ??!       "	8gDi???8gDi???!8gDi???*      ??!       2	?????"???????"??!?????"??:	X??e@X??e@!X??e@B      ??!       J	???i?????i??!???i??R      ??!       Z	???i?????i??!???i??b      ??!       JGPUYB?8B @b q???,S@y5Y??_I5@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits֋?)L"??!֋?)L"??"!
Cast_51CastI???????!?܇<^???"&
	Greater_8GreaterI???????!?-'Opʷ?"!
Cast_52Cast??1A?p??!?fM?X??"!
Cast_49Cast>i?{@??!H???????"!
Cast_50Cast>i?{@??!?S	P???"-
LogicalAnd_12
LogicalAnd>i?{@??!ld*?W???"-
LogicalAnd_14
LogicalAnd>i?{@??!?? ?_<??"C
%gradient_tape/sequential/dense/MatMulMatMul>i?{@??!4??Eg???0"E
)gradient_tape/sequential/dense_7/MatMul_1MatMul>i?{@??!??o???Q      Y@Yhq???@@aLǫ(?P@q]?ѷJ?@y?z?`???"?

both?Your program is POTENTIALLY input-bound because 22.8% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?53.4 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 