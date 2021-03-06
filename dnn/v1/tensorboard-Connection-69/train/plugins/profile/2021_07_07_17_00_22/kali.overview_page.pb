?	-]?6b@-]?6b@!-]?6b@	????????????????!????????"?
=type.googleapis.com/tensorflow.profiler.PerGenericStepDetailsL-]?6b@`?U,~???1?B?O?=??A?U?p??IGY???N@Y?Ēr?9??rEagerKernelExecute 0*	?G?znr@2K
Iterator::Model::Map???҇.??!?4g??R@)??E?>??1??O;W$L@:Preprocessing2Z
#Iterator::Model::Map::ParallelMapV2??6???!??2&_a2@)??6???1??2&_a2@:Preprocessing2q
:Iterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat???S㥛?!\?8P"@)?I+???1??ŷ?@:Preprocessing2?
TIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate[0]::TensorSlice?????=??!???x}@)?????=??1???x}@:Preprocessing2{
DIterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap[0]::Concatenate?a?????!?Be=?(@)3??bb???1C`?Qw?@:Preprocessing2_
(Iterator::Model::Map::ParallelMapV2::ZipYQ?i>??!.h?fo*8@)A??h:;y?1??=? @:Preprocessing2}
FIterator::Model::Map::ParallelMapV2::Zip[1]::ForeverRepeat::FromTensor{?G?zt?!??/?2!??){?G?zt?1??/?2!??:Preprocessing2F
Iterator::Models?]?????!?eV&d?R@)lxz?,Cl?1<p?/???:Preprocessing2k
4Iterator::Model::Map::ParallelMapV2::Zip[0]::FlatMap????ׁ??!}?yM?)@)?=\r?)]?1??k#?P??:Preprocessing:?
]Enqueuing data: you may want to combine small input data chunks into fewer but larger chunks.
?Data preprocessing: you may increase num_parallel_calls in <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#map" target="_blank">Dataset map()</a> or preprocess the data OFFLINE.
?Reading data from files in advance: you may tune parameters in the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch size</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave cycle_length</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer_size</a>)
?Reading data from files on demand: you should read data IN ADVANCE using the following tf.data API (<a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#prefetch" target="_blank">prefetch</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/Dataset#interleave" target="_blank">interleave</a>, <a href="https://www.tensorflow.org/api_docs/python/tf/data/TFRecordDataset#class_tfrecorddataset" target="_blank">reader buffer</a>)
?Other data reading or processing: you may consider using the <a href="https://www.tensorflow.org/programmers_guide/datasets" target="_blank">tf.data API</a> (if you are not using it now)?
:type.googleapis.com/tensorflow.profiler.BottleneckAnalysis?
both?Your program is POTENTIALLY input-bound because 16.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).high"?64.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.*no9????????I]6??nT@Q??????1@Zno>Look at Section 3 for the breakdown of input time on the host.B?
@type.googleapis.com/tensorflow.profiler.GenericStepTimeBreakdown?
	`?U,~???`?U,~???!`?U,~???      ??!       "	?B?O?=???B?O?=??!?B?O?=??*      ??!       2	?U?p???U?p??!?U?p??:	GY???N@GY???N@!GY???N@B      ??!       J	?Ēr?9???Ēr?9??!?Ēr?9??R      ??!       Z	?Ēr?9???Ēr?9??!?Ēr?9??b      ??!       JGPUY????????b q]6??nT@y??????1@?"C
%gradient_tape/sequential/dense/MatMulMatMul^UO??_??!^UO??_??0"F
*gradient_tape/sequential/dense_19/MatMul_1MatMulA??׀?!б6Ύ???"F
*gradient_tape/sequential/dense_13/MatMul_1MatMul?????~?!????C??"E
)gradient_tape/sequential/dense_2/MatMul_1MatMul?????~?!???.?u??"E
)gradient_tape/sequential/dense_1/MatMul_1MatMulH??#;?~?!l?Q??I??"F
*gradient_tape/sequential/dense_11/MatMul_1MatMulH??#;?~?!5&?????"F
*gradient_tape/sequential/dense_14/MatMul_1MatMulH??#;?~?!?WH\}???"F
*gradient_tape/sequential/dense_15/MatMul_1MatMulH??#;?~?!ǉ??dů?"F
*gradient_tape/sequential/dense_16/MatMul_1MatMulH??#;?~?!?]??̱?"F
*gradient_tape/sequential/dense_17/MatMul_1MatMulH??#;?~?!???ę???Q      Y@Y|?p? 7@a?`???7S@q@??a?Y@yc??qG???"?

both?Your program is POTENTIALLY input-bound because 16.6% of the total step time sampled is spent on 'All Others' time (which could be due to I/O or Python execution or both).b
`input_pipeline_analyzer (especially Section 3 for the breakdown of input operations on the Host)Q
Otf_data_bottleneck_analysis (find the bottleneck in the tf.data input pipeline)m
ktrace_viewer (look at the activities on the timeline of each Host Thread near the bottom of the trace view)"O
Mtensorflow_stats (identify the time-consuming operations executed on the GPU)"U
Strace_viewer (look at the activities on the timeline of each GPU in the trace view)*?
?<a href="https://www.tensorflow.org/guide/data_performance_analysis" target="_blank">Analyze tf.data performance with the TF Profiler</a>*y
w<a href="https://www.tensorflow.org/guide/data_performance" target="_blank">Better performance with the tf.data API</a>2?
=type.googleapis.com/tensorflow.profiler.GenericRecommendation?
high?64.7 % of the total step time sampled is spent on 'Kernel Launch'. It could be due to CPU contention with tf.data. In this case, you may try to set the environment variable TF_GPU_THREAD_MODE=gpu_private.no*?Only 0.0% of device computation is 16 bit. So you might want to replace more 32-bit Ops by 16-bit Ops to improve performance (if the reduced accuracy is acceptable).2no:
Refer to the TF2 Profiler FAQ2"Nvidia GPU (Ampere)(: B 