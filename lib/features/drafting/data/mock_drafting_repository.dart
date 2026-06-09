import '../domain/drafting_repository.dart';
import '../domain/models/drafting_models.dart';

class MockDraftingRepository implements DraftingRepository {
  @override
  Future<List<DraftDocument>> getDocuments() async {
    await Future.delayed(const Duration(milliseconds: 200));
    return _documents;
  }

  static final _now = DateTime.now();

  static final _documents = [
    DraftDocument(
      id: 'd1',
      title: 'Address to Parliament: Smart Cities Mission Progress Report',
      type: DocumentType.speech,
      content: '''Hon\'ble Speaker, Distinguished Members of Parliament,

I rise to present before this august House the progress report of the Smart Cities Mission — a transformational initiative that stands as a testament to India\'s commitment to urban excellence and inclusive development.

When this Mission was launched in 2015, we set forth with an audacious vision: to create 100 smart cities that would serve as models of urban governance, sustainability, and citizen-centric administration. Today, I am pleased to inform this House that we stand at a defining milestone in this journey.

Seventy-three cities have completed their core Smart City projects, delivering tangible improvements in the daily lives of over 12 crore citizens. Integrated Command and Control Centres now monitor real-time data streams across utilities, traffic, and public safety in 68 cities. Our smart mobility initiatives have reduced average commute times by 22% in participating cities.

The financial architecture of this programme reflects our commitment to fiscal prudence alongside transformational ambition. Against a total project outlay of ₹2.05 lakh crore, we have achieved utilisation of ₹1.67 lakh crore — an achievement that reflects not merely expenditure, but the careful translation of public resources into permanent urban infrastructure.

Yet, numbers alone cannot capture the human dimension of this transformation. In Surat, an integrated flood management system has protected 8 lakh citizens from seasonal inundation. In Pune, a smart waste management network has achieved 94% door-to-door collection, eliminating open dumping from 187 wards.

I commend this Mission to the continued support of this House, and I invite members across the aisle to witness these transformations in their constituencies.

Jai Hind.''',
      outlineSections: [
        'Opening Salutation',
        'Mission Background & Vision',
        'Progress Highlights',
        'Financial Performance',
        'Citizen Impact Stories',
        'Closing Remarks',
      ],
      versions: [
        DocumentVersion(id: 'v1', timestamp: _now.subtract(const Duration(days: 3)), contentSnapshot: 'Earlier draft...', wordCount: 820),
        DocumentVersion(id: 'v2', timestamp: _now.subtract(const Duration(hours: 5)), contentSnapshot: 'Revised draft...', wordCount: 1050),
      ],
      suggestions: [
        AiSuggestion(id: 'sg1', type: SuggestionType.expand, originalText: 'I rise to present before this august House the progress report', suggestion: 'I rise with a sense of pride and purpose to present before this august House the comprehensive progress report, which reflects the collective endeavour of central and state governments, urban local bodies, and most importantly, the citizens of our great nation.', rationale: 'Opening with stronger emotional resonance appropriate for parliamentary address.'),
        AiSuggestion(id: 'sg2', type: SuggestionType.formalize, originalText: 'Yet, numbers alone cannot capture the human dimension', suggestion: 'Notwithstanding the aforementioned quantitative achievements, the true measure of this Mission\'s success lies in its human dimension — in the improved quality of life experienced by crores of citizens across our urban landscape.', rationale: 'Parliamentary language conventions require more formal register.'),
        AiSuggestion(id: 'sg3', type: SuggestionType.rephrase, originalText: 'an achievement that reflects not merely expenditure', suggestion: 'a milestone that signifies not the mere utilisation of funds, but the disciplined conversion of public trust into enduring civic infrastructure', rationale: 'Stronger phrasing that distinguishes productive expenditure from waste.'),
      ],
      createdAt: _now.subtract(const Duration(days: 3)),
      updatedAt: _now.subtract(const Duration(hours: 1)),
    ),
    DraftDocument(
      id: 'd2',
      title: 'Briefing Note: G20 Infrastructure Financing — Key Outcomes for India',
      type: DocumentType.briefingNote,
      content: '''BRIEFING NOTE
MINISTRY OF URBAN DEVELOPMENT & HOUSING
Classification: Restricted

Subject: G20 Infrastructure Working Group — Final Outcomes and India\'s Strategic Gains

1. EXECUTIVE SUMMARY

The G20 Infrastructure Working Group concluded its 2025 deliberations with landmark commitments on sustainable infrastructure financing. India secured several significant outcomes aligned with national priorities, positioning New Delhi as a key architect of the post-2025 global infrastructure agenda.

2. KEY OUTCOMES

2.1 Blended Finance Framework
A new multilateral blended finance framework was adopted, reducing risk premiums for private capital deployment in emerging markets. This directly benefits India\'s infrastructure pipeline by improving access to international institutional capital at sub-sovereign rates.

2.2 India\'s Coordinating Role
India was designated lead coordinator of the Global Infrastructure Investment Hub, a new institutional mechanism to channel G20 commitments. This confers on India significant influence over project selection criteria and financing structures.

2.3 Climate Infrastructure Window
A dedicated climate infrastructure financing window of USD 500 billion was established within the reformed MDB architecture. India\'s renewable energy and urban mobility projects are prioritised under this window.

3. IMMEDIATE ACTIONS REQUIRED

a. Ministry of Finance to issue investment framework guidelines within 30 days
b. NIIF to activate G20 co-financing structures by Q3 FY2026
c. Department of Economic Affairs to prepare detailed project pipeline for Hub submission

4. RISKS AND CONSIDERATIONS

The blended finance framework includes conditionalities on procurement transparency that may require amendments to existing DPR guidelines. Legal Advisers have been tasked to assess compliance requirements.

Prepared by: Joint Secretary, Infrastructure Finance Division
Date: June 2025''',
      outlineSections: [
        'Executive Summary',
        'Key Outcomes',
        'Blended Finance Framework',
        'India\'s Coordinating Role',
        'Immediate Actions Required',
        'Risks and Considerations',
      ],
      versions: [
        DocumentVersion(id: 'v3', timestamp: _now.subtract(const Duration(hours: 8)), contentSnapshot: 'Initial draft...', wordCount: 450),
        DocumentVersion(id: 'v4', timestamp: _now.subtract(const Duration(hours: 2)), contentSnapshot: 'Revised draft...', wordCount: 680),
      ],
      suggestions: [
        AiSuggestion(id: 'sg4', type: SuggestionType.expand, originalText: '3. IMMEDIATE ACTIONS REQUIRED', suggestion: 'Consider adding a timeline matrix showing each action, responsible ministry, and deadline. This will ensure accountability and facilitate follow-up in subsequent meetings.', rationale: 'Briefing notes with action matrices have higher implementation rates in ministerial contexts.'),
        AiSuggestion(id: 'sg5', type: SuggestionType.rephrase, originalText: 'that may require amendments to existing DPR guidelines', suggestion: 'which necessitate a systematic review of extant Detailed Project Report guidelines, with particular attention to procurement transparency clauses under Article 18 of the existing framework', rationale: 'More precise legal language for official note.'),
      ],
      createdAt: _now.subtract(const Duration(hours: 8)),
      updatedAt: _now.subtract(const Duration(hours: 2)),
    ),
    DraftDocument(
      id: 'd3',
      title: 'Official Letter to Chief Ministers: Model Land Tenancy Act Implementation',
      type: DocumentType.officialLetter,
      content: '''D.O. No. MRD/11013/2/2025-LR
Ministry of Rural Development
Government of India
New Delhi, June 2025

Dear Chief Minister,

Subject: Implementation of the Model Agricultural Land Leasing Act, 2016 — Urgent Request for State Action

I write to you on a matter of considerable importance to the welfare of agricultural tenants across the country, and I request your personal attention and intervention at the earliest.

The Model Agricultural Land Leasing Act, 2016, developed by NITI Aayog in consultation with State Governments, provides a comprehensive legal framework for formalising tenancy arrangements that have hitherto remained in the shadows of our agricultural economy. Ten years since its circulation, I regret to inform you that only 8 States have enacted legislation broadly aligned with the Model Act, leaving an estimated 10 crore tenant farmers without legal protection.

The consequences of this legislative gap are severe and well-documented. Tenant farmers are unable to access institutional credit, crop insurance, and government schemes due to the absence of legal recognition of their cultivation rights. The PM Kisan Samman Nidhi scheme alone excludes an estimated 4.5 crore eligible tenant cultivators in States without enabling legislation.

I would request Your Excellency to treat this matter with the urgency it deserves, and to direct the concerned departments to:

1. Introduce the Model Act (suitably adapted to State conditions) in the forthcoming session of the State Legislature; or

2. Issue an administrative order providing interim tenancy rights recognition pending legislative action.

A high-level meeting of Revenue and Agriculture Secretaries from all States has been convened on 15 July 2025 to discuss implementation pathways. I look forward to your State\'s constructive participation.

With warm personal regards,

[Minister\'s Name]
Minister of Rural Development
Government of India''',
      outlineSections: [
        'Salutation & Subject',
        'Background & Current Status',
        'Impact on Tenant Farmers',
        'Requested Actions',
        'Next Steps & Meeting',
        'Closing',
      ],
      versions: [
        DocumentVersion(id: 'v5', timestamp: _now.subtract(const Duration(days: 1)), contentSnapshot: 'First draft...', wordCount: 380),
      ],
      suggestions: [
        AiSuggestion(id: 'sg6', type: SuggestionType.formalize, originalText: 'I write to you on a matter of considerable importance', suggestion: 'I have the honour to address Your Excellency on a matter of considerable national importance, touching upon the welfare and legal rights of crores of agricultural tenants across the breadth of our country.', rationale: 'Official correspondence to Chief Ministers requires formal DO letter conventions.'),
      ],
      createdAt: _now.subtract(const Duration(days: 1)),
      updatedAt: _now.subtract(const Duration(hours: 6)),
    ),
  ];
}
