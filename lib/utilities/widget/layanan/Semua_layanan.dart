import 'package:nagarismart/constans/webname.dart';
import 'package:nagarismart/view/home/kepala_jorong/jorong.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:nagarismart/utilities/widget/layanan.dart';
import 'package:flutter/material.dart';

class SemuaLayanan extends StatefulWidget {
  const SemuaLayanan({super.key});

  @override
  State<SemuaLayanan> createState() => _SemuaLayananState();
}

class _SemuaLayananState extends State<SemuaLayanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(255, 253, 244, 244).withOpacity(0.95),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            const SliverAppBar(
              title: Text('Semua Layanan'),
              centerTitle: true,
              backgroundColor: Colors.white,
              foregroundColor: Colors.red,
              elevation: 3.0,
              automaticallyImplyLeading: true,
              expandedHeight: 0,
              floating: true,
              snap: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Layanan(
                            icon: const Icon(Icons.fact_check),
                            title: 'Surat Online',
                            onTap: () async {
                              final Uri launcer = Uri.parse(
                                batipuahAtehSurat,
                              );
                              launchUrl(
                                launcer,
                                mode: LaunchMode.externalApplication,
                                webViewConfiguration:
                                    const WebViewConfiguration(
                                  enableJavaScript: true,
                                  enableDomStorage: true,
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Layanan(
                            icon: const Icon(Icons.local_library_sharp),
                            title: 'Dukcapil',
                            onTap: () async {
                              final Uri launcer = Uri.parse(
                                oase,
                              );
                              launchUrl(
                                launcer,
                                mode: LaunchMode.externalApplication,
                                webViewConfiguration:
                                    const WebViewConfiguration(
                                  enableJavaScript: true,
                                  enableDomStorage: true,
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Layanan(
                            icon: const Icon(Icons.nature_people_rounded),
                            title: 'NIB/SKU',
                            onTap: () async {
                              final Uri launcer = Uri.parse(
                                oss,
                              );
                              launchUrl(
                                launcer,
                                mode: LaunchMode.externalApplication,
                                webViewConfiguration:
                                    const WebViewConfiguration(
                                  enableJavaScript: true,
                                  enableDomStorage: true,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Layanan(
                            icon: const Icon(Icons.event_repeat_rounded),
                            title: 'Samsat',
                            onTap: () async {
                              final Uri launcer = Uri.parse(
                                samsat,
                              );
                              launchUrl(
                                launcer,
                                mode: LaunchMode.externalApplication,
                                webViewConfiguration:
                                    const WebViewConfiguration(
                                  enableJavaScript: true,
                                  enableDomStorage: true,
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Layanan(
                            icon: const Icon(Icons.volunteer_activism_rounded),
                            title: 'Cek Bansos',
                            onTap: () {
                              final Uri launcer = Uri.parse(
                                bansos,
                              );
                              launchUrl(
                                launcer,
                                mode: LaunchMode.externalApplication,
                                webViewConfiguration:
                                    const WebViewConfiguration(
                                  enableJavaScript: true,
                                  enableDomStorage: true,
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Layanan(
                            icon: const Icon(Icons.whatsapp),
                            title: 'No. Penting  ',
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const Jorong(),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Layanan(
                            icon: const Icon(Icons.payments_rounded),
                            title: 'Cek BSU',
                            onTap: () async {
                              final Uri launcer = Uri.parse(
                                bsu,
                              );
                              launchUrl(
                                launcer,
                                mode: LaunchMode.externalApplication,
                                webViewConfiguration:
                                    const WebViewConfiguration(
                                  enableJavaScript: true,
                                  enableDomStorage: true,
                                ),
                              );
                            },
                          ),
                        ),
                        Expanded(flex: 1, child: Container()),
                        Expanded(flex: 1, child: Container()),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Text(
                      'Segera Hadir...',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Layanan(
                            icon: const Icon(Icons.reduce_capacity_sharp),
                            title: 'KAN',
                            onTap: showMyDialog,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Layanan(
                            icon: const Icon(Icons.villa),
                            title: 'LazizWaf',
                            onTap: showMyDialog,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Layanan(
                            icon: const Icon(Icons.person_pin),
                            title: 'PEMUDA',
                            onTap: showMyDialog,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Layanan(
                            icon: const Icon(Icons.work_outline_rounded),
                            title: 'UMKM',
                            onTap: showMyDialog,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Layanan(
                            icon: const Icon(Icons.personal_injury_outlined),
                            title: 'Linmas',
                            onTap: showMyDialog,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Layanan(
                            icon: const Icon(Icons.spatial_tracking_sharp),
                            title: 'Satgas',
                            onTap: showMyDialog,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Layanan(
                            icon: const Icon(Icons.group_outlined),
                            title: 'Bundo Kanduang',
                            onTap: showMyDialog,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Layanan(
                            icon: const Icon(Icons.shopify_rounded),
                            title: 'E-Pasa Nagari',
                            onTap: showMyDialog,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Layanan(
                            icon: const Icon(Icons.insights_rounded),
                            title: 'BUmNag',
                            onTap: showMyDialog,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showMyDialog() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => AlertDialog(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Oke')),
        ],
        title: const Text('Sabar Ya...'),
        content: const Text('Fitur Ini Akan Segera hadir'),
      ),
    );
  }
}
