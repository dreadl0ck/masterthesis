?	??;??@??;??@!??;??@	<iw?@<iw?@!<iw?@"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL??;??@5?Ry;B??1????K??ARf`X??I???`@Yq??Ŧ??rEagerKernelExecute 0*	??Q?&q@2K
Iterator::Model::Map?aod??!?d???R@)?3??7??1?????<Q@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice???0B??!?/?)?C!@)???0B??1?/?)?C!@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat?~?T??!q=,d?!@)????m???1??I+p@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2/?o??e??!QRdW??@)/?o??e??1QRdW??@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate o?ŏ??!????(@){?????1?e:?A?@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip??kCŰ?!?/?QF?7@)Ϡ???u?1N?????:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor7l[?? s?!?h?<t:??)7l[?? s?1?h?<t:??:Preprocessing2F
Iterator::Model?W?????!4?k.S@)??q?@Hf?1??·??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap?»\?w??!????I*@)wJ??\?1Ս~)У??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is MODERATELY input-bound because 5.5% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.high"?54.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*high2t17.6 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.9<iw?@I? ?`?R@Q4??-p6@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	5?Ry;B??5?Ry;B??!5?Ry;B??      ??!       "	????K??????K??!????K??*      ??!       2	Rf`X??Rf`X??!Rf`X??:	???`@???`@!???`@B      ??!       J	q??Ŧ??q??Ŧ??!q??Ŧ??R      ??!       Z	q??Ŧ??q??Ŧ??!q??Ŧ??b      ??!       JGPUY<iw?@b q? ?`?R@y4??-p6@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits[?"D????![?"D????"&
	Greater_8Greater?[?Zfo??!A??ڀ???"!
Cast_49Cast???????!????b??"-
LogicalAnd_13
LogicalAnd??x????!]???:??"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul??x????!?jro??"!
Cast_51Cast9??????!a???????"!
Cast_52Cast9??????!?Y̭uи?"-
LogicalAnd_14
LogicalAnd9??????!oѨ?? ??"-
LogicalAnd_15
LogicalAnd9??????!?H?Sy1??"-
LogicalAnd_12
LogicalAnd??????!?ŃWQ3??Q      Y@Y'oe??8@a?9?&?R@q???s?@y?ͩ????"?
both?Your program is MODERATELY input-bound because 5.5% of the total step time sampled is waiting for input. Therefore, you would need to reduce both the input time and other time.b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?54.1 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.high"t17.6 % of the total step time sampled is spent on 'All Others' time. This could be due to Python execution overhead.*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 