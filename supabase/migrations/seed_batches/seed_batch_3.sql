-- ============================================================
-- HEALTH EXPRESS — SERVICE CATALOG SEED BATCH 3 OF 5
-- Services 901 to 1350 of 2207
-- ============================================================

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ihc-single-marker-with-reporting-smooth-muscle-actin-labspring-20901', '20901', 'IHC single marker with reporting Smooth Muscle Actin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2700.0, 2700.0, 1125.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ihc-single-marker-with-reporting-tdt-labspring-20902', '20902', 'IHC single marker with reporting TdT', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2700.0, 2700.0, 1125.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ihc-single-marker-with-reporting-ttf1-labspring-20903', '20903', 'IHC single marker with reporting TTF1', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2700.0, 2700.0, 1125.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ihc-single-marker-with-reporting-vimentin-labspring-20904', '20904', 'IHC single marker with reporting Vimentin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2700.0, 2700.0, 1125.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ihc-single-marker-with-reporting-wt1-wilms-tumor-protein-labspring-20905', '20905', 'IHC single marker with reporting WT1 Wilm''S Tumor
Protein', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2700.0, 2700.0, 1125.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ihc-single-marker-with-reporting-calcitonin-labspring-20906', '20906', 'IHC single marker with reporting Calcitonin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2700.0, 2700.0, 1125.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ihc-single-marker-with-reporting-chromogranin-a-labspring-20907', '20907', 'IHC Single Marker With Reporting Chromogranin A', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2700.0, 2700.0, 1125.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ihc-single-marker-with-reporting-glypican-3-labspring-20908', '20908', 'IHC single marker with reporting Glypican-3', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2700.0, 2700.0, 1125.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ihc-single-marker-with-reporting-synaptophysin-labspring-20909', '20909', 'IHC single marker with reporting Synaptophysin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2700.0, 2700.0, 1125.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ihc-single-marker-with-reporting-uroplakin-labspring-20910', '20910', 'IHC single marker with reporting Uroplakin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4500.0, 4500.0, 1875.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ihc-stain-without-interpretation-plap-labspring-20911', '20911', 'IHC stain without interpretation PLAP', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2700.0, 2700.0, 1125.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'il-28-b-snp-genotyping-test-labspring-20912', '20912', 'IL 28 B SNP Genotyping Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7500.0, 7500.0, 2400.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'imatinib-resistance-mutation-analysis-bcr-mutation-analysis-labspring-20913', '20913', 'Imatinib Resistance Mutation Analysis Bcr Mutation
Analysis', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 26250.0, 26250.0, 9800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'immature-platelet-fraction-labspring-20914', '20914', 'Immature platelet fraction', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 690.0, 690.0, 271.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'immunofixation-qualitative-labspring-20915', '20915', 'Immunofixation-qualitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8670.0, 8670.0, 2773.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'immunofixation-quantitative-labspring-20916', '20916', 'Immunofixation-quantitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11830.0, 11830.0, 3787.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'india-ink-preparation-csf-labspring-20917', '20917', 'India Ink Preparation, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 470.0, 470.0, 171.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'influenza-a-virus-igg-antibody-labspring-20918', '20918', 'Influenza A Virus IgG Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4550.0, 4550.0, 1700.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'influenza-a-virus-igm-antibody-labspring-20919', '20919', 'Influenza A Virus IgM Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4550.0, 4550.0, 1700.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'influenza-b-virus-igg-antibody-labspring-20920', '20920', 'Influenza B Virus IgG Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4560.0, 4560.0, 1700.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'influenza-b-virus-igm-antibody-labspring-20921', '20921', 'Influenza B Virus IgM Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4560.0, 4560.0, 1700.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'inhibin-a-dimeric-labspring-20922', '20922', 'Inhibin A Dimeric', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2570.0, 2570.0, 656.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'inhibin-b-labspring-20923', '20923', 'Inhibin B', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3170.0, 3170.0, 1086.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'insulin-fasting-labspring-20924', '20924', 'Insulin - Fasting', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 900.0, 900.0, 69.0, NULL,
  'Contact for TAT', 'Fasting may be required depending on the test; when required, typically 8–12 hours with water only. Follow the test-specific instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'insulin-antibody-type-i-ii-diabetes-labspring-20925', '20925', 'Insulin Antibody Type I & II Diabetes', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3330.0, 3330.0, 886.0, NULL,
  'Contact for TAT', 'Fasting may be required depending on the test; when required, typically 8–12 hours with water only. Follow the test-specific instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'intrinsic-factor-antibody-labspring-20926', '20926', 'Intrinsic Factor Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3830.0, 3830.0, 1314.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'iron-serum-labspring-20927', '20927', 'Iron, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 32.0, NULL,
  'Contact for TAT', 'Fasting may be preferred for iron studies; some labs recommend about 8 hours and avoiding iron supplements beforehand. Follow lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'iron-urine-24h-labspring-20928', '20928', 'Iron, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7430.0, 7430.0, 2500.0, NULL,
  'Contact for TAT', 'Fasting may be preferred for iron studies; some labs recommend about 8 hours and avoiding iron supplements beforehand. Follow lab instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'islet-cell-antibody-ica-512-for-type-i-diabetes-labspring-20929', '20929', 'Islet Cell Antibody ICA - 512 For Type I Diabetes', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3500.0, 3500.0, 1200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'isoleucine-quantitative-urine-24h-labspring-20930', '20930', 'Isoleucine Quantitative, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16740.0, 16740.0, 5950.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'isospora-by-smear-examination-stool-labspring-20931', '20931', 'Isospora by smear examination, Stool', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 830.0, 830.0, 286.0, NULL,
  'Contact for TAT', 'Usually no fasting. Collect a clean specimen as instructed; avoid contamination and follow any medication/diet restrictions specified for the test.', 'Stool / feces', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'jak2-mutation-exon-12-blood-labspring-20932', '20932', 'JAK2 Mutation Exon 12, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10000.0, 10000.0, 3200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'jak2-mutation-exon-12-bone-marrow-labspring-20933', '20933', 'JAK2 Mutation Exon 12, Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 18900.0, 18900.0, 3200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'jak2-mutation-v617f-reflex-to-jak2-ex-12-mpl-w515-s505-calr-ex-9-mutations-bone-marrow-labspring-20934', '20934', 'JAK2 Mutation V617F Reflex to Jak2 Ex-12, MPL W515
/ S505, CALR Ex-9 Mutations Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 36450.0, 36450.0, 13500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'jak2-mutation-v617f-reflex-to-jak2-ex-12-mpl-w515-s505-calr-ex-9-mutations-blood-labspring-20935', '20935', 'JAK2 Mutation V617F Reflex To Jak2 Ex-12, MPL W515
/ S505, CALR Ex-9 Mutations, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 36160.0, 36160.0, 13500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'jak2-mutation-v617f-blood-labspring-20936', '20936', 'JAK2 Mutation V617F, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9170.0, 9170.0, 2933.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'jak2-mutation-v617f-bone-marrow-labspring-20937', '20937', 'JAK2 Mutation V617F, Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14850.0, 14850.0, 2933.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'jc-virus-dna-detection-csf-labspring-20938', '20938', 'JC virus DNA detection, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12420.0, 12420.0, 2133.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'jcbk-virus-dna-detection-csf-labspring-20939', '20939', 'JC/Bk Virus DNA detection, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15390.0, 15390.0, 2933.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'jcbk-virus-dna-detection-plasma-labspring-20940', '20940', 'JC/Bk Virus DNA Detection, Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9170.0, 9170.0, 2933.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'jcbk-virus-dna-detection-urine-labspring-20941', '20941', 'JC/Bk Virus DNA Detection, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9170.0, 9170.0, 2933.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'jev-japanese-encephalitis-virus-rna-detection-blood-labspring-20942', '20942', 'JEV-Japanese Encephalitis Virus RNA Detection, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5000.0, 5000.0, 2107.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'jev-japanese-encephalitis-virus-rna-detection-csf-labspring-20943', '20943', 'JEV-Japanese Encephalitis Virus RNA detection, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10670.0, 10670.0, 2107.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'jev-japanese-encephalitis-virus-rna-detection-plasma-labspring-20944', '20944', 'JEV-Japanese Encephalitis Virus RNA Detection,
Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5000.0, 5000.0, 2107.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'jo-1-antibody-serum-labspring-20945', '20945', 'Jo 1 Antibody, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2420.0, 2420.0, 829.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'kala-azar-labspring-20946', '20946', 'Kala Azar', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3310.0, 3310.0, 1237.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'kappa-and-lambda-free-freelite-labspring-20947', '20947', 'Kappa And Lambda-Free Freelite', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5000.0, 5000.0, 2040.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'kappa-light-chains-by-flow-cytometry-labspring-20948', '20948', 'Kappa Light Chains By Flow Cytometry', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7290.0, 7290.0, 2247.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'kappa-light-chains-free-urine-24h-labspring-20949', '20949', 'Kappa Light Chains-Free Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9450.0, 9450.0, 1286.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'karyotyping-by-g-banding-reflex-fish-chr-1318-21-x-and-y-amniotic-fluid-labspring-20950', '20950', 'Karyotyping by G-Banding Reflex FISH (Chr 13,18, 21,
X and Y) Amniotic Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 26730.0, 26730.0, 6133.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Amniotic fluid', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'karyotyping-by-g-banding-reflex-fish-chr-1318-21-x-and-y-chorionic-villus-labspring-20951', '20951', 'Karyotyping by G-Banding Reflex FISH (Chr 13,18, 21,
X and Y) Chorionic Villus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 26730.0, 26730.0, 6133.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'karyotyping-by-g-banding-blood-labspring-20952', '20952', 'Karyotyping By G-Banding, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5000.0, 5000.0, 1707.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'karyotyping-by-g-banding-bone-marrow-labspring-20953', '20953', 'Karyotyping by G-Banding, Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6070.0, 6070.0, 2133.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'karyotyping-by-g-banding-cord-blood-labspring-20954', '20954', 'Karyotyping by G-Banding, Cord Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4800.0, 4800.0, 2133.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'kct-kaolin-clotting-time-labspring-20955', '20955', 'KCT Kaolin Clotting Time', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3380.0, 3380.0, 714.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'kennedy-disease-cag-repeats-labspring-20956', '20956', 'Kennedy Disease (CAG Repeats)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15940.0, 15940.0, 5800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'kras-mutation-detection-codon-1213-tissue-labspring-20957', '20957', 'KRAS Mutation Detection Codon 12/13 Tissue', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 20250.0, 20250.0, 3200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lactate-csf-labspring-20958', '20958', 'Lactate, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2840.0, 2840.0, 571.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lactate-plasma-labspring-20959', '20959', 'Lactate, Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1670.0, 1670.0, 450.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lambda-light-chains-by-flow-cytometry-labspring-20960', '20960', 'Lambda Light Chains By Flow Cytometry', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7290.0, 7290.0, 2247.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lambda-light-chains-free-urine-24h-labspring-20961', '20961', 'Lambda Light Chains-Free, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9450.0, 9450.0, 1286.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lamotrigine-level-labspring-20962', '20962', 'Lamotrigine Level', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10980.0, 10980.0, 4100.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lap-score-leucocyte-alkaline-phosphatase-labspring-20963', '20963', 'LAP Score Leucocyte Alkaline Phosphatase', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1490.0, 1490.0, 629.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lc-1-antibody-liver-cytosolic-antigen-type-1-labspring-20964', '20964', 'LC 1 Antibody Liver Cytosolic Antigen Type-1', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4670.0, 4670.0, 1493.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ld-bodies-leishmania-dodovani-bodies-bone-marrow-labspring-20965', '20965', 'LD bodies Leishmania Dodovani bodies Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2570.0, 2570.0, 514.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ld-bodies-leishmania-dodovani-bodies-blood-labspring-20966', '20966', 'LD bodies Leishmania Dodovani bodies, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1500.0, 1500.0, 514.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ld-leighs-disease-labspring-20967', '20967', 'LD Leigh''S Disease', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 40180.0, 40180.0, 14500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ldh-isoenzymes-gel-electrophoresis-serum-labspring-20968', '20968', 'LDH Isoenzymes Gel Electrophoresis, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12420.0, 12420.0, 2133.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ldh-lactate-dehydrogenase-ascitic-fluid-labspring-20969', '20969', 'LDH Lactate Dehydrogenase, Ascitic Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1220.0, 1220.0, 217.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Body fluid (type specified by test)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ldh-lactate-dehydrogenase-peritoneal-fluid-labspring-20970', '20970', 'LDH Lactate Dehydrogenase, Peritoneal Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1220.0, 1220.0, 217.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Body fluid (type specified by test)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ldh-lactate-dehydrogenase-pleural-fluid-labspring-20971', '20971', 'LDH Lactate Dehydrogenase, Pleural Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1220.0, 1220.0, 217.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Body fluid (type specified by test)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ldh-lactate-dehydrogenase-serum-labspring-20972', '20972', 'LDH Lactate Dehydrogenase, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 590.0, 590.0, 53.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ldl-cholesterol-direct-labspring-20973', '20973', 'LDL Cholesterol -Direct', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 37.0, NULL,
  'Contact for TAT', 'Fasting is often not required for routine lipid testing, but some panels/providers request 8–12 hours fasting. Follow the ordering lab/provider.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'le-cell-detection-labspring-20974', '20974', 'LE Cell Detection', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 510.0, 510.0, 214.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lead-blood-labspring-20975', '20975', 'Lead, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2920.0, 2920.0, 786.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lead-urine-24h-labspring-20976', '20976', 'Lead, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1650.0, 1650.0, 786.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lead-urine-spot-labspring-20977', '20977', 'Lead, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2920.0, 2920.0, 786.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'legionella-pneumophila-antigen-detection-urine-labspring-20978', '20978', 'Legionella Pneumophila Antigen Detection Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7500.0, 7500.0, 2800.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'legionella-pneumophila-igg-antibodies-labspring-20979', '20979', 'Legionella Pneumophila IgG antibodies', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4170.0, 4170.0, 1429.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'legionella-pneumophila-igm-antibodies-labspring-20980', '20980', 'Legionella Pneumophila IgM antibodies', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4170.0, 4170.0, 1429.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leishmania-antibody-igg-labspring-20981', '20981', 'Leishmania Antibody-IgG', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2830.0, 2830.0, 971.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leishmania-culture-blood-labspring-20982', '20982', 'Leishmania Culture Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1690.0, 1690.0, 714.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow site-specific collection instructions; tell the provider about recent antibiotics when relevant.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leishmania-culture-bone-marrow-labspring-20983', '20983', 'Leishmania Culture Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1690.0, 1690.0, 714.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow site-specific collection instructions; tell the provider about recent antibiotics when relevant.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leishmania-culture-liver-aspirate-labspring-20984', '20984', 'Leishmania Culture Liver Aspirate', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2080.0, 2080.0, 714.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow site-specific collection instructions; tell the provider about recent antibiotics when relevant.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leishmania-culture-splenic-aspirate-labspring-20985', '20985', 'Leishmania Culture Splenic Aspirate', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2080.0, 2080.0, 714.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow site-specific collection instructions; tell the provider about recent antibiotics when relevant.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leptin-human-labspring-20986', '20986', 'Leptin Human', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5000.0, 5000.0, 2000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leptospira-detection-by-smear-examination-labspring-20987', '20987', 'Leptospira Detection by smear examination', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 810.0, 810.0, 314.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leptospira-detection-by-smear-examination-csf-labspring-20988', '20988', 'Leptospira Detection by smear examination, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 950.0, 950.0, 371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leptospira-detection-by-smear-examination-urine-labspring-20989', '20989', 'Leptospira Detection By Smear Examination, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1080.0, 1080.0, 286.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leptospira-dna-detection-by-pcr-blood-labspring-20990', '20990', 'Leptospira DNA detection by PCR, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3330.0, 3330.0, 1143.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leptospira-dna-detection-by-pcr-urine-labspring-20991', '20991', 'Leptospira DNA detection by PCR, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3330.0, 3330.0, 1143.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leptospira-igg-antibodies-labspring-20992', '20992', 'Leptospira IgG antibodies', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1150.0, 1150.0, 536.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leptospira-igm-antibodies-labspring-20993', '20993', 'Leptospira IgM antibodies', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1190.0, 1190.0, 571.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leptospira-profile-leptospira-igg-igm-detection-labspring-20994', '20994', 'Leptospira Profile Leptospira IgG, IgM, Detection', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3270.0, 3270.0, 1314.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leucine-quantitative-urine-24h-labspring-20995', '20995', 'Leucine Quantitative, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16740.0, 16740.0, 5950.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-all-panel-by-fish-adult-bone-marrow-labspring-20996', '20996', 'Leukemia ALL panel by FISH, Adult Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 35100.0, 35100.0, 6667.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-aml-panel-by-fish-leukemic-blood-labspring-20997', '20997', 'Leukemia AML panel by FISH Leukemic, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 40500.0, 40500.0, 8000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-aml-panel-by-fish-bone-marrow-labspring-20998', '20998', 'Leukemia AML panel by FISH, Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 40500.0, 40500.0, 8000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-aml-panel-by-flowcytometry-blood-labspring-20999', '20999', 'Leukemia AML Panel By Flowcytometry, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15830.0, 15830.0, 5067.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-characterisation-panel-for-clpd-immunophenotyping-cytogenetic-studies-blood-labspring-21000', '21000', 'Leukemia Characterisation Panel For CLPD
Immunophenotyping , Cytogenetic Studies Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 33000.0, 33000.0, 10560.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-characterisation-panel-for-clpd-immunophenotyping-cytogenetic-studies-bone-marrow-labspring-21001', '21001', 'Leukemia Characterisation Panel for CLPD Immunophenotyping , Cytogenetic studies Bone
marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 53460.0, 53460.0, 10560.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-cll-panel-by-fish-bone-marrow-labspring-21002', '21002', 'Leukemia CLL panel by FISH Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 37800.0, 37800.0, 7467.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-cll-panel-by-fish-leukemic-blood-labspring-21003', '21003', 'Leukemia CLL panel by FISH Leukemic Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 37800.0, 37800.0, 7467.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-cll-panel-by-flowcytometry-blood-labspring-21004', '21004', 'Leukemia CLL Panel By Flowcytometry Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 20000.0, 20000.0, 6400.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-cll-panel-by-flowcytometry-bone-marrow-labspring-21005', '21005', 'Leukemia CLL panel by flowcytometry Bone marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 32400.0, 32400.0, 6400.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-cmpd-panel-by-fish-bone-marrow-labspring-21006', '21006', 'Leukemia CMPD Panel by FISH Bone marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 23760.0, 23760.0, 4693.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-eosinophilia-panel-by-fish-bone-marrow-labspring-21007', '21007', 'Leukemia eosinophilia panel by FISH Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 32400.0, 32400.0, 6400.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-eosinophilia-panel-by-fish-leukemic-blood-labspring-21008', '21008', 'Leukemia Eosinophilia panel by FISH Leukemic Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 32400.0, 32400.0, 6400.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-mds-panel-by-fish-bone-marrow-labspring-21009', '21009', 'Leukemia MDS panel by FISH Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 24300.0, 24300.0, 4800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-mds-panel-by-fish-leukemic-blood-labspring-21010', '21010', 'Leukemia MDS panel by FISH Leukemic Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 24300.0, 24300.0, 4800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-multiple-myeloma-panel-cytogenetics-fish-11q-del-13q-del-17q-del-igh-bone-marrow-labspring-21011', '21011', 'Leukemia Multiple myeloma panel Cytogenetics, FISH
(11q Del, 13q Del, 17q Del, IGH) Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 41850.0, 41850.0, 8267.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-acute-panel-by-flowcytometry-blood-labspring-21012', '21012', 'Leukemia-Acute Panel By Flowcytometry, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 18330.0, 18330.0, 5867.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-acute-panel-by-flowcytometry-bone-marrow-labspring-21013', '21013', 'Leukemia-Acute panel by flowcytometry, Bone
marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 28350.0, 28350.0, 5067.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'levetiracetam-labspring-21014', '21014', 'Levetiracetam', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9210.0, 9210.0, 3438.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lh-luteinizing-hormone-labspring-21015', '21015', 'LH-Luteinizing Hormone', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 105.0, NULL,
  'Contact for TAT', 'Usually no fasting. Collection timing can matter for some hormone tests (cycle day/time of day); follow the clinician/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lhon-lebers-hereditary-optic-neuropathy-labspring-21016', '21016', 'LHON Leber''S Hereditary Optic Neuropathy', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 42860.0, 42860.0, 16000.0, NULL,
  'Contact for TAT', 'Usually no fasting. Collection timing can matter for some hormone tests (cycle day/time of day); follow the clinician/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lipase-serum-labspring-21017', '21017', 'Lipase, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 590.0, 590.0, 110.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lipase-urine-labspring-21018', '21018', 'Lipase, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1780.0, 1780.0, 371.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lipoprotein-electrophoresis-labspring-21019', '21019', 'Lipoprotein Electrophoresis', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4170.0, 4170.0, 1429.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lithium-labspring-21020', '21020', 'Lithium', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 98.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lkm1-by-ifa-liver-kidney-microsomes-reflex-to-end-point-titre-labspring-21021', '21021', 'LKM1 By IFA Liver Kidney Microsomes Reflex To End
Point Titre', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3080.0, 3080.0, 1057.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lpa-lipoproteina-labspring-21022', '21022', 'Lp(a) Lipoprotein(a)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2260.0, 2260.0, 134.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lp-pla2-plac-labspring-21023', '21023', 'Lp-PLA2 PLAC', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4170.0, 4170.0, 1429.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lyme-borrelia-burgdorferi-igg-antibodies-by-eia-labspring-21024', '21024', 'Lyme Borrelia Burgdorferi IgG Antibodies By EIA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2830.0, 2830.0, 971.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lyme-borrelia-burgdorferi-igm-antibodies-by-eia-labspring-21025', '21025', 'Lyme Borrelia Burgdorferi IgM Antibodies By EIA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2830.0, 2830.0, 971.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lysine-quantitative-urine-labspring-21026', '21026', 'Lysine Quantitative, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15940.0, 15940.0, 5950.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mag-antibodies-demyelinating-disorders-labspring-21027', '21027', 'MAG Antibodies Demyelinating Disorders', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5059.0, 5059.0, 2133.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'magnesium-serum-labspring-21028', '21028', 'Magnesium, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 590.0, 590.0, 63.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'magnesium-urine-labspring-21029', '21029', 'Magnesium, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1540.0, 1540.0, 286.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'magnesium-urine-24h-labspring-21030', '21030', 'Magnesium, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1540.0, 1540.0, 314.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'malaria-by-real-time-pcr-labspring-21031', '21031', 'Malaria By Real Time PCR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3471.0, 3471.0, 1493.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'malaria-detection-by-qbc-labspring-21032', '21032', 'Malaria Detection By QBC', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 500.0, 500.0, 171.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'malaria-parasite-detection-by-smear-examination-labspring-21033', '21033', 'Malaria Parasite detection by Smear examination', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 590.0, 590.0, 33.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'malarial-antigen-vivax-falciparum-labspring-21034', '21034', 'Malarial Antigen, Vivax & Falciparum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 590.0, 590.0, 30.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'manganese-blood-labspring-21035', '21035', 'Manganese, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7430.0, 7430.0, 1429.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'manganese-serum-labspring-21036', '21036', 'Manganese, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4170.0, 4170.0, 1743.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'manganese-urine-24h-labspring-21037', '21037', 'Manganese, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7430.0, 7430.0, 2500.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'maternal-screen-1st-trimester-dual-marker-test-labspring-21038', '21038', 'Maternal Screen-1st Trimester Dual Marker Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4050.0, 4050.0, 577.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'maternal-screen-2nd-trimester-quadruple-marker-test-labspring-21039', '21039', 'Maternal Screen-2nd Trimester Quadruple Marker
Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7380.0, 7380.0, 714.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'maternal-screen-2nd-trimester-triple-marker-test-labspring-21040', '21040', 'Maternal Screen-2nd Trimester Triple Marker Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6190.0, 6190.0, 500.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mdma-qualitative-ecstasy-xtc-labspring-21041', '21041', 'MDMA (Qualitative) Ecstasy, XTC', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1080.0, 1080.0, 371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'measles-rubeola-virus-igg-antibody-labspring-21042', '21042', 'Measles (Rubeola) virus IgG antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2670.0, 2670.0, 914.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'measles-rubeola-virus-igg-antibody-csf-labspring-21043', '21043', 'Measles (Rubeola) virus IgG antibody CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8640.0, 8640.0, 1547.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'measles-rubeola-virus-igm-antibody-labspring-21044', '21044', 'Measles (Rubeola) virus IgM antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2670.0, 2670.0, 914.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'medullary-thyroid-carinoma-mutation-detection-sequencing-method-labspring-21045', '21045', 'Medullary Thyroid Carinoma Mutation Detection
Sequencing Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 33480.0, 33480.0, 12500.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow medication/timing instructions from the ordering clinician; biotin supplements can interfere with some assays.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'melas-mutation-detection-labspring-21046', '21046', 'MELAS-Mutation Detection', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16070.0, 16070.0, 6000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'meningitis-viral-panel-igm-labspring-21047', '21047', 'Meningitis (viral) Panel IgM', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5706.0, 5706.0, 2453.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mercury-blood-labspring-21048', '21048', 'Mercury, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3390.0, 3390.0, 1614.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mercury-serum-labspring-21049', '21049', 'Mercury, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5000.0, 5000.0, 2071.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mercury-urine-labspring-21050', '21050', 'Mercury, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3390.0, 3390.0, 1614.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'merrf-mutation-detection-labspring-21051', '21051', 'MERRF Mutation Detection', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 26790.0, 26790.0, 10000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'metanephrine-total-hplc-urine-24h-labspring-21052', '21052', 'Metanephrine -Total HPLC Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3710.0, 3710.0, 1429.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'metanephrine-free-plasma-labspring-21053', '21053', 'Metanephrine-Free Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5000.0, 5000.0, 2133.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'methadone-dolophine-labspring-21054', '21054', 'Methadone Dolophine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 920.0, 920.0, 371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'methamphetamine-qualitative-labspring-21055', '21055', 'Methamphetamine, Qualitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 920.0, 920.0, 371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'methaquolone-qualitative-labspring-21056', '21056', 'Methaquolone, Qualitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 270.0, 270.0, 114.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'methhaemoglobin-labspring-21057', '21057', 'Methhaemoglobin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2700.0, 2700.0, 543.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'methionine-quantitative-urine-24h-labspring-21058', '21058', 'Methionine Quantitative Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16740.0, 16740.0, 5950.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'methotrexate-labspring-21059', '21059', 'Methotrexate', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5000.0, 5000.0, 1600.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'methyl-malonic-acid-qualitative-labspring-21060', '21060', 'Methyl Malonic Acid Qualitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1170.0, 1170.0, 461.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'methyl-malonic-acid-quantitative-labspring-21061', '21061', 'Methyl Malonic Acid Quantitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 26790.0, 26790.0, 10000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mgmt-by-pcr-temozolomide-resistance-mgmt-methylation-assay-tissue-labspring-21062', '21062', 'MGMT by PCR Temozolomide Resistance (MGMT
Methylation assay) Tissue', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 44010.0, 44010.0, 9000.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'micm-by-pcr-maternally-inherited-cardiomyopathy-labspring-21063', '21063', 'MICM By PCR Maternally Inherited Cardiomyopathy', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 18750.0, 18750.0, 7000.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'microalbumin-urine-24h-labspring-21064', '21064', 'Microalbumin, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 21.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'microalbumin-urine-spot-labspring-21065', '21065', 'Microalbumin, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 21.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'microdeletion-15q11-13-labspring-21066', '21066', 'Microdeletion 15q11-13', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 17280.0, 17280.0, 5900.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'microdeletion-22q-labspring-21067', '21067', 'Microdeletion 22q', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14310.0, 14310.0, 4800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'microsporidium-detection-by-smear-examination-labspring-21068', '21068', 'Microsporidium Detection by smear examination', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 830.0, 830.0, 286.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mitochondrial-m2-antibody-reflex-to-end-point-titre-ama-labspring-21069', '21069', 'Mitochondrial (M2) Antibody Reflex to end point titre
(AMA)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3000.0, 3000.0, 1029.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mixing-studies-aptt-labspring-21070', '21070', 'Mixing Studies (APTT)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3380.0, 3380.0, 1343.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mmc-mutation-detection-maternal-myopathy-with-cardiomyopathy-labspring-21071', '21071', 'MMC-Mutation Detection Maternal Myopathy With
Cardiomyopathy', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 18750.0, 18750.0, 7000.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mm-mutation-detection-mitochondrial-myopathy-labspring-21072', '21072', 'MM-Mutation Detection Mitochondrial Myopathy', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 22770.0, 22770.0, 8500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mpl-w515-s505-mutation-analysis-for-jak2-v617f-negative-cases-blood-labspring-21073', '21073', 'MPL W515 / S505 Mutation Analysis For Jak2 V617F
Negative Cases Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16070.0, 16070.0, 6000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mpl-w515-s505-mutation-analysis-for-jak2-v617f-negative-cases-bone-marrow-labspring-21074', '21074', 'MPL W515 / S505 Mutation Analysis For Jak2 V617F
Negative Cases Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16200.0, 16200.0, 6000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mpo-stain-myeloperoxidase-stain-labspring-21075', '21075', 'MPO stain Myeloperoxidase Stain', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2160.0, 2160.0, 457.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mthfr-mutations-c677t-a1298c-mutations-labspring-21076', '21076', 'MTHFR Mutations C677T / A1298C Mutations', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9670.0, 9670.0, 3609.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mucopolysaccharides-mps-screen-qualitative-labspring-21077', '21077', 'Mucopolysaccharides (MPS) Screen Qualitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 830.0, 830.0, 286.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mucopolysaccharides-mps-type-i-labspring-21078', '21078', 'Mucopolysaccharides (MPS) Type-I', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13390.0, 13390.0, 5000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mucopolysaccharides-mps-type-vi-labspring-21079', '21079', 'Mucopolysaccharides (MPS) Type-VI', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5630.0, 5630.0, 2100.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mumps-virus-igg-antibody-labspring-21080', '21080', 'Mumps virus IgG antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2670.0, 2670.0, 914.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mumps-virus-igm-antibody-labspring-21081', '21081', 'Mumps virus IgM antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2670.0, 2670.0, 914.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'musk-antibody-muscle-specific-kinase-ab-labspring-21082', '21082', 'MuSK Antibody Muscle Specific Kinase Ab', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10330.0, 10330.0, 3307.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mycoplasma-pneumoniae-igg-antibody-labspring-21083', '21083', 'Mycoplasma Pneumoniae IgG Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3420.0, 3420.0, 1171.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mycoplasma-pneumoniae-igm-antibody-labspring-21084', '21084', 'Mycoplasma Pneumoniae IgM Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3420.0, 3420.0, 1171.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'myoglobin-labspring-21085', '21085', 'Myoglobin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3500.0, 3500.0, 1200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'myotonic-dystrophy-type-1-19q-133-labspring-21086', '21086', 'Myotonic Dystrophy Type 1 19q 13.3', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 18750.0, 18750.0, 7000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'myotonic-dystrophy-type-2-3q-21-labspring-21087', '21087', 'Myotonic Dystrophy Type 2 3q 21', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 24110.0, 24110.0, 9000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'n-acetyl-glucosamine-6-sulphate-sulphatase-labspring-21088', '21088', 'N- Acetyl Glucosamine 6 Sulphate Sulphatase', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 17820.0, 17820.0, 6000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'narp-neurogenic-ataxia-retinitis-pigmentosa-labspring-21089', '21089', 'NARP Neurogenic Ataxia Retinitis Pigmentosa', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 18750.0, 18750.0, 6500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'natural-killer-cells-nkc-cd3cd16cd56-cd45-labspring-21090', '21090', 'Natural Killer Cells (NKC) CD3/CD16/CD56, CD45', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6500.0, 6500.0, 2080.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'neisseria-gonorrhoae-culture-identification-urethral-discharge-labspring-21091', '21091', 'Neisseria Gonorrhoae Culture & Identification
Urethral Discharge', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1490.0, 1490.0, 571.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow site-specific collection instructions; tell the provider about recent antibiotics when relevant.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'neisseria-gonorrhoae-culture-identification-vaginal-discharge-labspring-21092', '21092', 'Neisseria Gonorrhoae Culture & Identification Vaginal
discharge', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1490.0, 1490.0, 571.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow site-specific collection instructions; tell the provider about recent antibiotics when relevant.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'neisseria-gonorrhoae-detection-by-real-time-pcr-genital-swab-labspring-21093', '21093', 'Neisseria Gonorrhoae Detection by Real time PCR
Genital swab', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9180.0, 9180.0, 1707.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow site-specific collection instructions; tell the provider about recent antibiotics when relevant.', 'Swab (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'neisseria-gonorrhoae-detection-by-real-time-pcr-urethral-discharge-labspring-21094', '21094', 'Neisseria Gonorrhoae Detection By Real Time PCR
Urethral Discharge', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9180.0, 9180.0, 1707.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'neisseria-meningitidis-abcy-w135-antigen-detection-labspring-21095', '21095', 'Neisseria Meningitidis A,B,C,Y W135 Antigen
detection', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6890.0, 6890.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nickel-serum-labspring-21096', '21096', 'Nickel Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4170.0, 4170.0, 1543.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nickel-urine-spot-labspring-21097', '21097', 'Nickel Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3240.0, 3240.0, 1543.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nickel-blood-labspring-21098', '21098', 'Nickel, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6700.0, 6700.0, 2500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nicotine-metabolite-quantitative-cotinine-labspring-21099', '21099', 'Nicotine Metabolite Quantitative Cotinine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1760.0, 1760.0, 743.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nipt-non-invasive-prenatal-test-labspring-21100', '21100', 'NIPT Non Invasive Prenatal Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 23810.0, 23810.0, 6000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nmda-receptor-antibody-nr1-csf-labspring-21101', '21101', 'NMDA Receptor Antibody (NR1), CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16740.0, 16740.0, 3200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nmda-receptor-antibody-nr1-serum-labspring-21102', '21102', 'NMDA Receptor Antibody (NR1), Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10000.0, 10000.0, 3200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nmo-aquaporin-4-igg-csf-labspring-21103', '21103', 'NMO (Aquaporin 4)-IgG, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12150.0, 12150.0, 2293.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nmo-aquaporin-4-igg-serum-labspring-21104', '21104', 'NMO (Aquaporin 4)-IgG, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7170.0, 7170.0, 2293.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nocardia-detection-by-smear-examination-sputum-labspring-21105', '21105', 'Nocardia Detection by smear examination Sputum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 830.0, 830.0, 286.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow site-specific collection instructions; tell the provider about recent antibiotics when relevant.', 'Sputum / respiratory specimen', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nocardia-detection-by-smear-examination-tissue-labspring-21106', '21106', 'Nocardia Detection by smear examination Tissue', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 740.0, 740.0, 286.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'noradrenaline-nor-epinephrine-plasma-labspring-21107', '21107', 'NorAdrenaline Nor-epinephrine, Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4830.0, 4830.0, 1547.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'noradrenaline-nor-epinephrine-urine-24h-labspring-21108', '21108', 'NorAdrenaline Nor-epinephrine, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4190.0, 4190.0, 1547.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nor-metanephrine-urine-24h-labspring-21109', '21109', 'Nor-Metanephrine, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3110.0, 3110.0, 1143.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nor-metanephrine-free-plasma-labspring-21110', '21110', 'Nor-Metanephrine-Free, Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6670.0, 6670.0, 2133.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'npm1-mutations-aml-blood-labspring-21111', '21111', 'NPM1 Mutations AML, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10450.0, 10450.0, 3900.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'npm1-mutations-aml-bone-marrow-labspring-21112', '21112', 'NPM1 mutations AML, Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10800.0, 10800.0, 3900.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nse-neuron-specific-enolase-csf-labspring-21113', '21113', 'NSE Neuron Specific Enolase, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9180.0, 9180.0, 3200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nse-neuron-specific-enolase-serum-labspring-21114', '21114', 'NSE Neuron Specific Enolase, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5000.0, 5000.0, 1600.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nt-pro-bnp-labspring-21115', '21115', 'NT-Pro BNP', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2260.0, 2260.0, 704.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ntx-n-tellopeptide-collagen-crosslinked-urine-24h-labspring-21116', '21116', 'NTx N-Tellopeptide (Collagen Crosslinked) Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5330.0, 5330.0, 1707.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'occult-blood-stool-labspring-21117', '21117', 'Occult blood, Stool', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 360.0, 360.0, 35.0, NULL,
  'Contact for TAT', 'Usually no fasting. Collect a clean specimen as instructed; avoid contamination and follow any medication/diet restrictions specified for the test.', 'Stool / feces', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'oligoclonal-band-by-ief-multiple-sclerosis-csf-and-serum-labspring-21118', '21118', 'Oligoclonal Band By IEF Multiple Sclerosis, CSF And
Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6210.0, 6210.0, 2293.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'opiates-morphine-labspring-21119', '21119', 'Opiates Morphine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 400.0, 400.0, 189.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ornithine-quantitative-labspring-21120', '21120', 'Ornithine Quantitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15940.0, 15940.0, 5950.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ornithine-quantitative-urine-24h-labspring-21121', '21121', 'Ornithine Quantitative, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16740.0, 16740.0, 5950.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'osmolality-serum-labspring-21122', '21122', 'Osmolality, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1070.0, 1070.0, 514.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'osmolality-urine-labspring-21123', '21123', 'Osmolality, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1220.0, 1220.0, 514.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'osmotic-fragility-test-rbc-fragility-test-na-heparin-blood-labspring-21124', '21124', 'Osmotic Fragility Test. RBC Fragility Test, Na Heparin
Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1150.0, 1150.0, 429.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'osteocalcin-bgp-bone-gla-protein-labspring-21125', '21125', 'Osteocalcin BGP-Bone Gla Protein', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4580.0, 4580.0, 1467.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ova-and-parasite-detection-concentration-method-stool-labspring-21126', '21126', 'Ova And Parasite Detection Concentration Method
Stool', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 580.0, 580.0, 200.0, NULL,
  'Contact for TAT', 'Usually no fasting. Collect a clean specimen as instructed; avoid contamination and follow any medication/diet restrictions specified for the test.', 'Stool / feces', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ovarian-antibody-aoa-labspring-21127', '21127', 'Ovarian Antibody AOA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5500.0, 5500.0, 1760.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'oxalate-oxalic-acid-labspring-21128', '21128', 'Oxalate Oxalic Acid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3080.0, 3080.0, 529.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'oxcarbazepine-metabolite-of-oxcarbamazepine-labspring-21129', '21129', 'Oxcarbazepine Metabolite Of Oxcarbamazepine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5130.0, 5130.0, 2443.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'p1np-labspring-21130', '21130', 'P1NP', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2750.0, 2750.0, 943.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'palmitoyl-protein-thioesterase-leucocytes-lipofuscinosis-labspring-21131', '21131', 'Palmitoyl Protein Thioesterase Leucocytes,
Lipofuscinosis', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12960.0, 12960.0, 4500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'panfungal-dna-dna-detection-by-pcr-blood-labspring-21132', '21132', 'Panfungal-DNA DNA Detection By PCR Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15000.0, 15000.0, 3500.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'panfungal-dna-dna-detection-by-pcr-body-fluids-labspring-21133', '21133', 'Panfungal-DNA DNA detection by PCR Body fluids', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 24300.0, 24300.0, 3500.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Body fluid (type specified by test)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'panfungal-dna-dna-detection-by-pcr-csf-labspring-21134', '21134', 'Panfungal-DNA DNA detection by PCR CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 24300.0, 24300.0, 3500.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'panfungal-dna-dna-detection-by-pcr-sputum-labspring-21135', '21135', 'Panfungal-DNA DNA Detection By PCR Sputum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 17410.0, 17410.0, 3500.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow site-specific collection instructions; tell the provider about recent antibiotics when relevant.', 'Sputum / respiratory specimen', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'panfungal-dna-dna-detection-by-pcr-tissue-labspring-21136', '21136', 'Panfungal-DNA DNA detection by PCR Tissue', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 24300.0, 24300.0, 3500.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pap-smear-conventional-method-labspring-21137', '21137', 'Pap Smear Conventional Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 40.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Cytology specimen (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pap-smear-second-opinion-slides-labspring-21138', '21138', 'Pap Smear Second Opinion Slides', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1350.0, 1350.0, 571.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Cytology specimen (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pappa-pregnancy-associated-plasma-protein-labspring-21139', '21139', 'PAPPa Pregnancy Associated Plasma Protein', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3780.0, 3780.0, 743.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'paracetamol-acetaminophen-labspring-21140', '21140', 'Paracetamol Acetaminophen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1830.0, 1830.0, 629.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'parainfluenza-12-3-igg-antibody-labspring-21141', '21141', 'Parainfluenza 1,2 & 3 IgG antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2830.0, 2830.0, 971.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'parainfluenza-12-3-igm-antibody-labspring-21142', '21142', 'Parainfluenza 1,2 & 3 IgM antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2830.0, 2830.0, 971.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'parietal-cell-antibody-labspring-21143', '21143', 'Parietal Cell Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3500.0, 3500.0, 1200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'parvovirus-b19-dna-detection-by-pcr-amniotic-fluid-labspring-21144', '21144', 'Parvovirus B19 DNA detection by PCR Amniotic fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7700.0, 7700.0, 2850.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Amniotic fluid', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'parvovirus-b19-dna-detection-by-pcr-blood-labspring-21145', '21145', 'Parvovirus B19 DNA Detection By PCR Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4750.0, 4750.0, 1520.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'parvovirus-b19-dna-detection-by-pcr-csf-labspring-21146', '21146', 'Parvovirus B19 DNA detection by PCR CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6330.0, 6330.0, 2344.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'parvovirus-b19-igg-antibody-labspring-21147', '21147', 'Parvovirus B19 IgG antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3059.0, 3059.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'parvovirus-b19-igm-antibody-labspring-21148', '21148', 'Parvovirus B19 IgM antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3059.0, 3059.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pas-stain-blood-labspring-21149', '21149', 'PAS Stain, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1170.0, 1170.0, 400.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pas-stain-bone-marrow-labspring-21150', '21150', 'PAS Stain, Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1350.0, 1350.0, 400.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'paul-bunnel-test-infectious-mononucleosis-test-labspring-21151', '21151', 'Paul bunnel test Infectious mononucleosis test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1670.0, 1670.0, 571.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pcp-phencyclidine-phosphate-labspring-21152', '21152', 'PCP Phencyclidine Phosphate', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 920.0, 920.0, 400.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pcv-haematocrit-labspring-21153', '21153', 'PCV Haematocrit', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 43.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'peripheral-smear-examination-by-pathologist-labspring-21154', '21154', 'Peripheral Smear Examination By Pathologist', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 51.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ph-stool-labspring-21155', '21155', 'PH Stool', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 69.0, NULL,
  'Contact for TAT', 'Usually no fasting. Collect a clean specimen as instructed; avoid contamination and follow any medication/diet restrictions specified for the test.', 'Stool / feces', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'phenobarbitone-gardinal-labspring-21156', '21156', 'Phenobarbitone Gardinal', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1580.0, 1580.0, 326.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'phenylalanine-quantitative-serum-labspring-21157', '21157', 'Phenylalanine Quantitative Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15940.0, 15940.0, 5950.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'phenylalanine-quantitative-urine-24h-labspring-21158', '21158', 'Phenylalanine Quantitative Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16740.0, 16740.0, 5950.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'phenytoin-eptoin-dilantin-labspring-21159', '21159', 'Phenytoin Eptoin, Dilantin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1580.0, 1580.0, 543.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'phosphorus-inorganic-serum-labspring-21160', '21160', 'Phosphorus-Inorganic, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 470.0, 470.0, 44.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'phosphorus-inorganic-urine-24h-labspring-21161', '21161', 'Phosphorus-Inorganic, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 410.0, 410.0, 157.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'phosphorus-inorganic-urine-spot-labspring-21162', '21162', 'Phosphorus-Inorganic, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 410.0, 410.0, 157.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'phosphotidylserine-igg-antibody-labspring-21163', '21163', 'Phosphotidylserine IgG antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1830.0, 1830.0, 629.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'phosphotidylserine-igm-antibody-labspring-21164', '21164', 'Phosphotidylserine IgM antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1830.0, 1830.0, 629.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pla2-receptor-antibody-labspring-21165', '21165', 'PLA2 Receptor Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12060.0, 12060.0, 4500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'platelet-antibodies-qualitative-test-labspring-21166', '21166', 'Platelet Antibodies Qualitative Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10000.0, 10000.0, 3200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'platelet-count-thrombocyte-count-labspring-21167', '21167', 'Platelet Count Thrombocyte count', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 39.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'plgf-placental-growth-factor-labspring-21168', '21168', 'PLGF Placental growth factor', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9050.0, 9050.0, 1653.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pneumocystis-carinii-detection-balsputum-labspring-21169', '21169', 'Pneumocystis Carinii Detection BAL/Sputum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3650.0, 3650.0, 1429.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow site-specific collection instructions; tell the provider about recent antibiotics when relevant.', 'Sputum / respiratory specimen', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pnh-confirmation-test-flaer-method-labspring-21170', '21170', 'PNH Confirmation Test FLAER Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 17410.0, 17410.0, 6300.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pnma2-ma2-ta-antibody-neuronal-antigen-for-paraneoplastic-syndromes-labspring-21171', '21171', 'PNMA2 (MA2 / TA) Antibody Neuronal Antigen For
Paraneoplastic Syndromes', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7500.0, 7500.0, 2400.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'polarising-microscopy-for-crystals-includes-cell-count-synovial-fluid-labspring-21172', '21172', 'Polarising Microscopy For Crystals Includes Cell count
Synovial fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2430.0, 2430.0, 514.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Synovial / joint fluid', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pompe-disease-enzyme-assay-labspring-21173', '21173', 'Pompe Disease Enzyme Assay', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15660.0, 15660.0, 5500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'porphobilinogen-pbg-quantitative-urine-24h-labspring-21174', '21174', 'Porphobilinogen-PBG Quantitative, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5130.0, 5130.0, 1867.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'porphobilinogen-pbg-quantitative-urine-spot-labspring-21175', '21175', 'Porphobilinogen-PBG Quantitative, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5830.0, 5830.0, 1867.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'potassium-serum-labspring-21176', '21176', 'Potassium, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 430.0, 430.0, 51.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'potassium-urine-24h-labspring-21177', '21177', 'Potassium, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 740.0, 740.0, 157.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'potassium-urine-spot-labspring-21178', '21178', 'Potassium, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 730.0, 730.0, 53.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pra-plasma-renin-activity-labspring-21179', '21179', 'PRA Plasma Renin Activity', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6670.0, 6670.0, 2133.0, NULL,
  'Contact for TAT', 'Collection time may be important (often morning); follow the ordering clinician/lab''s timing and medication instructions.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'praderwilli-methylation-labspring-21180', '21180', 'PraderWilli Methylation', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 18750.0, 18750.0, 7000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'procalcitonin-labspring-21181', '21181', 'Procalcitonin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5600.0, 5600.0, 1601.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'progesterone-p4-labspring-21182', '21182', 'Progesterone (P4)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1310.0, 1310.0, 70.0, NULL,
  'Contact for TAT', 'Usually no fasting. Collection timing can matter for some hormone tests (cycle day/time of day); follow the clinician/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'prolactin-labspring-21183', '21183', 'Prolactin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 86.0, NULL,
  'Contact for TAT', 'Usually no fasting. Collection timing can matter for some hormone tests (cycle day/time of day); follow the clinician/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'prolactin-active-monomeric-prolactin-labspring-21184', '21184', 'Prolactin, active Monomeric prolactin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1500.0, 1500.0, 514.0, NULL,
  'Contact for TAT', 'Usually no fasting. Collection timing can matter for some hormone tests (cycle day/time of day); follow the clinician/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'prolactin-tripooled-labspring-21185', '21185', 'Prolactin, Tripooled', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 740.0, 740.0, 46.0, NULL,
  'Contact for TAT', 'Usually no fasting. Collection timing can matter for some hormone tests (cycle day/time of day); follow the clinician/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'propoxyphene-qualitative-labspring-21186', '21186', 'Propoxyphene Qualitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 64.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'protein-c-activity-functional-labspring-21187', '21187', 'Protein C Activity Functional', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3660.0, 3660.0, 1743.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'protein-c-antigen-labspring-21188', '21188', 'Protein C Antigen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7500.0, 7500.0, 2000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'protein-electrophoresis-labspring-21189', '21189', 'Protein Electrophoresis', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1190.0, 1190.0, 414.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'protein-electrophoresis-reflex-immunofixation-qualitative-labspring-21190', '21190', 'Protein Electrophoresis Reflex immunofixation
(Qualitative)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3830.0, 3830.0, 1314.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'protein-electrophoresis-urine-24h-labspring-21191', '21191', 'Protein Electrophoresis, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1150.0, 1150.0, 486.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'protein-s-activity-functional-labspring-21192', '21192', 'Protein S Activity Functional', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5950.0, 5950.0, 1920.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'protein-s-antigen-free-labspring-21193', '21193', 'Protein S Antigen (Free)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7920.0, 7920.0, 2933.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'proteins-creatinine-ratio-spot-urine-labspring-21194', '21194', 'Proteins / Creatinine Ratio Spot Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 50.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'proteins-ascitic-fluid-labspring-21195', '21195', 'Proteins, Ascitic Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 48.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Body fluid (type specified by test)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'proteins-csf-labspring-21196', '21196', 'Proteins, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 740.0, 740.0, 157.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'proteins-pleuralfluid-labspring-21197', '21197', 'Proteins, PleuralFluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 740.0, 740.0, 157.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'proteins-serum-labspring-21198', '21198', 'Proteins, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 470.0, 470.0, 45.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'proteins-synovialfluid-labspring-21199', '21199', 'Proteins, SynovialFluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 740.0, 740.0, 157.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Synovial / joint fluid', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'proteins-urine-24h-labspring-21200', '21200', 'Proteins, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 430.0, 430.0, 50.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'prothrombin-factor-ii-mutation-g20210a-labspring-21201', '21201', 'Prothrombin (Factor II) Mutation G20210A', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8330.0, 8330.0, 3600.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'psa-reflex-free-psa-labspring-21202', '21202', 'PSA Reflex Free PSA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 800.0, 800.0, 293.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'psa-with-free-psa-ratio-labspring-21203', '21203', 'PSA With Free PSA Ratio', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 380.0, 380.0, 179.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'psa-free-prostate-specific-antigen-prostate-cancer-marker-test-labspring-21204', '21204', 'PSA-Free Prostate Specific Antigen (Prostate Cancer
Marker Test)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 96.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'psa-total-prostate-specific-antigen-prostate-cancer-marker-test-labspring-21205', '21205', 'PSA-total Prostate Specific Antigen (Prostate Cancer
Marker Test)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 720.0, 720.0, 139.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pseudo-cholinesterase-opc-poisoning-labspring-21206', '21206', 'Pseudo Cholinesterase OPC Poisoning', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1670.0, 1670.0, 571.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pth-intact-molecule-parathyroid-hormone-labspring-21207', '21207', 'PTH-Intact Molecule Parathyroid Hormone', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3330.0, 3330.0, 106.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow medication/timing instructions from the ordering clinician; biotin supplements can interfere with some assays.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ra-test-rheumatoid-arthritis-factor-test-synovial-fluid-labspring-21208', '21208', 'RA test Rheumatoid Arthritis factor test Synovial Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 688.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Synovial / joint fluid', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'rbc-folate-labspring-21209', '21209', 'RBC Folate', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3170.0, 3170.0, 1086.0, NULL,
  'Contact for TAT', 'Some laboratories require fasting (commonly 8 hours). Follow the performing lab''s test-specific instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'reducing-substances-stool-labspring-21210', '21210', 'Reducing Substances Stool', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 420.0, 420.0, 114.0, NULL,
  'Contact for TAT', 'Usually no fasting. Collect a clean specimen as instructed; avoid contamination and follow any medication/diet restrictions specified for the test.', 'Stool / feces', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'reducing-substances-paediatric-urine-labspring-21211', '21211', 'Reducing Substances, Paediatric Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 330.0, 330.0, 114.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'renin-direct-labspring-21212', '21212', 'Renin Direct', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5170.0, 5170.0, 1653.0, NULL,
  'Contact for TAT', 'Collection time may be important (often morning); follow the ordering clinician/lab''s timing and medication instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'reticulocyte-count-labspring-21213', '21213', 'Reticulocyte Count', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 63.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'retinol-binding-protien-rbp-labspring-21214', '21214', 'Retinol Binding Protien RBP', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6960.0, 6960.0, 2600.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'rett-syndrome-mecp2-sequencing-labspring-21215', '21215', 'Rett Syndrome MECP2 Sequencing', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14730.0, 14730.0, 5500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'rh-antibody-titre-anti-d-titre-automated-cat-labspring-21216', '21216', 'Rh Antibody Titre Anti D Titre-Automated CAT', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1420.0, 1420.0, 486.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ri-antibody-neuronal-antigen-for-paraneoplastic-syndromes-labspring-21217', '21217', 'Ri Antibody Neuronal Antigen For Paraneoplastic
Syndromes', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7500.0, 7500.0, 2400.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ricketssia-pcr-labspring-21218', '21218', 'Ricketssia PCR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13390.0, 13390.0, 5000.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'rnp-sm-antibody-labspring-21219', '21219', 'RNP-Sm Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2670.0, 2670.0, 714.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'rota-virus-antigen-detection-labspring-21220', '21220', 'Rota virus Antigen detection', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2170.0, 2170.0, 743.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'routine-examination-reflex-to-cytology-ascitic-fluid-labspring-21221', '21221', 'Routine Examination Reflex To Cytology, Ascitic Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2160.0, 2160.0, 457.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Body fluid (type specified by test)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'routine-examination-reflex-to-cytology-body-fluid-labspring-21222', '21222', 'Routine examination Reflex to cytology, Body fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2160.0, 2160.0, 457.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Body fluid (type specified by test)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'routine-examination-reflex-to-cytology-csf-labspring-21223', '21223', 'Routine Examination Reflex To Cytology, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2160.0, 2160.0, 457.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'routine-examination-reflex-to-cytology-pericardial-fluid-labspring-21224', '21224', 'Routine examination Reflex to cytology, Pericardial
Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2160.0, 2160.0, 457.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Cytology specimen (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'routine-examination-reflex-to-cytology-pleural-fluid-labspring-21225', '21225', 'Routine Examination Reflex To Cytology, Pleural Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1080.0, 1080.0, 457.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Body fluid (type specified by test)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'routine-examination-reflex-to-cytology-prostatic-fluid-labspring-21226', '21226', 'Routine examination Reflex to cytology, Prostatic
Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2160.0, 2160.0, 457.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Cytology specimen (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'routine-examination-reflex-to-cytology-synovial-fluid-labspring-21227', '21227', 'Routine examination Reflex to cytology, Synovial Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2160.0, 2160.0, 457.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Synovial / joint fluid', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'rsv-respiratory-syncytial-virus-igg-antibody-labspring-21228', '21228', 'RSV-Respiratory Syncytial Virus IgG antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3170.0, 3170.0, 1086.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'rsv-respiratory-syncytial-virus-igm-antibody-labspring-21229', '21229', 'RSV-Respiratory Syncytial Virus IgM antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3170.0, 3170.0, 1086.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'rubella-german-measles-virus-avidity-test-labspring-21230', '21230', 'Rubella (German measles) virus Avidity test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2000.0, 2000.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'rubella-german-measles-virus-igg-and-igm-antibody-labspring-21231', '21231', 'Rubella (German Measles) Virus IgG And IgM Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 130.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'rubella-german-measles-virus-igg-antibody-labspring-21232', '21232', 'Rubella (German Measles) Virus IgG Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 61.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'rubella-german-measles-virus-igm-antibody-labspring-21233', '21233', 'Rubella (German measles) virus IgM antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 114.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'rubella-german-measles-virus-rna-detection-by-pcr-blood-labspring-21234', '21234', 'Rubella (German Measles) Virus RNA Detection By
PCR Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5000.0, 5000.0, 1600.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'rubella-german-measles-virus-rna-detection-by-pcr-csf-labspring-21235', '21235', 'Rubella (German measles) virus RNA detection by PCR
CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8910.0, 8910.0, 3000.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'rubella-german-measles-virus-rna-detection-by-pcr-cvs-labspring-21236', '21236', 'Rubella (German measles) virus RNA detection by PCR
CVS', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8910.0, 8910.0, 3000.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'rubella-german-measles-virus-rna-detection-by-pcr-urine-labspring-21237', '21237', 'Rubella (German Measles) Virus RNA Detection By
PCR Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8840.0, 8840.0, 3000.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'rubella-german-measles-virus-rna-detection-by-pcr-amniotic-fluid-labspring-21238', '21238', 'Rubella (German measles) virus RNA detection by
PCR, Amniotic Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8910.0, 8910.0, 3000.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Amniotic fluid', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sca1-spinocerebellar-ataxia-type-1-cag-repeats-labspring-21239', '21239', 'SCA1 Spinocerebellar Ataxia Type 1 , CAG Repeats', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4830.0, 4830.0, 1547.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sca12-spinocerebellar-ataxia-type-12-cag-repeats-labspring-21240', '21240', 'SCA12 Spinocerebellar Ataxia Type 12 , CAG Repeats', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4830.0, 4830.0, 1547.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sca17-pcr-fragment-analysis-labspring-21241', '21241', 'SCA17 PCR-Fragment Analysis', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7770.0, 7770.0, 2900.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sca2-spinocerebellar-ataxia-type-2-cag-repeats-labspring-21242', '21242', 'SCA2 Spinocerebellar Ataxia Type 2 , CAG Repeats', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4830.0, 4830.0, 1547.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sca3-mjd-spinocerebellar-ataxia-type-3-cag-repeats-labspring-21243', '21243', 'SCA3 (MJD) Spinocerebellar Ataxia Type 3 , CAG
Repeats', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4830.0, 4830.0, 1547.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sca6-spinocerebellar-ataxia-type-6-cag-repeats-labspring-21244', '21244', 'SCA6 Spinocerebellar Ataxia Type 6 , CAG Repeats', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4830.0, 4830.0, 1547.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sca7-spinocerebellar-ataxia-type-7-cag-repeats-labspring-21245', '21245', 'SCA7 Spinocerebellar Ataxia Type 7 , CAG Repeats', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4830.0, 4830.0, 1547.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'scl-70-antibody-anti-topoisomerase-i-serum-labspring-21246', '21246', 'Scl-70 Antibody (Anti-topoisomerase I), Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2580.0, 2580.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'scrub-typhus-igm-labspring-21247', '21247', 'Scrub Typhus IgM', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 420.0, 420.0, 139.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'selenium-blood-labspring-21248', '21248', 'Selenium, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2100.0, 2100.0, 1000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'selenium-serum-labspring-21249', '21249', 'Selenium, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4170.0, 4170.0, 1543.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'selenium-urine-labspring-21250', '21250', 'Selenium, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6700.0, 6700.0, 2500.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'selenium-urine-24h-labspring-21251', '21251', 'Selenium, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6700.0, 6700.0, 2500.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'serine-quantitative-urine-24h-labspring-21252', '21252', 'Serine Quantitative, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16740.0, 16740.0, 5950.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'serotonin-5-hydroxy-tryptamine-serum-labspring-21253', '21253', 'Serotonin 5-Hydroxy Tryptamine, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5000.0, 5000.0, 2240.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'serotonin-5-hydroxy-tryptamine-urine-labspring-21254', '21254', 'Serotonin 5-Hydroxy Tryptamine, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7000.0, 7000.0, 2240.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sgotast-labspring-21255', '21255', 'SGOT/AST', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 360.0, 360.0, 44.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sgptalt-labspring-21256', '21256', 'SGPT/ALT', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 360.0, 360.0, 44.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'shbg-sex-hormone-binding-globulin-labspring-21257', '21257', 'SHBG Sex Hormone Binding Globulin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4700.0, 4700.0, 211.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sickling-test-labspring-21258', '21258', 'Sickling Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 640.0, 640.0, 63.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'silver-blood-labspring-21259', '21259', 'Silver, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9380.0, 9380.0, 3500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sirolimus-labspring-21260', '21260', 'Sirolimus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8330.0, 8330.0, 2667.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sla-soluble-liver-antigen-labspring-21261', '21261', 'SLA Soluble Liver Antigen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3500.0, 3500.0, 1493.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sm-antibody-smith-antibody-labspring-21262', '21262', 'Sm Antibody Smith Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2580.0, 2580.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sma-carrier-detection-genetic-disorders-labspring-21263', '21263', 'SMA Carrier Detection Genetic Disorders', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 17410.0, 17410.0, 6500.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sodium-body-fluid-labspring-21264', '21264', 'Sodium, Body Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1080.0, 1080.0, 157.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Body fluid (type specified by test)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sodium-serum-labspring-21265', '21265', 'Sodium, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 310.0, 310.0, 51.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sodium-urine-24h-labspring-21266', '21266', 'Sodium, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 740.0, 740.0, 143.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'soluble-transferrin-receptor-stfr-labspring-21267', '21267', 'Soluble Transferrin Receptor sTFR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1650.0, 1650.0, 566.0, NULL,
  'Contact for TAT', 'Fasting may be preferred for iron studies; some labs recommend about 8 hours and avoiding iron supplements beforehand. Follow lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'spectral-karyotyping-sky-m-fish-24-color-painting-blood-labspring-21268', '21268', 'Spectral Karyotyping (SKY) (m-FISH) 24 Color Painting
Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 43200.0, 43200.0, 16000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'spectral-karyotyping-sky-m-fish-24-color-painting-bone-marrow-labspring-21269', '21269', 'Spectral Karyotyping (SKY) (m-FISH) 24 Color Painting
Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 43200.0, 43200.0, 16000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sperm-antibody-total-asab-labspring-21270', '21270', 'Sperm Antibody-Total ASAB', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 920.0, 920.0, 385.0, NULL,
  'Contact for TAT', 'Usually 2–7 days of sexual abstinence; collect exactly as instructed and deliver promptly. Test-specific instructions may vary.', 'Semen', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sphingomyelinase-niemann-pick-disease-labspring-21271', '21271', 'Sphingomyelinase Niemann Pick Disease', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15660.0, 15660.0, 5500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'spinal-muscular-atrophy-sma-microdeletion-smn1-gene-deletion-blood-labspring-21272', '21272', 'Spinal Muscular Atrophy (SMA ) Microdeletion SMN1
Gene Deletion Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8840.0, 8840.0, 3300.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sry-deletion-labspring-21273', '21273', 'SRY Deletion', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8250.0, 8250.0, 2500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ssa-antibody-ro-labspring-21274', '21274', 'SSA-Antibody Ro', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2580.0, 2580.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ssb-antibody-la-labspring-21275', '21275', 'SSB-Antibody La', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2580.0, 2580.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'stone-analysis-gall-bladder-calculus-labspring-21276', '21276', 'Stone Analysis Gall Bladder Calculus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 980.0, 980.0, 464.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'stone-analysis-kidney-renal-calculus-labspring-21277', '21277', 'Stone Analysis Kidney (Renal) Calculus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 980.0, 980.0, 464.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'stone-analysis-urine-calculus-labspring-21278', '21278', 'Stone Analysis Urine Calculus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1830.0, 1830.0, 464.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'streptococcus-group-b-antigen-detection-csf-labspring-21279', '21279', 'Streptococcus group B Antigen detection CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1760.0, 1760.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'streptococcus-group-b-antigen-detection-serum-labspring-21280', '21280', 'Streptococcus group B Antigen detection Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2000.0, 2000.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'streptococcus-pneumoniae-antigen-detection-csf-labspring-21281', '21281', 'Streptococcus pneumoniae Antigen detection CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1760.0, 1760.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'streptococcus-pneumoniae-antigen-detection-serum-labspring-21282', '21282', 'Streptococcus pneumoniae Antigen detection Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2000.0, 2000.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'streptococcus-pneumoniae-antigen-detection-urine-labspring-21283', '21283', 'Streptococcus pneumoniae Antigen detection Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1760.0, 1760.0, 686.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sucrose-lysis-test-acidified-serum-test-serum-blood-labspring-21284', '21284', 'Sucrose Lysis Test Acidified serum test Serum & Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 950.0, 950.0, 457.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'syphilis-antibody-treponema-pallidum-igg-labspring-21285', '21285', 'Syphilis Antibody (Treponema Pallidum) IgG', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1830.0, 1830.0, 486.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't119-by-fish-e2a-all-bone-marrow-labspring-21286', '21286', 't(1;19): By FISH E2A (ALL) Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7590.0, 7590.0, 3163.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't119by-fish-e2a-all-leukemic-blood-labspring-21287', '21287', 't(1;19):By FISH E2A (ALL) Leukemic Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10530.0, 10530.0, 3900.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't11q23-by-fish-mll-gene-rearrangement-all-aml-bone-marrow-labspring-21288', '21288', 't(11q23): by FISH MLL gene rearrangement (ALL, AML)
Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7590.0, 7590.0, 3163.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't1221-by-fish-tel-aml1-all-bone-marrow-labspring-21289', '21289', 't(12;21): by FISH TEL / AML1 (ALL) Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7590.0, 7590.0, 3163.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't1221-by-fish-tel-aml1-all-leukemic-blood-labspring-21290', '21290', 't(12;21): by FISH TEL / AML1 (ALL) Leukemic Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9500.0, 9500.0, 3960.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't1517-by-pcr-pml-ra-ra-aml-m3-blood-labspring-21291', '21291', 'T(15;17): By PCR PML Ra Ra (AML-M3) Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13390.0, 13390.0, 4900.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't1517-by-pcr-pml-ra-ra-aml-m3-bone-marrow-labspring-21292', '21292', 't(15;17): by PCR PML Ra Ra (AML-M3) Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4900.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't4q12-by-fish-pdgfr-alpha-rearrangement-hes-blood-labspring-21293', '21293', 't(4q12): by FISH PDGFR Alpha Rearrangement (HES)
Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8250.0, 8250.0, 3438.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't4q12-by-fish-pdgfr-alpha-rearrangement-hes-bone-marrow-labspring-21294', '21294', 't(4q12): by FISH PDGFR Alpha Rearrangement (HES)
Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4900.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't5q33-by-fish-pdgfr-beta-rearrangement-hes-blood-labspring-21295', '21295', 't(5q33): by FISH PDGFR Beta Rearrangement (HES)
Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4900.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't5q33-by-fish-pdgfr-beta-rearrangement-hes-bone-marrow-labspring-21296', '21296', 't(5q33): by FISH PDGFR Beta Rearrangement (HES)
Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4900.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't821-by-fish-eto-aml1-aml-m2-bone-marrow-labspring-21297', '21297', 't(8;21): by FISH ETO / AML1 (AML-M2) Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11610.0, 11610.0, 3900.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't821-by-fish-eto-aml1-aml-m2-leukemic-blood-labspring-21298', '21298', 't(8;21): by FISH ETO / AML1 (AML-M2) Leukemic
Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9500.0, 9500.0, 3960.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't922-by-fish-bcr-abl-philadelphia-bone-marrow-labspring-21299', '21299', 't(9;22): by FISH Bcr-Abl (Philadelphia) Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7130.0, 7130.0, 2080.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't922-by-fish-bcr-abl-philadelphia-leukemic-blood-labspring-21300', '21300', 't(9;22): by FISH Bcr-Abl (Philadelphia) Leukemic Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11880.0, 11880.0, 2080.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't922-by-real-time-pcr-bcr-abl-international-scale-blood-labspring-21301', '21301', 'T(9,22): By Real Time PCR Bcr-Abl International Scale
Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10000.0, 10000.0, 3200.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't3-free-free-tri-iodothyronine-labspring-21302', '21302', 'T3, Free Free Tri-Iodothyronine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 34.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow medication/timing instructions from the ordering clinician; biotin supplements can interfere with some assays.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't3-total-tri-iodothyronine-labspring-21303', '21303', 'T3, Total Tri Iodothyronine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 430.0, 430.0, 17.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow medication/timing instructions from the ordering clinician; biotin supplements can interfere with some assays.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't4-free-free-thyroxine-labspring-21304', '21304', 'T4, Free Free Thyroxine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 33.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow medication/timing instructions from the ordering clinician; biotin supplements can interfere with some assays.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  't4-total-thyroxine-labspring-21305', '21305', 'T4, Total Thyroxine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 430.0, 430.0, 19.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow medication/timing instructions from the ordering clinician; biotin supplements can interfere with some assays.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'tacrolimus-by-cmia-labspring-21306', '21306', 'Tacrolimus By CMIA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7902.0, 7902.0, 2634.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'tacrolimus-by-lcms-labspring-21307', '21307', 'Tacrolimus By LCMS', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6000.0, 6000.0, 1920.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'tcr-alpha-beta-labspring-21308', '21308', 'TCR-Alpha Beta', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6160.0, 6160.0, 2300.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'tcr-gamma-delta-labspring-21309', '21309', 'TCR-Gamma Delta', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6160.0, 6160.0, 2300.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'tdt-nuclear-labspring-21310', '21310', 'TDT (Nuclear)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2740.0, 2740.0, 1314.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'testosterone-bioavailable-labspring-21311', '21311', 'Testosterone Bioavailable', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3240.0, 3240.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no fasting. Collection timing can matter for some hormone tests (cycle day/time of day); follow the clinician/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'testosterone-free-labspring-21312', '21312', 'Testosterone Free', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2380.0, 2380.0, 190.0, NULL,
  'Contact for TAT', 'Usually no fasting. Collection timing can matter for some hormone tests (cycle day/time of day); follow the clinician/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'testosterone-total-labspring-21313', '21313', 'Testosterone Total', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 920.0, 920.0, 169.0, NULL,
  'Contact for TAT', 'Usually no fasting. Collection timing can matter for some hormone tests (cycle day/time of day); follow the clinician/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'tetanus-toxoid-igg-quantitative-test-labspring-21314', '21314', 'Tetanus Toxoid-IgG Quantitative Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10710.0, 10710.0, 4000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'thallium-blood-labspring-21315', '21315', 'Thallium, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3240.0, 3240.0, 1543.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'thallium-serum-labspring-21316', '21316', 'Thallium, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8040.0, 8040.0, 3857.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'thallium-urine-spot-labspring-21317', '21317', 'Thallium, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8100.0, 8100.0, 3000.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'theophylline-labspring-21318', '21318', 'Theophylline', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1650.0, 1650.0, 566.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'threonine-quantitative-serum-labspring-21319', '21319', 'Threonine Quantitative Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15940.0, 15940.0, 5950.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'threonine-quantitative-urine-24h-labspring-21320', '21320', 'Threonine Quantitative Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16740.0, 16740.0, 5950.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'thrombin-time-tt-citrated-plasma-labspring-21321', '21321', 'Thrombin Time (TT) Citrated plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1280.0, 1280.0, 514.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'thrombophilia-profile-1-labspring-21322', '21322', 'Thrombophilia Profile-1', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 27500.0, 27500.0, 8800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'thrombophilia-profile-2-labspring-21323', '21323', 'Thrombophilia Profile-2', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15830.0, 15830.0, 5067.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'thrombotic-profile-labspring-21324', '21324', 'Thrombotic Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 41850.0, 41850.0, 8267.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'thrombotic-risk-dna-panel-labspring-21325', '21325', 'Thrombotic Risk DNA Panel', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 29460.0, 29460.0, 11000.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'anti-thyroglobulin-labspring-21326', '21326', 'Anti Thyroglobulin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3210.0, 3210.0, 182.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'thyroglobulin-antibody-ata-csf-labspring-21327', '21327', 'Thyroglobulin Antibody ATA, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3650.0, 3650.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'thyroxine-binding-globulin-tbg-labspring-21328', '21328', 'Thyroxine Binding Globulin (TBG)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13390.0, 13390.0, 5000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'tibc-labspring-21329', '21329', 'TIBC', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 36.0, NULL,
  'Contact for TAT', 'Fasting may be preferred for iron studies; some labs recommend about 8 hours and avoiding iron supplements beforehand. Follow lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'tnf-alpha-tumour-necrosis-factor-labspring-21330', '21330', 'TNF Alpha Tumour Necrosis Factor', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6500.0, 6500.0, 2080.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'torch-by-pcr-labspring-21331', '21331', 'TORCH By PCR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10830.0, 10830.0, 2970.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'torch-by-pcr-amniotic-fluid-labspring-21332', '21332', 'TORCH by PCR Amniotic Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 20250.0, 20250.0, 7500.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Amniotic fluid', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'torch-by-pcr-chorionic-villus-labspring-21333', '21333', 'TORCH By PCR Chorionic Villus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 20090.0, 20090.0, 7500.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'torch-by-pcr-csf-labspring-21334', '21334', 'TORCH by PCR CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 20250.0, 20250.0, 7500.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'torch-by-pcr-urine-labspring-21335', '21335', 'TORCH by PCR Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 20250.0, 20250.0, 7500.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'toxoplasma-avidity-test-labspring-21336', '21336', 'Toxoplasma Avidity test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2000.0, 2000.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'toxoplasma-dna-detection-by-pcr-blood-labspring-21337', '21337', 'Toxoplasma DNA Detection By PCR Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5000.0, 5000.0, 1600.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'toxoplasma-dna-detection-by-pcr-cord-blood-labspring-21338', '21338', 'Toxoplasma DNA detection by PCR Cord Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8910.0, 8910.0, 3000.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'toxoplasma-dna-detection-by-pcr-csf-labspring-21339', '21339', 'Toxoplasma DNA detection by PCR CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8910.0, 8910.0, 3000.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'toxoplasma-dna-detection-by-pcr-urine-labspring-21340', '21340', 'Toxoplasma DNA Detection By PCR Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8040.0, 8040.0, 3000.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'toxoplasma-dna-detection-by-pcr-amniotic-fluid-labspring-21341', '21341', 'Toxoplasma DNA detection by PCR Amniotic Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8910.0, 8910.0, 3000.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Amniotic fluid', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'toxoplasma-dna-detection-by-pcr-chorionic-villus-labspring-21342', '21342', 'Toxoplasma DNA detection by PCR Chorionic Villus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8910.0, 8910.0, 3000.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'toxoplasma-igg-igm-igg-igm-antibody-labspring-21343', '21343', 'Toxoplasma-IgG & IgM IgG & IgM Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2500.0, 2500.0, 173.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'toxoplasma-igg-igg-antibody-labspring-21344', '21344', 'Toxoplasma-IgG IgG Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 80.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'toxoplasma-igm-igm-antibody-labspring-21345', '21345', 'Toxoplasma-IgM IgM Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 100.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Plasma / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'tpha-labspring-21346', '21346', 'TPHA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 330.0, 330.0, 143.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'tpmt-enzyme-activity-thiopurine-methyl-transferase-labspring-21347', '21347', 'TPMT Enzyme Activity Thiopurine Methyl Transferase', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12150.0, 12150.0, 5143.0, NULL,
  'Contact for TAT', 'Usually no fasting. A clean-catch/first-morning sample may be preferred for some urine tests; timed collections require specific collection instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'tpmt-genotyping-tpmt1-2-3a-3b-3c-blood-labspring-21348', '21348', 'TPMT Genotyping TPMT,1 ,2 ,3A ,3B, 3C Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8330.0, 8330.0, 3438.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'tpo-thyroid-peroxidase-antibody-microsomal-antibody-csf-labspring-21349', '21349', 'TPO (Thyroid Peroxidase) Antibody Microsomal
Antibody CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3380.0, 3380.0, 686.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow medication/timing instructions from the ordering clinician; biotin supplements can interfere with some assays.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'tpo-thyroid-peroxidase-antibody-microsomal-antibody-serum-labspring-21350', '21350', 'TPO (Thyroid Peroxidase) Antibody Microsomal
Antibody, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3450.0, 3450.0, 199.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow medication/timing instructions from the ordering clinician; biotin supplements can interfere with some assays.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

