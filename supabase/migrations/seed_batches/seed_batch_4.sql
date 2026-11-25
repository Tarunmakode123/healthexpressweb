-- ============================================================
-- HEALTH EXPRESS — SERVICE CATALOG SEED BATCH 4 OF 5
-- Services 1351 to 1800 of 2207
-- ============================================================

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'transferrin-labspring-21351', '21351', 'Transferrin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1490.0, 1490.0, 629.0, NULL,
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
  'triglycerides-body-fluid-labspring-21352', '21352', 'Triglycerides, Body Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1010.0, 1010.0, 171.0, NULL,
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
  'triglycerides-serum-labspring-21353', '21353', 'Triglycerides, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 470.0, 470.0, 48.0, NULL,
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
  'triglycerides-urine-labspring-21354', '21354', 'Triglycerides, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1010.0, 1010.0, 171.0, NULL,
  'Contact for TAT', 'Fasting is often not required for routine lipid testing, but some panels/providers request 8–12 hours fasting. Follow the ordering lab/provider.', 'Urine (random or timed collection as specified)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'tripeptidyl-peptidase-1-blood-labspring-21355', '21355', 'Tripeptidyl Peptidase 1, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12960.0, 12960.0, 4500.0, NULL,
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
  'trisomy-aneuploidy-for-chromosome-13-21-amniotic-fluid-labspring-21356', '21356', 'Trisomy (Aneuploidy) for Chromosome 13 & 21
Amniotic Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 2347.0, NULL,
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
  'trisomy-aneuploidy-for-chromosome-13-21-blood-labspring-21357', '21357', 'Trisomy (Aneuploidy) for Chromosome 13 & 21 Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7260.0, 7260.0, 2347.0, NULL,
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
  'trisomy-aneuploidy-for-chromosome-13-21-chorionic-villus-labspring-21358', '21358', 'Trisomy (Aneuploidy) For Chromosome 13 & 21
Chorionic Villus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'trisomy-aneuploidy-for-chromosome-13-21-cord-blood-labspring-21359', '21359', 'Trisomy (Aneuploidy) for Chromosome 13 & 21 Cord
blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13230.0, 13230.0, 2347.0, NULL,
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
  'trisomy-aneuploidy-for-chromosome-13-21-poc-labspring-21360', '21360', 'Trisomy (Aneuploidy) For Chromosome 13 & 21 POC', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'trisomy-aneuploidy-for-chromosome-13-18-21-x-y-amniotic-fluid-labspring-21361', '21361', 'Trisomy (Aneuploidy) For Chromosome 13, 18, 21, X,
Y Amniotic Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13330.0, 13330.0, 3600.0, NULL,
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
  'trisomy-aneuploidy-for-chromosome-13-18-21-x-y-blood-labspring-21362', '21362', 'Trisomy (Aneuploidy) for Chromosome 13, 18, 21, X, Y
Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7560.0, 7560.0, 3600.0, NULL,
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
  'trisomy-aneuploidy-for-chromosome-13-18-21-x-y-chorionic-villus-labspring-21363', '21363', 'Trisomy (Aneuploidy) For Chromosome 13, 18, 21, X,
Y Chorionic Villus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13330.0, 13330.0, 4267.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'trisomy-aneuploidy-for-chromosome-13-18-21-x-y-cord-blood-labspring-21364', '21364', 'Trisomy (Aneuploidy) for Chromosome 13, 18, 21, X, Y
Cord blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 23760.0, 23760.0, 4267.0, NULL,
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
  'trisomy-aneuploidy-for-chromosome-13-18-21-x-y-poc-labspring-21365', '21365', 'Trisomy (Aneuploidy) For Chromosome 13, 18, 21, X,
Y POC', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13330.0, 13330.0, 4267.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'trisomy-aneuploidy-for-chromosome-18-x-y-blood-labspring-21366', '21366', 'Trisomy (Aneuploidy) for Chromosome 18, X & Y
Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8250.0, 8250.0, 2507.0, NULL,
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
  'trisomy-aneuploidy-for-chromosome-18-x-y-chorionic-villus-labspring-21367', '21367', 'Trisomy (Aneuploidy) For Chromosome 18, X & Y
Chorionic Villus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 7830.0, 7830.0, 2507.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'trisomy-aneuploidy-for-chromosome-18-x-y-cord-blood-labspring-21368', '21368', 'Trisomy (Aneuploidy) for Chromosome 18, X & Y Cord
blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14310.0, 14310.0, 2507.0, NULL,
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
  'trisomy-aneuploidy-for-chromosome-18-x-y-amniotic-fluid-labspring-21369', '21369', 'Trisomy (Aneuploidy) for Chromosome 18, X, Y
Amniotic fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14310.0, 14310.0, 2507.0, NULL,
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
  'trisomy-12-by-fish-cll-leukemic-blood-labspring-21370', '21370', 'Trisomy 12 by FISH CLL Leukemic Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'trisomy-8-by-fish-aml-mds-blood-labspring-21371', '21371', 'Trisomy 8 by FISH AML, MDS Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'trisomy-8-by-fish-aml-mds-bone-marrow-labspring-21372', '21372', 'Trisomy 8 by FISH AML, MDS Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10530.0, 10530.0, 3900.0, NULL,
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
  'troponin-i-qualitative-labspring-21373', '21373', 'Troponin I (Qualitative)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2290.0, 2290.0, 157.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'troponin-t-qualitative-labspring-21374', '21374', 'Troponin T (Qualitative)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4000.0, 4000.0, 514.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'trypanosoma-cruzi-igg-labspring-21375', '21375', 'Trypanosoma Cruzi IgG', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'tsh-receptor-antibody-lats-tsi-labspring-21376', '21376', 'TSH Receptor Antibody LATS, TSI', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6830.0, 6830.0, 1829.0, NULL,
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
  'tsh-ultra-sensitive-labspring-21377', '21377', 'TSH Ultra - Sensitive', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 620.0, 620.0, 33.0, NULL,
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
  'tissue-transglutaminase-antibody-iga-labspring-21378', '21378', 'Tissue Transglutaminase Antibody - IgA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1600.0, 1600.0, 357.0, NULL,
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
  'ttg-antibody-igg-tissue-transglutaminaseceliac-disease-labspring-21379', '21379', 'TTG Antibody-IgG Tissue Transglutaminase,Celiac
Disease', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1390.0, 1390.0, 400.0, NULL,
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
  'typhi-dot-igm-labspring-21380', '21380', 'Typhi Dot IgM', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 590.0, 590.0, 43.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'typhoid-dna-blood-labspring-21381', '21381', 'Typhoid DNA, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14730.0, 14730.0, 5500.0, NULL,
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
  'typhoid-dna-csf-labspring-21382', '21382', 'Typhoid DNA, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14850.0, 14850.0, 5500.0, NULL,
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
  'tyrosine-quantitative-labspring-21383', '21383', 'Tyrosine Quantitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'tyrosine-quantitative-urine-24h-labspring-21384', '21384', 'Tyrosine Quantitative, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'tzanck-smear-vesicle-fluid-labspring-21385', '21385', 'Tzanck Smear, Vesicle Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1080.0, 1080.0, 229.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'u1-snrnp-68-kda-labspring-21386', '21386', 'U1-SnRNP (68 KDa)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2580.0, 2580.0, 886.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ugt1a1-gene-polymorphism-ta-repeat-labspring-21387', '21387', 'UGT1A1 Gene Polymorphism TA Repeat', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10000.0, 10000.0, 4000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'uibc-serum-labspring-21388', '21388', 'UIBC, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 310.0, 310.0, 26.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'urea-clearance-test-labspring-21389', '21389', 'Urea Clearance Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 740.0, 740.0, 286.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'urea-serum-labspring-21390', '21390', 'Urea, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 310.0, 310.0, 45.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'urea-urine-24h-labspring-21391', '21391', 'Urea, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 740.0, 740.0, 53.0, NULL,
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
  'uric-acid-serum-labspring-21392', '21392', 'Uric Acid, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 310.0, 310.0, 48.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'uric-acid-spot-urine-labspring-21393', '21393', 'Uric Acid, Spot Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 680.0, 680.0, 53.0, NULL,
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
  'uric-acid-urine-24h-labspring-21394', '21394', 'Uric Acid, Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 460.0, 460.0, 60.0, NULL,
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
  'urobilinogen-labspring-21395', '21395', 'Urobilinogen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'valproic-acid-sodium-valporate-labspring-21396', '21396', 'Valproic Acid Sodium Valporate', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2487.0, 2487.0, 829.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'vancomycin-labspring-21397', '21397', 'Vancomycin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'vdrl-csf-labspring-21398', '21398', 'VDRL CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 114.0, NULL,
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
  'rpr-labspring-21399', '21399', 'RPR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 590.0, 590.0, 43.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'vgkc-lg1-and-caspr2-antibody-autoimmune-encephalitis-csf-labspring-21400', '21400', 'VGKC (LG1 and CASPR2) Antibody Autoimmune
encephalitis, CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 21600.0, 21600.0, 8000.0, NULL,
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
  'vgkc-lg1-and-caspr2-antibody-autoimmune-encephalitis-serum-labspring-21401', '21401', 'VGKC (LG1 And CASPR2) Antibody Autoimmune
Encephalitis, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 21430.0, 21430.0, 8000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'vitamin-a-retinol-labspring-21402', '21402', 'Vitamin A Retinol', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2400.0, 2400.0, 700.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'vitamin-b1-thiamine-labspring-21403', '21403', 'Vitamin B1 Thiamine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'vitamin-b12-cyanocobalamin-labspring-21404', '21404', 'Vitamin B12 Cyanocobalamin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 830.0, 830.0, 98.0, NULL,
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
  'vitamin-b12-active-holo-transcobalamin-labspring-21405', '21405', 'Vitamin B12, Active Holo Transcobalamin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1910.0, 1910.0, 219.0, NULL,
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
  'vitamin-b2-riboflavin-labspring-21406', '21406', 'Vitamin B2 Riboflavin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'vitamin-b6-pyridoxal-phosphate-blood-labspring-21407', '21407', 'Vitamin B6 Pyridoxal Phosphate Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5000.0, 5000.0, 857.0, NULL,
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
  'vitamin-c-ascorbic-acid-labspring-21408', '21408', 'Vitamin C Ascorbic Acid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2860.0, 2860.0, 857.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'vitamin-d-total-25-hydroxy-labspring-21409', '21409', 'Vitamin D Total-25 Hydroxy', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 830.0, 830.0, 153.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'vitamin-d-125-dihydroxy-labspring-21410', '21410', 'Vitamin D-1,25-Dihydroxy', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4520.0, 4520.0, 1707.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'vitamin-e-tocopherol-labspring-21411', '21411', 'Vitamin E Tocopherol', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6670.0, 6670.0, 2133.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'vitamin-k1-labspring-21412', '21412', 'Vitamin K1', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'vma-vanillyl-mandelic-acid-urine-24h-labspring-21413', '21413', 'VMA Vanillyl Mandelic Acid Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4790.0, 4790.0, 1760.0, NULL,
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
  'voriconazole-labspring-21414', '21414', 'Voriconazole', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8670.0, 8670.0, 2943.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'vre-screen-vancomycin-resistant-enterococci-perianal-swab-labspring-21415', '21415', 'VRE Screen Vancomycin Resistant Enterococci
perianal swab', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2700.0, 2700.0, 953.0, NULL,
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
  'vzv-varicella-zoster-virus-dna-detection-by-pcr-amniotic-fluid-labspring-21416', '21416', 'VZV-Varicella Zoster Virus DNA detection by PCR
Amniotic fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'vzv-varicella-zoster-virus-dna-detection-by-pcr-blood-labspring-21417', '21417', 'VZV-Varicella Zoster Virus DNA Detection By PCR
Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'vzv-varicella-zoster-virus-dna-detection-by-pcr-csf-labspring-21418', '21418', 'VZV-Varicella Zoster Virus DNA detection by PCR CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'vzv-varicella-zoster-virus-dna-detection-by-pcr-cvs-labspring-21419', '21419', 'VZV-Varicella Zoster Virus DNA detection by PCR CVS', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'vzv-varicella-zoster-virus-dna-detection-by-pcr-vesicle-fluid-swab-labspring-21420', '21420', 'VZV-Varicella Zoster Virus DNA detection by PCR
Vesicle fluid / swab', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8910.0, 8910.0, 3000.0, NULL,
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
  'vzv-varicella-zoster-virus-igg-antibody-labspring-21421', '21421', 'VZV-Varicella Zoster Virus IgG Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2380.0, 2380.0, 914.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'vzv-varicella-zoster-virus-igm-antibody-labspring-21422', '21422', 'VZV-Varicella Zoster Virus IgM Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'warfarin-sensitivity-cyp2c92-cyp2c93-vkorc1-mutation-labspring-21423', '21423', 'Warfarin Sensitivity CYP2C9*2, CYP2C9*3 &VKORC1
Mutation', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 32680.0, 32680.0, 12200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'water-chemical-analysis-labspring-21424', '21424', 'Water Chemical Analysis', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3750.0, 3750.0, 1800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'water-culture-for-coliforms-labspring-21425', '21425', 'Water Culture For Coliforms', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 343.0, NULL,
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
  'wbctotal-differential-counts-leucocytes-body-fluids-labspring-21426', '21426', 'WBC:Total & Differential Counts Leucocytes Body
Fluids', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 690.0, 690.0, 143.0, NULL,
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
  'wbc-total-counts-leucocytes-labspring-21427', '21427', 'WBC-Total Counts Leucocytes', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 330.0, 330.0, 43.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'wbc-total-counts-leucocytes-body-fluids-labspring-21428', '21428', 'WBC-Total Counts Leucocytes Body Fluids', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 350.0, 350.0, 114.0, NULL,
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
  'weil-felix-test-labspring-21429', '21429', 'Weil Felix Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'west-nile-virus-igg-labspring-21430', '21430', 'West Nile Virus IgG', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8710.0, 8710.0, 3250.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'west-nile-virus-igm-labspring-21431', '21431', 'West Nile Virus IgM', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8710.0, 8710.0, 3250.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'west-nile-virus-pcr-labspring-21432', '21432', 'West Nile Virus PCR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'x-and-y-sex-mismatch-by-fish-bone-marrow-transplant-blood-labspring-21433', '21433', 'X And Y (Sex Mismatch) by FISH Bone Marrow
Transplant Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11880.0, 11880.0, 4100.0, NULL,
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
  'x-and-y-sex-mismatch-by-fish-bone-marrow-transplant-bone-marrow-labspring-21434', '21434', 'X And Y (Sex Mismatch) by FISH Bone Marrow
Transplant Bone Marrow', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11880.0, 11880.0, 4100.0, NULL,
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
  'y-chromosome-microdeletion-analysis-16-sts-markers-only-for-males-blood-labspring-21435', '21435', 'Y Chromosome Microdeletion Analysis 16 STS
Markers (only For Males) Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 18210.0, 18210.0, 6800.0, NULL,
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
  'yersinia-enterocolitica-culture-only-stool-labspring-21436', '21436', 'Yersinia Enterocolitica Culture Only Stool', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4020.0, 4020.0, 1500.0, NULL,
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
  'yo-antibody-neuronal-antibody-for-paraneoplastic-syndromes-labspring-21437', '21437', 'Yo Antibody Neuronal Antibody For Paraneoplastic
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
  'zap-70-labspring-21438', '21438', 'ZAP-70', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'zinc-labspring-21439', '21439', 'Zinc', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2630.0, 2630.0, 59.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'bile-salt-urine-labspring-21440', '21440', 'Bile Salt, Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'insulin-postprandial-labspring-21441', '21441', 'Insulin Postprandial', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'egfr-labspring-21442', '21442', 'EGFR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'random-blood-sugar-labspring-21443', '21443', 'Random Blood Sugar', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 24.0, NULL,
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
  'dengue-ns1-antigen-detection-rapid-card-labspring-21444', '21444', 'Dengue NS1 Antigen Detection - RAPID Card', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 600.0, 600.0, 87.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'dengue-igg-antibody-immunoassay-labspring-21445', '21445', 'Dengue IgG Antibody  (Immunoassay)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1310.0, 1310.0, 130.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'dengue-igm-antibody-immunoassay-labspring-21446', '21446', 'Dengue IgM Antibody (Immunoassay)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1310.0, 1310.0, 130.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gram-stain-labspring-21447', '21447', 'Gram Stain', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 710.0, 710.0, 29.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'hla-b27-blood-labspring-21448', '21448', 'HLA B27, BLOOD', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2460.0, 2460.0, 236.0, NULL,
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
  'hiv-1-rna-viral-load-by-pcr-â-quantitative-test-labspring-21449', '21449', 'HIV-1 RNA Viral Load By PCR â€“ Quantitative Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10500.0, 10500.0, 2222.0, NULL,
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
  'allergy-veg-tomato-labspring-21450', '21450', 'Allergy Veg- Tomato', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1590.0, 1590.0, 340.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-non-veg-blue-mussel-labspring-21451', '21451', 'Allergy Non-Veg Blue Mussel', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2500.0, 2500.0, 340.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  '5-panel-drug-test-labspring-21452', '21452', '5 Panel Drug Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 771.0, 771.0, 257.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  '8-panel-drug-test-labspring-21453', '21453', '8 Panel Drug Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 990.0, 990.0, 471.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  '12-panel-drug-test-labspring-21454', '21454', '12 Panel Drug Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1500.0, 1500.0, 714.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'covid-19-rtpcr-test-labspring-21455', '21455', 'Covid 19 RTPCR Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 450.0, 450.0, 173.0, NULL,
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
  'home-collection-fees-labspring-21456', '21456', 'Home Collection Fees', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'blood-sugar-post-prandial-labspring-21457', '21457', 'BLOOD SUGAR (POST PRANDIAL)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'coombs-direct-labspring-21458', '21458', 'COOMBS (DIRECT)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1190.0, 1190.0, 60.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'coombs-indirect-labspring-21459', '21459', 'COOMBS (INDIRECT)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 470.0, 470.0, 60.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'differential-count-dlc-labspring-21460', '21460', 'DIFFERENTIAL COUNT (DLC)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'urine-electrolytes-labspring-21461', '21461', 'URINE ELECTROLYTES', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1158.0, 1158.0, 343.0, NULL,
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
  'urine-ketone-labspring-21462', '21462', 'URINE KETONE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 71.0, NULL,
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
  'urine-protein-labspring-21463', '21463', 'URINE PROTEIN', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 63.0, NULL,
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
  'urine-spot-sodium-labspring-21464', '21464', 'URINE SPOT SODIUM', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 486.0, 486.0, 143.0, NULL,
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
  'urine-sugar-labspring-21465', '21465', 'URINE SUGAR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 40.0, NULL,
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
  'thyroglobulin-tg-labspring-21466', '21466', 'Thyroglobulin Tg', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2090.0, 2090.0, 886.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'autoimmune-liver-disease-profile-1-ama-ana-asma-lkm-1-labspring-21467', '21467', 'Autoimmune Liver Disease Profile-1 (AMA, ANA,
ASMA, LKM-1)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'glucose-tolerance-test-gtt-2-2-specimen-labspring-21468', '21468', 'Glucose Tolerance Test ( GTT 2, 2 Specimen)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 21.0, NULL,
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
  'glucose-challenge-test-gct-50-gm-labspring-21469', '21469', 'Glucose Challenge Test (GCT) 50 GM', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 48.0, NULL,
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
  'microalbumin-creatinine-ratio-random-labspring-21470', '21470', 'Microalbumin / Creatinine Ratio (Random)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 86.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'culture-aerobic-vaginal-swab-labspring-21471', '21471', 'CULTURE AEROBIC (VAGINAL SWAB)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'bile-pigment-labspring-21472', '21472', 'Bile Pigment', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'allergy-comprehensive-profile-labspring-21473', '21473', 'ALLERGY  COMPREHENSIVE  PROFILE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'allergy-dust-panel-labspring-21474', '21474', 'ALLERGY  DUST  PANEL', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'chlamydia-trachomatis-and-neisseria-gonorrhoeae-pcr-qualitative-labspring-21475', '21475', 'CHLAMYDIA TRACHOMATIS AND NEISSERIA
GONORRHOEAE  PCR QUALITATIVE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5733.0, 5733.0, 1911.0, NULL,
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
  'food-intolerance-test-labspring-21476', '21476', 'FOOD INTOLERANCE TEST', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 20470.0, 20470.0, 8571.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'genexpert-ultra-next-generation-mtb-with-rifampicin-resistance-semi-quantitative-pcr-labspring-21477', '21477', 'GENEXPERT ULTRA (NEXT GENERATION) MTB WITH
RIFAMPICIN RESISTANCE, SEMI QUANTITATIVE PCR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4280.0, 4280.0, 1333.0, NULL,
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
  'he4-human-epididymis-protein-4-labspring-21478', '21478', 'HE4; HUMAN EPIDIDYMIS PROTEIN 4', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2625.0, 2625.0, 875.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'immunoglobulin-igm-serum-labspring-21479', '21479', 'IMMUNOGLOBULIN IgM, SERUM', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 900.0, 900.0, 91.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'immunotyping-serum-labspring-21480', '21480', 'IMMUNOTYPING, SERUM', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12171.0, 12171.0, 4057.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cortisol-evening-labspring-21481', '21481', 'Cortisol (Evening)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 83.0, NULL,
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
  'phospholipid-antibody-igg-labspring-21482', '21482', 'PHOSPHOLIPID  ANTIBODY IgG', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1330.0, 1330.0, 571.0, NULL,
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
  'phospholipid-antibody-igm-labspring-21483', '21483', 'PHOSPHOLIPID  ANTIBODY IgM', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1330.0, 1330.0, 571.0, NULL,
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
  'rubella-german-measles-avidity-igg-labspring-21484', '21484', 'RUBELLA (GERMAN MEASLES) AVIDITY IgG', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'aerobic-culture-sensitivity-fluid-any-labspring-21485', '21485', 'Aerobic Culture & Sensitivity - Fluid (Any)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2380.0, 2380.0, 164.0, NULL,
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
  'chromosome-analysis-wb-na-heparin-labspring-21486', '21486', 'Chromosome Analysis WB-Na Heparin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 45900.0, 45900.0, 17000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lupus-anticoagulant-confirmatory-test-labspring-21487', '21487', 'Lupus Anticoagulant Confirmatory Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2860.0, 2860.0, 1086.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leucocyte-esterase-labspring-21488', '21488', 'Leucocyte Esterase', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 500.0, 500.0, 40.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'bile-pigments-bilirubin-labspring-21489', '21489', 'Bile Pigments (Bilirubin)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'c-anca-labspring-21490', '21490', 'C-ANCA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1580.0, 1580.0, 607.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'p-anca-labspring-21491', '21491', 'P-ANCA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1880.0, 1880.0, 607.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'microfilarial-antibody-detection-igg-igm-labspring-21492', '21492', 'Microfilarial Antibody Detection IgG & IgM', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2730.0, 2730.0, 1300.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'interleukin-6-il6-labspring-21493', '21493', 'Interleukin 6 IL6', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4571.0, 4571.0, 1573.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'factor-v-screening-labspring-21494', '21494', 'Factor-V Screening', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 14850.0, 14850.0, 5500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pap-smear-cytology-lbc-labspring-21495', '21495', 'PAP Smear Cytology LBC', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 750.0, 750.0, 357.0, NULL,
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
  'cytology-fluid-labspring-21496', '21496', 'Cytology (Fluid)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 960.0, 960.0, 457.0, NULL,
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
  'cd3cd4cd8-labspring-21497', '21497', 'CD3/CD4/CD8', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 450.0, 450.0, 214.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'glucose-tolerance-test-ogtt-gtt-4-gestational-dm-in-pregnancy-100-gm-labspring-21498', '21498', 'Glucose Tolerance Test OGTT ( GTT 4 Gestational DM
In Pregnancy ) 100 Gm', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 63.0, NULL,
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
  'ama-anti-mitochondrial-antibodies-by-ifa-labspring-21499', '21499', 'AMA (Anti Mitochondrial Antibodies) By IFA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'stone-analysis-labspring-21500', '21500', 'Stone Analysis', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'adenosine-deaminase-ada-body-fluid-labspring-21501', '21501', 'Adenosine Deaminase (ADA) (Body Fluid)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1875.0, 1875.0, 429.0, NULL,
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
  'alberts-stain-throat-swab-labspring-21502', '21502', 'Albert''s Stain  Throat Swab', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 675.0, 675.0, 171.0, NULL,
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
  'gram-stain-other-samples-labspring-21503', '21503', 'Gram stain Other samples', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 624.0, 624.0, 157.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-detection-by-smear-examination-zn-stain-sputum-3-samples-labspring-21504', '21504', 'AFB-detection by smear examination ZN Stain
Sputum, 3 samples', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1875.0, 1875.0, 457.0, NULL,
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
  'afb-detection-by-smear-examination-zn-stain-urine-3-samples-labspring-21505', '21505', 'AFB-detection by smear examination ZN Stain Urine, 3
samples', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1875.0, 1875.0, 400.0, NULL,
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
  'cytochemistry-panel-mpo-pas-sudan-black-labspring-21506', '21506', 'Cytochemistry Panel MPO, PAS, Sudan Black', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3960.0, 3960.0, 1257.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cd4-counts-labspring-21507', '21507', 'CD4 Counts', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1560.0, 1560.0, 571.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cd8-labspring-21508', '21508', 'CD8', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'ashnashsteato-profile-alcoholic-and-non-alcoholic-liver-disease-labspring-21509', '21509', 'ASH/NASH/STEATO Profile Alcoholic and non
Alcoholic liver disease', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 50823.0, 50823.0, 15000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cell-count-labspring-21510', '21510', 'Cell Count', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'environment-microbiological-surveillance-panel-bacterial-fungal-per-swab-labspring-21511', '21511', 'Environment Microbiological Surveillance Panel
Bacterial & Fungal Per Swab', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 993.0, 993.0, 79.0, NULL,
  'Contact for TAT', 'Fasting may be preferred for iron studies; some labs recommend about 8 hours and avoiding iron supplements beforehand. Follow lab instructions.', 'Swab (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'environment-microbiological-surveillance-panel-bacterial-fungal-5-swabs-labspring-21512', '21512', 'Environment Microbiological Surveillance Panel
Bacterial & Fungal 5 Swabs', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4053.0, 4053.0, 29.0, NULL,
  'Contact for TAT', 'Fasting may be preferred for iron studies; some labs recommend about 8 hours and avoiding iron supplements beforehand. Follow lab instructions.', 'Swab (site-specific)', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'glucose-tolerance-test-gtt-3-2-hours-3-samples-labspring-21513', '21513', 'Glucose Tolerance Test (GTT 3,  2 Hours 3 Samples)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 53.0, NULL,
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
  'anemia-workup-profile-peripheral-smear-reflex-selected-anemia-profile-for-typing-of-anemia-labspring-21514', '21514', 'Anemia Workup Profile Peripheral Smear Reflex
Selected Anemia Profile For typing of Anemia', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3600.0, 3600.0, 1143.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'acth-stimulation-test-for-cortisol-3-samples-labspring-21515', '21515', 'ACTH Stimulation Test For Cortisol 3 samples', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4014.0, 4014.0, 914.0, NULL,
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
  'pregnancy-test-qualitative-urine-spot-labspring-21516', '21516', 'Pregnancy Test Qualitative Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 126.0, NULL,
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
  'ds-dna-antibodies-by-elisa-labspring-21517', '21517', 'DS DNA Antibodies By Elisa', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1790.0, 1790.0, 625.0, NULL,
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
  'occult-blood-urine-labspring-21518', '21518', 'Occult blood Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 57.0, NULL,
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
  'pregnancy-test-qualitative-serum-labspring-21519', '21519', 'Pregnancy Test Qualitative Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'tissue-processing-per-paraffin-block-labspring-21520', '21520', 'TISSUE PROCESSING (PER PARAFFIN BLOCK)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2379.0, 2379.0, 529.0, NULL,
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
  'insulin-random-cmia-serum-labspring-21521', '21521', 'Insulin (Random) CMIA Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1371.0, 1371.0, 457.0, NULL,
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
  'calcium-urine-spot-labspring-21522', '21522', 'Calcium Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'creatinine-urine-spot-labspring-21523', '21523', 'Creatinine Urine Spot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 420.0, 420.0, 143.0, NULL,
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
  'insulin-post-glucose-serum-by-cmia-labspring-21524', '21524', 'Insulin, Post Glucose serum by CMIA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1371.0, 1371.0, 457.0, NULL,
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
  'glucose-synovial-fluid-labspring-21525', '21525', 'Glucose Synovial Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 71.0, NULL,
  'Contact for TAT', 'Fasting may be required depending on the test; when required, typically 8–12 hours with water only. Follow the test-specific instructions.', 'Synovial / joint fluid', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ada-adenosine-deaminase-synovial-fluid-labspring-21526', '21526', 'ADA Adenosine Deaminase, synovial fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1875.0, 1875.0, 429.0, NULL,
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
  'albumin-body-fluid-labspring-21527', '21527', 'Albumin Body Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 143.0, NULL,
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
  'mantoux-test-tuberculin-test-5tu-labspring-21528', '21528', 'Mantoux Test Tuberculin Test (5TU)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 540.0, 540.0, 212.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'c-peptidepost-prandial-labspring-21529', '21529', 'C-PeptidePost Prandial', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1200.0, 1200.0, 176.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'c-peptide-random-non-fasting-labspring-21530', '21530', 'C-Peptide, Random (Non Fasting)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1200.0, 1200.0, 214.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'environment-surveillance-air-culture-plate-labspring-21531', '21531', 'Environment Surveillance Air Culture Plate', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 660.0, 660.0, 29.0, NULL,
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
  'fluid-lipase-labspring-21532', '21532', 'Fluid Lipase', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1251.0, 1251.0, 357.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ldh-body-fluid-labspring-21533', '21533', 'LDH Body Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 651.0, 651.0, 217.0, NULL,
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
  'bone-formation-markers-labspring-21534', '21534', 'Bone Formation Markers', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'expanded-lung-cancer-panel-by-fish-labspring-21535', '21535', 'EXPANDED LUNG CANCER PANEL BY FISH', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 76236.0, 76236.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'serum-ascites-albumin-gradient-saag-labspring-21536', '21536', 'Serum Ascites Albumin Gradient (SAAG)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 480.0, 480.0, 229.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nmo-with-mog-antibody-profile-for-serum-labspring-21537', '21537', 'NMO With MOG Antibody Profile For Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11310.0, 11310.0, 5067.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nmo-with-mog-antibody-profile-labspring-21538', '21538', 'NMO With MOG Antibody Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 17571.0, 17571.0, 5067.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'chromosomal-array-cgh-prenatal-labspring-21539', '21539', 'Chromosomal Array CGH - Prenatal', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 45540.0, 45540.0, 17000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sca-comprehensive-panel-sca1-2-3-6-7-12-and-17-autosomal-labspring-21540', '21540', 'SCA Comprehensive Panel SCA1, 2, 3, 6, 7, 12 and 17
Autosomal', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 33480.0, 33480.0, 12500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'metabolic-disorder-screen-inborn-error-of-metabolism-labspring-21541', '21541', 'Metabolic Disorder Screen Inborn Error Of
Metabolism', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8236.0, 8236.0, 1867.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'afb-detection-by-smear-examination-fluroscence-microscopy-sputum-3-samples-labspring-21542', '21542', 'AFB-detection by smear examination Fluroscence
Microscopy Sputum-3 samples', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2058.0, 2058.0, 686.0, NULL,
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
  'afb-smear-examination-by-fluorescent-stain-urine-1-labspring-21543', '21543', 'AFB Smear Examination by Fluorescent Stain Urine-1', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 910.0, 910.0, 257.0, NULL,
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
  'amylase-enzymatic-urine-24h-labspring-21544', '21544', 'Amylase enzymatic Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 771.0, 771.0, 257.0, NULL,
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
  '6-panel-drug-test-labspring-21545', '21545', '6 Panel Drug Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1113.0, 1113.0, 371.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'growth-disorder-panel-labspring-21546', '21546', 'Growth Disorder Panel', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'hepatitis-c-virus-hcv-hcv-combo-labspring-21547', '21547', 'Hepatitis C Virus (HCV) HCV-Combo', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 25830.0, 25830.0, 8267.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'puo-profile-pyrexia-of-unknown-origin-labspring-21548', '21548', 'PUO Profile Pyrexia of Unknown origin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9000.0, 9000.0, 2667.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'isoleucine-quantitative-plasma-labspring-21549', '21549', 'Isoleucine Quantitative Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16070.0, 16070.0, 5950.0, NULL,
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
  'leucine-quantitative-plasma-labspring-21550', '21550', 'Leucine Quantitative Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16070.0, 16070.0, 5950.0, NULL,
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
  'lysine-quantitative-plasma-labspring-21551', '21551', 'Lysine Quantitative Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'methionine-quantitative-plasma-labspring-21552', '21552', 'Methionine Quantitative Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'serine-quantitative-plasma-labspring-21553', '21553', 'Serine Quantitative Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'scrub-typhus-profile-weil-felix-and-scrub-typhus-igm-labspring-21554', '21554', 'Scrub typhus profile Weil felix and scrub typhus-IgM', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4242.0, 4242.0, 629.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'jc-virus-dna-detection-plasma-labspring-21555', '21555', 'JC Virus DNA Detection Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5412.0, 5412.0, 2133.0, NULL,
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
  'stone-analysis-other-calculus-labspring-21556', '21556', 'Stone Analysis Other calculus', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'copper-reflex-ceruloplasmin-serum-labspring-21557', '21557', 'Copper reflex Ceruloplasmin Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'culture-and-identification-campylobacter-stool-labspring-21558', '21558', 'Culture and identification Campylobacter Stool', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1000.0, 1000.0, 343.0, NULL,
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
  'afb-antibiogram-for-mtb-complex-cycloserine-labspring-21559', '21559', 'AFB-Antibiogram for MTb complex Cycloserine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'alcohol-with-etg-ethyl-glucoronide-ethanol-urine-labspring-21560', '21560', 'Alcohol with ETG (Ethyl Glucoronide) Ethanol Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cmv-dna-pcr-tissue-labspring-21561', '21561', 'CMV DNA PCR TISSUE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15429.0, 15429.0, 4000.0, NULL,
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
  'bk-virus-quantitative-urine-labspring-21562', '21562', 'BK Virus Quantitative Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12050.0, 12050.0, 4500.0, NULL,
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
  'hla-pra-identification-class-i-panel-reactive-antibody-labspring-21563', '21563', 'HLA-PRA Identification (Class I) Panel Reactive
antibody %', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 30177.0, 30177.0, 9000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'hla-pra-identification-class-ii-panel-reactive-antibody-labspring-21564', '21564', 'HLA-PRA Identification (Class II) Panel Reactive
antibody %', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 30177.0, 30177.0, 9000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pheochromocytoma-marker-profile-ii-plasma-and-urine-24h-labspring-21565', '21565', 'Pheochromocytoma Marker Profile-II Plasma and
Urine 24H', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 29700.0, 29700.0, 8800.0, NULL,
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
  'clozapine-with-nor-clozapine-labspring-21566', '21566', 'Clozapine With Nor-clozapine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9380.0, 9380.0, 3500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'glutamic-acid-quantitative-plasma-labspring-21567', '21567', 'Glutamic Acid Quantitative Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'asca-iga-saccharomyces-cerevisiae-labspring-21568', '21568', 'ASCA-IgA Saccharomyces Cerevisiae', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'asca-igg-saccharomyces-cerevisiae-labspring-21569', '21569', 'ASCA-IgG Saccharomyces Cerevisiae', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3330.0, 3330.0, 1200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pre-albumin-transthyretin-labspring-21570', '21570', 'Pre Albumin Transthyretin', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'vw-von-willebrand-antigen-citrated-plasma-labspring-21571', '21571', 'Vw-Von Willebrand Antigen  Citrated Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13599.0, 13599.0, 4533.0, NULL,
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
  'aspergillus-galactomanan-bal-fluid-labspring-21572', '21572', 'Aspergillus Galactomanan, Bal Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15600.0, 15600.0, 5200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergy-monitoring-eosinophil-cationic-protein-ecp-labspring-21573', '21573', 'Allergy Monitoring Eosinophil Cationic Protein ECP', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3750.0, 3750.0, 1400.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lymeborrelia-burgdorferiigm-antibodies-csf-labspring-21574', '21574', 'LymeBorrelia BurgdorferiIgM antibodies CSF', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8640.0, 8640.0, 914.0, NULL,
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
  'gene-analysis-metachromatic-leukodystrophy-labspring-21575', '21575', 'Gene Analysis Metachromatic Leukodystrophy', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 64290.0, 64290.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ihc-androgen-receptor-with-interpretation-labspring-21576', '21576', 'IHC Androgen Receptor with interpretation', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6600.0, 6600.0, 2200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'chylomicron-qualitative-body-fluid-labspring-21577', '21577', 'Chylomicron Qualitative Body fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1929.0, 1929.0, 286.0, NULL,
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
  'ihc-pd-l1-lung-pembrolizumab-labspring-21578', '21578', 'IHC PD-L1 Lung (Pembrolizumab)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 37500.0, 37500.0, 12500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ihc-single-marker-with-reporting-c-myc-antibody-labspring-21579', '21579', 'IHC single marker with reporting C-myc antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6000.0, 6000.0, 2000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ihc-single-marker-with-reporting-tfe3-labspring-21580', '21580', 'IHC single marker with reporting TFE3', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4500.0, 4500.0, 1500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ihc-single-marker-with-reporting-gata3-stain-only-labspring-21581', '21581', 'IHC single marker with reporting GATA3, Stain only', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3375.0, 3375.0, 1125.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'histopathology-rush-biopsy-labspring-21582', '21582', 'Histopathology Rush Biopsy', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9528.0, 9528.0, 2667.0, NULL,
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
  'hmgco-ab-serum-labspring-21583', '21583', 'HMGco Ab, Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'hepatitis-e-virus-hev-hev-rna-detection-by-pcr-edta-blood-labspring-21584', '21584', 'Hepatitis E Virus (HEV) HEV-RNA Detection By PCR
EDTA Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8330.0, 8330.0, 2667.0, NULL,
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
  '16s-rrna-sequencing-bacterial-identification-culture-labspring-21585', '21585', '16s RRNA Sequencing Bacterial Identification Culture', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8100.0, 8100.0, 3000.0, NULL,
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
  'chimerism-post-transplant-labspring-21586', '21586', 'Chimerism Post-transplant', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'afb-susceptibility-linezolid-labspring-21587', '21587', 'AFB SUSCEPTIBILITY LINEZOLID', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'zika-virus-serum-or-urine-labspring-21588', '21588', 'Zika Virus  Serum Or Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 17410.0, 17410.0, 6500.0, NULL,
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
  'cebpa-mutation-analysis-blood-labspring-21589', '21589', 'CEBPA Mutation Analysis  Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 17410.0, 17410.0, 6000.0, NULL,
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
  'beta-thalassemia-by-pcr-prenatal-and-parental-blood-and-amniotic-labspring-21590', '21590', 'Beta Thalassemia By PCR Prenatal And Parental Blood
And Amniotic', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 51300.0, 51300.0, 19000.0, NULL,
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
  'hla-typing-panel-molecular-ab-and-dr-class-ii-molecular-typing-labspring-21591', '21591', 'HLA Typing Panel-Molecular A,B And DR Class II -
Molecular Typing', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 17500.0, 17500.0, 5600.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'met-amplification-fish-labspring-21592', '21592', 'MET Amplification FISH', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 34560.0, 34560.0, 12900.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'brca1brca2-comprehensive-sequencing-and-deletion-labspring-21593', '21593', 'BRCA1/BRCA2 Comprehensive (Sequencing And
Deletion', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 60000.0, 60000.0, 14444.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'alpha-thalassemia-by-pcr-hba1hba2-labspring-21594', '21594', 'Alpha Thalassemia By PCR HBA1/HBA2', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 32140.0, 32140.0, 12000.0, NULL,
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
  'leukemia-mrd-for-lymphoma-clpd-lymphoma-labspring-21595', '21595', 'Leukemia MRD For Lymphoma/ CLPD/ Lymphoma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 38840.0, 38840.0, 14500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'dfs-70-labspring-21596', '21596', 'DFS 70', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2550.0, 2550.0, 1006.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'aldosteronerenin-ratio-aldosteronedirect-renin-serum-labspring-21597', '21597', 'Aldosterone/Renin Ratio Aldosterone/Direct Renin
Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 10000.0, 10000.0, 3200.0, NULL,
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
  'mlh1-promoter-hypermethylation-labspring-21598', '21598', 'MLH1 Promoter Hypermethylation', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13390.0, 13390.0, 5000.0, NULL,
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
  'metanephrine-fractionated-plasma-labspring-21599', '21599', 'Metanephrine-fractionated  Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11670.0, 11670.0, 3733.0, NULL,
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
  'meningitisencephalitis-panel-by-filmarray-labspring-21600', '21600', 'Meningitis/Encephalitis panel by FilmArray', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 58764.0, 58764.0, 9867.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cadmium-creatinine-ratio-labspring-21601', '21601', 'Cadmium / Creatinine ratio', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 8736.0, 8736.0, 2500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pv-panel-jak-2-v617f-reflex-to-jak-2-exon-12-mutation-labspring-21602', '21602', 'PV panel (Jak-2 V617F Reflex to Jak-2 Exon 12
Mutation', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 25413.0, 25413.0, 8000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-congenital-dyserythropoietic-anemia-labspring-21603', '21603', 'Gene Panel Congenital Dyserythropoietic Anemia', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 64290.0, 64290.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'maternal-screen-with-pre-eclampsia-risk-1st-trimester-dual-marker-test-labspring-21604', '21604', 'Maternal Screen With Pre-eclampsia Risk-1st
Trimester Dual Marker Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11480.0, 11480.0, 2267.0, NULL,
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
  'ros-1-rearrangement-fish-labspring-21605', '21605', 'ROS 1 Rearrangement FISH', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 34550.0, 34550.0, 12900.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'hpv-digene-hybrid-dna-test-high-risk-labspring-21606', '21606', 'HPV Digene Hybrid DNA test (High risk)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3510.0, 3510.0, 1343.0, NULL,
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
  'macro-tsh-labspring-21607', '21607', 'Macro TSH', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 830.0, 830.0, 286.0, NULL,
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
  'lung-cancer-targeted-therapy-panel-labspring-21608', '21608', 'LUNG CANCER TARGETED THERAPY PANEL', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 60354.0, 60354.0, 19000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'idh1-and-idh2-gene-mutation-aml-blood-labspring-21609', '21609', 'IDH1 and IDH2 gene mutation, AML, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 18210.0, 18210.0, 6500.0, NULL,
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
  'karyotyping-by-g-banding-reflex-fish-labspring-21610', '21610', 'Karyotyping by G-Banding reflex FISH', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16500.0, 16500.0, 5280.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cd3-cd4-cd8-cd45-body-fluids-labspring-21611', '21611', 'CD3 / CD4 / CD8 / CD45 Body fluids', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13341.0, 13341.0, 4000.0, NULL,
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
  'metabolic-disorder-panel-includes-101-different-analytes-to-diagnose-22-different-metabolic-disorders-labspring-21612', '21612', 'Metabolic Disorder Panel Includes 101 Different
Analytes To Diagnose 22 Different Metabolic Disorders', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 43200.0, 43200.0, 12000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'biotinidase-quantitative-labspring-21613', '21613', 'Biotinidase Quantitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 17472.0, 17472.0, 5500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cpeo-chronic-progressive-external-ophthalmoplegia-mitochondrial-mutation-panel-labspring-21614', '21614', 'CPEO (Chronic Progressive External Ophthalmoplegia)
Mitochondrial Mutation panel', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 22872.0, 22872.0, 7200.0, NULL,
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
  'plasminogen-activator-inhibitor-1-pai-1-serpine-1-4g5g-labspring-21615', '21615', 'Plasminogen Activator Inhibitor-1 (PAI-1) SERPINE-1,
4G/5G', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 36160.0, 36160.0, 13500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-cancer-hotspot-labspring-21616', '21616', 'Gene Panel Cancer hotspot', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 120000.0, 120000.0, 26000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-hnpcclynch-syndrome-panel-mmr-gene-sequencing-labspring-21617', '21617', 'Gene Panel HNPCC/Lynch syndrome panel MMR gene
sequencing', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 94500.0, 94500.0, 21000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'fip1l1-pdgfra-gene-rearrangement-labspring-21618', '21618', 'FIP1L1-PDGFRA GENE REARRANGEMENT', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 29460.0, 29460.0, 11000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gentamicine-serum-labspring-21619', '21619', 'Gentamicine, serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 29730.0, 29730.0, 11100.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-hereditary-spastic-paraplegia-labspring-21620', '21620', 'Gene Panel Hereditary spastic paraplegia', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 126000.0, 126000.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-apc-labspring-21621', '21621', 'Gene Analysis  APC', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 56250.0, 56250.0, 19000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-hereditary-cancer-labspring-21622', '21622', 'Gene Panel Hereditary Cancer', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 56250.0, 56250.0, 21000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-marfans-syndrome-fbn1-labspring-21623', '21623', 'Gene Analysis Marfans Syndrome (FBN1)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 50890.0, 50890.0, 19000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'fgf-23-labspring-21624', '21624', 'FGF 23', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'gene-panel-cardiomyopathy-labspring-21625', '21625', 'Gene Panel Cardiomyopathy', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 113400.0, 113400.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-dystonia-labspring-21626', '21626', 'Gene Panel Dystonia', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 116700.0, 116700.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-muscular-dystrophy-congenital-myopathy-labspring-21627', '21627', 'Gene Panel Muscular Dystrophy & Congenital
Myopathy', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 57000.0, 57000.0, 19000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-von-willebrand-disease-vwf-labspring-21628', '21628', 'Gene Analysis Von Willebrand Disease (VWF)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 60270.0, 60270.0, 22500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'pancreatic-elastase-stool-labspring-21629', '21629', 'Pancreatic Elastase  Stool', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 12250.0, 12250.0, 3571.0, NULL,
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
  'whole-mitochondrial-genome-sequencing-labspring-21630', '21630', 'Whole Mitochondrial Genome Sequencing', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 42860.0, 42860.0, 16000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-epileptic-encephalopathy-labspring-21631', '21631', 'Gene Panel Epileptic encephalopathy', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 100800.0, 100800.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-clinical-exom-labspring-21632', '21632', 'Gene Panel Clinical exom', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 113400.0, 113400.0, 33500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-maturity-onset-diabetes-of-the-young-mody-neonatal-labspring-21633', '21633', 'Gene Panel Maturity-Onset Diabetes of the Young
(MODY) & neonatal', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 79413.0, 79413.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-mrd-for-b-all-labspring-21634', '21634', 'Leukemia MRD For B ALL', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 38840.0, 38840.0, 14500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-alexander-disease-gfap-labspring-21635', '21635', 'Gene Analysis Alexander Disease (GFAP)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 64290.0, 64290.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'whole-exome-sequencing-50mb80-100x-labspring-21636', '21636', 'Whole Exome Sequencing 50MB(80-100x)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 89290.0, 89290.0, 40000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-ataxia-telangiectasia-atm-labspring-21637', '21637', 'Gene Analysis Ataxia-telangiectasia (ATM)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 60270.0, 60270.0, 22500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-wilson-disease-atp7b-labspring-21638', '21638', 'Gene Analysis Wilson Disease (ATP7B)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 64290.0, 64290.0, 22500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-neurofibromatosis-type-1-nf1-labspring-21639', '21639', 'Gene Analysis Neurofibromatosis Type 1 (NF1)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 50890.0, 50890.0, 19000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-primary-immunodeficiency-labspring-21640', '21640', 'Gene Panel Primary immunodeficiency', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 120000.0, 120000.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-pompe-disease-gaa-labspring-21641', '21641', 'Gene Analysis Pompe Disease (GAA)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 64290.0, 64290.0, 22500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-familial-hemiplegic-migraine-labspring-21642', '21642', 'Gene Panel Familial Hemiplegic Migraine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 64290.0, 64290.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-glb1-gm1-gangliosidosis-labspring-21643', '21643', 'Gene Analysis GLB1 (GM1 Gangliosidosis)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 64290.0, 64290.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-joubert-syndrome-labspring-21644', '21644', 'Gene Panel Joubert Syndrome', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 64290.0, 64290.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-osteogenesis-imperfecta-labspring-21645', '21645', 'Gene Panel Osteogenesis Imperfecta', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 64290.0, 64290.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-dravet-syndrome-scn1a-labspring-21646', '21646', 'Gene Analysis Dravet Syndrome (SCN1A)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 64290.0, 64290.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-niemann-pick-disease-labspring-21647', '21647', 'Gene Panel Niemann-Pick Disease', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 60270.0, 60270.0, 22500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-notch3-cadasil-labspring-21648', '21648', 'Gene Analysis NOTCH3 (CADASIL)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 64290.0, 64290.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-thrombotic-thrombocytopenic-purpura-ttp-adamts13-labspring-21649', '21649', 'Gene Analysis Thrombotic Thrombocytopenic Purpura
(TTP) - ADAMTS13', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 64290.0, 64290.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-congenital-neutropenia-labspring-21650', '21650', 'Gene Panel Congenital neutropenia', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 130500.0, 130500.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-tsc1-tsc2-labspring-21651', '21651', 'Gene Analysis TSC1 & TSC2', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 50890.0, 50890.0, 19000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-pmp22-labspring-21652', '21652', 'Gene Analysis PMP22', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 64290.0, 64290.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-smith-lemli-opitz-syndrome-dhcr7-labspring-21653', '21653', 'Gene Analysis Smith-Lemli-Opitz Syndrome (DHCR7)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 50890.0, 50890.0, 19000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-arthrogryposis-congenital-myasthenic-syndrome-labspring-21654', '21654', 'Gene Panel Arthrogryposis & congenital myasthenic
syndrome', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 130500.0, 130500.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-episodic-ataxia-labspring-21655', '21655', 'Gene Panel Episodic ataxia', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 120000.0, 120000.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'posaconazole-labspring-21656', '21656', 'Posaconazole', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 23710.0, 23710.0, 8850.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-leukodystrophy-labspring-21657', '21657', 'Gene Panel Leukodystrophy', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 120000.0, 120000.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-duchenne-muscular-dystrophy-dmd-by-ngs-labspring-21658', '21658', 'Gene Analysis Duchenne Muscular Dystrophy (DMD)
By NGS', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 50890.0, 50890.0, 19000.0, NULL,
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
  'gene-panel-neuronal-ceroid-lipofuscinosis-labspring-21659', '21659', 'Gene Panel Neuronal ceroid lipofuscinosis', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 120000.0, 120000.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-von-hippel-lindau-syndrome-vhl-labspring-21660', '21660', 'Gene Analysis Von Hippel-Lindau Syndrome (VHL)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 64290.0, 64290.0, 19000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-haemophilia-b-f9-labspring-21661', '21661', 'Gene Analysis Haemophilia B (F9)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 60270.0, 60270.0, 22500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'brca-1-2-somatic-mutation-analysis-labspring-21662', '21662', 'BRCA 1 & 2 Somatic Mutation analysis', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 69640.0, 69640.0, 26000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-charcot-marie-tooth-and-sensory-neuropathies-labspring-21663', '21663', 'Gene Panel Charcot-Marie-Tooth And Sensory
Neuropathies', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 120000.0, 120000.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-dyskeratosis-congenita-labspring-21664', '21664', 'Gene Panel Dyskeratosis congenita', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 130500.0, 130500.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-hypercholesterolemia-labspring-21665', '21665', 'Gene Panel Hypercholesterolemia', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 130500.0, 130500.0, 24000.0, NULL,
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
  'gene-analysis-glut1-deficiency-slc2a1-labspring-21666', '21666', 'Gene Analysis GLUT1 Deficiency (SLC2A1)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 64290.0, 64290.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'high-resolution-hla-typing-a-b-dr-labspring-21667', '21667', 'High Resolution HLA Typing (A, B, DR)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 22500.0, 22500.0, 8400.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'high-resolution-hla-typing-a-b-c-dp-dq-dr-labspring-21668', '21668', 'High Resolution HLA Typing (A, B, C, DP, DQ, DR)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 41670.0, 41670.0, 15556.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'biofire-film-array-pneumonia-panel-lower-respiratory-tract-labspring-21669', '21669', 'Biofire film array pneumonia panel (Lower respiratory
tract)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 59520.0, 59520.0, 26000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-hereditary-pancreatitis-labspring-21670', '21670', 'Gene Panel Hereditary pancreatitis', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 120000.0, 120000.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'hla-b-1502-for-carbamazepine-toxicity-labspring-21671', '21671', 'HLA-B 1502 for carbamazepine toxicity', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 22950.0, 22950.0, 8500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-myd88-gene-l265p-mutation-labspring-21672', '21672', 'Gene Analysis MYD88  Gene L265P Mutation', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'gene-panel-early-onset-juvenile-parkinsonism-labspring-21673', '21673', 'Gene Panel Early-onset juvenile parkinsonism', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 120000.0, 120000.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'nitrosonaphthol-test-qualitative-spot-urine-labspring-21674', '21674', 'Nitrosonaphthol Test Qualitative, Spot Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 58930.0, 58930.0, 22000.0, NULL,
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
  'gene-panel-glycogen-storage-disorder-labspring-21675', '21675', 'Gene Panel Glycogen storage disorder', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 120000.0, 120000.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-panel-methylmalonic-aciduria-mma-labspring-21676', '21676', 'Gene Panel Methylmalonic aciduria (MMA)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 120000.0, 120000.0, 24000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'gene-analysis-dock8-hyper-ige-syndrome-gene-labspring-21677', '21677', 'Gene Analysis DOCK8 (Hyper IgE Syndrome) Gene', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 50890.0, 50890.0, 19000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'arginine-quantitative-plasma-labspring-21678', '21678', 'Arginine Quantitative Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'entamoeba-histolitica-antibodies-amoebic-serology-igg-labspring-21679', '21679', 'Entamoeba Histolitica Antibodies (Amoebic Serology) -
IgG', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1560.0, 1560.0, 743.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'g6pd-deficiency-quantitative-labspring-21680', '21680', 'G6PD Deficiency (Quantitative)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 540.0, 540.0, 123.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'aldolase-labspring-21681', '21681', 'Aldolase', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1580.0, 1580.0, 333.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'tb-detection-by-pcr-afb-detection-by-dna-pcr-labspring-21682', '21682', 'TB Detection By PCR (AFB Detection By DNA PCR)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3330.0, 3330.0, 1114.0, NULL,
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
  'thiamine-vitamin-b1-by-elisa-method-labspring-21683', '21683', 'THIAMINE (VITAMIN B1)-By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cat-epithelium-by-elisa-method-labspring-21684', '21684', 'CAT EPITHELIUM-By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'aspergillus-fumigatus-by-elisa-method-labspring-21685', '21685', 'ASPERGILLUS FUMIGATUS-By Elisa Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3810.0, 3810.0, 214.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'hiv-1-2-antibody-by-cmia-method-labspring-21686', '21686', 'HIV 1 & 2 Antibody By CMIA Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1190.0, 1190.0, 94.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'hepatitis-b-surface-hbsag-by-cmia-method-labspring-21687', '21687', 'Hepatitis B Surface HbsAg By CMIA Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1260.0, 1260.0, 84.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'anti-hcv-total-antibody-by-cmia-method-labspring-21688', '21688', 'Anti HCV  Total Antibody By CMIA Method', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2900.0, 2900.0, 229.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'fnac-fine-needle-aspiration-cytology-labspring-21689', '21689', 'FNAC (Fine Needle Aspiration Cytology)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 36.0, NULL,
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
  'tb-detection-by-pcrblood-labspring-21690', '21690', 'TB Detection By PCR,Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3670.0, 3670.0, 1114.0, NULL,
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
  'bone-resorption-markers-labspring-21691', '21691', 'Bone Resorption Markers', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'enaana-by-immunoblot-18-antigens-serum-labspring-21692', '21692', 'ENA/ANA By Immunoblot 18 Antigens Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'alpha-thalassemia-by-pcr-5-common-deletions-labspring-21693', '21693', 'Alpha Thalassemia By PCR 5 Common Deletions', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9380.0, 9380.0, 3500.0, NULL,
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
  'nicotine-metabolite-quantitative-cotinine-spot-urine-labspring-21694', '21694', 'Nicotine Metabolite -Quantitative Cotinine, Spot
Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1890.0, 1890.0, 743.0, NULL,
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
  'catecholamines-adrenaline-and-nor-adrenaline-plasma-labspring-21695', '21695', 'Catecholamines Adrenaline And Nor-adrenaline
Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11330.0, 11330.0, 3627.0, NULL,
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
  'adenovirus-igg-antibody-serum-labspring-21696', '21696', 'Adenovirus IgG Antibody Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4290.0, 4290.0, 1500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'actn3-genotyping-sports-gene-blood-labspring-21697', '21697', 'ACTN3 Genotyping Sports Gene Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  '3-methyl-histidine-quantitative-plasma-labspring-21698', '21698', '3-Methyl Histidine Quantitative Plasma', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'aspergillus-ige-specific-allergen-labspring-21699', '21699', 'Aspergillus IgE Specific Allergen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1440.0, 1440.0, 686.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'myasthenia-gravis-profile-labspring-21700', '21700', 'Myasthenia Gravis Profile', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 26730.0, 26730.0, 5280.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'liver-kidney-microsome-lkm-1-antibody-labspring-21701', '21701', 'Liver Kidney Microsome (LKM) - 1 Antibody', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'water-culture-test-labspring-21702', '21702', 'Water Culture Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 63.0, NULL,
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
  'doctor-consultation-labspring-21703', '21703', 'Doctor Consultation', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'cd56-natural-killer-cells-labspring-21704', '21704', 'CD56 (Natural Killer Cells)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3150.0, 3150.0, 1167.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'free-doctor-consultation-labspring-21705', '21705', 'Free Doctor Consultation', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'red-blood-cells-blood-labspring-21706', '21706', 'Red Blood Cells - Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 40.0, NULL,
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
  'routine-body-fluid-examination-pleural-fluid-labspring-21707', '21707', 'Routine Body Fluid Examination - Pleural Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 29.0, NULL,
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
  'neisseria-gonorrhoae-detection-by-real-time-pcr-urine-labspring-21708', '21708', 'Neisseria Gonorrhoae Detection By Real Time PCR
Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 9450.0, 9450.0, 3500.0, NULL,
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
  'oxycodone-urine-labspring-21709', '21709', 'Oxycodone Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 780.0, 780.0, 371.0, NULL,
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
  'hydromorphone-urine-labspring-21710', '21710', 'Hydromorphone Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 780.0, 780.0, 371.0, NULL,
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
  'hydrocodone-urine-labspring-21711', '21711', 'Hydrocodone Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 780.0, 780.0, 371.0, NULL,
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
  'oxymorphone-urine-labspring-21712', '21712', 'Oxymorphone Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 780.0, 780.0, 371.0, NULL,
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
  'ketamine-urine-labspring-21713', '21713', 'Ketamine Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 780.0, 780.0, 371.0, NULL,
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
  'crp-c-reactive-protein-qualitative-labspring-21714', '21714', 'CRP (C Reactive Protein) Qualitative', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 33.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'typhi-dot-igg-labspring-21715', '21715', 'Typhi Dot IgG', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'nicotine-metabolite-qualitative-cotinine-spot-urine-labspring-21716', '21716', 'Nicotine Metabolite -Qualitative Cotinine, Spot Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 96.0, NULL,
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
  'ecg-10-labspring-21717', '21717', 'ECG 1.0', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 50.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'blood-pressure-and-pulse-10-labspring-21718', '21718', 'Blood Pressure and Pulse 1.0', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 471.0, 471.0, 143.0, NULL,
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
  'eye-check-up-10-labspring-21719', '21719', 'Eye Check-up 1.0', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1575.0, 1575.0, 429.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'doctor-consultation-10-labspring-21720', '21720', 'Doctor Consultation 1.0', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 471.0, 471.0, 143.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mer-medical-examination-report-labspring-21721', '21721', 'MER (Medical examination Report)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 1.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'convenience-fees-labspring-21722', '21722', 'Convenience Fees', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 642.0, 642.0, 214.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'myoglobin-spot-urine-labspring-21723', '21723', 'Myoglobin Spot  Urine', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1430.0, 1430.0, 686.0, NULL,
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
  'nipt-with-microdeletion-and-duplication-labspring-21724', '21724', 'NIPT With Microdeletion And Duplication', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 45000.0, 45000.0, 15000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'routine-body-fluid-examinationsynovial-fluid-labspring-21725', '21725', 'Routine Body Fluid Examination(Synovial Fluid)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1050.0, 1050.0, 50.0, NULL,
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
  'microfilaria-smear-examination-labspring-21726', '21726', 'Microfilaria Smear Examination', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 750.0, 750.0, 63.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'routine-body-fluid-examination-ascitic-fluid-labspring-21727', '21727', 'Routine Body Fluid Examination Ascitic Fluid', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
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
  'dual-reflex-to-nipt-labspring-21728', '21728', 'Dual Reflex To NIPT', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5625.0, 5625.0, 1875.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'urine-for-cytology-test-labspring-21729', '21729', 'Urine For Cytology Test', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 43.0, NULL,
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
  'amacr-by-ihc-labspring-21730', '21730', 'AMACR By IHC', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3993.0, 3993.0, 1331.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'kappa-by-ihc-labspring-21731', '21731', 'Kappa by IHC', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3993.0, 3993.0, 1331.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'lymphoma-panel-by-ihc-labspring-21732', '21732', 'Lymphoma Panel by IHC', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 27000.0, 27000.0, 9000.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'karyotyping-labspring-21733', '21733', 'Karyotyping', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 4743.0, 4743.0, 1581.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'sulfamethoxazole-by-elisa-labspring-21734', '21734', 'Sulfamethoxazole By Elisa', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 429.0, 429.0, 129.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'egg-yolk-elisa-labspring-21735', '21735', 'Egg Yolk Elisa', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 429.0, 429.0, 129.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'fdp-immunohistochemistry-labspring-21736', '21736', 'FDP (ImmunoHistochemistry)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13125.0, 13125.0, 4375.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'chikungunya-rna-detection-by-real-time-pcr-labspring-21737', '21737', 'Chikungunya RNA Detection By Real Time PCR', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1790.0, 1790.0, 857.0, NULL,
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
  'neuronal-antibody-profile-1-paraneoplastic-syndrome-profile-6-labspring-21738', '21738', 'Neuronal Antibody Profile-1 Paraneoplastic Syndrome
Profile 6', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 13330.0, 13330.0, 4267.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'neuronal-antibody-profile-3-paraneoplastic-syndrome-profile-12-labspring-21739', '21739', 'Neuronal Antibody Profile-3 Paraneoplastic Syndrome
Profile 12', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 15480.0, 15480.0, 6933.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'routine-body-fluid-examination-any-labspring-21740', '21740', 'ROUTINE BODY FLUID EXAMINATION (ANY)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 37.0, NULL,
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
  'cervical-cancer-screening-human-papillomavirushpv-dna-detection-genotype-labspring-21741', '21741', 'Cervical Cancer Screening - Human
Papillomavirus(HPV-DNA) Detection & Genotype', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 3300.0, 3300.0, 1500.0, NULL,
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
  'head-and-neck-with-bone-labspring-21742', '21742', 'Head And Neck With Bone', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6750.0, 6750.0, 2250.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'vgcc-antibody-voltage-gated-calcium-channel-labspring-21743', '21743', 'VGCC Antibody Voltage Gated Calcium Channel', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 32400.0, 32400.0, 10200.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'troponin-i-hs-quantitative-labspring-21744', '21744', 'Troponin I (HS Quantitative)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 900.0, 900.0, 300.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'bone-marrow-iron-stain-labspring-21745', '21745', 'Bone Marrow Iron Stain', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 1074.0, 1074.0, 286.0, NULL,
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
  'bacterial-meningitis-profile-5-antigen-serum-labspring-21746', '21746', 'Bacterial Meningitis Profile (5 Antigen), Serum', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 6720.0, 6720.0, 2240.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-panel-ph-like-b-all-blood-labspring-21747', '21747', 'Leukemia Panel-Ph Like B-ALL,  Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 72201.0, 72201.0, 24067.0, NULL,
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
  'fructose-semen-labspring-21748', '21748', 'Fructose Semen', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 675.0, 675.0, 171.0, NULL,
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
  'fecal-elastase-labspring-21749', '21749', 'FECAL ELASTASE', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 26001.0, 26001.0, 8667.0, NULL,
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
  'leukemia-panel-t-all-blood-labspring-21750', '21750', 'LEUKEMIA PANEL-T-ALL, BLOOD', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 60801.0, 60801.0, 20267.0, NULL,
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
  'scrub-typhus-igg-labspring-21751', '21751', 'Scrub Typhus IgG', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 630.0, 630.0, 159.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'leukemia-acute-myleoid-leukemia-panel-aml-blood-labspring-21752', '21752', 'Leukemia -Acute Myleoid Leukemia Panel AML, Blood', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 16800.0, 16800.0, 5600.0, NULL,
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
  'allergy-comprehensive-eczema-panel-labspring-21753', '21753', 'Allergy - Comprehensive Eczema Panel', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 18399.0, 18399.0, 6133.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'allergen-potato-aaloo-solanum-tuberosum-labspring-21754', '21754', 'Allergen-Potato (Aaloo / Solanum Tuberosum)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 2874.0, 2874.0, 800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'flow-for-lymphoma-clpd-lymphoma-mrd-labspring-21755', '21755', 'Flow For Lymphoma/ CLPD / Lymphoma MRD', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 52200.0, 52200.0, 17400.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'swab-for-mrsa-labspring-21756', '21756', 'Swab For MRSA', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 276.0, 276.0, 79.0, NULL,
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
  'koh-mount-fungus-labspring-21757', '21757', 'KOH MOUNT FUNGUS', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 29.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'creatinine-urine-24hr-labspring-21758', '21758', 'Creatinine Urine 24hr', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 43.0, NULL,
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
  'microalbumin-creatinine-ratio-24hr-labspring-21759', '21759', 'Microalbumin / Creatinine Ratio 24hr', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 300.0, 300.0, 20.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'vitamin-b3-niacin-labspring-21760', '21760', 'Vitamin B3 (Niacin)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 11400.0, 11400.0, 3800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'anti-hcv-total-antibody-by-cmia-method-csir-labspring-21761', '21761', 'Anti HCV Total Antibody By CMIA Method (CSIR)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 687.0, 687.0, 229.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'hepatitis-b-surface-hbsag-by-cmia-method-csir-labspring-21762', '21762', 'Hepatitis B Surface HbsAg By CMIA Method (CSIR)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 291.0, 291.0, 84.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'myositis-profile-igg16-antigen-labspring-21763', '21763', 'Myositis Profile-IgG(16 Antigen)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 25450.0, 25450.0, 9500.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'tb-gold-plus-interferon-gamma-release-assay-igra-labspring-21764', '21764', 'TB GOLD PLUS, INTERFERON GAMMA RELEASE ASSAY
(IGRA)', 'lab-tests', 'Lab Tests', 'Labs', 'LabSpring',
  NULL, NULL, 5000.0, 5000.0, 1800.0, NULL,
  'Contact for TAT', 'Usually no special preparation; fasting is not routinely required unless specified by the test or ordering clinician.', 'Serum / blood', FALSE,
  FALSE, '[]'::jsonb, 0, 'lab', 'LabSpring'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-cervical-spine-with-whole-spine-screening-cadabams-30001', '30001', 'MRI CERVICAL SPINE WITH WHOLE SPINE SCREENING', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 13500.0, 13500.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-hand-cadabams-30002', '30002', 'MRI HAND', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8500.0, 8500.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-kub-cadabams-30003', '30003', 'MRI KUB', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8500.0, 8500.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-left-leg-cadabams-30004', '30004', 'MRI LEFT LEG', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8500.0, 8500.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-abdomen-angio-cadabams-30005', '30005', 'MRI ABDOMEN ANGIO', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 11000.0, 11000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-brain-cadabams-30006', '30006', 'MRI BRAIN', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8000.0, 8000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-both-knee-joints-cadabams-30007', '30007', 'MRI BOTH KNEE JOINTS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 16000.0, 16000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-brain-csf-flow-study-cadabams-30008', '30008', 'MRI BRAIN CSF FLOW STUDY', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 15500.0, 15500.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-abdomen-cadabams-30009', '30009', 'MRI ABDOMEN', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8200.0, 8200.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-brachial-plexus-cadabams-30010', '30010', 'MRI BRACHIAL PLEXUS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8500.0, 8500.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-left-ankle-joint-cadabams-30011', '30011', 'MRI LEFT ANKLE JOINT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8500.0, 8500.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-aortogram-cadabams-30012', '30012', 'MRI AORTOGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 11000.0, 11000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-both-breast-cadabams-30013', '30013', 'MRI BOTH BREAST', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 16000.0, 16000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-cardiac-contrast-cadabams-30014', '30014', 'MRI CARDIAC + CONTRAST', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 20000.0, 20000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-both-shoulders-cadabams-30015', '30015', 'MRI BOTH SHOULDERS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 16000.0, 16000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-brain-with-dti-cadabams-30016', '30016', 'MRI BRAIN WITH DTI', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 11000.0, 11000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-carotid-angio-cadabams-30017', '30017', 'MRI CAROTID ANGIO', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 11000.0, 11000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-cervical-spine-cadabams-30018', '30018', 'MRI CERVICAL SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8000.0, 8000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-cervico-thoracic-spine-cadabams-30019', '30019', 'MRI CERVICO-THORACIC SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 11000.0, 11000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-contrast-cadabams-30020', '30020', 'MRI CONTRAST', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3200.0, 3200.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-dorsal-spine-cadabams-30021', '30021', 'MRI DORSAL SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8000.0, 8000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-dorsal-spine-with-total-screening-of-spine-cadabams-30022', '30022', 'MRI DORSAL SPINE WITH TOTAL SCREENING OF SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 13500.0, 13500.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-right-elbow-joint-cadabams-30023', '30023', 'MRI RIGHT ELBOW JOINT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8500.0, 8500.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-face-cadabams-30024', '30024', 'MRI FACE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8500.0, 8500.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-fetal-cadabams-30025', '30025', 'MRI FETAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 10000.0, 10000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-fistulogram-cadabams-30026', '30026', 'MRI FISTULOGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8500.0, 8500.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-foot-cadabams-30027', '30027', 'MRI FOOT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8500.0, 8500.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-forearm-cadabams-30028', '30028', 'MRI FOREARM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8500.0, 8500.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-neck-cadabams-30029', '30029', 'MRI NECK', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8000.0, 8000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-orbit-cadabams-30030', '30030', 'MRI ORBIT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8000.0, 8000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-hip-joints-cadabams-30031', '30031', 'MRI HIP JOINTS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8500.0, 8500.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-heel-cadabams-30032', '30032', 'MRI HEEL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8500.0, 8500.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-sacroiliac-joints-cadabams-30033', '30033', 'MRI SACROILIAC JOINTS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8500.0, 8500.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-scan-of-tongue-cadabams-30034', '30034', 'MRI SCAN OF TONGUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8000.0, 8000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-shoulder-joint-cadabams-30035', '30035', 'MRI SHOULDER JOINT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 8000.0, 8000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-lower-limb-angiography-cadabams-30036', '30036', 'MRI LOWER LIMB ANGIOGRAPHY', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 11000.0, 11000.0, NULL, NULL,
  'Same Day', 'Follow radiology procedure guidelines', 'Radiology Scan', FALSE,
  TRUE, '[]'::jsonb, 0, 'imaging', 'Cadabams'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

