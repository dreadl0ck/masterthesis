?	???A_?@???A_?@!???A_?@	?7 5?!???7 5?!??!?7 5?!??"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL???A_?@Bx?q????14J?????Ay?@e????I??#?@Y?ֈ`\??rEagerKernelExecute 0*	q=
ף?n@2K
Iterator::Model::Map?4?8EG??!1r??Q@)?sF????1??墧MN@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2?
F%u??!Iz=?$@)?
F%u??1Iz=?$@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeatZ?!?[??!FP?n?`'@),+MJA???1A6???"@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice+??????!?h??@)+??????1?h??@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::ConcatenateX??j??!?p??b?)@){???Ɋ?1?9T?T@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::Zip?`???p??!Լ???;@)???)Wxw?1N????@:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensoro??\??v?!?<??@)o??\??v?1?<??@:Preprocessing2F
Iterator::Model?h????!???<R@)?}:3Pi?16???I(??:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap????E??!GG=?+@)'??@jc?1?c?X????:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 25.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?43.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9@7 5?!??I??0??fQ@Q	J?S?<@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	Bx?q????Bx?q????!Bx?q????      ??!       "	4J?????4J?????!4J?????*      ??!       2	y?@e????y?@e????!y?@e????:	??#?@??#?@!??#?@B      ??!       J	?ֈ`\???ֈ`\??!?ֈ`\??R      ??!       Z	?ֈ`\???ֈ`\??!?ֈ`\??b      ??!       JGPUY@7 5?!??b q??0??fQ@y	J?S?<@?"m
:categorical_crossentropy/softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogitsO?m??7??!O?m??7??"!
Cast_52Cast???????!Ǝ????"&
	Greater_8Greater???????!թ??O???"F
*gradient_tape/sequential/dense_19/MatMul_1MatMul???????!?Fh????"!
Cast_49Cast????B??!Nמ?oǳ?"!
Cast_51Cast????B??!?g??????"-
LogicalAnd_12
LogicalAnd????B??!R??/??"-
LogicalAnd_13
LogicalAnd????B??!ԈB??@??"-
LogicalAnd_14
LogicalAnd????B??!Vy??h??"-
LogicalAnd_15
LogicalAnd????B??!ة??O???Q      Y@Y'oe??8@a?9?&?R@q?|PW@y?c??y??"?

both?Your program is POTENTIALLY input-bound because 25.3% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?43.8 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 