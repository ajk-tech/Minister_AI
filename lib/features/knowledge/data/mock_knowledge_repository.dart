import '../domain/knowledge_repository.dart';
import '../domain/models/knowledge_models.dart';

class MockKnowledgeRepository implements KnowledgeRepository {
  @override
  Future<List<KnowledgeDocument>> search(String query, SearchFilters filters) async {
    await Future.delayed(const Duration(milliseconds: 400));
    var results = _corpus.where((doc) {
      final q = query.toLowerCase();
      final matchesQuery = q.isEmpty ||
          doc.title.toLowerCase().contains(q) ||
          doc.excerpt.toLowerCase().contains(q) ||
          doc.tags.any((t) => t.toLowerCase().contains(q));
      final matchesType = filters.selectedTypes.isEmpty || filters.selectedTypes.contains(doc.type);
      final matchesConfidence = doc.confidenceScore >= filters.minConfidence;
      return matchesQuery && matchesType && matchesConfidence;
    }).toList();
    results.sort((a, b) => b.confidenceScore.compareTo(a.confidenceScore));
    return results;
  }

  static final _now = DateTime.now();

  static final _corpus = [
    KnowledgeDocument(
      id: 'k1', title: 'National Infrastructure Pipeline — Status Report FY2025-26',
      type: KnowledgeDocumentType.report, source: 'Ministry of Finance',
      date: _now.subtract(const Duration(days: 30)), confidenceScore: 0.95,
      tags: ['infrastructure', 'pipeline', 'investment', 'NIP'],
      excerpt: 'The National Infrastructure Pipeline (NIP) covers ₹111 lakh crore of projects across 34 sectors. As of March 2025, 8,964 projects are under various stages of implementation, with 2,847 completed and 1,203 under active construction.',
      citations: [KnowledgeCitation(id: 'c1', title: 'Budget 2025-26', source: 'MoF', year: 2025), KnowledgeCitation(id: 'c2', title: 'DPIIT Project Tracker', source: 'DPIIT', year: 2025)],
      fullContent: 'Detailed NIP status with sector-wise breakdown...',
    ),
    KnowledgeDocument(
      id: 'k2', title: 'Model Agricultural Land Leasing Act 2016 — Implementation Status',
      type: KnowledgeDocumentType.policy, source: 'NITI Aayog',
      date: _now.subtract(const Duration(days: 45)), confidenceScore: 0.88,
      tags: ['agriculture', 'land', 'tenancy', 'states', 'policy'],
      excerpt: 'As of June 2025, 8 States have enacted legislation broadly aligned with the Model Act. Approximately 10 crore tenant farmers across India lack formal legal recognition of their cultivation rights, limiting access to credit and government schemes.',
      citations: [KnowledgeCitation(id: 'c3', title: 'NITI Aayog Policy Review', source: 'NITI Aayog', year: 2024)],
      fullContent: 'Detailed state-wise implementation analysis...',
    ),
    KnowledgeDocument(
      id: 'k3', title: 'Smart Cities Mission — Comprehensive Progress Review',
      type: KnowledgeDocumentType.report, source: 'MoHUA',
      date: _now.subtract(const Duration(days: 15)), confidenceScore: 0.92,
      tags: ['smart cities', 'urban', 'infrastructure', 'digital'],
      excerpt: '73 of 100 Smart Cities have completed their core projects. Integrated Command and Control Centres operational in 68 cities. Total project value of ₹2.05 lakh crore with ₹1.67 lakh crore utilised.',
      citations: [KnowledgeCitation(id: 'c4', title: 'SCM Dashboard 2025', source: 'MoHUA', year: 2025)],
      fullContent: 'City-wise project completion details...',
    ),
    KnowledgeDocument(
      id: 'k4', title: 'The Digital Personal Data Protection Act 2023 — Compliance Framework',
      type: KnowledgeDocumentType.legislation, source: 'MeitY',
      date: _now.subtract(const Duration(days: 180)), confidenceScore: 0.97,
      tags: ['data protection', 'privacy', 'digital', 'legislation', 'compliance'],
      excerpt: 'The DPDP Act 2023 establishes consent-based data processing, data principal rights, and Data Protection Board of India. Government ministries must classify personal data holdings and implement consent management systems by the notified compliance date.',
      citations: [KnowledgeCitation(id: 'c5', title: 'Gazette of India — DPDP Act', source: 'Law Ministry', year: 2023), KnowledgeCitation(id: 'c6', title: 'Compliance Guidelines — MeitY', source: 'MeitY', year: 2024)],
      fullContent: 'Full legislative text and compliance requirements...',
    ),
    KnowledgeDocument(
      id: 'k5', title: 'G20 New Delhi Leaders Declaration — Infrastructure Commitments',
      type: KnowledgeDocumentType.report, source: 'G20 Secretariat',
      date: _now.subtract(const Duration(days: 270)), confidenceScore: 0.99,
      tags: ['G20', 'infrastructure', 'financing', 'multilateral', 'investment'],
      excerpt: 'G20 Leaders committed to mobilising USD 4.2 trillion for sustainable infrastructure through 2030. India designated as coordinator of Global Infrastructure Investment Hub. Climate infrastructure window of USD 500 billion established within reformed MDB architecture.',
      citations: [KnowledgeCitation(id: 'c7', title: 'G20 New Delhi Declaration', source: 'G20', year: 2023), KnowledgeCitation(id: 'c8', title: 'MDB Reform Roadmap', source: 'World Bank', year: 2024)],
      fullContent: 'Full declaration text with India-specific annexures...',
    ),
    KnowledgeDocument(
      id: 'k6', title: 'PM Speech: National Environment Policy Review — Annual Address',
      type: KnowledgeDocumentType.speech, source: 'PMO',
      date: _now.subtract(const Duration(days: 60)), confidenceScore: 0.94,
      tags: ['environment', 'climate', 'policy', 'speech', 'PM'],
      excerpt: 'India has committed to achieving 500 GW renewable energy capacity by 2030 and net-zero by 2070. The PM\'s address outlined Panchamrit commitments and called on state governments to align their climate action plans with national targets.',
      citations: [KnowledgeCitation(id: 'c9', title: 'India NDC 2022', source: 'MoEFCC', year: 2022)],
      fullContent: 'Full speech transcript...',
    ),
    KnowledgeDocument(
      id: 'k7', title: 'IMD South-West Monsoon Monitor — Seasonal Assessment 2025',
      type: KnowledgeDocumentType.intelligence, source: 'IMD',
      date: _now.subtract(const Duration(days: 3)), confidenceScore: 0.87,
      tags: ['monsoon', 'weather', 'agriculture', 'IMD', 'kharif'],
      excerpt: '17% cumulative deficit in south-west monsoon rainfall. Seven major agricultural states experiencing below-normal rainfall. Kharif sowing likely to be impacted by 12-15% reduction in acreage.',
      citations: [KnowledgeCitation(id: 'c10', title: 'IMD Seasonal Outlook 2025', source: 'IMD', year: 2025)],
      fullContent: 'Detailed state-wise rainfall analysis...',
    ),
    KnowledgeDocument(
      id: 'k8', title: 'Pradhan Mantri Gram Sadak Yojana Phase IV — Cabinet Note',
      type: KnowledgeDocumentType.memo, source: 'Ministry of Rural Development',
      date: _now.subtract(const Duration(days: 10)), confidenceScore: 0.83,
      tags: ['PMGSY', 'rural', 'roads', 'infrastructure', 'connectivity'],
      excerpt: 'PMGSY Phase IV proposes connecting 25,000 habitations across 20 states with all-weather roads. Total outlay of ₹70,125 crore with 60:40 Centre-State sharing. EFC note circulated for ministerial concurrence.',
      citations: [KnowledgeCitation(id: 'c11', title: 'EFC Note PMGSY IV', source: 'MoRD', year: 2025)],
      fullContent: 'Full EFC note with technical details...',
    ),
    KnowledgeDocument(
      id: 'k9', title: 'CAG Report on PM Awas Yojana — Audit Observations 2024',
      type: KnowledgeDocumentType.report, source: 'CAG of India',
      date: _now.subtract(const Duration(days: 90)), confidenceScore: 0.91,
      tags: ['housing', 'PMAY', 'CAG', 'audit', 'urban'],
      excerpt: 'CAG audit identified delays in beneficiary selection in 6 states, diversion of funds in 3 ULBs, and quality deficiencies in 12% of inspected units. Ministry has issued ATR responses to 68% of observations.',
      citations: [KnowledgeCitation(id: 'c12', title: 'CAG Report No. 14/2024', source: 'CAG', year: 2024)],
      fullContent: 'Full audit report with state-wise findings...',
    ),
    KnowledgeDocument(
      id: 'k10', title: 'Mutual Recognition Agreement — India-Singapore Financial Services',
      type: KnowledgeDocumentType.policy, source: 'Ministry of Finance',
      date: _now.subtract(const Duration(days: 5)), confidenceScore: 0.79,
      tags: ['Singapore', 'bilateral', 'financial services', 'MRA', 'trade'],
      excerpt: 'Draft MRA covers banking, insurance, and capital market services. Key provisions: mutual recognition of SEBI and MAS regulatory frameworks, fintech sandbox cooperation, and cross-border payment interoperability.',
      citations: [KnowledgeCitation(id: 'c13', title: 'India-Singapore CECA Review', source: 'Commerce Ministry', year: 2024)],
      fullContent: 'Full MRA draft text...',
    ),
    KnowledgeDocument(
      id: 'k11', title: 'Union Budget 2025-26 — Urban Development Allocation Analysis',
      type: KnowledgeDocumentType.report, source: 'Ministry of Finance',
      date: _now.subtract(const Duration(days: 120)), confidenceScore: 0.96,
      tags: ['budget', 'urban', 'housing', 'smart cities', 'metro', 'allocation'],
      excerpt: 'Urban development sector received ₹1.13 lakh crore allocation in Budget 2025-26, an increase of 8.4% over revised estimates. PMAY-Urban allocation: ₹30,170 crore. Metro rail: ₹19,682 crore. Smart Cities: ₹10,200 crore.',
      citations: [KnowledgeCitation(id: 'c14', title: 'Union Budget 2025-26', source: 'MoF', year: 2025), KnowledgeCitation(id: 'c15', title: 'Budget Highlights MoHUA', source: 'MoHUA', year: 2025)],
      fullContent: 'Detailed allocation tables...',
    ),
    KnowledgeDocument(
      id: 'k12', title: 'Defence Infrastructure Corridor — Status and Strategic Assessment',
      type: KnowledgeDocumentType.intelligence, source: 'MoD',
      date: _now.subtract(const Duration(days: 7)), confidenceScore: 0.89,
      tags: ['defence', 'infrastructure', 'corridor', 'strategic', 'border'],
      excerpt: 'Three strategic border roads in Arunachal Pradesh and Ladakh have been operationalised. Defence industrial corridors in UP and Tamil Nadu collectively attracted ₹28,400 crore in commitments from 300+ companies.',
      citations: [KnowledgeCitation(id: 'c16', title: 'BRO Annual Report 2024-25', source: 'MoD', year: 2025)],
      fullContent: 'Classified strategic assessment...',
    ),
    KnowledgeDocument(
      id: 'k13', title: 'Parliamentary Standing Committee Report on Water Security',
      type: KnowledgeDocumentType.memo, source: 'Lok Sabha Secretariat',
      date: _now.subtract(const Duration(days: 35)), confidenceScore: 0.85,
      tags: ['water', 'jal shakti', 'parliamentary', 'committee', 'security'],
      excerpt: 'Standing Committee on Water Resources noted 42% of districts in India face water stress. Jal Jeevan Mission achieved 79% functional household tap connection coverage. Recommends accelerated groundwater recharge investment.',
      citations: [KnowledgeCitation(id: 'c17', title: 'SC Report on Water Resources 2024', source: 'LS Secretariat', year: 2024)],
      fullContent: 'Full committee report...',
    ),
    KnowledgeDocument(
      id: 'k14', title: 'State Finance Commissions — Revenue Transfer Analysis 2025',
      type: KnowledgeDocumentType.report, source: 'Finance Commission Secretariat',
      date: _now.subtract(const Duration(days: 55)), confidenceScore: 0.82,
      tags: ['finance commission', 'devolution', 'states', 'revenue', 'fiscal federalism'],
      excerpt: '16th Finance Commission deliberations ongoing. 15th FC devolution at 41% of divisible pool. States report average fiscal deficit of 3.8% of GSDP. Revenue transfer to urban local bodies remains below 1% of GDP in 22 states.',
      citations: [KnowledgeCitation(id: 'c18', title: '15th Finance Commission Report', source: 'FinComm', year: 2024)],
      fullContent: 'Detailed fiscal analysis...',
    ),
    KnowledgeDocument(
      id: 'k15', title: 'Mission LiFE — Lifestyle for Environment: Implementation Framework',
      type: KnowledgeDocumentType.policy, source: 'MoEFCC',
      date: _now.subtract(const Duration(days: 20)), confidenceScore: 0.77,
      tags: ['LiFE', 'environment', 'climate', 'lifestyle', 'sustainability', 'G20'],
      excerpt: 'Mission LiFE framework operationalised across 13 sectors including energy, water, food, and transportation. Pro-planet people initiative targeting 1 billion individuals globally through behavioural nudge architecture. India-led G20 adoption of LiFE principles secured.',
      citations: [KnowledgeCitation(id: 'c19', title: 'Mission LiFE Action Plan', source: 'MoEFCC', year: 2024), KnowledgeCitation(id: 'c20', title: 'G20 LiFE Communiqué', source: 'G20', year: 2023)],
      fullContent: 'Full implementation framework...',
    ),
  ];
}
