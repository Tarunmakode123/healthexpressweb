-- ============================================================
-- HEALTH EXPRESS — SERVICE CATALOG SEED BATCH 2 OF 5
-- Services 451 to 900 of 2207
-- ============================================================

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'coxiella-burnetti-igg-antibody-labspring-20451', '20451', 'Coxiella Burnetti IgG antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'coxiella-burnetti-igm-antibody-labspring-20452', '20452', 'Coxiella Burnetti IgM antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'coxsackie-igg-antibody-labspring-20453', '20453', 'Coxsackie IgG antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'coxsackie-igm-antibody-labspring-20454', '20454', 'Coxsackie IgM antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'c-peptide-serum-fasting-labspring-20455', '20455', 'C-Peptide, Serum (Fasting)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1200.0, 1200.0, 150.0, NULL,
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
  'cpk-mb-serum-labspring-20456', '20456', 'CPK MB, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1200.0, 1200.0, 123.0, NULL,
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
  'cpk-total-labspring-20457', '20457', 'CPK, Total', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1200.0, 1200.0, 61.0, NULL,
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
  'creatinine-clearance-test-labspring-20458', '20458', 'Creatinine Clearance Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 250.0, 250.0, 40.0, NULL,
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
  'creatinine-body-fluid-labspring-20459', '20459', 'Creatinine, Body Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 340.0, 340.0, 143.0, NULL,
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
  'creatinine-serum-labspring-20460', '20460', 'Creatinine, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 330.0, 330.0, 24.0, NULL,
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
  'crp-c-reactive-protein-quantitative-serum-labspring-20461', '20461', 'CRP (C Reactive Protein) Quantitative, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 620.0, 620.0, 83.0, NULL,
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
  'cryoglobulins-qualitative-serum-labspring-20462', '20462', 'Cryoglobulins Qualitative, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cryptococcus-antigen-detection-csf-labspring-20463', '20463', 'Cryptococcus Antigen detection, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3040.0, 3040.0, 1143.0, NULL,
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
  'cryptococcus-antigen-detection-serum-labspring-20464', '20464', 'Cryptococcus Antigen Detection, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2670.0, 2670.0, 1143.0, NULL,
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
  'cryptosporidium-antigen-detection-stool-labspring-20465', '20465', 'Cryptosporidium Antigen Detection, Stool', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3480.0, 3480.0, 1300.0, NULL,
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
  'cryptosporidium-by-smear-examination-stool-labspring-20466', '20466', 'Cryptosporidium by smear examination, Stool', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'csf-index-csf-and-serum-labspring-20467', '20467', 'CSF Index, CSF and serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3510.0, 3510.0, 1143.0, NULL,
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
  'culture-sensitivity-aerobic-bacteria-pus-labspring-20468', '20468', 'Culture & Sensitivity, Aerobic Bacteria Pus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 680.0, 680.0, 321.0, NULL,
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
  'culture-sensitivity-aerobic-bacteria-sputum-labspring-20469', '20469', 'Culture & Sensitivity, Aerobic Bacteria Sputum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1190.0, 1190.0, 164.0, NULL,
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
  'culture-sensitivity-aerobic-bacteria-vaginal-sample-includes-gr-b-strepto-labspring-20470', '20470', 'Culture & Sensitivity, Aerobic Bacteria Vaginal Sample
Includes Gr B Strepto', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1420.0, 1420.0, 429.0, NULL,
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
  'culture-sensitivity-blood-labspring-20471', '20471', 'Culture & Sensitivity, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2140.0, 2140.0, 321.0, NULL,
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
  'culture-sensitivity-aerobic-bacteria-blood-two-bottle-set-labspring-20472', '20472', 'Culture & Sensitivity, Aerobic bacteria, Blood Two
bottle set', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1050.0, 1050.0, 500.0, NULL,
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
  'culture-sensitivity-aerobic-bacteria-stool-labspring-20473', '20473', 'Culture & Sensitivity, Aerobic Bacteria, Stool', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2140.0, 2140.0, 164.0, NULL,
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
  'culture-sensitivity-aerobic-bacteria-throat-swab-labspring-20474', '20474', 'Culture & Sensitivity, Aerobic Bacteria, Throat Swab', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 350.0, 350.0, 164.0, NULL,
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
  'culture-sensitivity-aerobic-bacteria-urine-labspring-20475', '20475', 'Culture & Sensitivity, Aerobic Bacteria, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1300.0, 1300.0, 164.0, NULL,
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
  'culture-and-identification-anaerobic-bacteria-high-vagina-discharge-labspring-20476', '20476', 'Culture and Identification, Anaerobic bacteria, High
Vagina Discharge', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 686.0, NULL,
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
  'culture-and-identification-anaerobic-bacteria-tissue-biopsy-labspring-20477', '20477', 'Culture and Identification, Anaerobic bacteria, Tissue /
Biopsy', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 686.0, NULL,
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
  'culture-and-identification-anaerobic-bacteria-blood-single-bottle-labspring-20478', '20478', 'Culture And Identification, Anaerobic Bacteria Blood
Single Bottle', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 514.0, NULL,
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
  'culture-and-identification-anaerobic-bacteria-stool-for-cdifficile-labspring-20479', '20479', 'Culture And Identification, Anaerobic Bacteria Stool
For C.Difficile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2000.0, 2000.0, 686.0, NULL,
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
  'culture-and-identification-anaerobic-bacteria-pus-labspring-20480', '20480', 'Culture and Identification, Anaerobic bacteria, Pus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 686.0, NULL,
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
  'cyclospora-by-smear-examination-stool-labspring-20481', '20481', 'Cyclospora by Smear examination, Stool', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cyclosporin-a-by-lcms-labspring-20482', '20482', 'Cyclosporin A By LCMS', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3100.0, 3100.0, 1387.0, NULL,
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
  'cyfra-ca-21-1-labspring-20483', '20483', 'Cyfra (Ca) 21-1', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7770.0, 7770.0, 2800.0, NULL,
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
  'cyp2c19-genotyping-clopidogren-clopidogrel-labspring-20484', '20484', 'CYP2C19 Genotyping Clopidogren (clopidogrel)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 17680.0, 17680.0, 6600.0, NULL,
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
  'cystatin-c-labspring-20485', '20485', 'Cystatin C', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1490.0, 1490.0, 714.0, NULL,
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
  'cystic-fibrosis-delta-f508-blood-labspring-20486', '20486', 'Cystic Fibrosis Delta F508, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10710.0, 10710.0, 4000.0, NULL,
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
  'cystic-fibrosis-immune-reactive-trypsinogen-irt-neonatal-screen-dried-blood-spot-labspring-20487', '20487', 'Cystic Fibrosis Immune reactive trypsinogen , IRT
(Neonatal screen), Dried blood spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 610.0, 610.0, 257.0, NULL,
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
  'cysticercus-taenia-solium-igg-antibody-csf-labspring-20488', '20488', 'Cysticercus (Taenia Solium) IgG Antibody, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2300.0, 2300.0, 914.0, NULL,
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
  'cysticercus-taenia-solium-igg-antibody-serum-labspring-20489', '20489', 'Cysticercus (Taenia Solium) IgG Antibody, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2500.0, 2500.0, 857.0, NULL,
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
  'cystine-quantitative-serum-labspring-20490', '20490', 'Cystine Quantitative, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cystine-quantitative-urine-labspring-20491', '20491', 'Cystine Quantitative, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cytology-non-gyn-bronchoalveolar-lavage-bal-liquid-based-cytology-lbc-labspring-20492', '20492', 'Cytology (Non-Gyn) Bronchoalveolar Lavage (BAL),
Liquid based cytology (LBC)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1490.0, 1490.0, 571.0, NULL,
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
  'cytology-non-gyn-drain-fluid-conventional-method-labspring-20493', '20493', 'Cytology (Non-Gyn) Drain Fluid, Conventional Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1220.0, 1220.0, 457.0, NULL,
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
  'cytology-non-gyn-nipple-discharge-conventional-method-labspring-20494', '20494', 'Cytology (Non-Gyn) Nipple Discharge Conventional
Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1220.0, 1220.0, 457.0, NULL,
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
  'cytology-non-gyn-other-fluids-scraping-conventional-method-labspring-20495', '20495', 'Cytology (Non-Gyn) Other Fluids / Scraping
Conventional Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1220.0, 1220.0, 457.0, NULL,
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
  'cytology-non-gyn-pericardial-fluid-conventional-method-labspring-20496', '20496', 'Cytology (Non-Gyn) Pericardial Fluid Conventional
Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1220.0, 1220.0, 457.0, NULL,
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
  'cytology-non-gyn-peritoneal-washings-conventional-method-labspring-20497', '20497', 'Cytology (Non-Gyn) Peritoneal Washings Conventional
Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1220.0, 1220.0, 457.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Cytology specimen (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cytology-non-gyn-sputum-conventional-method-labspring-20498', '20498', 'Cytology (Non-Gyn) Sputum Conventional Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1930.0, 1930.0, 457.0, NULL,
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
  'cytology-non-gyn-synovial-fluid-conventional-method-labspring-20499', '20499', 'Cytology (Non-Gyn) Synovial Fluid Conventional
Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1220.0, 1220.0, 457.0, NULL,
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
  'cytology-reflex-to-cell-block-and-relevant-ihc-body-fluid-labspring-20500', '20500', 'Cytology Reflex to cell block and relevant IHC Body
fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10800.0, 10800.0, 1600.0, NULL,
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
  'cytology-second-opinion-services-slides-labspring-20501', '20501', 'Cytology Second opinion services, Slides', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'd3-hydroxybutarate-ketone-labspring-20502', '20502', 'D3 Hydroxybutarate (Ketone)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1170.0, 1170.0, 357.0, NULL,
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
  'dcp-decarboxy-prothrombin-pivka-ii-labspring-20503', '20503', 'DCP-Decarboxy Prothrombin PIVKA-II', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7770.0, 7770.0, 2900.0, NULL,
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
  'd-dimer-quantitative-labspring-20504', '20504', 'D-Dimer Quantitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1500.0, 1500.0, 307.0, NULL,
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
  'deletion-11q-atm-cll-bone-marrow-labspring-20505', '20505', 'Deletion 11q ATM (CLL) Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4500.0, NULL,
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
  'deletion-11q-atm-cll-leukemic-blood-labspring-20506', '20506', 'Deletion 11q ATM (CLL) Leukemic Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4500.0, NULL,
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
  'deletion-13q-multiple-myeloma-cll-bone-marrow-labspring-20507', '20507', 'Deletion 13q Multiple Myeloma, CLL Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4500.0, NULL,
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
  'deletion-13q-multiple-myeloma-cll-leukemic-blood-labspring-20508', '20508', 'Deletion 13q Multiple Myeloma, CLL Leukemic Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4500.0, NULL,
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
  'deletion-17p-p53-multiple-myeloma-cll-bone-marrow-labspring-20509', '20509', 'Deletion 17p p53 (Multiple Myeloma, CLL) Bone
Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4500.0, NULL,
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
  'deletion-17p-p53-multiple-myeloma-cll-leukemic-blood-labspring-20510', '20510', 'Deletion 17p p53 (Multiple Myeloma, CLL) Leukemic
Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4500.0, NULL,
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
  'deletion-1p-19q-oligodendrogliomas-tissue-labspring-20511', '20511', 'Deletion 1p /19q Oligodendrogliomas Tissue', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 33750.0, 33750.0, 12500.0, NULL,
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
  'deletion-20q-mds-blood-labspring-20512', '20512', 'Deletion 20q MDS Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4500.0, NULL,
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
  'deletion-20q-mds-bone-marrow-labspring-20513', '20513', 'Deletion 20q MDS Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4500.0, NULL,
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
  'deletion-5q-monosomy-5-mds-labspring-20514', '20514', 'Deletion 5q /Monosomy 5 MDS', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4500.0, NULL,
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
  'deletion-7q-monosomy-7-mds-blood-labspring-20515', '20515', 'Deletion 7q /Monosomy 7 MDS Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4500.0, NULL,
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
  'deletion-7q-monosomy-7-mds-bone-marrow-labspring-20516', '20516', 'Deletion 7q /Monosomy 7 MDS Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4500.0, NULL,
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
  'deletion-7q1123-williams-syndrome-blood-labspring-20517', '20517', 'Deletion 7q11.23 William''S Syndrome Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 26730.0, 26730.0, 7000.0, NULL,
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
  'deletion-8p-fgfr-1-hes-blood-labspring-20518', '20518', 'Deletion 8p FGFR-1 HES Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4500.0, NULL,
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
  'deletion-8p-fgfr-1-hes-bone-marrow-labspring-20519', '20519', 'Deletion 8p FGFR-1 HES Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 4500.0, NULL,
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
  'dengue-igg-antibody-rapid-card-labspring-20520', '20520', 'Dengue IgG Antibody - RAPID Card', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 99.0, NULL,
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
  'dengue-igm-antibody-rapid-card-labspring-20521', '20521', 'Dengue IgM Antibody - RAPID Card', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 99.0, NULL,
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
  'dengue-ns1-antigen-immunoassay-labspring-20522', '20522', 'Dengue NS1 Antigen (Immunoassay)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1310.0, 1310.0, 144.0, NULL,
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
  'dengue-rna-detection-by-real-time-pcr-csf-labspring-20523', '20523', 'Dengue RNA detection by Real time PCR CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9990.0, 9990.0, 3700.0, NULL,
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
  'dengue-rna-detection-by-real-time-pcr-plasma-labspring-20524', '20524', 'Dengue RNA Detection By Real Time PCR Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6170.0, 6170.0, 1973.0, NULL,
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
  'desmoglein-i-antibody-vesiculobullous-disorders-labspring-20525', '20525', 'Desmoglein I Antibody Vesiculobullous Disorders', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3118.0, 3118.0, 1343.0, NULL,
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
  'desmoglein-iii-antibody-vesiculobullous-disorders-labspring-20526', '20526', 'Desmoglein III Antibody Vesiculobullous disorders', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3118.0, 3118.0, 1343.0, NULL,
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
  'dexamethasone-suppression-test-high-dose-for-acth-labspring-20527', '20527', 'Dexamethasone Suppression test High dose For ACTH', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6620.0, 6620.0, 1314.0, NULL,
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
  'dexamethasone-suppression-test-overnight-suppression-for-acth-labspring-20528', '20528', 'Dexamethasone Suppression test Overnight
suppression For ACTH', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2882.0, 2882.0, 1314.0, NULL,
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
  'dexamethasone-suppression-test-overnight-suppression-for-cortisol-labspring-20529', '20529', 'Dexamethasone Suppression test Overnight
suppression For Cortisol', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3510.0, 3510.0, 686.0, NULL,
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
  'dhea-dehydroepiandrostenedione-labspring-20530', '20530', 'DHEA Dehydroepiandrostenedione', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2380.0, 2380.0, 1114.0, NULL,
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
  'dheas-dehydroepiandrostenedione-sulphate-labspring-20531', '20531', 'DHEAS Dehydroepiandrostenedione Sulphate', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1310.0, 1310.0, 137.0, NULL,
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
  'dht-di-hydro-testosterone-labspring-20532', '20532', 'DHT Di Hydro Testosterone', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3330.0, 3330.0, 1314.0, NULL,
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
  'digoxin-lanoxin-labspring-20533', '20533', 'Digoxin Lanoxin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1500.0, 1500.0, 514.0, NULL,
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
  'diphtheria-igg-antibodies-labspring-20534', '20534', 'Diphtheria IgG Antibodies', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6430.0, 6430.0, 2400.0, NULL,
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
  'dmd-test-duchenne-becker-muscular-dystrophy-blood-labspring-20535', '20535', 'DMD Test Duchenne / Becker Muscular Dystrophy
Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15810.0, 15810.0, 5900.0, NULL,
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
  'dmd-test-duchenne-muscular-dystrophy-amniotic-fluid-labspring-20536', '20536', 'DMD test Duchenne Muscular Dystrophy Amniotic
Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 45900.0, 45900.0, 15000.0, NULL,
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
  'dna-paternity-16-markers-blood-labspring-20537', '20537', 'DNA Paternity 16 Markers Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 26790.0, 26790.0, 10000.0, NULL,
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
  'dnph-test-dinitro-phenyl-hydralazine-labspring-20538', '20538', 'DNPH Test Dinitro Phenyl hydralazine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'dopamine-elisa-plasma-labspring-20539', '20539', 'Dopamine ELISA Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2980.0, 2980.0, 1429.0, NULL,
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
  'dopamine-hplc-urine-24h-labspring-20540', '20540', 'Dopamine HPLC Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2980.0, 2980.0, 1429.0, NULL,
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
  'dpd-deoxypyridinoline-pyrilinks-d-urine-labspring-20541', '20541', 'DPD Deoxypyridinoline (Pyrilinks D) Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2670.0, 2670.0, 914.0, NULL,
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
  'dpd-gene-mutations-5-fu-toxicity-blood-labspring-20542', '20542', 'DPD Gene Mutations 5-FU Toxicity Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 21670.0, 21670.0, 13000.0, NULL,
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
  'dpt-antibodies-serum-diphtheria-tetanus-pertusis-antibody-labspring-20543', '20543', 'DPT Antibodies, Serum Diphtheria, Tetanus, Pertusis
Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'drpla-gene-analysis-autosomal-dominant-ataxia-blood-labspring-20544', '20544', 'DRPLA Gene Analysis Autosomal Dominant Ataxia
Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'e-coli-k1-n-meningitidis-b-antigen-detection-csf-labspring-20545', '20545', 'E Coli K1 / N. Meningitidis B Antigen detection CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 657.0, NULL,
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
  'e-coli-k1-n-meningitidis-b-antigen-detection-serum-labspring-20546', '20546', 'E Coli K1 / N. Meningitidis B Antigen detection Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1920.0, 1920.0, 657.0, NULL,
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
  'e-coli-k1-n-meningitidis-b-antigen-detection-urine-labspring-20547', '20547', 'E Coli K1 / N. Meningitidis B Antigen detection Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 657.0, NULL,
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
  'e-histolytica-antigen-detection-labspring-20548', '20548', 'E Histolytica Antigen Detection', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7770.0, 7770.0, 2700.0, NULL,
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
  'e-histolytica-wet-mount-liver-abscess-for-amoebic-trophozoites-labspring-20549', '20549', 'E Histolytica Wet Mount Liver Abscess For Amoebic
trophozoites', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 470.0, 470.0, 171.0, NULL,
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
  'e2-female-reproductive-hormone-test-labspring-20550', '20550', 'E2 - Female Reproductive Hormone Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 111.0, NULL,
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
  'e3-unconjugated-estriol-labspring-20551', '20551', 'E3, Unconjugated Estriol', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2860.0, 2860.0, 151.0, NULL,
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
  'ebv-eber-by-cish-histopathological-and-molecular-analysis-tissue-ffpe-labspring-20552', '20552', 'EBV (EBER) by CISH-histopathological and molecular
analysis Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8640.0, 8640.0, 1600.0, NULL,
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
  'ebv-dna-detection-by-pcr-csf-labspring-20553', '20553', 'EBV DNA detection by PCR CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7350.0, 7350.0, 2722.0, NULL,
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
  'ebv-dna-detection-by-pcr-tissue-labspring-20554', '20554', 'EBV DNA detection by PCR Tissue', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7350.0, 7350.0, 2722.0, NULL,
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
  'ebv-igg-antibody-to-early-antigen-ea-labspring-20555', '20555', 'EBV IgG antibody to Early antigen (EA)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2670.0, 2670.0, 1029.0, NULL,
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
  'ebv-igg-antibody-to-nuclear-antigenna-labspring-20556', '20556', 'EBV IgG antibody to Nuclear antigen(NA)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2670.0, 2670.0, 1029.0, NULL,
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
  'ebv-igg-antibody-to-viral-capcid-antigenvca-labspring-20557', '20557', 'EBV IgG antibody to Viral capcid antigen(VCA)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2670.0, 2670.0, 1029.0, NULL,
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
  'ebv-igm-antibody-to-nuclear-antigenna-labspring-20558', '20558', 'EBV IgM antibody to Nuclear antigen(NA)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2670.0, 2670.0, 1029.0, NULL,
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
  'ebv-igm-antibody-to-viral-capsid-antigenvca-labspring-20559', '20559', 'EBV IgM antibody to Viral capsid antigen(VCA)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'echinococcus-hydatid-cyst-detection-fluid-labspring-20560', '20560', 'Echinococcus (Hydatid Cyst) Detection Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1040.0, 1040.0, 400.0, NULL,
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
  'echinococcus-hydatid-cyst-igg-antibody-labspring-20561', '20561', 'Echinococcus (Hydatid Cyst) IgG Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'electrolytes-dialysis-fluid-labspring-20562', '20562', 'Electrolytes, Dialysis Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 890.0, 890.0, 343.0, NULL,
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
  'electrolytes-urine-24h-labspring-20563', '20563', 'Electrolytes, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 810.0, 810.0, 343.0, NULL,
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
  'endomysial-antibody-iga-antibody-labspring-20564', '20564', 'Endomysial Antibody IgA antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2670.0, 2670.0, 1200.0, NULL,
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
  'endomysial-antibody-igg-antibody-labspring-20565', '20565', 'Endomysial Antibody IgG Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8040.0, 8040.0, 3000.0, NULL,
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
  'enteroviruses-rna-csf-labspring-20566', '20566', 'Enteroviruses RNA, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15660.0, 15660.0, 5000.0, NULL,
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
  'enteroviruses-rna-plasma-labspring-20567', '20567', 'Enteroviruses RNA, Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15800.0, 15800.0, 5000.0, NULL,
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
  'eosinophil-detection-sputum-labspring-20568', '20568', 'Eosinophil Detection, Sputum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 500.0, 500.0, 171.0, NULL,
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
  'eosinophil-detection-urine-labspring-20569', '20569', 'Eosinophil Detection, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 500.0, 500.0, 171.0, NULL,
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
  'erythropoietin-labspring-20570', '20570', 'Erythropoietin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2670.0, 2670.0, 1143.0, NULL,
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
  'esr-automated-labspring-20571', '20571', 'ESR Automated', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 16.0, NULL,
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
  'everolimus-labspring-20572', '20572', 'Everolimus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8170.0, 8170.0, 2613.0, NULL,
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
  'factor-ix-activity-anti-haemophilia-b-citrated-plasma-labspring-20573', '20573', 'Factor IX Activity Anti Haemophilia B, Citrated Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 900.0, NULL,
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
  'factor-v-leiden-mutant-detection-g1691a-mutation-blood-labspring-20574', '20574', 'Factor V Leiden-Mutant Detection G1691A Mutation,
Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8170.0, 8170.0, 2800.0, NULL,
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
  'factor-v-level-citrated-plasma-labspring-20575', '20575', 'Factor V Level, Citrated plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3260.0, 3260.0, 1550.0, NULL,
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
  'factor-vii-activity-proconvertin-citrated-plasma-labspring-20576', '20576', 'Factor VII Activity Proconvertin, Citrated Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5780.0, 5780.0, 2750.0, NULL,
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
  'factor-viii-activity-anti-haemophilia-a-citrated-plasma-labspring-20577', '20577', 'Factor VIII Activity Anti Haemophilia A, Citrated
Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2400.0, 2400.0, 1143.0, NULL,
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
  'factor-x-activity-stuart-power-citrated-plasma-labspring-20578', '20578', 'Factor X Activity Stuart Power, Citrated Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5550.0, 5550.0, 2643.0, NULL,
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
  'factor-xa-antibody-citrate-blood-labspring-20579', '20579', 'Factor Xa Antibody, Citrate Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14310.0, 14310.0, 5000.0, NULL,
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
  'factor-xi-activity-rosenthal-citrated-plasma-labspring-20580', '20580', 'Factor XI Activity Rosenthal Citrated plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9860.0, 9860.0, 3500.0, NULL,
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
  'factor-xii-activity-hageman-citrated-plasma-labspring-20581', '20581', 'Factor XII Activity Hageman Citrated plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9860.0, 9860.0, 3500.0, NULL,
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
  'factor-xiii-activity-functional-citrated-plasma-labspring-20582', '20582', 'Factor XIII Activity Functional Citrated Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6480.0, 6480.0, 1300.0, NULL,
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
  'fatty-acids-with-very-long-chains-c22-to-c26-plasma-labspring-20583', '20583', 'Fatty Acids With Very Long Chains C22 To C26 Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 40180.0, 40180.0, 15000.0, NULL,
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
  'fdp-fibrin-degradation-products-reflex-to-end-point-titre-labspring-20584', '20584', 'FDP Fibrin Degradation Products Reflex To End Point
Titre', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 629.0, NULL,
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
  'febrile-agglutination-test-labspring-20585', '20585', 'Febrile Agglutination Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ferric-chloride-test-for-phenylketonurea-urine-spot-labspring-20586', '20586', 'Ferric Chloride Test For Phenylketonurea, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 500.0, 500.0, 171.0, NULL,
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
  'ferritin-labspring-20587', '20587', 'Ferritin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 139.0, NULL,
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
  'fibrinogen-level-factor-i-citrated-plasma-labspring-20588', '20588', 'Fibrinogen Level Factor I, Citrated Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 380.0, 380.0, 179.0, NULL,
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
  'fibromax-labspring-20589', '20589', 'Fibromax', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 34820.0, 34820.0, 13000.0, NULL,
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
  'filaria-antibody-detection-labspring-20590', '20590', 'Filaria Antibody Detection', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1500.0, 1500.0, 286.0, NULL,
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
  'flt-3-aml-by-pcr-itd-d835-bone-marrow-labspring-20591', '20591', 'FLT 3 (AML) by PCR ITD, D835, Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6600.0, 6600.0, 2750.0, NULL,
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
  'fmc-7-by-flow-cytometry-labspring-20592', '20592', 'FMC 7 by Flow cytometry', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2706.0, 2706.0, 1257.0, NULL,
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
  'fnac-of-other-organ-conventional-method-labspring-20593', '20593', 'FNAC of other organ, Conventional method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1490.0, 1490.0, 543.0, NULL,
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
  'fnac-second-opinion-slides-labspring-20594', '20594', 'FNAC second opinion Slides', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2700.0, 2700.0, 571.0, NULL,
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
  'folic-acid-labspring-20595', '20595', 'Folic Acid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 117.0, NULL,
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
  'fragile-x-mutation-fmr1-mutation-blood-labspring-20596', '20596', 'Fragile X Mutation FMR1 Mutation Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11500.0, 11500.0, 3300.0, NULL,
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
  'free-androgen-index-fai-labspring-20597', '20597', 'Free Androgen Index FAI', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5680.0, 5680.0, 1429.0, NULL,
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
  'friedreich-ataxia-mutation-analysis-gaa-repeats-autosomal-recessive-ataxia-labspring-20598', '20598', 'Friedreich Ataxia Mutation Analysis GAA Repeats,
Autosomal Recessive Ataxia', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'fructosamine-labspring-20599', '20599', 'Fructosamine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1500.0, 1500.0, 257.0, NULL,
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
  'fructose-semen-labspring-20600', '20600', 'Fructose, Semen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 360.0, 360.0, 171.0, NULL,
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
  'fsh-follicle-stimulating-hormone-labspring-20601', '20601', 'FSH-Follicle Stimulating Hormone', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 83.0, NULL,
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
  'fungal-antibiogram-yeast-mic-panel-labspring-20602', '20602', 'Fungal Antibiogram Yeast MIC panel', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6750.0, 6750.0, 1429.0, NULL,
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
  'fungal-stain-bal-et-secretion-respiratory-sample-labspring-20603', '20603', 'Fungal stain BAL, ET Secretion Respiratory Sample', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'fungal-stain-specify-type-body-fluid-labspring-20604', '20604', 'Fungal stain Specify type, Body fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 380.0, 380.0, 179.0, NULL,
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
  'fungal-stain-sputum-labspring-20605', '20605', 'Fungal Stain Sputum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 670.0, 670.0, 171.0, NULL,
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
  'fungal-stain-tissue-labspring-20606', '20606', 'Fungal stain Tissue', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 380.0, 380.0, 179.0, NULL,
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
  'fungal-stain-urine-labspring-20607', '20607', 'Fungal stain Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 670.0, 670.0, 171.0, NULL,
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
  'fungal-stain-csf-labspring-20608', '20608', 'Fungal stain, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 380.0, 380.0, 179.0, NULL,
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
  'fungal-stain-culture-and-identification-bal-et-secretion-respiratory-sample-labspring-20609', '20609', 'Fungal stain, culture and identification BAL, E.T
Secretion Respiratory Sample', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3110.0, 3110.0, 566.0, NULL,
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
  'fungal-stain-culture-and-identification-eye-sample-labspring-20610', '20610', 'Fungal stain, culture and identification Eye Sample', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1190.0, 1190.0, 566.0, NULL,
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
  'fungal-stain-culture-and-identification-hair-labspring-20611', '20611', 'Fungal stain, culture and identification Hair', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1350.0, 1350.0, 229.0, NULL,
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
  'fungal-stain-culture-and-identification-nail-labspring-20612', '20612', 'Fungal Stain, Culture And Identification Nail', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1190.0, 1190.0, 566.0, NULL,
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
  'fungal-stain-culture-and-identification-other-sample-labspring-20613', '20613', 'Fungal stain, culture and identification Other Sample', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1190.0, 1190.0, 566.0, NULL,
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
  'fungal-stain-culture-and-identification-pus-labspring-20614', '20614', 'Fungal stain, culture and identification Pus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1190.0, 1190.0, 566.0, NULL,
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
  'fungal-stain-culture-and-identification-skin-labspring-20615', '20615', 'Fungal stain, culture and identification Skin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1190.0, 1190.0, 566.0, NULL,
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
  'fungal-stain-culture-and-identification-sputum-labspring-20616', '20616', 'Fungal stain, culture and identification Sputum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1650.0, 1650.0, 566.0, NULL,
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
  'fungal-stain-culture-and-identification-stool-labspring-20617', '20617', 'Fungal stain, culture and identification Stool', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1650.0, 1650.0, 566.0, NULL,
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
  'fungal-stain-culture-and-identification-tissue-labspring-20618', '20618', 'Fungal stain, culture and identification Tissue', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3110.0, 3110.0, 566.0, NULL,
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
  'fungal-stain-culture-and-identification-urine-labspring-20619', '20619', 'Fungal Stain, Culture And Identification Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1650.0, 1650.0, 566.0, NULL,
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
  'fungal-stain-culture-and-identification-csf-labspring-20620', '20620', 'Fungal stain, culture and identification, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3110.0, 3110.0, 566.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow site-specific collection instructions; tell the provider about recent antibiotics when relevant.', 'CSF (cerebrospinal fluid)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'fungal-stain-culture-and-identification-blood-labspring-20621', '20621', 'Fungal stain, culture and identification, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6750.0, 6750.0, 566.0, NULL,
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
  'fungal-stain-culture-and-identification-body-fluid-labspring-20622', '20622', 'Fungal stain, culture and identification, Body Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3110.0, 3110.0, 566.0, NULL,
  'Contact for TAT', 'Usually no fasting. Follow site-specific collection instructions; tell the provider about recent antibiotics when relevant.', 'Body fluid (type specified by test)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'fungal-stain-culture-and-identification-bone-marrow-labspring-20623', '20623', 'Fungal stain, culture and identification, Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3110.0, 3110.0, 566.0, NULL,
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
  'fungal-stain-culture-and-identification-ear-sample-labspring-20624', '20624', 'Fungal stain, culture and identification, Ear Sample', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 380.0, 380.0, 179.0, NULL,
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
  'g6pd-gene-mutation-labspring-20625', '20625', 'G6PD Gene Mutation', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11250.0, 11250.0, 4200.0, NULL,
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
  'g6pd-neonatal-screen-dried-blood-spot-labspring-20626', '20626', 'G6PD Neonatal Screen Dried blood spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 610.0, 610.0, 257.0, NULL,
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
  'g6pd-qualitative-labspring-20627', '20627', 'G6PD Qualitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 371.0, NULL,
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
  'gad-65-antibody-paraneoplastic-syndrome-labspring-20628', '20628', 'GAD 65 Antibody Paraneoplastic Syndrome', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11250.0, 11250.0, 3467.0, NULL,
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
  'gad-total-antibody-type-i-diabetes-labspring-20629', '20629', 'GAD Total Antibody Type I Diabetes', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8500.0, 8500.0, 2286.0, NULL,
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
  'galactomannan-aspergillus-antigen-test-labspring-20630', '20630', 'Galactomannan, Aspergillus Antigen Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8500.0, 8500.0, 2550.0, NULL,
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
  'galactose-classical-epimerase-labspring-20631', '20631', 'Galactose (Classical) Epimerase', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7020.0, 7020.0, 2500.0, NULL,
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
  'galactose-classical-transferase-labspring-20632', '20632', 'Galactose (Classical) Transferase', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5940.0, 5940.0, 2100.0, NULL,
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
  'galactose-total-screening-qualitative-labspring-20633', '20633', 'Galactose (Total) Screening Qualitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2430.0, 2430.0, 847.0, NULL,
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
  'galactose-6-sulphate-sulphatase-labspring-20634', '20634', 'Galactose 6 Sulphate Sulphatase', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14850.0, 14850.0, 5000.0, NULL,
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
  'galactosemia-gene-mutation-labspring-20635', '20635', 'Galactosemia Gene Mutation', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13810.0, 13810.0, 5157.0, NULL,
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
  'ganglioside-igg-antibody-panel-labspring-20636', '20636', 'Ganglioside IgG Antibody Panel', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8840.0, 8840.0, 3300.0, NULL,
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
  'ganglioside-igm-antibody-panel-labspring-20637', '20637', 'Ganglioside IgM Antibody Panel', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8840.0, 8840.0, 3300.0, NULL,
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
  'gastrin-labspring-20638', '20638', 'Gastrin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2250.0, 2250.0, 771.0, NULL,
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
  'gbm-antibody-glomerular-basement-membrane-labspring-20639', '20639', 'GBM Antibody Glomerular Basement Membrane', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2580.0, 2580.0, 886.0, NULL,
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
  'genetic-hair-loss-test-alopecia-labspring-20640', '20640', 'Genetic Hair Loss Test Alopecia', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12060.0, 12060.0, 4500.0, NULL,
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
  'gfr-with-cystatin-c-labspring-20641', '20641', 'GFR With Cystatin C', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1660.0, 1660.0, 629.0, NULL,
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
  'ggtp-gamma-gt-labspring-20642', '20642', 'GGTP (Gamma GT)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 590.0, 590.0, 52.0, NULL,
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
  'giardia-antigen-detection-labspring-20643', '20643', 'Giardia Antigen detection', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1920.0, 1920.0, 657.0, NULL,
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
  'gliadin-iga-antibodies-de-amidated-dgp-labspring-20644', '20644', 'Gliadin IgA Antibodies De-amidated (DGP)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3170.0, 3170.0, 857.0, NULL,
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
  'gliadin-igg-antibodies-de-amidated-dgp-labspring-20645', '20645', 'Gliadin IgG Antibodies De-amidated (DGP)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3170.0, 3170.0, 857.0, NULL,
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
  'glucosamine-n-acetyl-transferase-labspring-20646', '20646', 'Glucosamine N Acetyl Transferase', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 18900.0, 18900.0, 6500.0, NULL,
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
  'blood-glucose-fasting-labspring-20647', '20647', 'Blood Glucose Fasting', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 24.0, NULL,
  'Contact for TAT', 'Fasting may be required depending on the test; when required, typically 8–12 hours with water only. Follow the test-specific instructions.', 'Whole blood / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'glucose-body-fluid-labspring-20648', '20648', 'Glucose, Body Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 71.0, NULL,
  'Contact for TAT', 'Fasting may be required depending on the test; when required, typically 8–12 hours with water only. Follow the test-specific instructions.', 'Body fluid (type specified by test)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'glutamic-acid-quantitative-urine-24h-labspring-20649', '20649', 'Glutamic Acid Quantitative, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'glutamine-quantitativeplasma-labspring-20650', '20650', 'Glutamine Quantitative,Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11910.0, 11910.0, 5333.0, NULL,
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
  'glutamine-quantitative-urine-24h-labspring-20651', '20651', 'Glutamine Quantitative, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'glycine-quantitative-csf-labspring-20652', '20652', 'Glycine Quantitative, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16740.0, 16740.0, 5950.0, NULL,
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
  'glycine-quantitative-serum-labspring-20653', '20653', 'Glycine Quantitative, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'glycine-quantitative-urine-24h-labspring-20654', '20654', 'Glycine Quantitative, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'glycophorin-a-labspring-20655', '20655', 'Glycophorin A', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3670.0, 3670.0, 1257.0, NULL,
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
  'glycosaminoglycan-gag-mucopolysaccharides-quantitative-labspring-20656', '20656', 'Glycosaminoglycan (GAG) Mucopolysaccharides
(quantitative)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5890.0, 5890.0, 2200.0, NULL,
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
  'gnrh-lhrh-stimulation-test-for-fsh-and-lh-5-samples-labspring-20657', '20657', 'GNRH (LHRH) Stimulation Test For FSH And LH 5
Samples', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4860.0, 4860.0, 1920.0, NULL,
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
  'gram-stain-for-neisseria-sp-urethral-discharge-labspring-20658', '20658', 'Gram stain For Neisseria sp Urethral discharge', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 410.0, 410.0, 157.0, NULL,
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
  'gram-stain-nugents-score-vaginal-discharge-labspring-20659', '20659', 'Gram Stain Nugent''s Score Vaginal Discharge', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 540.0, 540.0, 200.0, NULL,
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
  'growth-hormone-hgh-labspring-20660', '20660', 'Growth Hormone HGH', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1790.0, 1790.0, 93.0, NULL,
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
  'growth-hormone-stimulation-test-clonidine-labspring-20661', '20661', 'Growth Hormone Stimulation Test Clonidine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4460.0, 4460.0, 1600.0, NULL,
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
  'h1n1-swine-flu-rna-detection-nasopharyngeal-swab-labspring-20662', '20662', 'H1N1 (Swine Flu) RNA Detection, Nasopharyngeal
Swab', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7560.0, 7560.0, 2800.0, NULL,
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
  'haemochromatosis-2-mutations-in-hfe-gene-labspring-20663', '20663', 'Haemochromatosis 2 Mutations In HFE Gene', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 17410.0, 17410.0, 6500.0, NULL,
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
  'haemoglobin-free-plasma-labspring-20664', '20664', 'Haemoglobin-Free, Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2970.0, 2970.0, 1059.0, NULL,
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
  'haemoglobin-free-urine-spot-labspring-20665', '20665', 'Haemoglobin-Free, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 940.0, 940.0, 371.0, NULL,
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
  'haemophilus-influenza-b-antigen-antigen-detection-serum-labspring-20666', '20666', 'Haemophilus Influenza B Antigen Antigen detection
Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'haemophilus-influenza-b-antigen-antigen-detection-urine-labspring-20667', '20667', 'Haemophilus Influenza B Antigen Antigen detection
Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2000.0, 2000.0, 686.0, NULL,
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
  'haemophilus-influenza-b-antigen-antigen-detection-csf-labspring-20668', '20668', 'Haemophilus Influenza B Antigen Antigen detection,
CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3510.0, 3510.0, 686.0, NULL,
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
  'hanging-drop-preparation-for-v-cholerae-labspring-20669', '20669', 'Hanging Drop Preparation For V Cholerae', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 950.0, 950.0, 114.0, NULL,
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
  'haptoglobin-labspring-20670', '20670', 'Haptoglobin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3000.0, 3000.0, 1143.0, NULL,
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
  'haptoglobin-genotype-labspring-20671', '20671', 'Haptoglobin Genotype', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9910.0, 9910.0, 3700.0, NULL,
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
  'hbf-haemoglobin-f-foetal-haemoglobin-labspring-20672', '20672', 'HbF Haemoglobin F (Foetal Haemoglobin)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3210.0, 3210.0, 423.0, NULL,
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
  'hbs-haemoglobin-s-labspring-20673', '20673', 'HbS Haemoglobin S', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1070.0, 1070.0, 514.0, NULL,
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
  'hcg-beta-subunit-labspring-20674', '20674', 'HCG Beta Subunit', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 101.0, NULL,
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
  'hcg-beta-subunit-csf-labspring-20675', '20675', 'HCG Beta Subunit CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1080.0, 1080.0, 429.0, NULL,
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
  'hcg-beta-subunit-urine-24h-labspring-20676', '20676', 'HCG Beta Subunit Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1080.0, 1080.0, 429.0, NULL,
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
  'hcg-beta-subunit-urine-spot-labspring-20677', '20677', 'HCG Beta Subunit Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1170.0, 1170.0, 286.0, NULL,
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
  'hdl-cholesterol-direct-labspring-20678', '20678', 'HDL Cholesterol Direct', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 480.0, 480.0, 25.0, NULL,
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
  'heinz-bodies-labspring-20679', '20679', 'Heinz Bodies', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 330.0, 330.0, 114.0, NULL,
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
  'helicobacter-pylori-antigen-detection-labspring-20680', '20680', 'Helicobacter Pylori Antigen Detection', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1900.0, 1900.0, 800.0, NULL,
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
  'helicobacter-pylori-culture-only-labspring-20681', '20681', 'Helicobacter Pylori Culture only', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3240.0, 3240.0, 629.0, NULL,
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
  'helicobacter-pylori-iga-antibodies-labspring-20682', '20682', 'Helicobacter Pylori IgA antibodies', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3080.0, 3080.0, 829.0, NULL,
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
  'helicobacter-pylori-igg-antibodies-labspring-20683', '20683', 'Helicobacter Pylori IgG Antibodies', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2380.0, 2380.0, 829.0, NULL,
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
  'helicobacter-pylori-igm-antibodies-labspring-20684', '20684', 'Helicobacter Pylori IgM antibodies', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3080.0, 3080.0, 829.0, NULL,
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
  'hemoglobin-hb-labspring-20685', '20685', 'Hemoglobin Hb', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 43.0, NULL,
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
  'hemosiderin-in-urine-labspring-20686', '20686', 'Hemosiderin In Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1790.0, 1790.0, 857.0, NULL,
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
  'heparan-sulphate-sulphamidase-sanfillipo-mps-iii-a-labspring-20687', '20687', 'Heparan Sulphate Sulphamidase Sanfillipo / MPS III A', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 21330.0, 21330.0, 7000.0, NULL,
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
  'hepatitis-a-virus-hav-hav-igg-antibody-labspring-20688', '20688', 'Hepatitis A Virus (HAV) HAV-IgG Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2380.0, 2380.0, 229.0, NULL,
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
  'hepatitis-a-virus-hav-hav-igm-antibody-labspring-20689', '20689', 'Hepatitis A Virus (HAV) HAV-IgM Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2600.0, 2600.0, 211.0, NULL,
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
  'hepatitis-b-virus-hbv-anti-hbcag-total-core-antigen-total-labspring-20690', '20690', 'Hepatitis B Virus (HBV) Anti HbcAg Total Core Antigen
Total', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1350.0, 1350.0, 514.0, NULL,
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
  'hepatitis-b-virus-hbv-anti-hbcag-igm-core-antibody-igm-labspring-20691', '20691', 'Hepatitis B Virus (HBV) Anti HbcAg-IgM Core Antibody
IgM', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 590.0, 590.0, 100.0, NULL,
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
  'hepatitis-b-virus-hbv-anti-hbeag-envelope-antibody-labspring-20692', '20692', 'Hepatitis B Virus (HBV) Anti HbeAg Envelope Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 187.0, NULL,
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
  'hepatitis-b-virus-surface-antibody-anti-hbs-labspring-20693', '20693', 'Hepatitis B Virus Surface Antibody (Anti HBs)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1790.0, 1790.0, 208.0, NULL,
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
  'hepatitis-b-virus-hbv-hbeag-envelope-antigen-labspring-20694', '20694', 'Hepatitis B Virus (HBV) HbeAg Envelope Antigen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 590.0, 590.0, 187.0, NULL,
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
  'hepatitis-b-virus-hbv-hbsag-screening-surface-antigen-labspring-20695', '20695', 'Hepatitis B Virus (HBV) HbsAg-Screening Surface
Antigen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 60.0, NULL,
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
  'hepatitis-b-virus-hbv-hbv-precore-mutations-labspring-20696', '20696', 'Hepatitis B Virus (HBV) HBV Precore Mutations', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'hepatitis-b-virus-hbv-hbv-basal-core-promoter-mutation-labspring-20697', '20697', 'Hepatitis B Virus (HBV) HBV-Basal Core Promoter
Mutation', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'hepatitis-b-virus-hbv-hbv-dna-detection-by-pcr-amniotic-fluid-labspring-20698', '20698', 'Hepatitis B Virus (HBV) HBV-DNA detection by PCR
Amniotic fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10940.0, 10940.0, 3950.0, NULL,
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
  'hepatitis-b-virus-hbv-hbv-dna-detection-by-pcr-ascitic-fluid-labspring-20699', '20699', 'Hepatitis B Virus (HBV) HBV-DNA detection by PCR
Ascitic fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10940.0, 10940.0, 3950.0, NULL,
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
  'hepatitis-b-virus-hbv-hbv-dna-detection-by-pcr-csf-labspring-20700', '20700', 'Hepatitis B Virus (HBV) HBV-DNA detection by PCR
CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10940.0, 10940.0, 3950.0, NULL,
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
  'hepatitis-b-virus-hbv-hbv-dna-detection-by-pcr-liver-tissue-labspring-20701', '20701', 'Hepatitis B Virus (HBV) HBV-DNA detection by PCR
Liver tissue', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10940.0, 10940.0, 3950.0, NULL,
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
  'hepatitis-b-virus-hbv-hbv-dna-qualitative-by-pcr-method-labspring-20702', '20702', 'Hepatitis B Virus (HBV) HBV-DNA Qualitative By PCR
Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4760.0, 4760.0, 929.0, NULL,
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
  'hepatitis-b-virus-hbv-hbv-dna-quantitative-viral-load-labspring-20703', '20703', 'Hepatitis B Virus (HBV) HBV-DNA Quantitative Viral
Load', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4760.0, 4760.0, 929.0, NULL,
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
  'hepatitis-b-virus-hbv-hbv-genotype-drug-resistance-test-labspring-20704', '20704', 'Hepatitis B Virus (HBV) HBV-Genotype & Drug
Resistance Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12500.0, 12500.0, 3367.0, NULL,
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
  'hepatitis-b-virus-hbv-hbv-ymdd-mutation-by-sequencing-serum-or-plasma-labspring-20705', '20705', 'Hepatitis B Virus (HBV) HBV-YMDD Mutation By
Sequencing Serum Or Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7500.0, 7500.0, 2400.0, NULL,
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
  'hepatitis-b-virus-hbv-hbsag-quantitative-surface-antigen-labspring-20706', '20706', 'Hepatitis B Virus (HBV) HbsAg-Quantitative Surface
Antigen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2360.0, 2360.0, 36.0, NULL,
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
  'anti-hcv-antibody-qualitative-labspring-20707', '20707', 'Anti HCV Antibody (qualitative)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 590.0, 590.0, 34.0, NULL,
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
  'hepatitis-c-virus-hcv-hcv-total-antibody-reflex-hcv-rna-qualitative-labspring-20708', '20708', 'Hepatitis C Virus (HCV) HCV- Total Antibody Reflex
HCV-RNA Qualitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7000.0, 7000.0, 1657.0, NULL,
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
  'hepatitis-c-virus-hcv-hcv-genotyping-by-sequencing-labspring-20709', '20709', 'Hepatitis C Virus (HCV) HCV-Genotyping By
Sequencing', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11670.0, 11670.0, 3000.0, NULL,
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
  'hepatitis-c-virus-hcv-hcv-igm-antibody-labspring-20710', '20710', 'Hepatitis C Virus (HCV) HCV-IgM Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2030.0, 2030.0, 829.0, NULL,
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
  'hepatitis-c-virus-hcv-hcv-rna-detection-qualitative-labspring-20711', '20711', 'Hepatitis C Virus (HCV) HCV-RNA Detection,
Qualitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4760.0, 4760.0, 971.0, NULL,
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
  'hepatitis-c-virus-hcv-hcv-rna-viral-load-quantitative-labspring-20712', '20712', 'Hepatitis C Virus (HCV) HCV-RNA Viral Load
(Quantitative)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4760.0, 4760.0, 1016.0, NULL,
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
  'hepatitis-delta-virus-hdv-hdv-igm-antibody-labspring-20713', '20713', 'Hepatitis Delta Virus (HDV) HDV-IgM Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12860.0, 12860.0, 4800.0, NULL,
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
  'hepatitis-delta-virus-hdv-hdv-rna-detection-by-pcr-labspring-20714', '20714', 'Hepatitis Delta Virus (HDV) HDV-RNA Detection By
PCR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14730.0, 14730.0, 7071.0, NULL,
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
  'hepatitis-delta-virus-hdv-hdv-total-antibody-labspring-20715', '20715', 'Hepatitis Delta virus (HDV) HDV-total antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'hepatitis-e-virus-hev-anti-hev-igg-labspring-20716', '20716', 'Hepatitis E Virus (HEV) Anti HEV IgG', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2170.0, 2170.0, 224.0, NULL,
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
  'hepatitis-e-virus-hev-anti-hev-igm-labspring-20717', '20717', 'Hepatitis E Virus (HEV) Anti HEV IgM', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 224.0, NULL,
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
  'hepatitis-g-virus-hgv-hgv-rna-detection-by-pcr-labspring-20718', '20718', 'Hepatitis G Virus (HGV) HGV-RNA Detection By PCR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13260.0, 13260.0, 4950.0, NULL,
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
  'hepcidin-labspring-20719', '20719', 'Hepcidin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4820.0, 4820.0, 1800.0, NULL,
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
  'her-2-neu-gene-amplification-cerb2-erbb2-fish-probe-for-cep-17-and-her2-gene-tissue-labspring-20720', '20720', 'Her-2 Neu Gene Amplification (CERB2) (ERBB2) FISH
probe for CEP 17 and Her2 gene Tissue', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 28350.0, 28350.0, 5333.0, NULL,
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
  'histamine-labspring-20721', '20721', 'Histamine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'histidine-quantitative-labspring-20722', '20722', 'Histidine Quantitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'histochemistry-special-stain-with-reporting-alcian-blue-tissue-ffpe-labspring-20723', '20723', 'Histochemistry (special stain with reporting) Alcian
Blue Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-bleach-tissue-ffpe-labspring-20724', '20724', 'Histochemistry (special stain with reporting) Bleach
Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-congo-red-tissue-ffpe-labspring-20725', '20725', 'Histochemistry (special stain with reporting) Congo
Red Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-fite-farraco-tissue-ffpe-labspring-20726', '20726', 'Histochemistry (special stain with reporting) Fite
Farraco Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-fontana-masson-silver-tissue-ffpe-labspring-20727', '20727', 'Histochemistry (special stain with reporting) Fontana
Masson Silver Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-giemsa-tissue-ffpe-labspring-20728', '20728', 'Histochemistry (special stain with reporting) Giemsa
Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-gomori-silver-methanamine-gms-tissue-ffpe-labspring-20729', '20729', 'Histochemistry (special stain with reporting) Gomori
Silver Methanamine (GMS) Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-hales-colloidal-iron-tissue-ffpe-labspring-20730', '20730', 'Histochemistry (special stain with reporting) Hale''S
Colloidal Iron Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
  'Contact for TAT', 'Fasting may be preferred for iron studies; some labs recommend about 8 hours and avoiding iron supplements beforehand. Follow lab instructions.', 'Tissue / biopsy (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'histochemistry-special-stain-tissue-ffpe-labspring-20731', '20731', 'Histochemistry  Special Stain Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-masson-trichrome-tissue-ffpe-labspring-20732', '20732', 'Histochemistry (special stain with reporting) Masson
Trichrome Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-mucicarmine-tissue-ffpe-labspring-20733', '20733', 'Histochemistry (special stain with reporting)
Mucicarmine Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-orcein-tissue-ffpe-labspring-20734', '20734', 'Histochemistry (special stain with reporting) Orcein
Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1760.0, 1760.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-pas-with-and-or-without-diastase-tissue-ffpe-labspring-20735', '20735', 'Histochemistry (special stain with reporting) PAS with
and / or Without Diastase Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-pasm-stain-tissue-ffpe-labspring-20736', '20736', 'Histochemistry (special stain with reporting) PASM
Stain Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-prussian-blue-tissue-ffpe-labspring-20737', '20737', 'Histochemistry (special stain with reporting) Prussian
Blue Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-ptah-tissue-ffpe-labspring-20738', '20738', 'Histochemistry (special stain with reporting) PTAH
Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-reticulin-tissue-ffpe-labspring-20739', '20739', 'Histochemistry (special stain with reporting) Reticulin
Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-van-gieson-tissue-ffpe-labspring-20740', '20740', 'Histochemistry (special stain with reporting) Van
Gieson Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-verhoeffs-vangieson-tissue-ffpe-labspring-20741', '20741', 'Histochemistry (special stain with reporting)
Verhoeff''S Vangieson Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-von-kossa-stain-tissue-ffpe-labspring-20742', '20742', 'Histochemistry (special stain with reporting) Von
Kossa Stain Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 250.0, NULL,
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
  'histochemistry-special-stain-with-reporting-zn-tissue-ffpe-labspring-20743', '20743', 'Histochemistry (special stain with reporting) ZN Tissue
/ FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 286.0, NULL,
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
  'histology-second-opinion-service-slides-and-blocks-labspring-20744', '20744', 'Histology Second opinion service Slides and blocks', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 450.0, 450.0, 188.0, NULL,
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
  'histone-antibody-labspring-20745', '20745', 'Histone Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'histopathological-examination-of-bone-specimen-special-stains-reflex-ihc-labspring-20746', '20746', 'Histopathological examination of Bone Specimen
Special stains & Reflex IHC', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 900.0, 900.0, 375.0, NULL,
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
  'histopathology-biopsy-large-complex-cancer-specimen-labspring-20747', '20747', 'Histopathology Biopsy: Large Complex / Cancer
Specimen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1610.0, 1610.0, 673.0, NULL,
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
  'histopathology-biopsy-large-specimen-labspring-20748', '20748', 'Histopathology Biopsy: Large Specimen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1010.0, 1010.0, 423.0, NULL,
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
  'histopathology-biopsy-medium-specimen-labspring-20749', '20749', 'Histopathology Biopsy: Medium Specimen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 500.0, 500.0, 210.0, NULL,
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
  'histopathology-biopsy-small-specimen-labspring-20750', '20750', 'Histopathology Biopsy: Small Specimen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 340.0, 340.0, 141.0, NULL,
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
  'hiv-1-2-antibody-by-western-blot-labspring-20751', '20751', 'HIV-1 & 2 Antibody By Western Blot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4170.0, 4170.0, 625.0, NULL,
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
  'hiv-1-combo-labspring-20752', '20752', 'HIV-1 Combo', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8780.0, 8780.0, 3360.0, NULL,
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
  'hiv-1-coreceptor-tropism-genotypic-labspring-20753', '20753', 'HIV-1 Coreceptor Tropism-Genotypic', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'hiv-1-drug-resistance-integrase-inhibitor-resistance-labspring-20754', '20754', 'HIV-1 Drug Resistance -Integrase Inhibitor Resistance', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'hiv-1-drug-resistance-extended-pi-nrti-nnrti-insti-labspring-20755', '20755', 'HIV-1 Drug Resistance-Extended (PI, NRTI, NNRTI,
INSTI)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 48210.0, 48210.0, 18000.0, NULL,
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
  'hiv-1-proviral-dna-labspring-20756', '20756', 'HIV-1 Proviral DNA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6000.0, 6000.0, 1920.0, NULL,
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
  'hiv-1-rna-detection-by-pcrâ-qualitative-test-labspring-20757', '20757', 'HIV-1 RNA  Detection By PCRâ€“ Qualitative Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5000.0, 5000.0, 1600.0, NULL,
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
  'hiv-2-by-western-blot-labspring-20758', '20758', 'HIV-2 By Western Blot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'hiv-2-combo-labspring-20759', '20759', 'HIV-2 Combo', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12500.0, 12500.0, 4000.0, NULL,
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
  'hiv-2-rna-detection-by-real-time-pcr-labspring-20760', '20760', 'HIV-2 RNA Detection By Real Time PCR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6330.0, 6330.0, 2027.0, NULL,
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
  'hiv-2-viral-load-by-real-time-pcr-labspring-20761', '20761', 'HIV-2 Viral Load By Real Time PCR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10000.0, 10000.0, 3200.0, NULL,
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
  'hiv-12-antibodies-labspring-20762', '20762', 'HIV 1&2 Antibodies', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 34.0, NULL,
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
  'hiv-early-detection-profile-1-for-age-2-yrs-labspring-20763', '20763', 'HIV-Early Detection Profile -1 For age > 2 yrs', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6080.0, 6080.0, 1867.0, NULL,
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
  'hiv-early-detection-profile-2-for-age-2-yrs-labspring-20764', '20764', 'HIV-Early Detection Profile -2 For age < 2 yrs', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6080.0, 6080.0, 1547.0, NULL,
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
  'hla-auto-antibody-detection-test-labspring-20765', '20765', 'HLA Auto Antibody Detection Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'hla-b5701-genotyping-abacavir-hypersensitivity-blood-labspring-20766', '20766', 'HLA B*5701 Genotyping Abacavir Hypersensitivity
Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5000.0, 5000.0, 1600.0, NULL,
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
  'hla-b27-studies-pcr-method-blood-labspring-20767', '20767', 'HLA B27 Studies PCR Method Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7140.0, 7140.0, 929.0, NULL,
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
  'hla-typing-panel-molecular-a-b-c-loci-class-i-molecular-typing-labspring-20768', '20768', 'HLA Typing Panel-Molecular A, B C Loci Class I -
Molecular Typing', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 20000.0, 20000.0, 6400.0, NULL,
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
  'hla-typing-molecular-b-locus-labspring-20769', '20769', 'HLA typing-Molecular B locus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 24030.0, 24030.0, 4533.0, NULL,
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
  'hla-typing-molecular-b5-locus-labspring-20770', '20770', 'HLA Typing-Molecular B5 Locus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'hla-typing-molecular-b51-locus-labspring-20771', '20771', 'HLA Typing-Molecular B51 Locus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'hla-typing-molecular-dq-locus-class-ii-labspring-20772', '20772', 'HLA typing-Molecular DQ locus Class II', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9170.0, 9170.0, 2933.0, NULL,
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
  'hla-typing-molecular-dr-locus-class-ii-labspring-20773', '20773', 'HLA Typing-Molecular DR Locus Class II', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9170.0, 9170.0, 2933.0, NULL,
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
  'hla-cross-match-lymphocyte-hla-total-t-and-b-cells-together-labspring-20774', '20774', 'HLA-Cross Match Lymphocyte (HLA) Total-T And B
Cells Together', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3630.0, 3630.0, 1246.0, NULL,
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
  'hla-donor-specific-antibody-dsa-labspring-20775', '20775', 'HLA-Donor Specific Antibody DSA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14170.0, 14170.0, 4533.0, NULL,
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
  'hla-lifecode-single-antigen-lsa-class-i-labspring-20776', '20776', 'HLA-Lifecode Single Antigen (LSA) Class I', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 33330.0, 33330.0, 11200.0, NULL,
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
  'hla-lifecode-single-antigen-lsa-class-ii-labspring-20777', '20777', 'HLA-Lifecode Single Antigen (LSA) Class II', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 33330.0, 33330.0, 11200.0, NULL,
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
  'hla-pra-screening-class-i-and-ii-panel-reactive-antibody-labspring-20778', '20778', 'HLA-PRA Screening (Class I And II) Panel Reactive
Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'homocysteine-labspring-20779', '20779', 'Homocysteine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2260.0, 2260.0, 176.0, NULL,
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
  'homocysteine-reflex-b12-folate-labspring-20780', '20780', 'Homocysteine Reflex B12-folate', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2180.0, 2180.0, 314.0, NULL,
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
  'homogentisic-acid-alkaptonuria-labspring-20781', '20781', 'Homogentisic Acid Alkaptonuria', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1250.0, 1250.0, 429.0, NULL,
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
  'homovanillic-acid-hva-labspring-20782', '20782', 'Homovanillic Acid (HVA)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'hpv-human-papilloma-virus-dna-detection-and-typing-lbc-labspring-20783', '20783', 'HPV-Human Papilloma Virus DNA Detection And
Typing LBC', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3810.0, 3810.0, 1270.0, NULL,
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
  'hpv-human-papilloma-virus-dna-detection-and-typing-cervical-scrapping-labspring-20784', '20784', 'HPV-Human Papilloma Virus DNA Detection And
Typing Cervical scrapping', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3780.0, 3780.0, 1343.0, NULL,
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
  'hpv-human-papilloma-virus-dna-detection-and-typing-tissue-biopsy-labspring-20785', '20785', 'HPV-Human Papilloma Virus DNA Detection And
Typing Tissue / biopsy', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4050.0, 4050.0, 1600.0, NULL,
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
  'hpv-human-papilloma-virus-dna-detection-and-typing-vaginal-swab-labspring-20786', '20786', 'HPV-Human Papilloma Virus DNA Detection And
Typing Vaginal swab', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2820.0, 2820.0, 1343.0, NULL,
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
  'hscrp-high-sensitivity-crp-labspring-20787', '20787', 'HsCRP High Sensitivity CRP', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 79.0, NULL,
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
  'hsv-1-herpes-simplex-virus-1-igg-and-igm-antibody-labspring-20788', '20788', 'HSV-1 (Herpes Simplex Virus-1) IgG And IgM Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1240.0, 1240.0, 199.0, NULL,
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
  'hsv-1-herpes-simplex-virus-1-igg-antibody-labspring-20789', '20789', 'HSV-1 (Herpes Simplex Virus-1) IgG Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 107.0, NULL,
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
  'hsv-1-herpes-simplex-virus-1-igm-antibody-labspring-20790', '20790', 'HSV-1 (Herpes Simplex Virus-1) IgM Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 760.0, 760.0, 107.0, NULL,
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
  'hsv-12-herpes-simplex-virus-12-igg-and-igm-antibody-labspring-20791', '20791', 'HSV-1&2 (Herpes Simplex Virus-1&2) IgG and IgM
antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1100.0, 1100.0, 193.0, NULL,
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
  'hsv-12-herpes-simplex-virus-12-igg-antibody-labspring-20792', '20792', 'HSV-1&2 (Herpes Simplex Virus-1&2) IgG antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 760.0, 760.0, 97.0, NULL,
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
  'hsv-12-herpes-simplex-virus-12-igg-antibody-by-western-blot-labspring-20793', '20793', 'HSV-1&2 (Herpes Simplex Virus-1&2) IgG antibody by
western blot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3330.0, 3330.0, 1143.0, NULL,
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
  'hsv-12-herpes-simplex-virus-12-igm-antibody-labspring-20794', '20794', 'HSV-1&2 (Herpes Simplex Virus-1&2) IgM antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 97.0, NULL,
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
  'hsv-12-herpes-simplex-virus-12-dna-detection-by-real-time-pcr-labspring-20795', '20795', 'HSV-1&2 (Herpes Simplex Virus-1&2) DNA detection
by real time PCR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3170.0, 3170.0, 1320.0, NULL,
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
  'hsv-12-herpes-simplex-virus-12-dna-detection-by-real-time-pcr-csf-labspring-20796', '20796', 'HSV-1&2 (Herpes Simplex Virus-1&2) DNA detection
by real time PCR CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5670.0, 5670.0, 2133.0, NULL,
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
  'hsv-12-herpes-simplex-virus-12-igm-antibody-by-western-blot-labspring-20797', '20797', 'HSV-1&2 (Herpes Simplex Virus-1&2) IgM antibody by
western blot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3330.0, 3330.0, 1143.0, NULL,
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
  'hsv-2-herpes-simplex-virus-2-igg-and-igm-antibody-labspring-20798', '20798', 'HSV-2 (Herpes Simplex Virus-2) IgG and IgM antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 107.0, NULL,
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
  'hsv-2-herpes-simplex-virus-2-igg-antibody-labspring-20799', '20799', 'HSV-2 (Herpes Simplex Virus-2) IgG antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 113.0, NULL,
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
  'hsv-2-herpes-simplex-virus-2-igm-antibody-labspring-20800', '20800', 'HSV-2 (Herpes Simplex Virus-2) IgM antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 107.0, NULL,
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
  'htlv-1-and-2-virus-total-antibody-labspring-20801', '20801', 'HTLV 1 And 2 Virus Total Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7330.0, 7330.0, 2347.0, NULL,
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
  'hu-antibody-neuronal-ag-in-paraneoplastic-syndromes-labspring-20802', '20802', 'Hu Antibody Neuronal Ag In Paraneoplastic
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
  'huntington-disease-mutation-analysis-cag-repeats-for-chorea-blood-labspring-20803', '20803', 'Huntington Disease Mutation Analysis CAG Repeats
For Chorea Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13390.0, 13390.0, 4800.0, NULL,
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
  'ia2-insulin-autoantibodies-labspring-20804', '20804', 'IA2 Insulin Autoantibodies', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4000.0, 4000.0, 1371.0, NULL,
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
  'iduronate-2-sulphate-sulphatase-hunter-mps-ii-labspring-20805', '20805', 'Iduronate 2 Sulphate Sulphatase Hunter/ MPS II', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 20790.0, 20790.0, 7000.0, NULL,
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
  'iga-labspring-20806', '20806', 'IgA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1200.0, 1200.0, 139.0, NULL,
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
  'iga-csf-labspring-20807', '20807', 'IgA CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3780.0, 3780.0, 743.0, NULL,
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
  'igd-by-flow-cytometry-labspring-20808', '20808', 'IgD By Flow Cytometry', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8040.0, 8040.0, 3000.0, NULL,
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
  'ige-total-antibody-labspring-20809', '20809', 'IgE Total antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 230.0, NULL,
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
  'igf-bp3-labspring-20810', '20810', 'IGF BP3', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5330.0, 5330.0, 1707.0, NULL,
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
  'igf-1-somatomedin-c-labspring-20811', '20811', 'IGF-1 Somatomedin C', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4610.0, 4610.0, 1257.0, NULL,
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
  'igg-4-sub-class-labspring-20812', '20812', 'IgG 4 Sub Class', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7670.0, 7670.0, 2453.0, NULL,
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
  'igg-by-flow-cytometry-blood-labspring-20813', '20813', 'IgG By Flow Cytometry Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7370.0, 7370.0, 2750.0, NULL,
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
  'igg-total-antibody-labspring-20814', '20814', 'IgG Total Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 830.0, 830.0, 77.0, NULL,
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
  'igg-total-antibody-csf-labspring-20815', '20815', 'IgG Total antibody CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3780.0, 3780.0, 743.0, NULL,
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
  'ighbcl2t1418-fish-tissue-follicular-lymphoma-leukemic-blood-labspring-20816', '20816', 'IGH/BCL2;t(14;18), FISH, Tissue Follicular lymphoma
Leukemic Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12150.0, 12150.0, 4500.0, NULL,
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
  'ighccnd1-t1114-all-nhl-blood-labspring-20817', '20817', 'IGH/CCND1, t(11;14) ALL, NHL Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12150.0, 12150.0, 4500.0, NULL,
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
  'ighccnd1-t1114-all-nhl-bone-marrow-labspring-20818', '20818', 'IGH/CCND1, t(11;14) ALL, NHL Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12150.0, 12150.0, 4500.0, NULL,
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
  'igm-by-flow-cytometry-blood-labspring-20819', '20819', 'IgM by Flow cytometry Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8040.0, 8040.0, 2750.0, NULL,
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
  'igm-total-csf-labspring-20820', '20820', 'IgM total CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3780.0, 3780.0, 743.0, NULL,
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
  'quantiferon-tb-gold-test-qft-interferon-gamma-release-assay-igra-labspring-20821', '20821', 'Quantiferon-TB Gold Test (QFT) - Interferon Gamma
Release Assay (IGRA)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3810.0, 3810.0, 1270.0, NULL,
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
  'igvh-gene-mutation-labspring-20822', '20822', 'IgVH GENE MUTATION', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 24110.0, 24110.0, 8700.0, NULL,
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
  'ihc-multiplex-marker-with-reporting-cd-20-cd-3-cocktail-labspring-20823', '20823', 'IHC multiplex marker with reporting CD 20 + CD 3
Cocktail', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2400.0, 2400.0, 1000.0, NULL,
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
  'ihc-multiplex-marker-with-reporting-cd4-cd8-cocktail-labspring-20824', '20824', 'IHC multiplex marker with reporting CD4 + CD8
Cocktail', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2400.0, 2400.0, 1000.0, NULL,
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
  'ihc-multiplex-marker-with-reporting-desmoglein-3-napsin-a-cocktail-labspring-20825', '20825', 'IHC multiplex marker with reporting Desmoglein 3 +
Napsin A Cocktail', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2400.0, 2400.0, 1000.0, NULL,
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
  'ihc-panels-with-reporting-breast-i-er-pr-labspring-20826', '20826', 'IHC Panels with reporting Breast-I ER, PR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3600.0, 3600.0, 1500.0, NULL,
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
  'ihc-panels-with-reporting-breast-ii-er-pr-c-erb-b2-labspring-20827', '20827', 'IHC Panels with reporting Breast-II ER, PR, c-erb-B2', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5400.0, 5400.0, 2250.0, NULL,
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
  'ihc-panels-with-reporting-lymph-node-reflex-to-ebv-by-cish-labspring-20828', '20828', 'IHC Panels with reporting Lymph node Reflex to EBV
by CISH', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7800.0, 7800.0, 3467.0, NULL,
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
  'ihc-panels-with-reporting-peritoneal-adenocarcinoma-vs-mesothelioma-comprehensive-diagnosis-labspring-20829', '20829', 'IHC Panels with reporting Peritoneal Adenocarcinoma Vs Mesothelioma Comprehensive diagnosis', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7200.0, 7200.0, 3000.0, NULL,
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
  'ihc-single-marker-with-reporting-34-beta-e12-hmwck-labspring-20830', '20830', 'IHC single marker with reporting 34 Beta E12
(HMWCK)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 750.0, NULL,
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
  'ihc-single-marker-with-reporting-alk-d5f3-nsclc-labspring-20831', '20831', 'IHC single marker with reporting ALK (D5F3) NSCLC', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8100.0, 8100.0, 3375.0, NULL,
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
  'ihc-single-marker-with-reporting-alpha-feto-protein-labspring-20832', '20832', 'IHC single marker with reporting Alpha Feto Protein', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 750.0, NULL,
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
  'ihc-single-marker-with-reporting-bcl-2-oncoprotein-labspring-20833', '20833', 'IHC single marker with reporting Bcl-2 Oncoprotein', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-bcl-6-oncoprotein-labspring-20834', '20834', 'IHC single marker with reporting Bcl-6 Oncoprotein', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-beta-catenin-labspring-20835', '20835', 'IHC single marker with reporting Beta Catenin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3900.0, 3900.0, 1625.0, NULL,
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
  'ihc-single-marker-with-reporting-beta-hcg-labspring-20836', '20836', 'IHC single marker with reporting Beta HCG', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 750.0, NULL,
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
  'ihc-single-marker-with-reporting-c4d-labspring-20837', '20837', 'IHC single marker with reporting C4D', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 750.0, NULL,
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
  'ihc-single-marker-with-reporting-ca-125-labspring-20838', '20838', 'IHC single marker with reporting CA 125', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 750.0, NULL,
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
  'ihc-single-marker-with-reporting-ca-199-labspring-20839', '20839', 'IHC single marker with reporting CA-19.9', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 750.0, NULL,
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
  'ihc-single-marker-with-reporting-calponin-labspring-20840', '20840', 'IHC single marker with reporting Calponin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 750.0, NULL,
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
  'ihc-single-marker-with-reporting-cd10-labspring-20841', '20841', 'IHC single marker with reporting CD10', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6900.0, 6900.0, 2875.0, NULL,
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
  'ihc-single-marker-with-reporting-cd117-labspring-20842', '20842', 'IHC single marker with reporting CD117', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-cd138-labspring-20843', '20843', 'IHC single marker with reporting CD138', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3000.0, 3000.0, 1250.0, NULL,
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
  'ihc-single-marker-with-reporting-cd15-labspring-20844', '20844', 'IHC single marker with reporting CD15', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3000.0, 3000.0, 1250.0, NULL,
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
  'ihc-single-marker-with-reporting-cd1a-labspring-20845', '20845', 'IHC single marker with reporting CD1a', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4200.0, 4200.0, 1750.0, NULL,
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
  'ihc-single-marker-with-reporting-cd20-labspring-20846', '20846', 'IHC single marker with reporting CD20', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-cd21-labspring-20847', '20847', 'IHC single marker with reporting CD21', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3600.0, 3600.0, 1500.0, NULL,
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
  'ihc-single-marker-with-reporting-cd23-labspring-20848', '20848', 'IHC single marker with reporting CD23', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-cd3-labspring-20849', '20849', 'IHC single marker with reporting CD3', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-cd30-labspring-20850', '20850', 'IHC single marker with reporting CD30', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-cd31-labspring-20851', '20851', 'IHC single marker with reporting CD31', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 750.0, NULL,
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
  'ihc-single-marker-with-reporting-cd34-labspring-20852', '20852', 'IHC single marker with reporting CD34', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-cd43-labspring-20853', '20853', 'IHC single marker with reporting CD43', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-cd45-lca-labspring-20854', '20854', 'IHC single marker with reporting CD45 LCA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-cd5-labspring-20855', '20855', 'IHC single marker with reporting CD5', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-cd56-labspring-20856', '20856', 'IHC single marker with reporting CD56', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-cd57-labspring-20857', '20857', 'IHC single marker with reporting CD57', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-cd68-labspring-20858', '20858', 'IHC single marker with reporting CD68', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-cd79a-labspring-20859', '20859', 'IHC single marker with reporting CD79a', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-cd99-mic2-labspring-20860', '20860', 'IHC single marker with reporting CD99 Mic2', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-cdx2-labspring-20861', '20861', 'IHC single marker with reporting CDX2', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-cea-labspring-20862', '20862', 'IHC single marker with reporting CEA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-c-erb-b2-for-breast-her2-neu-labspring-20863', '20863', 'IHC single marker with reporting C-erb-B2 for breast
Her2 Neu', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3000.0, 3000.0, 1250.0, NULL,
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
  'ihc-single-marker-with-reporting-c-erb-b2-for-gastric-carcinoma-her2-neu-labspring-20864', '20864', 'IHC single marker with reporting C-erb-B2 for Gastric
carcinoma Her2 Neu', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 750.0, NULL,
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
  'ihc-single-marker-with-reporting-ck10-labspring-20865', '20865', 'IHC single marker with reporting CK10', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 750.0, NULL,
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
  'ihc-single-marker-with-reporting-ck19-labspring-20866', '20866', 'IHC single marker with reporting CK19', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-ck20-labspring-20867', '20867', 'IHC single marker with reporting CK20', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-ck56-labspring-20868', '20868', 'IHC single marker with reporting CK5/6', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-ck7-labspring-20869', '20869', 'IHC single marker with reporting CK7', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-ck8-labspring-20870', '20870', 'IHC single marker with reporting CK8', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 750.0, NULL,
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
  'ihc-single-marker-with-reporting-cyclin-d1-labspring-20871', '20871', 'IHC single marker with reporting Cyclin D1', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-desmin-labspring-20872', '20872', 'IHC single marker with reporting Desmin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3000.0, 3000.0, 1250.0, NULL,
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
  'ihc-single-marker-with-reporting-dog-1-labspring-20873', '20873', 'IHC single marker with reporting DOG-1', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-e-cadherin-labspring-20874', '20874', 'IHC single marker with reporting E Cadherin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-egfr-labspring-20875', '20875', 'IHC single marker with reporting EGFR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3000.0, 3000.0, 1250.0, NULL,
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
  'ihc-single-marker-with-reporting-ema-epithelial-membrane-antigen-labspring-20876', '20876', 'IHC single marker with reporting EMA Epithelial
Membrane Antigen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-er-estrogen-receptor-labspring-20877', '20877', 'IHC single marker with reporting ER Estrogen
Receptor', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3150.0, 3150.0, 1313.0, NULL,
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
  'ihc-single-marker-with-reporting-factor-viii-labspring-20878', '20878', 'IHC single marker with reporting Factor VIII', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5100.0, 5100.0, 2125.0, NULL,
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
  'ihc-single-marker-with-reporting-gfap-labspring-20879', '20879', 'IHC single marker with reporting GFAP', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-hpylori-labspring-20880', '20880', 'IHC single marker with reporting H.Pylori', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 750.0, NULL,
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
  'ihc-single-marker-with-reporting-hep-par-1-labspring-20881', '20881', 'IHC single marker with reporting Hep-Par 1', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-hmb45-labspring-20882', '20882', 'IHC single marker with reporting HMB45', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-inhibin-alpha-labspring-20883', '20883', 'IHC single marker with reporting Inhibin Alpha', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3300.0, 3300.0, 1375.0, NULL,
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
  'ihc-single-marker-with-reporting-insulin-labspring-20884', '20884', 'IHC single marker with reporting Insulin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 750.0, NULL,
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
  'ihc-single-marker-with-reporting-ki-67-labspring-20885', '20885', 'IHC single marker with reporting Ki 67', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-lysoyme-labspring-20886', '20886', 'IHC single marker with reporting Lysoyme', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 750.0, NULL,
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
  'ihc-single-marker-with-reporting-melan-a-labspring-20887', '20887', 'IHC single marker with reporting Melan A', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-moc-31-labspring-20888', '20888', 'IHC single marker with reporting MOC 31', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-mpo-myeloperoxidase-labspring-20889', '20889', 'IHC single marker with reporting MPO
Myeloperoxidase', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1800.0, 1800.0, 750.0, NULL,
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
  'ihc-single-marker-with-reporting-mum1-protein-labspring-20890', '20890', 'IHC single marker with reporting Mum1 Protein', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-my-f4-myogenin-labspring-20891', '20891', 'IHC single marker with reporting My F4 Myogenin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3000.0, 3000.0, 1250.0, NULL,
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
  'ihc-single-marker-with-reporting-oct2-labspring-20892', '20892', 'IHC single marker with reporting Oct.2', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4200.0, 4200.0, 1750.0, NULL,
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
  'ihc-single-marker-with-reporting-p16ink4a-labspring-20893', '20893', 'IHC single marker with reporting p16INK4a', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3300.0, 3300.0, 1375.0, NULL,
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
  'ihc-single-marker-with-reporting-p53-labspring-20894', '20894', 'IHC single marker with reporting p53', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-p63-labspring-20895', '20895', 'IHC Single Marker With Reporting P63', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-pax-5-labspring-20896', '20896', 'IHC single marker with reporting Pax 5', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-pax-8-labspring-20897', '20897', 'IHC single marker with reporting Pax 8', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3600.0, 3600.0, 1500.0, NULL,
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
  'ihc-single-marker-with-reporting-pr-progesterone-receptor-labspring-20898', '20898', 'IHC single marker with reporting PR Progesterone
Receptor', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3000.0, 3000.0, 1250.0, NULL,
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
  'ihc-single-marker-with-reporting-psa-prostate-specific-antigen-labspring-20899', '20899', 'IHC Single Marker With Reporting PSA Prostate
Specific Antigen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ihc-single-marker-with-reporting-s100-protein-labspring-20900', '20900', 'IHC single marker with reporting S100 Protein', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2700.0, 2700.0, 1125.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

