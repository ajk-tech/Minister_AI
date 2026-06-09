import '../domain/assistant_repository.dart';
import '../domain/models/assistant_models.dart';

class MockAssistantRepository implements AssistantRepository {
  @override
  Future<List<AssistantSession>> getSessions() async {
    await Future.delayed(const Duration(milliseconds: 300));
    return _sessions;
  }

  static final _now = DateTime.now();

  static final _sessions = [
    AssistantSession(
      id: 's1',
      title: 'G20 Infrastructure Financing Analysis',
      createdAt: _now.subtract(const Duration(hours: 2)),
      cards: [
        BriefingCard(
          id: 'c1',
          query: 'Summarise the key outcomes of G20 infrastructure financing discussions',
          responseType: BriefingResponseType.intelligence,
          headline: 'G20 Infrastructure Financing: Key Outcomes and India\'s Strategic Position',
          body: 'The G20 Infrastructure Working Group concluded negotiations with commitments totalling USD 4.2 trillion over the next decade for sustainable infrastructure development. India secured recognition as a lead coordinator for the Global Infrastructure Investment Hub, positioning New Delhi as a pivotal actor in directing multilateral financing toward emerging economies.\n\nKey outcomes include a new framework for blended finance instruments, reducing risk premiums for private capital in low-income countries, and a dedicated climate infrastructure window within the Multilateral Development Bank reform agenda. India\'s NIIF was cited as a model for national infrastructure financing.',
          sources: [
            SourceReference(id: 'sr1', title: 'G20 Infrastructure Working Group Final Communiqué', type: SourceType.report, excerpt: 'Commitments of USD 4.2 trillion agreed across member economies...'),
            SourceReference(id: 'sr2', title: 'Ministry of Finance — G20 Briefing Note', type: SourceType.internal, excerpt: 'India\'s negotiating position on blended finance instruments...'),
            SourceReference(id: 'sr3', title: 'NIIF Annual Report 2024-25', type: SourceType.report, excerpt: 'National Infrastructure Investment Fund performance metrics...'),
          ],
          agentSteps: [
            AgentStep(label: 'Research', status: AgentStepStatus.completed),
            AgentStep(label: 'Analyse', status: AgentStepStatus.completed),
            AgentStep(label: 'Synthesise', status: AgentStepStatus.completed),
            AgentStep(label: 'Format', status: AgentStepStatus.completed),
          ],
          timestamp: _now.subtract(const Duration(hours: 2)),
        ),
        BriefingCard(
          id: 'c2',
          query: 'What are India\'s specific commitments and expected outcomes?',
          responseType: BriefingResponseType.analysis,
          headline: 'India\'s G20 Infrastructure Commitments: Obligations and Projected Returns',
          body: 'India has committed to USD 180 billion in domestic infrastructure investment through 2030, with an additional USD 12 billion in co-financing through NIIF for regional connectivity projects in South Asia. The Ministry of Finance has confirmed that these commitments are fully aligned with existing National Infrastructure Pipeline targets.\n\nExpected outcomes include a 2.3% uplift in GDP growth potential by FY2029, creation of approximately 11 million direct employment positions, and elevation of India\'s connectivity index by 14 percentile points in the World Bank\'s Logistics Performance Index.',
          sources: [
            SourceReference(id: 'sr4', title: 'National Infrastructure Pipeline — MoF', type: SourceType.policy, excerpt: 'USD 1.4 trillion pipeline with 9,000+ projects...'),
            SourceReference(id: 'sr5', title: 'World Bank Logistics Performance Index 2025', type: SourceType.report, excerpt: 'India ranked 38th globally, up from 44th in 2023...'),
          ],
          agentSteps: [
            AgentStep(label: 'Research', status: AgentStepStatus.completed),
            AgentStep(label: 'Analyse', status: AgentStepStatus.completed),
            AgentStep(label: 'Synthesise', status: AgentStepStatus.completed),
            AgentStep(label: 'Format', status: AgentStepStatus.completed),
          ],
          timestamp: _now.subtract(const Duration(hours: 1, minutes: 50)),
        ),
      ],
    ),
    AssistantSession(
      id: 's2',
      title: 'Monsoon Deficit Impact Assessment',
      createdAt: _now.subtract(const Duration(days: 1)),
      cards: [
        BriefingCard(
          id: 'c3',
          query: 'Assess impact of monsoon deficit on kharif production and rural income',
          responseType: BriefingResponseType.summary,
          headline: 'Monsoon Deficit 2025: Projected Impact on Kharif Season and Rural Economy',
          body: 'The India Meteorological Department has recorded a 17% cumulative deficit in south-west monsoon rainfall through Week 22 of the season. Seven major agricultural states — Maharashtra, Madhya Pradesh, Karnataka, Telangana, Gujarat, Rajasthan, and Uttar Pradesh — are experiencing below-normal rainfall with a spatial coverage deficit of 24%.\n\nProjeted impact on kharif sowing is a 12-15% reduction in acreage for paddy, soybean, and coarse cereals. The Ministry of Agriculture\'s ATMA assessment places rural income risk at ₹38,000 crore in potential foregone earnings, concentrated in dryland farming districts.',
          sources: [
            SourceReference(id: 'sr6', title: 'IMD South-West Monsoon Monitor — Week 22', type: SourceType.report, excerpt: '17% cumulative deficit across the Indian subcontinent...'),
            SourceReference(id: 'sr7', title: 'Ministry of Agriculture ATMA Assessment', type: SourceType.internal, excerpt: 'State-wise crop loss projections and income impact...'),
          ],
          agentSteps: [
            AgentStep(label: 'Research', status: AgentStepStatus.completed),
            AgentStep(label: 'Analyse', status: AgentStepStatus.completed),
            AgentStep(label: 'Synthesise', status: AgentStepStatus.completed),
            AgentStep(label: 'Format', status: AgentStepStatus.completed),
          ],
          timestamp: _now.subtract(const Duration(days: 1)),
        ),
      ],
    ),
    AssistantSession(
      id: 's3',
      title: 'Parliamentary Session Preparation',
      createdAt: _now.subtract(const Duration(days: 2)),
      cards: [
        BriefingCard(
          id: 'c4',
          query: 'List priority questions expected in Parliament on urban development',
          responseType: BriefingResponseType.actionItems,
          headline: 'Parliamentary Session: Priority Urban Development Questions and Recommended Responses',
          body: '14 starred questions and 47 unstarred questions on urban development are expected in the upcoming Parliamentary session. The top priority items requiring ministerial preparation:\n\n1. Smart Cities Mission: Implementation status across 100 cities — 68 cities have completed work orders, 24 in progress, 8 facing land acquisition delays.\n\n2. Pradhan Mantri Awas Yojana (Urban): 81.2 lakh houses sanctioned, 48.7 lakh completed, 12.4 lakh under construction.\n\n3. AMRUT 2.0: Water supply and sewerage projects — ₹2.99 lakh crore outlay, 40% utilisation.\n\n4. Metro Rail expansion: 919 km operational, 1,000 km under construction across 18 cities.',
          sources: [
            SourceReference(id: 'sr8', title: 'Lok Sabha Secretariat — Advance Notice Questions', type: SourceType.internal, excerpt: 'List of starred and unstarred questions for upcoming session...'),
            SourceReference(id: 'sr9', title: 'MoHUA — Smart Cities Dashboard', type: SourceType.policy, excerpt: 'City-wise implementation status as of June 2025...'),
          ],
          agentSteps: [
            AgentStep(label: 'Research', status: AgentStepStatus.completed),
            AgentStep(label: 'Analyse', status: AgentStepStatus.completed),
            AgentStep(label: 'Synthesise', status: AgentStepStatus.completed),
            AgentStep(label: 'Format', status: AgentStepStatus.completed),
          ],
          timestamp: _now.subtract(const Duration(days: 2)),
        ),
      ],
    ),
  ];
}
