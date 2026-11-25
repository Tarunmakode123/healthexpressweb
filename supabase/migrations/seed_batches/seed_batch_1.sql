-- ============================================================
-- HEALTH EXPRESS — SERVICE CATALOG SEED BATCH 1 OF 5
-- Services 1 to 450 of 2207
-- ============================================================

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lipid-profile-advance-labspring-20001', '20001', 'Lipid Profile Advance', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 950.0, 950.0, 121.0, NULL,
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
  'liver-function-test-labspring-20002', '20002', 'Liver Function Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 650.0, 650.0, 110.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'complete-hemogram-labspring-20003', '20003', 'Complete Hemogram', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 650.0, 650.0, 110.0, NULL,
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
  'thyroid-profile-total-t3-t4-tsh-ultra-sensitive-labspring-20004', '20004', 'Thyroid Profile-Total (T3, T4 & TSH Ultra-sensitive)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 650.0, 650.0, 102.0, NULL,
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
  'iron-studies-labspring-20005', '20005', 'Iron Studies', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 650.0, 650.0, 64.0, NULL,
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
  'kidney-function-test-advance-labspring-20006', '20006', 'Kidney Function Test Advance', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 900.0, 900.0, 110.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'thyroid-profile-free-ft3-ft4-tsh-labspring-20007', '20007', 'Thyroid Profile-Free (FT3, FT4 & TSH)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 950.0, 950.0, 175.0, NULL,
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
  'hba1c-labspring-20008', '20008', 'HbA1c', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 650.0, 650.0, 83.0, NULL,
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
  'lipid-profile-extended-labspring-20009', '20009', 'Lipid Profile-Extended', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1150.0, 1150.0, 340.0, NULL,
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
  'electrolytes-profile-labspring-20010', '20010', 'Electrolytes Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 40.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'stool-routine-and-microscopic-examination-labspring-20011', '20011', 'Stool Routine And Microscopic Examination', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 290.0, 290.0, 19.0, NULL,
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
  'abnormal-haemoglobin-studieshb-variant-blood-labspring-20012', '20012', 'Abnormal Haemoglobin Studies(Hb Variant), Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2190.0, 2190.0, 300.0, NULL,
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
  'iron-studies-with-ferritin-labspring-20013', '20013', 'Iron Studies With Ferritin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1190.0, 1190.0, 209.0, NULL,
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
  'torch-4-igg-labspring-20014', '20014', 'Torch-4 IgG', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1660.0, 1660.0, 330.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'bilirubin-profile-labspring-20015', '20015', 'Bilirubin Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 250.0, 250.0, 50.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'torch-8-labspring-20016', '20016', 'Torch-8', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3330.0, 3330.0, 701.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'dengue-igg-and-igm-rapid-card-labspring-20017', '20017', 'Dengue IgG And IgM (Rapid Card)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 104.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'blood-group-profile-abo-rh-typing-manual-blood-labspring-20018', '20018', 'Blood Group Profile ABO & Rh Typing (manual), Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 310.0, 310.0, 31.0, NULL,
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
  'widal-profile-labspring-20019', '20019', 'Widal Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 410.0, 410.0, 31.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'urine-routine-microscopy-extended-labspring-20020', '20020', 'Urine Routine & Microscopy Extended', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 260.0, 260.0, 78.0, NULL,
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
  'complete-blood-count-labspring-20021', '20021', 'COMPLETE BLOOD COUNT', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 110.0, NULL,
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
  'allergy-screening-phadiatop-adult-for-5-years-labspring-20022', '20022', 'Allergy Screening Phadiatop Adult For > 5 Years', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2170.0, 2170.0, 629.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-screening-panel-grass-pollen-labspring-20023', '20023', 'Allergy Screening Panel - Grass Pollen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1630.0, 1630.0, 349.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-screening-panel-house-dust-dust-mite-cockroach-labspring-20024', '20024', 'Allergy Screening Panel - House Dust, Dust Mite,
Cockroach', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2500.0, 2500.0, 1011.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-screening-panel-weed-pollen-labspring-20025', '20025', 'Allergy Screening Panel - Weed Pollen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1630.0, 1630.0, 349.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-screening-panel-5-fruits-labspring-20026', '20026', 'Allergy Screening Panel - 5 Fruits', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2200.0, 2200.0, 349.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'kft-with-k-labspring-20027', '20027', 'KFT With K', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 110.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-veg-non-veg-panel-by-elisa-method-labspring-20028', '20028', 'Allergy Veg & Non-Veg Panel By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2000.0, 2000.0, 660.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-drugs-profile-by-elisa-method-labspring-20029', '20029', 'Allergy Drugs Profile By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2000.0, 2000.0, 360.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-pet-profile-by-elisa-method-labspring-20030', '20030', 'Allergy Pet Profile By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 314.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-dust-mites-profile-by-elisa-method-labspring-20031', '20031', 'Allergy Dust Mites Profile By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 194.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-insects-profile-by-elisa-method-labspring-20032', '20032', 'Allergy Insects Profile By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 129.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-grass-mix-profile-by-elisa-method-labspring-20033', '20033', 'Allergy Grass Mix Profile By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 133.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-moulds-yeast-profile-by-elisa-method-labspring-20034', '20034', 'Allergy Moulds & Yeast Profile By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 150.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-weed-tree-profile-by-elisa-method-labspring-20035', '20035', 'Allergy Weed & Tree Profile By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 164.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'torch-10-labspring-20036', '20036', 'Torch 10', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4520.0, 4520.0, 919.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'kidney-function-test-kft-labspring-20037', '20037', 'Kidney Function Test (KFT)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 900.0, 900.0, 110.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-screening-panel-by-immunocap-gold-standard-labspring-20038', '20038', 'Allergy Screening Panel By Immunocap (Gold
Standard)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1430.0, 1430.0, 259.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'torch-4-igm-labspring-20039', '20039', 'TORCH-4 IgM', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1660.0, 1660.0, 371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'torch-5-igg-labspring-20040', '20040', 'TORCH-5 IgG', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2380.0, 2380.0, 457.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'torch-5-igm-labspring-20041', '20041', 'TORCH-5 IgM', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2380.0, 2380.0, 481.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-non-veg-food-profile-by-elisa-method-labspring-20042', '20042', 'Allergy NON VEG Food Profile By ELISA Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 254.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-veg-food-fruit-allergy-by-elisa-method-labspring-20043', '20043', 'Allergy Veg-Food & Fruit Allergy By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2000.0, 2000.0, 660.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-ocupational-by-elisa-method-labspring-20044', '20044', 'Allergy Ocupational By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 129.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-parasites-by-elisa-method-labspring-20045', '20045', 'Allergy Parasites By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 129.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-seednutslegumes-by-elisa-method-labspring-20046', '20046', 'Allergy Seed/Nuts/Legumes By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 314.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-dairy-products-by-elisa-method-labspring-20047', '20047', 'Allergy Dairy Products By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 179.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-spices-by-elisa-method-labspring-20048', '20048', 'Allergy Spices By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 284.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'genetics-nutritional-profile-labspring-20049', '20049', 'Genetics Nutritional Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 40.0, NULL,
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
  'genetic-food-sensitivity-profile-labspring-20050', '20050', 'Genetic Food Sensitivity Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 40.0, NULL,
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
  'genetics-eating-behaviour-profile-labspring-20051', '20051', 'Genetics Eating Behaviour Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 40.0, NULL,
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
  'genetics-weight-management-profile-labspring-20052', '20052', 'Genetics Weight Management Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 40.0, NULL,
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
  'response-to-exercise-genetic-profile-labspring-20053', '20053', 'Response To Exercise Genetic Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 40.0, NULL,
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
  'genetic-aerobic-capacity-profile-labspring-20054', '20054', 'Genetic Aerobic Capacity Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 40.0, NULL,
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
  'genetics-micronutrients-profile-labspring-20055', '20055', 'Genetics Micronutrients Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 40.0, NULL,
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
  'genetic-immunognic-profile-labspring-20056', '20056', 'Genetic Immunognic Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 40.0, NULL,
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
  'genetics-detoxification-profile-labspring-20057', '20057', 'Genetics Detoxification Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 40.0, NULL,
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
  'genetic-skin-altering-conditions-profile-labspring-20058', '20058', 'Genetic Skin Altering Conditions Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 40.0, NULL,
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
  'genetic-lipid-profile-labspring-20059', '20059', 'Genetic Lipid Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 40.0, NULL,
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
  'genetics-injury-and-recovery-risk-profile-labspring-20060', '20060', 'Genetics Injury And Recovery Risk Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 40.0, NULL,
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
  'autoimmune-encephalitis-panel-1-labspring-20061', '20061', 'Autoimmune Encephalitis Panel-1', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 26471.0, 26471.0, 11200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'autoimmune-encephalitis-panel-2-labspring-20062', '20062', 'Autoimmune Encephalitis Panel-2', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 36471.0, 36471.0, 15467.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'h1n1-panel-labspring-20063', '20063', 'H1N1 Panel', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4760.0, 4760.0, 1714.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'phospholipid-antibodies-igm-igg-serum-profile-labspring-20064', '20064', 'Phospholipid Antibodies (IGM & IGG) Serum Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2830.0, 2830.0, 429.0, NULL,
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
  'immunoglobulin-profile-serum-labspring-20065', '20065', 'Immunoglobulin Profile Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2500.0, 2500.0, 567.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'myositis-profile-igg-labspring-20066', '20066', 'Myositis Profile-IgG', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 25650.0, 25650.0, 9500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lipid-profile-labspring-20067', '20067', 'Lipid Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 650.0, 650.0, 62.0, NULL,
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
  'apri-ast-to-platelet-ratio-index-labspring-20068', '20068', 'APRI (AST To Platelet Ratio Index)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 40.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'fib-4-labspring-20069', '20069', 'FIB - 4', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 46.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lipid-profile-non-fasting-labspring-20070', '20070', 'Lipid Profile (Non Fasting)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 120.0, NULL,
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
  'prothrombin-time-pt-inr-labspring-20071', '20071', 'Prothrombin Time (PT) INR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 700.0, 700.0, 150.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'apolipoproteins-profile-a1bba1-ratio-labspring-20072', '20072', 'Apolipoproteins Profile (A1,B,B/A1 Ratio)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1420.0, 1420.0, 169.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'complete-blood-count-advance-labspring-20073', '20073', 'Complete Blood Count Advance', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 650.0, 650.0, 120.0, NULL,
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
  '14q323-by-fish-igh-gene-rearrangement-all-nhl-blood-labspring-20074', '20074', '14q32.3 By FISH IGH Gene Rearrangement (ALL, NHL),
Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14850.0, 14850.0, 5500.0, NULL,
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
  '14q323-by-fish-igh-gene-rearrangement-all-nhl-bone-marrow-labspring-20075', '20075', '14q32.3 by FISH IGH gene rearrangement (ALL, NHL),
Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14850.0, 14850.0, 5500.0, NULL,
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
  '17-hydroxy-progesterone-17-ohp-serum-labspring-20076', '20076', '17-Hydroxy Progesterone (17-OHP), Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1350.0, 1350.0, 800.0, NULL,
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
  '3-methyl-histidine-quantitative-urine-labspring-20077', '20077', '3-Methyl Histidine Quantitative, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7580.0, 7580.0, 5950.0, NULL,
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
  'absolute-basophils-count-blood-labspring-20078', '20078', 'Absolute Basophils Count, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'absolute-blood-count-blood-labspring-20079', '20079', 'Absolute Blood Count, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 360.0, 360.0, 36.0, NULL,
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
  'absolute-eosinophil-count-blood-labspring-20080', '20080', 'Absolute Eosinophil Count, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 36.0, NULL,
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
  'absolute-granulocyte-count-blood-labspring-20081', '20081', 'Absolute Granulocyte Count, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 91.0, NULL,
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
  'absolute-lymphocyte-count-blood-labspring-20082', '20082', 'Absolute Lymphocyte Count, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 34.0, NULL,
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
  'absolute-monocyte-count-blood-labspring-20083', '20083', 'Absolute Monocyte Count, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 34.0, NULL,
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
  'absolute-neutrophil-count-blood-labspring-20084', '20084', 'Absolute Neutrophil Count, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 36.0, NULL,
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
  'acetone-ketone-urine-labspring-20085', '20085', 'Acetone Ketone, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 60.0, NULL,
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
  'acetyl-choline-receptor-antibodies-achr-ab-serum-labspring-20086', '20086', 'Acetyl Choline Receptor Antibodies (AChR Ab), Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2970.0, 2970.0, 1653.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'acid-phosphatase-total-serum-labspring-20087', '20087', 'Acid Phosphatase Total, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 260.0, 260.0, 126.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'acth-stimulation-test-for-17-oh-progesterone-3-samples-serum-labspring-20088', '20088', 'ACTH Stimulation Test For 17 OH Progesterone (3
Samples), Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4890.0, 4890.0, 1760.0, NULL,
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
  'acth-stimulation-test-for-aldosterone-3-samples-serum-labspring-20089', '20089', 'ACTH Stimulation Test For Aldosterone (3 samples),
Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14850.0, 14850.0, 2667.0, NULL,
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
  'acth-stimulation-test-for-androstenedione-3-samples-serum-labspring-20090', '20090', 'ACTH Stimulation Test For Androstenedione (3
Samples), Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12150.0, 12150.0, 2187.0, NULL,
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
  'actinomycetes-culture-sputum-labspring-20091', '20091', 'Actinomycetes Culture, Sputum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3480.0, 3480.0, 1200.0, NULL,
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
  'actinomycetes-culture-tissue-labspring-20092', '20092', 'Actinomycetes Culture, Tissue', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3510.0, 3510.0, 1200.0, NULL,
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
  'actitest-and-fibrotest-liver-fibrosis-and-inflammation-score-serum-labspring-20093', '20093', 'Actitest And Fibrotest Liver Fibrosis And Inflammation
Score, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 40180.0, 40180.0, 15000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'adenosine-deaminase-ada-ascitic-fluid-labspring-20094', '20094', 'Adenosine Deaminase (ADA), Ascitic Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 690.0, 690.0, 329.0, NULL,
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
  'adenosine-deaminase-ada-csf-labspring-20095', '20095', 'Adenosine Deaminase (ADA), CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 690.0, 690.0, 329.0, NULL,
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
  'adenosine-deaminase-ada-pedicardial-fluid-labspring-20096', '20096', 'Adenosine Deaminase (ADA), Pedicardial Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 690.0, 690.0, 329.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'adenosine-deaminase-ada-peritoneal-fluid-labspring-20097', '20097', 'Adenosine Deaminase (ADA), Peritoneal Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1080.0, 1080.0, 429.0, NULL,
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
  'adenosine-deaminase-ada-pus-labspring-20098', '20098', 'Adenosine Deaminase (ADA), Pus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1080.0, 1080.0, 429.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'adenosine-deaminase-ada-serum-labspring-20099', '20099', 'Adenosine Deaminase (ADA), Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1080.0, 1080.0, 429.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'adenosine-deaminase-ada-pleuralfluid-labspring-20100', '20100', 'Adenosine Deaminase (ADA), PleuralFluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 690.0, 690.0, 329.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'adenovirus-dna-detection-eye-swab-labspring-20101', '20101', 'Adenovirus DNA detection, Eye swab', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11750.0, 11750.0, 4200.0, NULL,
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
  'adenovirus-dna-detection-oral-swab-labspring-20102', '20102', 'Adenovirus DNA detection, Oral swab', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11750.0, 11750.0, 4200.0, NULL,
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
  'adenovirus-dna-detection-respiratory-fluid-labspring-20103', '20103', 'Adenovirus DNA detection, Respiratory Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11750.0, 11750.0, 4200.0, NULL,
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
  'adenovirus-igm-antibody-serum-labspring-20104', '20104', 'Adenovirus IgM Antibody, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1600.0, 1600.0, 861.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'adiponectin-serum-labspring-20105', '20105', 'Adiponectin, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6700.0, 6700.0, 2500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'adrenaline-epinephrine-plasma-labspring-20106', '20106', 'Adrenaline (Epinephrine), Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2790.0, 2790.0, 1286.0, NULL,
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
  'adreno-corticotropic-hormone-acth-plasma-labspring-20107', '20107', 'Adreno Corticotropic Hormone (ACTH), Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2140.0, 2140.0, 596.0, NULL,
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
  'afb-detection-by-smear-examination-zn-stain-bal-other-respiratory-samples-labspring-20108', '20108', 'AFB-detection by smear examination ZN Stain, BAL &
other respiratory samples', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'afb-detection-by-smear-examination-zn-stain-body-fluids-labspring-20109', '20109', 'AFB-detection by smear examination ZN Stain, Body
fluids', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 50.0, NULL,
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
  'afb-detection-by-smear-examination-zn-stain-pusabscessaspirates-labspring-20110', '20110', 'AFB-detection By Smear Examination ZN Stain,
Pus/abscess/aspirates', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 500.0, 500.0, 50.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-detection-by-smear-examination-zn-stain-sputum-labspring-20111', '20111', 'AFB-detection By Smear Examination ZN Stain,
Sputum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 340.0, 340.0, 50.0, NULL,
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
  'afb-detection-by-smear-examination-zn-stain-tissue-and-biopsy-labspring-20112', '20112', 'AFB-detection by smear examination ZN Stain, Tissue
and biopsy', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 810.0, 810.0, 157.0, NULL,
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
  'afb-detection-by-smear-examination-zn-stain-urine-labspring-20113', '20113', 'AFB-detection By Smear Examination ZN Stain, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 890.0, 890.0, 33.0, NULL,
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
  'afb-detection-by-smear-examination-fluroscence-microscopy-pus-abscess-and-aspirates-labspring-20114', '20114', 'AFB-detection by smear examination Fluroscence
Microscopy Pus, abscess and aspirates', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 680.0, 680.0, 286.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-detection-by-smear-examination-fluroscence-microscopy-bal-other-respiratory-samples-labspring-20115', '20115', 'AFB-detection by smear examination Fluroscence
Microscopy, BAL & other respiratory samples', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 680.0, 680.0, 286.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-detection-by-smear-examination-fluroscence-microscopy-body-fluids-labspring-20116', '20116', 'AFB-detection By Smear Examination Fluroscence
Microscopy, Body Fluids', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 680.0, 680.0, 286.0, NULL,
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
  'afb-detection-by-smear-examination-fluroscence-microscopy-tissue-biopsy-labspring-20117', '20117', 'AFB-detection by smear examination Fluroscence
Microscopy, Tissue (biopsy)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 810.0, 810.0, 343.0, NULL,
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
  'afb-detection-of-dna-by-real-time-pcr-bal-and-other-respiratory-samples-labspring-20118', '20118', 'AFB-detection of DNA (by Real time PCR), BAL and
other respiratory samples', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2770.0, 2770.0, 1114.0, NULL,
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
  'afb-detection-of-dna-by-real-time-pcr-pus-abscess-and-aspirates-labspring-20119', '20119', 'AFB-detection of DNA (by Real time PCR), Pus, abscess
and aspirates', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2770.0, 2770.0, 1114.0, NULL,
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
  'afb-isolation-by-rapid-culture-bal-other-respiratory-samples-labspring-20120', '20120', 'AFB-Isolation (by Rapid Culture), BAL & Other
Respiratory Samples', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 560.0, NULL,
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
  'afb-isolation-by-rapid-culture-blood-labspring-20121', '20121', 'AFB-Isolation (by rapid culture), Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 600.0, NULL,
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
  'afb-isolation-by-rapid-culture-body-fluid-labspring-20122', '20122', 'AFB-Isolation (by rapid culture), Body Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 600.0, NULL,
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
  'afb-isolation-by-rapid-culture-bone-marrow-labspring-20123', '20123', 'AFB-Isolation (by rapid culture), Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 600.0, NULL,
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
  'afb-isolation-by-rapid-culture-csf-labspring-20124', '20124', 'AFB-Isolation (by rapid culture), CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 600.0, NULL,
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
  'afb-isolation-by-rapid-culture-other-samples-labspring-20125', '20125', 'AFB-Isolation (by rapid culture), Other samples', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 600.0, NULL,
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
  'afb-isolation-by-rapid-culture-pus-abscess-and-aspirates-labspring-20126', '20126', 'AFB-Isolation (by rapid culture), Pus, abscess and
aspirates', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 600.0, NULL,
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
  'afb-isolation-by-rapid-culture-sputum-labspring-20127', '20127', 'AFB-Isolation (by Rapid Culture), Sputum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1750.0, 1750.0, 600.0, NULL,
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
  'afb-isolation-by-rapid-culture-tissue-biopsy-labspring-20128', '20128', 'AFB-Isolation (by rapid culture), Tissue / Biopsy', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 600.0, NULL,
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
  'afb-isolation-by-rapid-culture-urine-labspring-20129', '20129', 'AFB-Isolation (by Rapid Culture), Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1750.0, 1750.0, 600.0, NULL,
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
  'afb-mdr-screen-hains-line-probe-assay-sputum-bal-other-respiratory-samples-labspring-20130', '20130', 'AFB-MDR Screen Hain''s Line Probe Assay, Sputum,
BAL, Other Respiratory Samples', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5130.0, 5130.0, 1800.0, NULL,
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
  'afb-mdr-screen-hains-line-probe-assay-extra-pulmonary-samples-labspring-20131', '20131', 'AFB-MDR Screen Hain''s Line Probe Assay, Extra
pulmonary samples', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5130.0, 5130.0, 1800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mott-antibiogram-panel-for-rapid-growers-upto-10-drugs-labspring-20132', '20132', 'AFB-MOTT Antibiogram Panel For Rapid Growers Upto
10 Drugs', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16170.0, 16170.0, 5173.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mott-antibiogram-panel-for-slow-growers-upto-10-drugs-labspring-20133', '20133', 'AFB-MOTT Antibiogram Panel For Slow Growers Upto
10 Drugs', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 18330.0, 18330.0, 5867.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mott-speciation-additional-species-by-hains-line-probe-assay-pure-culture-labspring-20134', '20134', 'AFB-MOTT Speciation Additional Species By Hains Line
Probe Assay Pure Culture', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5830.0, 5830.0, 1867.0, NULL,
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
  'afb-mtb-antibiogram-amikacin-labspring-20135', '20135', 'AFB-MTb antibiogram Amikacin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4000.0, 4000.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-capreomycin-labspring-20136', '20136', 'AFB-MTb antibiogram Capreomycin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4000.0, 4000.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-clofazimine-labspring-20137', '20137', 'AFB-MTb antibiogram Clofazimine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2160.0, 2160.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-ethambutol-labspring-20138', '20138', 'AFB-MTb antibiogram Ethambutol', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4000.0, 4000.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-ethionamide-labspring-20139', '20139', 'AFB-MTb antibiogram Ethionamide', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4000.0, 4000.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-isoniazid-labspring-20140', '20140', 'AFB-MTb antibiogram Isoniazid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2160.0, 2160.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-kanamycin-labspring-20141', '20141', 'AFB-MTb antibiogram Kanamycin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2160.0, 2160.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-levofloxacin-labspring-20142', '20142', 'AFB-MTb antibiogram Levofloxacin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4000.0, 4000.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-moxifloxacin-labspring-20143', '20143', 'AFB-MTb antibiogram Moxifloxacin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2160.0, 2160.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-ofloxacin-labspring-20144', '20144', 'AFB-MTb antibiogram Ofloxacin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4000.0, 4000.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-panel-1st-and-2nd-line-panel-10-drugs-labspring-20145', '20145', 'AFB-MTb antibiogram panel 1st and 2nd Line panel 10
drugs', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12830.0, 12830.0, 5067.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-panel-1st-line-4-drugs-sire-labspring-20146', '20146', 'AFB-MTb antibiogram panel 1st Line (4 drugs) SIRE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4240.0, 4240.0, 1765.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-panel-2nd-line-4-drugs-kepo-labspring-20147', '20147', 'AFB-MTb antibiogram panel 2nd Line (4 Drugs) KEPO', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3050.0, 3050.0, 1269.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-panel-additional-drugs-4-nos-macc-labspring-20148', '20148', 'AFB-MTb Antibiogram Panel Additional Drugs -4 Nos.
MACC', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4430.0, 4430.0, 1861.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-panel-comprehensive-panel-13-drugs-labspring-20149', '20149', 'AFB-MTb Antibiogram Panel Comprehensive Panel 13
Drugs', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 21670.0, 21670.0, 5836.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-pas-labspring-20150', '20150', 'AFB-MTb antibiogram PAS', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4000.0, 4000.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-pyrazinamide-labspring-20151', '20151', 'AFB-MTb Antibiogram Pyrazinamide', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4330.0, 4330.0, 1387.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-rifabutin-labspring-20152', '20152', 'AFB-MTb antibiogram Rifabutin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4000.0, 4000.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-rifampicin-labspring-20153', '20153', 'AFB-MTb antibiogram Rifampicin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4000.0, 4000.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-mtb-antibiogram-streptomycin-labspring-20154', '20154', 'AFB-MTb antibiogram Streptomycin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4000.0, 4000.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-xdr-screen-hains-line-probe-assay-extra-pulmonary-samples-labspring-20155', '20155', 'AFB-XDR Screen Hain''s Line Probe Assay, Extra
pulmonary samples', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6750.0, 6750.0, 2667.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-xdr-screen-hains-line-probe-assay-sputum-bal-other-respiratory-samples-labspring-20156', '20156', 'AFB-XDR Screen Hain''s Line Probe Assay, Sputum,
BAL, Other Respiratory Samples', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6750.0, 6750.0, 2667.0, NULL,
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
  'afb-xpert-panel-by-genexpert-mtb-detection-rifamipicin-resistance-sputum-bal-other-respiratory-samples-labspring-20157', '20157', 'AFB-Xpert panel by Genexpert M.Tb detection & Rifamipicin resistance, Sputum, BAL, other respiratory
samples', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4200.0, 4200.0, 1556.0, NULL,
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
  'afb-xpert-panel-by-genexpert-combo-afb-genxpert-and-rapid-culture-extrapulmonary-labspring-20158', '20158', 'AFB-Xpert panel by Genexpert-Combo AFB GenXpert
and Rapid culture, Extrapulmonary', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5400.0, 5400.0, 2000.0, NULL,
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
  'afb-xpert-panel-by-genexpert-combo-afb-genxpert-and-rapid-culture-pulmonary-labspring-20159', '20159', 'AFB-Xpert panel by Genexpert-Combo AFB GenXpert
and Rapid culture, Pulmonary', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5400.0, 5400.0, 2000.0, NULL,
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
  'albumin-csf-labspring-20160', '20160', 'Albumin, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 571.0, NULL,
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
  'albumin-serum-labspring-20161', '20161', 'Albumin, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 290.0, 290.0, 44.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'albumincreatinine-ratio-spot-urine-labspring-20162', '20162', 'Albumin/Creatinine Ratio, Spot Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1910.0, 1910.0, 86.0, NULL,
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
  'alcohol-ethanol-serum-labspring-20163', '20163', 'Alcohol Ethanol, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'alcohol-ethanol-urine-labspring-20164', '20164', 'Alcohol Ethanol, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1710.0, 1710.0, 200.0, NULL,
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
  'aldehyde-chopra-test-for-kala-azar-serum-labspring-20165', '20165', 'Aldehyde Chopra Test (For Kala Azar), Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1070.0, 1070.0, 424.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'aldosterone-serum-labspring-20166', '20166', 'Aldosterone, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3250.0, 3250.0, 1114.0, NULL,
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
  'aldosterone-urine-24h-labspring-20167', '20167', 'Aldosterone, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2640.0, 2640.0, 1257.0, NULL,
  'Contact for TAT', 'Collection time may be important (often morning); follow the ordering clinician/lab''s timing and medication instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'aldosteronerenin-ratio-aldosteronepra-ratio-labspring-20168', '20168', 'Aldosterone/Renin Ratio Aldosterone/PRA Ratio', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 17410.0, 17410.0, 6500.0, NULL,
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
  'alknpm1t25-anaplastic-large-cell-lymphoma-tissue-ffpe-labspring-20169', '20169', 'Alk/NPM1;t(2;5) Anaplastic Large Cell Lymphoma,
Tissue / FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 23760.0, 23760.0, 8800.0, NULL,
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
  'alkaline-phosphatase-isoenzymes-electrophoresis-serum-labspring-20170', '20170', 'Alkaline Phosphatase Isoenzymes Electrophoresis,
Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13500.0, 13500.0, 5000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'alkaline-phosphatase-with-bone-fraction-ostase-serum-labspring-20171', '20171', 'Alkaline Phosphatase with Bone Fraction Ostase,
Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2430.0, 2430.0, 914.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'alkaline-phosphatase-serum-labspring-20172', '20172', 'Alkaline Phosphatase, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 360.0, 360.0, 48.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-animal-goat-epithelium-labspring-20173', '20173', 'Allergen, Individual-Animal Goat Epithelium', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-animal-pigeon-feathers-labspring-20174', '20174', 'Allergen, Individual-Animal Pigeon feathers', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-drug-acth-labspring-20175', '20175', 'Allergen, Individual-Drug ACTH', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 800.0, NULL,
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
  'allergen-individual-drug-cephalosporin-mix-antibiotic-labspring-20176', '20176', 'Allergen, Individual-Drug Cephalosporin Mix antibiotic', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-drug-ciprofloxacin-antibiotic-labspring-20177', '20177', 'Allergen, Individual-Drug Ciprofloxacin antibiotic', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-drug-diclofenac-pain-killer-labspring-20178', '20178', 'Allergen, Individual-Drug Diclofenac pain killer', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-drug-ibuprofen-pain-killer-labspring-20179', '20179', 'Allergen, Individual-Drug Ibuprofen pain killer', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-drug-insulin-human-labspring-20180', '20180', 'Allergen, Individual-Drug Insulin Human', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 800.0, NULL,
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
  'allergen-individual-drug-paracetamol-antipyretic-labspring-20181', '20181', 'Allergen, Individual-Drug Paracetamol AntiPyretic', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-drug-penicilloyl-g-antibiotic-labspring-20182', '20182', 'Allergen, Individual-Drug Penicilloyl G antibiotic', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-drug-penicilloyl-v-antibiotic-labspring-20183', '20183', 'Allergen, Individual-Drug Penicilloyl V antibiotic', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-drug-rifampicin-antibiotic-labspring-20184', '20184', 'Allergen, Individual-Drug Rifampicin antibiotic', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-alpha-lactalbumin-milk-protein-labspring-20185', '20185', 'Allergen, Individual-Food Alpha Lactalbumin Milk
protein', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-apricot-prunus-armeniaca-labspring-20186', '20186', 'Allergen, Individual-Food Apricot (Prunus armeniaca)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-bakers-yeast-yeast-saccharomyces-cerevisiae-labspring-20187', '20187', 'Allergen, Individual-Food Bakers Yeast Yeast
(Saccharomyces Cerevisiae)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-beef-cow-meat-bos-spp-labspring-20188', '20188', 'Allergen, Individual-Food Beef Cow meat (Bos spp.)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-beta-lactoglobulin-milk-protein-labspring-20189', '20189', 'Allergen, Individual-Food Beta (Lactoglobulin Milk
protein)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-brazil-nut-bertholletia-excelsa-labspring-20190', '20190', 'Allergen, Individual-Food Brazil Nut (Bertholletia
excelsa)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-buckwheat-fagopyrum-esculentum-labspring-20191', '20191', 'Allergen, Individual-Food Buckwheat (Fagopyrum
esculentum)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-cabbage-gobi-brassica-oleraceavarcapitata-labspring-20192', '20192', 'Allergen, Individual-Food Cabbage Gobi (Brassica
Oleraceavar.Capitata)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-cardamon-ilaichi-elettaria-cardamomum-labspring-20193', '20193', 'Allergen, Individual-Food Cardamon (Ilaichi) Elettaria
cardamomum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-carrot-daucus-carota-labspring-20194', '20194', 'Allergen, Individual-Food Carrot (Daucus carota)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-cashew-nut-kaju-anacardium-occidentale-labspring-20195', '20195', 'Allergen, Individual-Food Cashew Nut Kaju
(Anacardium Occidentale)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-celery-apium-graveolens-labspring-20196', '20196', 'Allergen, Individual-Food Celery (Apium Graveolens)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3240.0, 3240.0, 1200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-cherry-prunus-avium-labspring-20197', '20197', 'Allergen, Individual-Food Cherry (Prunus avium)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-chick-pea-kabuli-chana-cicer-arietinus-labspring-20198', '20198', 'Allergen, Individual-Food Chick Pea Kabuli Chana
(Cicer Arietinus)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-clove-laung-syzygium-aromaticum-labspring-20199', '20199', 'Allergen, Individual-Food Clove (Laung) (Syzygium
aromaticum)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-cocoa-chocolate-theobroma-cacao-labspring-20200', '20200', 'Allergen, Individual-Food Cocoa Chocolate
(Theobroma Cacao)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-coconut-narial-cocos-nucifera-labspring-20201', '20201', 'Allergen, Individual-Food Coconut Narial (Cocos
Nucifera)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-coffee-labspring-20202', '20202', 'Allergen, Individual-Food Coffee', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-coriander-dhania-spice-labspring-20203', '20203', 'Allergen, Individual-Food Coriander (Dhania) Spice', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-curry-santa-maria-labspring-20204', '20204', 'Allergen, Individual-Food Curry Santa Maria', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-green-pea-labspring-20205', '20205', 'Allergen, Individual-Food Green Pea', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-green-pepper-unripe-seed-piper-nigrum-labspring-20206', '20206', 'Allergen, Individual-Food Green pepper unripe seed /
Piper nigrum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-lettuce-lactuca-sativa-labspring-20207', '20207', 'Allergen, Individual-Food Lettuce (Lactuca sativa)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-malt-labspring-20208', '20208', 'Allergen, Individual-Food Malt', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-mango-mangifera-indica-labspring-20209', '20209', 'Allergen, Individual-Food Mango (Mangifera Indica)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-mushroom-champignon-agaricus-hortensis-labspring-20210', '20210', 'Allergen, Individual-Food Mushroom champignon /
Agaricus hortensis', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3440.0, 3440.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-onion-piaz-allium-cepa-labspring-20211', '20211', 'Allergen, Individual-Food Onion Piaz (Allium Cepa)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-paprica-simla-mirchi-capsicum-annuum-labspring-20212', '20212', 'Allergen, Individual-Food Paprica Simla Mirchi
(Capsicum Annuum)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ra-test-rheumatoid-arthritis-factor-quantitative-labspring-20213', '20213', 'RA Test Rheumatoid Arthritis Factor, Quantitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 620.0, 620.0, 92.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-pecanut-carya-illinoensis-labspring-20214', '20214', 'Allergen, Individual-Food Pecanut (Carya illinoensis)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3240.0, 3240.0, 1200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-plaice-fish-pleuronectes-platessa-labspring-20215', '20215', 'Allergen, Individual-Food Plaice Fish (Pleuronectes
platessa)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-plum-prunus-domestica-labspring-20216', '20216', 'Allergen, Individual-Food Plum (Prunus domestica)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-poppy-seed-papaver-somniferum-labspring-20217', '20217', 'Allergen, Individual-Food Poppy Seed (Papaver
somniferum)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-pork-pig-meat-labspring-20218', '20218', 'Allergen, Individual-Food Pork Pig meat', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-salmon-rawas-fish-salmo-salar-labspring-20219', '20219', 'Allergen, Individual-Food Salmon Rawas fish (Salmo
Salar)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-sardine-fish-pleuronectes-platessa-labspring-20220', '20220', 'Allergen, Individual-Food Sardine Fish (Pleuronectes
platessa)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-food-vanilla-vanilla-planifolia-labspring-20221', '20221', 'Allergen, Individual-Food Vanilla Vanilla planifolia', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-grass-pollen-common-reed-grass-phragmites-communis-labspring-20222', '20222', 'Allergen, Individual-Grass pollen Common Reed Grass
(Phragmites communis)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-grass-pollen-orchard-grass-labspring-20223', '20223', 'Allergen, Individual-Grass pollen Orchard Grass', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-grass-pollen-sweet-vernal-anthoxanthum-odoratum-labspring-20224', '20224', 'Allergen, Individual-Grass pollen Sweet Vernal
(Anthoxanthum Odoratum)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
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
  'allergen-individual-grass-pollen-cultivated-ryegrass-secale-cereale-labspring-20225', '20225', 'Allergen, Individual-Grass pollen Cultivated RyeGrass
Secale Cereale', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-insect-honey-bee-venom-madhu-makhhi-apis-mellifera-labspring-20226', '20226', 'Allergen, Individual-Insect Honey Bee Venom Madhu
Makhhi (Apis Mellifera)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-micro-organism-candida-albicans-fungus-labspring-20227', '20227', 'Allergen, Individual-Micro organism Candida Albicans
fungus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-micro-organism-heliminthosporium-halodes-labspring-20228', '20228', 'Allergen, Individual-Micro organism
Heliminthosporium Halodes', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-micro-organism-mosquito-machhar-aedes-communis-labspring-20229', '20229', 'Allergen, Individual-Micro organism Mosquito
Machhar (Aedes Communis)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-others-cotton-kapus-labspring-20230', '20230', 'Allergen, Individual-Others Cotton kapus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-others-paietaria-officinatis-labspring-20231', '20231', 'Allergen, Individual-Others Paietaria Officinatis', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-others-pityrosporum-orbiculare-labspring-20232', '20232', 'Allergen, Individual-Others Pityrosporum Orbiculare', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-others-stemphylium-botryosum-labspring-20233', '20233', 'Allergen, Individual-Others Stemphylium Botryosum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-others-wool-labspring-20234', '20234', 'Allergen, Individual-Others Wool', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-tree-pollen-acasia-babool-acasia-longifolia-labspring-20235', '20235', 'Allergen, Individual-Tree pollen Acasia Babool (Acasia
Longifolia)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-tree-pollen-alder-alnus-incana-labspring-20236', '20236', 'Allergen, Individual-Tree pollen Alder (Alnus Incana)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-tree-pollen-birch-betula-verrucosa-labspring-20237', '20237', 'Allergen, Individual-Tree pollen Birch (Betula
Verrucosa)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-tree-pollen-japanese-cedar-cryptomeria-japonica-labspring-20238', '20238', 'Allergen, Individual-Tree pollen Japanese Cedar
(Cryptomeria japonica)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-tree-pollen-mesquite-pahadi-keekar-prosopis-juliflora-labspring-20239', '20239', 'Allergen, Individual-Tree pollen Mesquite Pahadi
Keekar (Prosopis Juliflora)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-tree-pollen-mulberry-shahtoot-morus-alba-labspring-20240', '20240', 'Allergen, Individual-Tree pollen Mulberry Shahtoot
(Morus alba)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3440.0, 3440.0, 1200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-tree-pollen-oak-quercus-alba-labspring-20241', '20241', 'Allergen, Individual-Tree pollen Oak (Quercus Alba)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3240.0, 3240.0, 1200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-weed-pollen-common-pigweed-kaantewali-chauli-amaranthus-retroflexus-labspring-20242', '20242', 'Allergen, Individual-Weed pollen Common Pigweed Kaantewali Chauli (Amaranthus Retroflexus)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1720.0, 1720.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-weed-pollen-golden-rod-solidago-virgaurea-labspring-20243', '20243', 'Allergen, Individual-Weed pollen Golden Rod
(Solidago Virgaurea)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-weed-pollen-nettle-urtica-dioica-labspring-20244', '20244', 'Allergen, Individual-Weed pollen Nettle (Urtica dioica)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1620.0, 1620.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-individual-weed-pollen-cocklebur-xanthium-commune-labspring-20245', '20245', 'Allergen, Individual-Weed pollen Cocklebur (Xanthium
commune)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3440.0, 3440.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-screening-tryptase-labspring-20246', '20246', 'Allergy Screening Tryptase', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5360.0, 5360.0, 2000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'alpha-1-acid-glycoprotein-serum-labspring-20247', '20247', 'Alpha 1 Acid Glycoprotein, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'alpha-1-antitrypsin-z-x-m-mutation-by-pcr-blood-labspring-20248', '20248', 'Alpha 1 Antitrypsin Z, X , M Mutation By PCR, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 18750.0, 18750.0, 7000.0, NULL,
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
  'alpha-1-antitrypsin-serum-labspring-20249', '20249', 'Alpha 1 Antitrypsin, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3330.0, 3330.0, 1000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'alpha-2-macroglobulin-serum-labspring-20250', '20250', 'Alpha 2 Macroglobulin, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7500.0, 7500.0, 2800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'alpha-feto-protein-afp-amniotic-fluid-labspring-20251', '20251', 'Alpha Feto Protein (AFP), Amniotic Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1140.0, 1140.0, 543.0, NULL,
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
  'alpha-feto-protein-afp-csf-labspring-20252', '20252', 'Alpha Feto Protein (AFP), CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2700.0, 2700.0, 543.0, NULL,
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
  'afp-alpha-feto-proteinliver-cancer-marker-test-labspring-20253', '20253', 'AFP-Alpha Feto Protein(Liver Cancer Marker Test)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2020.0, 2020.0, 95.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'alpha-fucosidase-labspring-20254', '20254', 'Alpha Fucosidase', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'alpha-galactosidase-fabry-labspring-20255', '20255', 'Alpha Galactosidase Fabry', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12830.0, 12830.0, 4500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'alpha-glucosidase-gsd-ii-pompe-labspring-20256', '20256', 'Alpha Glucosidase GSD II / pompe', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'alpha-iduronidase-hurler-mps-i-labspring-20257', '20257', 'Alpha Iduronidase Hurler / MPS I', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'alpha-mannosidase-labspring-20258', '20258', 'Alpha Mannosidase', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'alpha-n-acetyl-galactosaminidase-schindler-disease-labspring-20259', '20259', 'Alpha N-Acetyl Galactosaminidase Schindler disease', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'aluminium-serum-labspring-20260', '20260', 'Aluminium, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2100.0, 2100.0, 1000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'aluminium-urine-spot-labspring-20261', '20261', 'Aluminium, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7500.0, 7500.0, 2500.0, NULL,
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
  'anti-mullerian-hormone-amh-labspring-20262', '20262', 'Anti Mullerian Hormone (AMH)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3500.0, 3500.0, 464.0, NULL,
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
  'amino-acid-qualitative-screen-csf-labspring-20263', '20263', 'Amino Acid Qualitative Screen, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6480.0, 6480.0, 2400.0, NULL,
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
  'amino-acid-quantitative-plasma-labspring-20264', '20264', 'Amino Acid Quantitative, Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15940.0, 15940.0, 5950.0, NULL,
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
  'amino-acid-quantitative-urine-labspring-20265', '20265', 'Amino Acid Quantitative, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'amino-levulinic-acid-ala-urine-24h-labspring-20266', '20266', 'Amino Levulinic Acid ALA, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5540.0, 5540.0, 2187.0, NULL,
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
  'amino-levulinic-acid-ala-urine-spot-labspring-20267', '20267', 'Amino Levulinic Acid ALA, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6830.0, 6830.0, 2187.0, NULL,
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
  'amoebiasis-antibodies-igg-antibody-serum-labspring-20268', '20268', 'Amoebiasis Antibodies IgG Antibody, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'amphetamine-quantitative-urine-spot-labspring-20269', '20269', 'Amphetamine Quantitative, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 920.0, 920.0, 371.0, NULL,
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
  'amphetamine-qualitative-urine-spot-labspring-20270', '20270', 'Amphetamine, Qualitative, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 920.0, 920.0, 257.0, NULL,
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
  'amphiphysin-antibody-serum-labspring-20271', '20271', 'Amphiphysin Antibody, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'amylase-enzymatic-ascitic-fluid-labspring-20272', '20272', 'Amylase enzymatic, Ascitic Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 270.0, 270.0, 129.0, NULL,
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
  'amylase-enzymatic-serum-labspring-20273', '20273', 'Amylase Enzymatic, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 38.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'amyloid-a-serum-labspring-20274', '20274', 'Amyloid A, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9780.0, 9780.0, 3650.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ana-by-elisa-anti-nuclear-antibody-screening-serum-labspring-20275', '20275', 'ANA By ELISA (Anti Nuclear Antibody) Screening,
Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1390.0, 1390.0, 213.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ana-by-ifa-anti-nuclear-antibody-screening-end-point-titre-serum-labspring-20276', '20276', 'ANA By IFA (Anti Nuclear Antibody) Screening End
Point Titre, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1670.0, 1670.0, 333.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'anca-by-ifa-reflex-end-point-titre-labspring-20277', '20277', 'ANCA By IFA Reflex End Point Titre', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3080.0, 3080.0, 1371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'androstenedione-a4-labspring-20278', '20278', 'Androstenedione A4', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2140.0, 2140.0, 1029.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'aneuploidy-sperm-131821x-and-y-by-fish-labspring-20279', '20279', 'Aneuploidy-Sperm 13,18,21,X And Y By FISH', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12860.0, 12860.0, 4800.0, NULL,
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
  'angiotensin-converting-enzyme-ace-csf-labspring-20280', '20280', 'Angiotensin Converting Enzyme (ACE), CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5040.0, 5040.0, 2100.0, NULL,
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
  'angiotensin-converting-enzyme-ace-serum-labspring-20281', '20281', 'Angiotensin Converting Enzyme (ACE), Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1630.0, 1630.0, 207.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'anti-a-titre-labspring-20282', '20282', 'Anti A Titre', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'anti-b-titre-labspring-20283', '20283', 'Anti B Titre', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'anti-diuretic-hormone-adh-vasopressin-plasma-labspring-20284', '20284', 'Anti Diuretic Hormone (ADH) / Vasopressin, Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6830.0, 6830.0, 2187.0, NULL,
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
  'anti-dnase-b-labspring-20285', '20285', 'Anti DNAse B', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4180.0, 4180.0, 1755.0, NULL,
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
  'anti-thrombin-iii-activity-functional-plasma-labspring-20286', '20286', 'Anti Thrombin III Activity Functional, Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3390.0, 3390.0, 1614.0, NULL,
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
  'anti-thrombin-iii-antigen-plasma-labspring-20287', '20287', 'Anti Thrombin III Antigen, Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8000.0, 8000.0, 2143.0, NULL,
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
  'apcr-activated-protein-c-resistance-test-labspring-20288', '20288', 'APCR Activated Protein C Resistance Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5670.0, 5670.0, 2187.0, NULL,
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
  'apolipoproteins-a1-serum-labspring-20289', '20289', 'Apolipoproteins A1, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 67.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'apolipoproteins-b-serum-labspring-20290', '20290', 'Apolipoproteins B, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 67.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'aptt-activated-partial-thromboplastin-citrated-plasma-labspring-20291', '20291', 'APTT Activated Partial Thromboplastin, Citrated
Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 700.0, 700.0, 64.0, NULL,
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
  'arginine-quantitative-urine-labspring-20292', '20292', 'Arginine Quantitative, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'arsenic-urine-24h-labspring-20293', '20293', 'Arsenic Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2880.0, 2880.0, 1371.0, NULL,
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
  'arsenic-urine-spot-labspring-20294', '20294', 'Arsenic Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4170.0, 4170.0, 1386.0, NULL,
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
  'arsenic-blood-labspring-20295', '20295', 'Arsenic, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4170.0, 4170.0, 1371.0, NULL,
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
  'aryl-sulphatase-a-labspring-20296', '20296', 'Aryl Sulphatase A', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12150.0, 12150.0, 4500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'aryl-sulphatase-b-labspring-20297', '20297', 'Aryl Sulphatase B', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 17550.0, 17550.0, 6500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'aska-skeletal-striated-muscle-antibody-labspring-20298', '20298', 'ASKA Skeletal (Striated) Muscle Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5670.0, 5670.0, 1813.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'asma-smooth-muscle-antibody-labspring-20299', '20299', 'ASMA Smooth Muscle Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'aso-titre-quantitative-serum-labspring-20300', '20300', 'ASO Titre Quantitative, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1310.0, 1310.0, 86.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'asparagine-quantitative-serum-labspring-20301', '20301', 'Asparagine Quantitative, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'asparagine-quantitative-urine-labspring-20302', '20302', 'Asparagine Quantitative, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'aspartic-acid-quantitative-serum-labspring-20303', '20303', 'Aspartic Acid Quantitative, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'aspartic-acid-quantitative-urine-labspring-20304', '20304', 'Aspartic Acid Quantitative, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'aspergillosis-igg-antibodies-serum-labspring-20305', '20305', 'Aspergillosis IgG Antibodies, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3300.0, 3300.0, 886.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'aspergillosis-igm-antibodies-serum-labspring-20306', '20306', 'Aspergillosis IgM Antibodies, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'b-cell-gene-rearrangements-igh-clonality-by-pcr-tissue-labspring-20307', '20307', 'B Cell Gene Rearrangements IGH Clonality by PCR
Tissue', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 44550.0, 44550.0, 15600.0, NULL,
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
  'barbiturates-quantitative-labspring-20308', '20308', 'Barbiturates Quantitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 780.0, 780.0, 371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'basal-ganglion-antibody-labspring-20309', '20309', 'Basal Ganglion Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'benzodiazapine-diazepam-labspring-20310', '20310', 'Benzodiazapine Diazepam', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 540.0, 540.0, 257.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'beta-2-crosslaps-ctx-1-labspring-20311', '20311', 'Beta 2 Crosslaps CTx-1', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'beta-2-glycoprotein-1-iga-antibody-serum-labspring-20312', '20312', 'Beta 2 Glycoprotein 1 IgA Antibody, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'beta-2-glycoprotein-1-igg-antibody-serum-labspring-20313', '20313', 'Beta 2 Glycoprotein 1 IgG Antibody, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1430.0, 1430.0, 471.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'beta-2-glycoprotein-1-igm-antibody-serum-labspring-20314', '20314', 'Beta 2 Glycoprotein 1 IgM Antibody, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1430.0, 1430.0, 471.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'beta-2-microglobulin-csf-labspring-20315', '20315', 'Beta 2 Microglobulin, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1770.0, 1770.0, 694.0, NULL,
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
  'beta-2-microglobulin-serum-labspring-20316', '20316', 'Beta 2 Microglobulin, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2420.0, 2420.0, 643.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'beta-2-microglobulin-urine-spot-labspring-20317', '20317', 'Beta 2 Microglobulin, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4290.0, 4290.0, 1600.0, NULL,
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
  'beta-galactocerebrosidase-krabbe-labspring-20318', '20318', 'Beta Galactocerebrosidase Krabbe', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16200.0, 16200.0, 6000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'beta-galactosidase-gm-1-mps-iv-b-labspring-20319', '20319', 'Beta Galactosidase GM 1 / MPS IV B', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13500.0, 13500.0, 5000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'beta-glucosidase-gaucher-labspring-20320', '20320', 'Beta Glucosidase Gaucher', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13500.0, 13500.0, 5000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'beta-hexosaminidase-a-labspring-20321', '20321', 'Beta Hexosaminidase A', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16200.0, 16200.0, 6000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'beta-hexosaminidase-t-labspring-20322', '20322', 'Beta Hexosaminidase T', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16200.0, 16200.0, 6000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'beta-mannosidase-labspring-20323', '20323', 'Beta Mannosidase', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13500.0, 13500.0, 5000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'beta-thalassemia-23-mutations-amniotic-fluid-cvs-labspring-20324', '20324', 'Beta Thalassemia 23 Mutations, Amniotic Fluid / CVS', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 35100.0, 35100.0, 12000.0, NULL,
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
  'beta-thalassemia-beta-globin-hbb-gene-sequencing-30-mutations-blood-labspring-20325', '20325', 'Beta Thalassemia, beta globin (HBB) gene sequencing
30 Mutations, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 29700.0, 29700.0, 11000.0, NULL,
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
  'bicarbonate-labspring-20326', '20326', 'Bicarbonate', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1430.0, 1430.0, 20.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'bile-acids-total-serum-labspring-20327', '20327', 'Bile Acids-Total, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2630.0, 2630.0, 333.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'bile-salt-pigments-urine-labspring-20328', '20328', 'Bile Salt & Pigments, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 19.0, NULL,
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
  'bilirubin-direct-serum-labspring-20329', '20329', 'Bilirubin Direct, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 310.0, 310.0, 47.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'bilirubin-total-serum-labspring-20330', '20330', 'Bilirubin Total, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 310.0, 310.0, 47.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'bk-polyoma-virus-dna-detection-by-pcr-urine-labspring-20331', '20331', 'BK Polyoma Virus DNA Detection By PCR, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8830.0, 8830.0, 2827.0, NULL,
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
  'bk-virus-quantitative-blood-labspring-20332', '20332', 'BK Virus Quantitative - Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7440.0, 7440.0, 3125.0, NULL,
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
  'blood-group-unexpected-antibody-screen-blood-labspring-20333', '20333', 'Blood Group Unexpected Antibody Screen, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1790.0, 1790.0, 1059.0, NULL,
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
  'bordetella-pertussis-igg-antibodies-quantitative-labspring-20334', '20334', 'Bordetella Pertussis IgG antibodies-Quantitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'braf-v600-mutation-detection-tissue-labspring-20335', '20335', 'BRAF V600 Mutation Detection Tissue', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16200.0, 16200.0, 2933.0, NULL,
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
  'brca-1-and-2-profile-complete-gene-sequencing-labspring-20336', '20336', 'BRCA 1 And 2 Profile Complete Gene Sequencing', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'brucella-antibodies-igg-antibody-serum-labspring-20337', '20337', 'Brucella antibodies IgG antibody, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'brucella-antibodies-igm-antibody-serum-labspring-20338', '20338', 'Brucella antibodies IgM antibody, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'brucella-antibodies-total-antibodies-serum-labspring-20339', '20339', 'Brucella antibodies Total antibodies, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'bullous-pemphigoid-180-vesiculobullous-disorders-serum-labspring-20340', '20340', 'Bullous Pemphigoid 180 Vesiculobullous Disorders,
Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10450.0, 10450.0, 3900.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'bullous-pemphigoid-230-vesiculobullous-disorders-serum-labspring-20341', '20341', 'Bullous Pemphigoid 230 Vesiculobullous Disorders,
Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10450.0, 10450.0, 3900.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'bun-urea-nitrogen-pericardial-fluid-labspring-20342', '20342', 'BUN Urea Nitrogen, Pericardial Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 340.0, 340.0, 143.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'bun-urea-nitrogen-serum-labspring-20343', '20343', 'BUN Urea Nitrogen, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 310.0, 310.0, 46.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'bun-urea-nitrogen-urine-24h-labspring-20344', '20344', 'BUN Urea Nitrogen, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 460.0, 460.0, 114.0, NULL,
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
  'c-kit-gist-tissue-labspring-20345', '20345', 'C Kit (GIST), Tissue', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 29700.0, 29700.0, 9500.0, NULL,
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
  'c-kit-blood-labspring-20346', '20346', 'C Kit, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14730.0, 14730.0, 5500.0, NULL,
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
  'c-kit-bone-marrow-labspring-20347', '20347', 'C Kit, Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14850.0, 14850.0, 5500.0, NULL,
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
  'c1-esterase-inhibitor-serum-labspring-20348', '20348', 'C1 Esterase Inhibitor, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6700.0, 6700.0, 2500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'c3-complement-3-serum-labspring-20349', '20349', 'C3 Complement-3, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 830.0, 830.0, 53.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'c4-complement-4-serum-labspring-20350', '20350', 'C4 Complement-4, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 830.0, 830.0, 53.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ca-125-ovarian-cancer-marker-test-labspring-20351', '20351', 'CA-125 (Ovarian Cancer Marker Test)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 101.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ca-153-breast-cancer-marker-test-labspring-20352', '20352', 'CA-15.3 (Breast Cancer Marker Test)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3450.0, 3450.0, 136.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ca-199-pancreatic-cancer-marker-test-labspring-20353', '20353', 'CA-19.9 (Pancreatic Cancer Marker Test)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 800.0, 800.0, 101.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ca-724-stomach-cancer-marker-test-labspring-20354', '20354', 'CA-72.4 (Stomach Cancer Marker Test)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2380.0, 2380.0, 971.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cadmium-blood-labspring-20355', '20355', 'Cadmium, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3360.0, 3360.0, 1600.0, NULL,
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
  'cadmium-urine-24h-labspring-20356', '20356', 'Cadmium, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'calcitonin-thyrocalcitonin-labspring-20357', '20357', 'Calcitonin Thyrocalcitonin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'calcium-ionised-serum-labspring-20358', '20358', 'Calcium Ionised, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 158.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'calcium-total-serum-labspring-20359', '20359', 'Calcium Total, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 400.0, 400.0, 44.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'calcium-urine-24h-labspring-20360', '20360', 'Calcium, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 340.0, 340.0, 143.0, NULL,
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
  'calciumcreatinine-ratio-urine-spot-labspring-20361', '20361', 'Calcium/Creatinine Ratio, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 540.0, 540.0, 246.0, NULL,
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
  'calprotectin-fecal-labspring-20362', '20362', 'Calprotectin, Fecal', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3430.0, 3430.0, 743.0, NULL,
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
  'calreticulin-calr-exon-9-mutation-analysis-for-jak2-v617f-negative-cases-blood-labspring-20363', '20363', 'Calreticulin (CALR) Exon 9 Mutation Analysis For Jak2
V617F Negative Cases Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'calreticulin-calr-exon-9-mutation-analysis-for-jak2-v617f-negative-cases-bone-marrow-labspring-20364', '20364', 'Calreticulin (CALR) Exon 9 Mutation Analysis For Jak2
V617F Negative Cases Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 17010.0, 17010.0, 6000.0, NULL,
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
  'campylobacter-species-antigen-detection-stool-labspring-20365', '20365', 'Campylobacter Species Antigen, detection Stool', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2250.0, 2250.0, 771.0, NULL,
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
  'cannabis-marijuana-thc-urine-spot-labspring-20366', '20366', 'Cannabis Marijuana, THC Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 400.0, 400.0, 189.0, NULL,
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
  'carbamazepine-tegretol-labspring-20367', '20367', 'Carbamazepine Tegretol', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cardiolipin-antibody-acl-iga-antibody-labspring-20368', '20368', 'Cardiolipin Antibody ACL-IgA Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cardiolipin-antibody-acl-igg-antibody-labspring-20369', '20369', 'Cardiolipin Antibody ACL-IgG Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2000.0, 2000.0, 304.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cardiolipin-antibody-acl-igm-antibody-labspring-20370', '20370', 'Cardiolipin Antibody ACL-IgM Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2000.0, 2000.0, 304.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'catecholamines-adrenaline-and-nor-adrenaline-urine-24h-labspring-20371', '20371', 'Catecholamines Adrenaline and Nor-adrenaline, Urine
24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6080.0, 6080.0, 2400.0, NULL,
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
  'cbf-beta-inversion-16-by-fish-aml-m4e0-bone-marrow-labspring-20372', '20372', 'CBF Beta Inversion (16) by FISH AML-M4E0 Bone
Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cbf-beta-inversion-16-by-fish-aml-m4e0-leukemic-blood-labspring-20373', '20373', 'CBF Beta Inversion (16) by FISH AML-M4E0 Leukemic
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
  'ccp-antibody-cyclic-citrullinated-peptide-labspring-20374', '20374', 'CCP (Antibody Cyclic Citrullinated Peptide)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2500.0, 2500.0, 334.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cd10-labspring-20375', '20375', 'CD10', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd103-labspring-20376', '20376', 'CD103', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd13-labspring-20377', '20377', 'CD13', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd14-labspring-20378', '20378', 'CD14', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd15-labspring-20379', '20379', 'CD15', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd1656-nk-cells-labspring-20380', '20380', 'CD16/56 NK Cells', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd19-labspring-20381', '20381', 'CD19', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd2-labspring-20382', '20382', 'CD2', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6210.0, 6210.0, 2200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cd20-labspring-20383', '20383', 'CD20', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd22-labspring-20384', '20384', 'CD22', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd23-labspring-20385', '20385', 'CD23', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd25-labspring-20386', '20386', 'CD25', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd3-labspring-20387', '20387', 'CD3', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd33-labspring-20388', '20388', 'CD33', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd34-labspring-20389', '20389', 'CD34', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd34-stem-cells-labspring-20390', '20390', 'CD34 Stem Cells', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd38-labspring-20391', '20391', 'CD38', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd5-labspring-20392', '20392', 'CD5', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd64-labspring-20393', '20393', 'CD64', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd7-pan-t-cell-marker-labspring-20394', '20394', 'CD7 Pan T Cell Marker', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd79a-cytoplasmic-marker-labspring-20395', '20395', 'CD79A Cytoplasmic marker', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cdt-carbohydrate-deficient-transferrin-labspring-20396', '20396', 'CDT Carbohydrate Deficient Transferrin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9380.0, 9380.0, 2000.0, NULL,
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
  'cea-carcino-embryonic-antigen-colorectal-cancer-marker-test-labspring-20397', '20397', 'CEA-Carcino Embryonic Antigen (Colorectal Cancer
Marker Test)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 590.0, 590.0, 97.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'centromere-antibody-labspring-20398', '20398', 'Centromere Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ceruloplasmin-copper-oxidase-labspring-20399', '20399', 'Ceruloplasmin (Copper Oxidase)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1700.0, 1700.0, 200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ch-50-complement-total-labspring-20400', '20400', 'CH 50 Complement, Total', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5830.0, 5830.0, 1867.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'chikungunya-igm-antibody-labspring-20401', '20401', 'Chikungunya IgM Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 950.0, 950.0, 149.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'chitotriosidase-storage-disorder-labspring-20402', '20402', 'Chitotriosidase storage disorder', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8910.0, 8910.0, 3000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'chlamydia-pneumoniae-igg-antibody-labspring-20403', '20403', 'Chlamydia Pneumoniae IgG Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'chlamydia-pneumoniae-igm-antibody-labspring-20404', '20404', 'Chlamydia Pneumoniae IgM Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'chlamydia-trachomatis-dna-detection-by-pcr-eye-swab-labspring-20405', '20405', 'Chlamydia Trachomatis DNA detection by PCR Eye
Swab', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5700.0, 5700.0, 2111.0, NULL,
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
  'chlamydia-trachomatis-dna-detection-by-pcr-fluid-labspring-20406', '20406', 'Chlamydia Trachomatis DNA detection by PCR Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5700.0, 5700.0, 2111.0, NULL,
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
  'chlamydia-trachomatis-dna-detection-by-pcr-urine-labspring-20407', '20407', 'Chlamydia Trachomatis DNA Detection By PCR Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10710.0, 10710.0, 3500.0, NULL,
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
  'chlamydia-trachomatis-dna-detection-by-pcr-vaginal-swab-labspring-20408', '20408', 'Chlamydia Trachomatis DNA Detection By PCR Vaginal
Swab', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5700.0, 5700.0, 2111.0, NULL,
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
  'chlamydia-trachomatis-iga-antibody-labspring-20409', '20409', 'Chlamydia Trachomatis IgA Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'chlamydia-trachomatis-igg-antibody-labspring-20410', '20410', 'Chlamydia Trachomatis IgG Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1580.0, 1580.0, 150.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'chlamydia-trachomatis-igm-antibody-labspring-20411', '20411', 'Chlamydia Trachomatis IgM Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1580.0, 1580.0, 150.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'chlorides-body-fluid-labspring-20412', '20412', 'Chlorides, Body Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'chlorides-serum-labspring-20413', '20413', 'Chlorides, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 310.0, 310.0, 50.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'chlorides-urine-24h-labspring-20414', '20414', 'Chlorides, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 340.0, 340.0, 143.0, NULL,
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
  'chlorides-urine-spot-labspring-20415', '20415', 'Chlorides, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 340.0, 340.0, 143.0, NULL,
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
  'cholesterol-total-body-fluid-labspring-20416', '20416', 'Cholesterol-Total, Body Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 340.0, 340.0, 143.0, NULL,
  'Contact for TAT', 'Fasting is often not required for routine lipid testing, but some panels/providers request 8–12 hours fasting. Follow the ordering lab/provider.', 'Body fluid (type specified by test)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cholesterol-total-serum-labspring-20417', '20417', 'Cholesterol-Total, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 380.0, 380.0, 44.0, NULL,
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
  'chromium-serum-labspring-20418', '20418', 'Chromium, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'chromium-urine-24h-labspring-20419', '20419', 'Chromium, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'chromium-urine-spot-labspring-20420', '20420', 'Chromium, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6700.0, 6700.0, 3214.0, NULL,
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
  'chromogranin-a-labspring-20421', '20421', 'Chromogranin A', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9670.0, 9670.0, 3093.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'chromosomal-array-cnvsnp-array-poc-labspring-20422', '20422', 'Chromosomal Array CNV+SNP Array POC', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 78300.0, 78300.0, 17000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'chromosomal-array-cnv-snp-array-blood-labspring-20423', '20423', 'Chromosomal Array CNV SNP Array, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 48210.0, 48210.0, 17000.0, NULL,
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
  'chromosomal-breakage-analysis-fanconis-anaemia-blood-labspring-20424', '20424', 'Chromosomal Breakage Analysis Fanconi''s Anaemia,
Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 19800.0, 19800.0, 8250.0, NULL,
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
  'citrulline-quantitative-urine-labspring-20425', '20425', 'Citrulline Quantitative Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'citrulline-quantitative-serum-labspring-20426', '20426', 'Citrulline Quantitative, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'clostridium-difficile-gdh-reflex-toxin-a-b-labspring-20427', '20427', 'Clostridium Difficile GDH Reflex Toxin A/ B', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'clostridium-difficile-stool-labspring-20428', '20428', 'Clostridium Difficile, Stool', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5500.0, 5500.0, 1760.0, NULL,
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
  'cmv-dna-detection-by-real-time-pcr-csf-labspring-20429', '20429', 'CMV DNA detection by Real time PCR CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8400.0, 8400.0, 3111.0, NULL,
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
  'cmv-dna-detection-by-real-time-pcr-amniotic-fluid-labspring-20430', '20430', 'CMV DNA detection by Real time PCR, Amniotic Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12960.0, 12960.0, 4500.0, NULL,
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
  'cmv-dna-detection-by-real-time-pcr-plasma-labspring-20431', '20431', 'CMV DNA Detection By Real Time PCR, Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6500.0, 6500.0, 2080.0, NULL,
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
  'cmv-dna-detection-by-real-time-pcr-saliva-labspring-20432', '20432', 'CMV DNA detection by Real time PCR, Saliva', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8400.0, 8400.0, 3111.0, NULL,
  'Contact for TAT', 'Usually no fasting. Some tests have medication, timing, or consent requirements; follow the specific test/lab instructions.', 'Saliva', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cmv-dna-detection-by-real-time-pcr-urine-labspring-20433', '20433', 'CMV DNA Detection By Real Time PCR, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7500.0, 7500.0, 3150.0, NULL,
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
  'cmv-igg-antibody-serum-labspring-20434', '20434', 'CMV IgG Antibody, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 102.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cmv-igm-antibody-serum-labspring-20435', '20435', 'CMV IgM Antibody, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 102.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cmv-quantitative-viral-load-by-real-time-pcr-labspring-20436', '20436', 'CMV Quantitative (Viral Load) By Real Time PCR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11670.0, 11670.0, 3733.0, NULL,
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
  'cmyc-gene-rearrangement-burkitts-lymphoma-tissue-ffpe-labspring-20437', '20437', 'cMYC Gene rearrangement Burkitts lymphoma Tissue
/ FFPE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 21600.0, 21600.0, 8000.0, NULL,
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
  'cobalt-blood-labspring-20438', '20438', 'Cobalt, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4170.0, 4170.0, 1600.0, NULL,
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
  'cobalt-serum-labspring-20439', '20439', 'Cobalt, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4170.0, 4170.0, 1600.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cobalt-urine-24h-labspring-20440', '20440', 'Cobalt, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cobalt-urine-spot-labspring-20441', '20441', 'Cobalt, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cocaine-benzoylecogonine-urine-spot-labspring-20442', '20442', 'Cocaine Benzoylecogonine, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 400.0, 400.0, 189.0, NULL,
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
  'cold-agglutinin-labspring-20443', '20443', 'Cold Agglutinin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 343.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'connexin-26-mutations-labspring-20444', '20444', 'Connexin 26 Mutations', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'connexin-30-mutation-labspring-20445', '20445', 'Connexin 30 Mutation', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12860.0, 12860.0, 4500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'copper-serum-labspring-20446', '20446', 'Copper, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 530.0, 530.0, 219.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'copper-urine-24h-labspring-20447', '20447', 'Copper, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3170.0, 3170.0, 1086.0, NULL,
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
  'copper-urine-spot-labspring-20448', '20448', 'Copper, Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3170.0, 3170.0, 857.0, NULL,
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
  'cortisol-serum-labspring-20449', '20449', 'Cortisol, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 83.0, NULL,
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
  'cortisol-free-urine-24h-labspring-20450', '20450', 'Cortisol-Free, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1220.0, 1220.0, 514.0, NULL,
  'Contact for TAT', 'Collection time may be important (often morning); follow the ordering clinician/lab''s timing and medication instructions.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

