-- ============================================================
-- HEALTH EXPRESS — SERVICE CATALOG SEED BATCH 5 OF 5
-- Services 1801 to 2207 of 2207
-- ============================================================

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mri-brain-spectroscopy-cadabams-30037', '30037', 'MRI BRAIN + SPECTROSCOPY', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-lumbar-spine-cadabams-30038', '30038', 'MRI LUMBAR SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-temporal-bones-cadabams-30039', '30039', 'MRI TEMPORAL BONES', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-temporomandibular-joints-cadabams-30040', '30040', 'MRI TEMPOROMANDIBULAR JOINTS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 9500.0, 9500.0, NULL, NULL,
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
  'mri-metastases-evaluation-contrast-cadabams-30041', '30041', 'MRI METASTASES EVALUATION + CONTRAST', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 25000.0, 25000.0, NULL, NULL,
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
  'mri-neck-angio-cadabams-30042', '30042', 'MRI NECK ANGIO', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-shoulder-cadabams-30043', '30043', 'MRI SHOULDER', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-pelvis-cadabams-30044', '30044', 'MRI PELVIS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-pelvis-and-screening-of-hip-joint-cadabams-30045', '30045', 'MRI PELVIS AND SCREENING OF HIP JOINT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-pns-cadabams-30046', '30046', 'MRI PNS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-whole-spine-cadabams-30047', '30047', 'MRI WHOLE SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-piriformis-muscle-with-si-joint-cadabams-30048', '30048', 'MRI PIRIFORMIS MUSCLE WITH SI JOINT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-peripheral-angio-cadabams-30049', '30049', 'MRI PERIPHERAL ANGIO', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 11200.0, 11200.0, NULL, NULL,
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
  'mri-ankle-cadabams-30050', '30050', 'MRI ANKLE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-shoulder-joint-cadabams-30051', '30051', 'MRI SHOULDER JOINT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-brain-and-tof-angiography-cadabams-30052', '30052', 'MRI BRAIN AND TOF ANGIOGRAPHY', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-thumb-cadabams-30053', '30053', 'MRI THUMB', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-knee-joint-cadabams-30054', '30054', 'MRI KNEE JOINT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-lumbar-spine-with-whole-spine-screening-cadabams-30055', '30055', 'MRI LUMBAR SPINE WITH WHOLE SPINE SCREENING', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-upper-limb-angiography-cadabams-30056', '30056', 'MRI UPPER LIMB ANGIOGRAPHY', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-wrist-cadabams-30057', '30057', 'MRI WRIST', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-sterno-clavicular-joint-cadabams-30058', '30058', 'MRI STERNO CLAVICULAR JOINT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-thigh-cadabams-30059', '30059', 'MRI  THIGH', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-thorax-chest-wall-cadabams-30060', '30060', 'MRI THORAX / CHEST WALL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-tof-angiography-cadabams-30061', '30061', 'MRI TOF ANGIOGRAPHY', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 5500.0, 5500.0, NULL, NULL,
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
  'mri-soft-tissue-cadabams-30062', '30062', 'MRI SOFT TISSUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-both-thigh-cadabams-30063', '30063', 'MRI BOTH THIGH', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-venogram-cadabams-30064', '30064', 'MRI VENOGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 5500.0, 5500.0, NULL, NULL,
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
  'mri-tongue-cadabams-30065', '30065', 'MRI TONGUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-thoraco-lumbar-spine-cadabams-30066', '30066', 'MRI THORACO LUMBAR SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-cervico-dorsal-spine-cadabams-30067', '30067', 'MRI CERVICO-DORSAL SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-urogram-cadabams-30068', '30068', 'MRI UROGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-abdomen-and-pelvis-cadabams-30069', '30069', 'MRI ABDOMEN AND PELVIS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 16400.0, 16400.0, NULL, NULL,
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
  'mri-thoracic-spine-cadabams-30070', '30070', 'MRI THORACIC SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mra-cadabams-30071', '30071', 'MRA', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 5500.0, 5500.0, NULL, NULL,
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
  'mri-venogram-both-lowerlimbs-cadabams-30072', '30072', 'MRI VENOGRAM BOTH LOWERLIMBS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mrcp-cadabams-30073', '30073', 'MRCP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-both-hip-joints-cadabams-30074', '30074', 'MRI BOTH HIP JOINTS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-arm-cadabams-30075', '30075', 'MRI ARM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-whole-body-cadabams-30076', '30076', 'MRI WHOLE BODY', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 43000.0, 43000.0, NULL, NULL,
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
  'mri-extended-scan-cadabams-30077', '30077', 'MRI EXTENDED SCAN', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 5500.0, 5500.0, NULL, NULL,
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
  'mri-screening-cadabams-30078', '30078', 'MRI SCREENING', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 5500.0, 5500.0, NULL, NULL,
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
  'mri-screening-of-whole-spine-cadabams-30079', '30079', 'MRI SCREENING OF WHOLE SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'mri-pitutary-protocol-with-dynamic-contarst-cadabams-30080', '30080', 'MRI PITUTARY PROTOCOL WITH DYNAMIC CONTARST', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 13000.0, 13000.0, NULL, NULL,
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
  'mri-neurograpy-cadabams-30081', '30081', 'MRI NEUROGRAPY', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 12000.0, 12000.0, NULL, NULL,
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
  'ct-abdomen-plain-cadabams-30082', '30082', 'CT ABDOMEN - PLAIN', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6500.0, 6500.0, NULL, NULL,
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
  'ct-angio-head-and-neck-cadabams-30083', '30083', 'CT ANGIO HEAD AND NECK', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-bilateral-lower-limb-angio-cadabams-30084', '30084', 'CT BILATERAL LOWER LIMB ANGIO', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-dorsal-spine-cadabams-30085', '30085', 'CT DORSAL SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 5500.0, 5500.0, NULL, NULL,
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
  'ct-contrast-cadabams-30086', '30086', 'CT CONTRAST', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2000.0, 2000.0, NULL, NULL,
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
  'ct-face-with-3d-reconstruction-cadabams-30087', '30087', 'CT FACE WITH 3D RECONSTRUCTION', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-abdomen-and-pelvis-plain-cadabams-30088', '30088', 'CT ABDOMEN AND PELVIS PLAIN', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-pulmonary-angio-cadabams-30089', '30089', 'CT PULMONARY ANGIO', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-guided-colostogram-cadabams-30090', '30090', 'CT GUIDED COLOSTOGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 5500.0, 5500.0, NULL, NULL,
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
  'ct-orbit-cadabams-30091', '30091', 'CT ORBIT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-elbow-joint-cadabams-30092', '30092', 'CT ELBOW JOINT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-bone-biopsy-cadabams-30093', '30093', 'CT BONE BIOPSY', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 7000.0, 7000.0, NULL, NULL,
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
  'ct-foot-cadabams-30094', '30094', 'CT FOOT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-angiogram-cadabams-30095', '30095', 'CT ANGIOGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-ankle-cadabams-30096', '30096', 'CT ANKLE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-brain-plain-cadabams-30097', '30097', 'CT BRAIN - PLAIN', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3500.0, 3500.0, NULL, NULL,
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
  'ct-cerebral-angiogram-cadabams-30098', '30098', 'CT CEREBRAL ANGIOGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-brain-and-orbit-cadabams-30099', '30099', 'CT BRAIN AND ORBIT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-brain-with-mastoids-cadabams-30100', '30100', 'CT BRAIN WITH MASTOIDS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-cervical-spine-cadabams-30101', '30101', 'CT CERVICAL SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-pelvis-cadabams-30102', '30102', 'CT PELVIS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6000.0, 6000.0, NULL, NULL,
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
  'ct-facial-bones-cadabams-30103', '30103', 'CT FACIAL BONES', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 5500.0, 5500.0, NULL, NULL,
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
  'ct-extremities-cadabams-30104', '30104', 'CT EXTREMITIES', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-hand-cadabams-30105', '30105', 'CT  HAND', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-renal-angiogram-cadabams-30106', '30106', 'CT RENAL ANGIOGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-sacroiliac-joint-cadabams-30107', '30107', 'CT SACROILIAC JOINT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-hip-joints-cadabams-30108', '30108', 'CT HIP JOINTS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-kub-cadabams-30109', '30109', 'CT KUB', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6000.0, 6000.0, NULL, NULL,
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
  'ct-knee-joint-cadabams-30110', '30110', 'CT KNEE JOINT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-lumbar-spine-cadabams-30111', '30111', 'CT LUMBAR SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-venogram-cadabams-30112', '30112', 'CT VENOGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-pelvis-with-hip-joints-cadabams-30113', '30113', 'CT PELVIS WITH HIP JOINTS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-neck-cadabams-30114', '30114', 'CT NECK', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-pns-cadabams-30115', '30115', 'CT PNS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 4000.0, 4000.0, NULL, NULL,
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
  'ct-orbit-cadabams-30116', '30116', 'CT ORBIT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'hrct-temporal-bone-cadabams-30117', '30117', 'HRCT TEMPORAL BONE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6500.0, 6500.0, NULL, NULL,
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
  'ct-facial-screening-cadabams-30118', '30118', 'CT FACIAL SCREENING', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3000.0, 3000.0, NULL, NULL,
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
  'ct-peripheral-angiogram-cadabams-30119', '30119', 'CT PERIPHERAL ANGIOGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 11500.0, 11500.0, NULL, NULL,
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
  'ct-abdomen-and-pelvis-with-contrast-cadabams-30120', '30120', 'CT ABDOMEN AND PELVIS WITH CONTRAST', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-neck-with-contrast-cadabams-30121', '30121', 'CT NECK WITH CONTRAST', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-shoulder-cadabams-30122', '30122', 'CT SHOULDER', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-thoraco-lumbar-spine-cadabams-30123', '30123', 'CT THORACO LUMBAR SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-wrist-cadabams-30124', '30124', 'CT WRIST', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-screening-of-hip-joints-cadabams-30125', '30125', 'CT SCREENING OF HIP JOINTS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3000.0, 3000.0, NULL, NULL,
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
  'ct-urogram-cadabams-30126', '30126', 'CT UROGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-whole-body-cadabams-30127', '30127', 'CT WHOLE BODY', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 30000.0, 30000.0, NULL, NULL,
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
  'ct-thoarx-with-contrast-cadabams-30128', '30128', 'CT THOARX WITH CONTRAST', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-screening-any-region-cadabams-30129', '30129', 'CT SCREENING ANY REGION', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3500.0, 3500.0, NULL, NULL,
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
  'ct-hip-joint-cadabams-30130', '30130', 'CT HIP JOINT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-whole-spine-cadabams-30131', '30131', 'CT WHOLE SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'hrct-of-chest-cadabams-30132', '30132', 'HRCT OF CHEST', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6500.0, 6500.0, NULL, NULL,
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
  'ct-skull-base-cadabams-30133', '30133', 'CT SKULL BASE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-skull-with-3d-reconstruction-cadabams-30134', '30134', 'CT SKULL WITH 3D RECONSTRUCTION', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-aortic-angiogram-cadabams-30135', '30135', 'CT AORTIC ANGIOGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-wrist-with-3d-reconstruction-cadabams-30136', '30136', 'CT WRIST WITH 3D RECONSTRUCTION', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ct-thoracic-spine-cadabams-30137', '30137', 'CT THORACIC SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6050.0, 6050.0, NULL, NULL,
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
  'ct-elbow-3d-reconstruction-cadabams-30138', '30138', 'CT ELBOW 3D RECONSTRUCTION', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ultrasound-colour-doppler-lower-limb-cadabams-30139', '30139', 'ULTRASOUND COLOUR DOPPLER LOWER LIMB', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2200.0, 2200.0, NULL, NULL,
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
  'ultrasound-abdomen-cadabams-30140', '30140', 'ULTRASOUND ABDOMEN', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1350.0, 1350.0, NULL, NULL,
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
  'ultrasound-abdomen-pelvisf-cadabams-30141', '30141', 'ULTRASOUND ABDOMEN & PELVIS(F)', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1350.0, 1350.0, NULL, NULL,
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
  'ultrasound-abdomen-pelvism-cadabams-30142', '30142', 'ULTRASOUND ABDOMEN & PELVIS(M)', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1350.0, 1350.0, NULL, NULL,
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
  'ultrasound-abdomen-doppler-cadabams-30143', '30143', 'ULTRASOUND ABDOMEN DOPPLER', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3000.0, 3000.0, NULL, NULL,
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
  'ultrasound-anamoly-scan-level-2-scan-tiffa-cadabams-30144', '30144', 'ULTRASOUND ANAMOLY SCAN / LEVEL 2 SCAN (TIFFA)', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3500.0, 3500.0, NULL, NULL,
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
  'ultrasound-msk-cadabams-30145', '30145', 'ULTRASOUND MSK', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ultrasound-anamoly-scan-twins-cadabams-30146', '30146', 'ULTRASOUND ANAMOLY SCAN TWINS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 5600.0, 5600.0, NULL, NULL,
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
  'ultrasound-arterial-doppler-both-upper-limb-cadabams-30147', '30147', 'ULTRASOUND ARTERIAL DOPPLER BOTH UPPER LIMB', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 4400.0, 4400.0, NULL, NULL,
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
  'ultrasound-arterial-doppler-both-lower-limb-cadabams-30148', '30148', 'ULTRASOUND ARTERIAL DOPPLER BOTH LOWER LIMB', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 4400.0, 4400.0, NULL, NULL,
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
  'ultrasound-both-arterial-venous-doppler-scan-single-cadabams-30149', '30149', 'ULTRASOUND BOTH ARTERIAL &VENOUS DOPPLER SCAN SINGLE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 4400.0, 4400.0, NULL, NULL,
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
  'ultrasound-arterial-doppler-single-cadabams-30150', '30150', 'ULTRASOUND ARTERIAL DOPPLER SINGLE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2200.0, 2200.0, NULL, NULL,
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
  'ultrasound-carotid-vertebral-doppler-cadabams-30151', '30151', 'ULTRASOUND CAROTID &VERTEBRAL DOPPLER', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3000.0, 3000.0, NULL, NULL,
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
  'ultrasound-foetal-echo-cadabams-30152', '30152', 'ULTRASOUND FOETAL ECHO', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3000.0, 3000.0, NULL, NULL,
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
  'ultrasound-both-knee-cadabams-30153', '30153', 'ULTRASOUND BOTH KNEE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6400.0, 6400.0, NULL, NULL,
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
  'ultrasound-early-anamoly-scan-cadabams-30154', '30154', 'ULTRASOUND EARLY ANAMOLY SCAN', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2350.0, 2350.0, NULL, NULL,
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
  'ultrasound-guided-biopsy-cadabams-30155', '30155', 'ULTRASOUND GUIDED BIOPSY', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ultrasound-guided-fnac-cadabams-30156', '30156', 'ULTRASOUND GUIDED FNAC', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3500.0, 3500.0, NULL, NULL,
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
  'ultrasound-follicular-study-single-cadabams-30157', '30157', 'ULTRASOUND FOLLICULAR STUDY SINGLE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1200.0, 1200.0, NULL, NULL,
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
  'ultrasound-growth-scan-twins-cadabams-30158', '30158', 'ULTRASOUND GROWTH SCAN TWINS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 4600.0, 4600.0, NULL, NULL,
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
  'ultrasound-guided-aspiration-cadabams-30159', '30159', 'ULTRASOUND GUIDED ASPIRATION', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 5000.0, 5000.0, NULL, NULL,
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
  'ultrasound-penile-doppler-without-injection-cadabams-30160', '30160', 'ULTRASOUND PENILE DOPPLER WITHOUT INJECTION', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3500.0, 3500.0, NULL, NULL,
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
  'ultrasound-late-pregnancy-growth-scan-cadabams-30161', '30161', 'ULTRASOUND LATE PREGNANCY GROWTH SCAN', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2300.0, 2300.0, NULL, NULL,
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
  'ultrasound-mesentric-vessels-doppler-study-cadabams-30162', '30162', 'ULTRASOUND MESENTRIC VESSELS DOPPLER STUDY', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3000.0, 3000.0, NULL, NULL,
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
  'ultrasound-scrotal-doppler-cadabams-30163', '30163', 'ULTRASOUND SCROTAL DOPPLER', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2700.0, 2700.0, NULL, NULL,
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
  'ultrasound-nt-scan-pregnancy-cadabams-30164', '30164', 'ULTRASOUND NT SCAN (PREGNANCY)', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2200.0, 2200.0, NULL, NULL,
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
  'ultrasound-soft-tissue-cadabams-30165', '30165', 'ULTRASOUND SOFT TISSUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2700.0, 2700.0, NULL, NULL,
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
  'ultrasound-neuro-sonogram-cadabams-30166', '30166', 'ULTRASOUND NEURO SONOGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'ultrasound-pelvis-tvs-cadabams-30167', '30167', 'ULTRASOUND PELVIS (TVS)', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'ultrasound-nt-scan-twins-cadabams-30168', '30168', 'ULTRASOUND NT SCAN (TWINS)', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 4400.0, 4400.0, NULL, NULL,
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
  'ultrasound-parotid-gland-cadabams-30169', '30169', 'ULTRASOUND PAROTID GLAND', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2700.0, 2700.0, NULL, NULL,
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
  'ultrasound-pelvis-3d-cadabams-30170', '30170', 'ULTRASOUND PELVIS 3D', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3600.0, 3600.0, NULL, NULL,
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
  'ultrasound-scan-neck-cadabams-30171', '30171', 'ULTRASOUND SCAN NECK', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2700.0, 2700.0, NULL, NULL,
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
  'ultrasound-screening-abdomen-pelvis-cadabams-30172', '30172', 'ULTRASOUND SCREENING ABDOMEN & PELVIS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 900.0, 900.0, NULL, NULL,
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
  'ultrasound-scan-chest-cadabams-30173', '30173', 'ULTRASOUND SCAN CHEST', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2700.0, 2700.0, NULL, NULL,
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
  'ultrasound-renal-doppler-cadabams-30174', '30174', 'ULTRASOUND RENAL DOPPLER', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3500.0, 3500.0, NULL, NULL,
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
  'ultrasound-obs-fetal-well-being-cadabams-30175', '30175', 'ULTRASOUND OBS (FETAL WELL BEING)', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'ultrasound-small-part-cadabams-30176', '30176', 'ULTRASOUND SMALL PART', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2700.0, 2700.0, NULL, NULL,
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
  'ultrasound-obs-3d4d-cadabams-30177', '30177', 'ULTRASOUND OBS 3D/4D', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 5200.0, 5200.0, NULL, NULL,
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
  'ultrasound-early-pregnancytransabdominal-tas-cadabams-30178', '30178', 'ULTRASOUND EARLY PREGNANCY(TRANSABDOMINAL) / TAS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'ultrasound-thyroid-cadabams-30179', '30179', 'ULTRASOUND THYROID', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2700.0, 2700.0, NULL, NULL,
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
  'ultrasound-sonomammogram-cadabams-30180', '30180', 'ULTRASOUND SONOMAMMOGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2500.0, 2500.0, NULL, NULL,
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
  'ultrasound-kub-cadabams-30181', '30181', 'ULTRASOUND KUB', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1350.0, 1350.0, NULL, NULL,
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
  'ultrasound-nt-scantriplets-cadabams-30182', '30182', 'ULTRASOUND NT SCAN(TRIPLETS)', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 6600.0, 6600.0, NULL, NULL,
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
  'ultrasound-rpoc-tvs-cadabams-30183', '30183', 'ULTRASOUND RPOC TVS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'ultrasound-venous-doppler-both-lower-limbs-cadabams-30184', '30184', 'ULTRASOUND VENOUS DOPPLER BOTH LOWER LIMBS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 4400.0, 4400.0, NULL, NULL,
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
  'ultrasound-transrectal-cadabams-30185', '30185', 'ULTRASOUND TRANSRECTAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 4000.0, 4000.0, NULL, NULL,
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
  'ultrasound-late-pregnancy-growth-scantwins-cadabams-30186', '30186', 'ULTRASOUND LATE PREGNANCY GROWTH SCAN(TWINS)', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 4600.0, 4600.0, NULL, NULL,
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
  'ultrasound-abdomen-pelvis-4d-f-cadabams-30187', '30187', 'ULTRASOUND ABDOMEN & PELVIS 4D (F)', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3800.0, 3800.0, NULL, NULL,
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
  'ultrasound-datingviability-scan-tvs-cadabams-30188', '30188', 'ULTRASOUND DATING/VIABILITY SCAN - TVS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'ultrasound-venous-doppler-single-limb-cadabams-30189', '30189', 'ULTRASOUND VENOUS DOPPLER SINGLE LIMB', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2200.0, 2200.0, NULL, NULL,
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
  'x-ray-both-hips-ap-cadabams-30190', '30190', 'X-RAY BOTH HIPS AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-abdomen-ap-cadabams-30191', '30191', 'X-RAY ABDOMEN AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-wrist-aplat-cadabams-30192', '30192', 'X-RAY LEFT WRIST AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-a-c-joint-ap-view-cadabams-30193', '30193', 'X-RAY A C JOINT AP VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-ankle-ap-cadabams-30194', '30194', 'X-RAY LEFT ANKLE AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-abdomen-erect-cadabams-30195', '30195', 'X-RAY ABDOMEN ERECT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-adenoids-lateral-view-cadabams-30196', '30196', 'X-RAY ADENOIDS LATERAL VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-ankle-aplat-cadabams-30197', '30197', 'X-RAY LEFT ANKLE AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-barium-enema-cadabams-30198', '30198', 'X-RAY BARIUM ENEMA', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2000.0, 2000.0, NULL, NULL,
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
  'x-ray-left-ankle-lateral-cadabams-30199', '30199', 'X-RAY LEFT ANKLE LATERAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-atlas-axis-open-mouth-cadabams-30200', '30200', 'X-RAY ATLAS AXIS (OPEN MOUTH)', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-both-ankle-aplat-cadabams-30201', '30201', 'X-RAY BOTH ANKLE AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-both-clavicle-joint-ap-cadabams-30202', '30202', 'X-RAY BOTH CLAVICLE JOINT AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-abdomen-supine-cadabams-30203', '30203', 'X-RAY ABDOMEN SUPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-ankle-mortise-view-cadabams-30204', '30204', 'X-RAY ANKLE MORTISE VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-arm-ap-view-cadabams-30205', '30205', 'X-RAY ARM AP VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-both-feet-ap-cadabams-30206', '30206', 'X-RAY BOTH FEET AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-both-femur-ap-cadabams-30207', '30207', 'X-RAY BOTH FEMUR AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-bilateral-knee-ap-cadabams-30208', '30208', 'X-RAY BILATERAL KNEE AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-both-knee-aplat-cadabams-30209', '30209', 'X-RAY BOTH KNEE AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'x-ray-both-hand-aplat-cadabams-30210', '30210', 'X-RAY BOTH HAND AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'x-ray-both-heel-lateral-cadabams-30211', '30211', 'X-RAY BOTH HEEL LATERAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-both-hip-joint-aplat-cadabams-30212', '30212', 'X-RAY BOTH HIP JOINT  AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'x-ray-both-elbow-aplat-cadabams-30213', '30213', 'X-RAY BOTH ELBOW AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'x-ray-both-knee-standing-aplat-cadabams-30214', '30214', 'X-RAY BOTH KNEE STANDING AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'x-ray-both-foot-aplat-cadabams-30215', '30215', 'X-RAY BOTH FOOT AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'x-ray-both-hand-ap-cadabams-30216', '30216', 'X-RAY BOTH HAND AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-both-shoulder-aplat-cadabams-30217', '30217', 'X-RAY BOTH SHOULDER AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'xray-both-hand-pa-cadabams-30218', '30218', 'XRAY BOTH HAND PA', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-both-wrist-aplat-cadabams-30219', '30219', 'X-RAY BOTH WRIST AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'x-ray-calcaneous-cadabams-30220', '30220', 'X-RAY CALCANEOUS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-calcaneous-axial-view-cadabams-30221', '30221', 'X-RAY CALCANEOUS AXIAL VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 550.0, 550.0, NULL, NULL,
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
  'x-ray-cervical-spine-aplatob-cadabams-30222', '30222', 'X-RAY CERVICAL SPINE AP/LAT/OB', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'x-ray-cervical-spine-ap-cadabams-30223', '30223', 'X-RAY CERVICAL SPINE AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-cervical-spine-aplat-cadabams-30224', '30224', 'X-RAY CERVICAL SPINE AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-both-leg-aplat-cadabams-30225', '30225', 'X-RAY BOTH LEG AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'x-ray-both-mastiod-cadabams-30226', '30226', 'X-RAY BOTH MASTIOD', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-cervical-spine-lat-cadabams-30227', '30227', 'X-RAY CERVICAL SPINE LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-cervical-spine-oblique-cadabams-30228', '30228', 'X-RAY CERVICAL SPINE OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-cervical-spineap-lat-cadabams-30229', '30229', 'X-RAY CERVICAL SPINEAP/ LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-both-si-joint-ap-cadabams-30230', '30230', 'X-RAY BOTH SI JOINT AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-chest-aplat-cadabams-30231', '30231', 'X-RAY CHEST AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-chest-aplat-oblique-cadabams-30232', '30232', 'X-RAY CHEST AP/LAT /OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'x-ray-chest-apoblique-cadabams-30233', '30233', 'X-RAY CHEST AP/OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-chest-lat-cadabams-30234', '30234', 'X-RAY CHEST LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-chest-left-oblique-cadabams-30235', '30235', 'X-RAY CHEST LEFT OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-chest-pa-cadabams-30236', '30236', 'X-RAY CHEST PA', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-chest-palat-cadabams-30237', '30237', 'X-RAY CHEST PA/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-cervical-spine-extension-cadabams-30238', '30238', 'X-RAY CERVICAL SPINE EXTENSION', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-cervical-spine-flexion-lat-cadabams-30239', '30239', 'X-RAY CERVICAL SPINE FLEXION LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-coccyx-ap-cadabams-30240', '30240', 'X-RAY COCCYX AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-coccyx-aplat-cadabams-30241', '30241', 'X-RAY COCCYX AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-coccyx-cologram-cadabams-30242', '30242', 'X-RAY COCCYX COLOGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1250.0, 1250.0, NULL, NULL,
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
  'x-ray-coccyx-lat-cadabams-30243', '30243', 'X-RAY COCCYX LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-chest-ap-cadabams-30244', '30244', 'X-RAY CHEST AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-dorsal-spine-aplat-cadabams-30245', '30245', 'X-RAY DORSAL SPINE AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-cystourethrogram-cadabams-30246', '30246', 'X-RAY CYSTOURETHROGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 4000.0, 4000.0, NULL, NULL,
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
  'x-ray-left-elbow-aplat-cadabams-30247', '30247', 'X-RAY LEFT ELBOW AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-elbow-joint-ap-axial-view-cadabams-30248', '30248', 'X-RAY ELBOW JOINT AP/ AXIAL VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-dorsal-spine-lat-cadabams-30249', '30249', 'X-RAY DORSAL SPINE LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-l-s-spine-extension-flexion-cadabams-30250', '30250', 'X-RAY L S SPINE EXTENSION & FLEXION', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-chest-right-oblique-cadabams-30251', '30251', 'X-RAY CHEST RIGHT OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-clavicle-aplat-cadabams-30252', '30252', 'X-RAY CLAVICLE AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-finger-ap-oblique-cadabams-30253', '30253', 'X-RAY FINGER AP/ OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-left-elbow-joint-aplat-cadabams-30254', '30254', 'X-RAY LEFT ELBOW JOINT AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-femur-ap-cadabams-30255', '30255', 'X-RAY FEMUR AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-fistulogram-cadabams-30256', '30256', 'X-RAY FISTULOGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 4500.0, 4500.0, NULL, NULL,
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
  'x-ray-femur-aplat-cadabams-30257', '30257', 'X-RAY FEMUR AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-right-hand-aplat-cadabams-30258', '30258', 'X-RAY RIGHT HAND AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-finger-ap-cadabams-30259', '30259', 'X-RAY  FINGER AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-d-l-spine-aplat-cadabams-30260', '30260', 'X-RAY D L SPINE AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-finger-aplat-cadabams-30261', '30261', 'X-RAY FINGER AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-elbow-joint-ap-cadabams-30262', '30262', 'X-RAY ELBOW JOINT AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-foot-aplatob-cadabams-30263', '30263', 'X-RAY  LEFT FOOT AP/LAT/OB', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'x-ray-left-hand-apoblique-cadabams-30264', '30264', 'X-RAY LEFT HAND AP/OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-face-cadabams-30265', '30265', 'X-RAY FACE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-forearm-aplat-cadabams-30266', '30266', 'X-RAY FOREARM AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-frog-view-lateral-cadabams-30267', '30267', 'X-RAY FROG VIEW LATERAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-hip-joint-aplat-cadabams-30268', '30268', 'X-RAY LEFT HIP JOINT AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-left-hand-aplatob-cadabams-30269', '30269', 'X-RAY  LEFT HAND AP/LAT/OB', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'xray-finger-aplat-cadabams-30270', '30270', 'XRAY FINGER AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-left-knee-lat-cadabams-30271', '30271', 'X-RAY  LEFT KNEE LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-right-hip-joint-aplat-cadabams-30272', '30272', 'X-RAY  RIGHT HIP JOINT AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-full-spine-ap-viiew-cadabams-30273', '30273', 'X-RAY FULL SPINE AP VIIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2000.0, 2000.0, NULL, NULL,
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
  'x-ray-left-knee-aplat-cadabams-30274', '30274', 'X-RAY  LEFT KNEE AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-left-hip-joint-lat-cadabams-30275', '30275', 'X-RAY LEFT  HIP JOINT LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-right-humerus-aplateral-cadabams-30276', '30276', 'X-RAY RIGHT HUMERUS AP/LATERAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-l-s-spine-forward-bending-lateral-cadabams-30277', '30277', 'X-RAY L S SPINE FORWARD BENDING LATERAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-infantogram-cadabams-30278', '30278', 'X-RAY INFANTOGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1200.0, 1200.0, NULL, NULL,
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
  'xray-knee-skyline-view-cadabams-30279', '30279', 'XRAY KNEE SKYLINE VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-knee-ap-cadabams-30280', '30280', 'X-RAY  LEFT KNEE AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-leg-ap-cadabams-30281', '30281', 'X-RAY LEG AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-knee-skyline-view-cadabams-30282', '30282', 'X-RAY KNEE SKYLINE VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-lateral-cephalogram-cadabams-30283', '30283', 'X-RAY LATERAL CEPHALOGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-kub-cadabams-30284', '30284', 'X-RAY KUB', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-l-s-spine-backward-bending-lateral-view-cadabams-30285', '30285', 'X-RAY L S SPINE BACKWARD BENDING LATERAL VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-larynx-lat-cadabams-30286', '30286', 'X-RAY LARYNX LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-hand-ap-view-cadabams-30287', '30287', 'X-RAY LEFT HAND  AP VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-lumber-spine-oblique-cadabams-30288', '30288', 'X-RAY LUMBER SPINE OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-hand-aplat-cadabams-30289', '30289', 'X-RAY LEFT HAND AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-leg-aplat-cadabams-30290', '30290', 'X-RAY LEG AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-lumber-spine-aplatoblique-cadabams-30291', '30291', 'X-RAY LUMBER SPINE AP/LAT/OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'x-ray-ls-spine-ap-cadabams-30292', '30292', 'X-RAY LS SPINE  AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-mortice-view-cadabams-30293', '30293', 'X-RAY MORTICE VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-ls-spine-aplat-cadabams-30294', '30294', 'X-RAY LS SPINE AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-left-heel-lat-cadabams-30295', '30295', 'X-RAY LEFT HEEL LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-nasal-bone-lateral-cadabams-30296', '30296', 'X-RAY NASAL BONE LATERAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-nasopharynx-lat-cadabams-30297', '30297', 'X-RAY NASOPHARYNX LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-heel-aplat-cadabams-30298', '30298', 'X-RAY LEFT HEEL AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-left-hip-joint-ap-cadabams-30299', '30299', 'X-RAY LEFT HIP JOINT  AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-leg-lateral-cadabams-30300', '30300', 'X-RAY LEG LATERAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-mcu-cadabams-30301', '30301', 'X-RAY MCU', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3500.0, 3500.0, NULL, NULL,
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
  'x-ray-mostoid-prosc-cadabams-30302', '30302', 'X-RAY MOSTOID PROSC', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-neck-lat-view-cadabams-30303', '30303', 'X-RAY NECK LAT VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-nasal-bone-lat-cadabams-30304', '30304', 'X-RAY NASAL BONE LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-orbit-aplat-cadabams-30305', '30305', 'X-RAY ORBIT AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-neck-ap-lat-cadabams-30306', '30306', 'X-RAY NECK AP & LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-ls-spine-lat-cadabams-30307', '30307', 'X-RAY LS SPINE LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-mastiod-cadabams-30308', '30308', 'X-RAY MASTIOD', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-pelvis-ap-cadabams-30309', '30309', 'X-RAY PELVIS   AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-of-si-joint-ap-view-cadabams-30310', '30310', 'X-RAY OF SI JOINT AP VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-opg-cadabams-30311', '30311', 'X-RAY OPG', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-orbit-ap-cadabams-30312', '30312', 'X-RAY ORBIT  AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-pnswater-view-cadabams-30313', '30313', 'X-RAY PNS(WATER VIEW)', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-scapula-aplat-cadabams-30314', '30314', 'X-RAY SCAPULA AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-mandible-cadabams-30315', '30315', 'X-RAY MANDIBLE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-mandible-lat-oblique-cadabams-30316', '30316', 'X-RAY MANDIBLE LAT /OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-neck-pa-cadabams-30317', '30317', 'X-RAY NECK PA', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-shoulder-apaxial-view-cadabams-30318', '30318', 'X-RAY SHOULDER AP/AXIAL VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-rgu-cadabams-30319', '30319', 'X-RAY RGU', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3500.0, 3500.0, NULL, NULL,
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
  'x-ray-pelvis-supine-cadabams-30320', '30320', 'X-RAY PELVIS SUPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-si-joint-ap-cadabams-30321', '30321', 'X-RAY SI JOINT AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-shoulder-aplat-cadabams-30322', '30322', 'X-RAY LEFT SHOULDER AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-scapula-ap-cadabams-30323', '30323', 'X-RAY SCAPULA AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-scapula-lat-cadabams-30324', '30324', 'X-RAY SCAPULA LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-shoulder-ap-cadabams-30325', '30325', 'X-RAY SHOULDER AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-pns-cadabams-30326', '30326', 'X-RAY PNS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-pelvis-lumber-spine-aplat-cadabams-30327', '30327', 'X-RAY PELVIS  LUMBER SPINE AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-right-clavicle-ap-cadabams-30328', '30328', 'X-RAY RIGHT CLAVICLE AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-shoulder-apobl-cadabams-30329', '30329', 'X-RAY SHOULDER AP/OBL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-skull-ap-cadabams-30330', '30330', 'X-RAY SKULL AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-thigh-aplat-cadabams-30331', '30331', 'X-RAY THIGH AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-thoracic-spine-aplat-cadabams-30332', '30332', 'X-RAY THORACIC SPINE AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-plain-kub-cadabams-30333', '30333', 'X-RAY PLAIN KUB', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-tmj-cadabams-30334', '30334', 'X-RAY  LEFT TMJ', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-both-knees-skyline-view-cadabams-30335', '30335', 'X-RAY BOTH KNEES SKYLINE VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-styloid-process-cadabams-30336', '30336', 'X-RAY STYLOID PROCESS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 600.0, 600.0, NULL, NULL,
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
  'x-ray-tempomandibular-aplat-cadabams-30337', '30337', 'X-RAY TEMPOMANDIBULAR AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-thoracic-spine-lat-cadabams-30338', '30338', 'X-RAY THORACIC SPINE LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-urethrogram-cadabams-30339', '30339', 'X-RAY URETHROGRAM', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1750.0, 1750.0, NULL, NULL,
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
  'x-ray-thoraco-lumber-spine-aplat-cadabams-30340', '30340', 'X-RAY THORACO-LUMBER SPINE AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-left-foot-apoblique-cadabams-30341', '30341', 'X-RAY LEFT FOOT AP/OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-thorasic-aplatoblique-cadabams-30342', '30342', 'X-RAY THORASIC AP/LAT/OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'x-ray-thumb-finger-aplateral-cadabams-30343', '30343', 'X-RAY THUMB FINGER AP/LATERAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-wrist-joint-apscaphoid-cadabams-30344', '30344', 'X-RAY WRIST JOINT AP/SCAPHOID', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-towns-view-cadabams-30345', '30345', 'X-RAY TOWNS VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-both-nasal-bone-lat-cadabams-30346', '30346', 'X-RAY BOTH NASAL BONE LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-toe-aplat-cadabams-30347', '30347', 'X-RAY TOE AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-wrist-ap-view-cadabams-30348', '30348', 'X-RAY WRIST AP VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-wrist-ap-oblique-cadabams-30349', '30349', 'X-RAY LEFT WRIST AP /OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-thumb-oblique-cadabams-30350', '30350', 'X-RAY THUMB OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-foot-ap-view-cadabams-30351', '30351', 'X-RAY  LEFT FOOT AP VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-right-wrist-aplat-cadabams-30352', '30352', 'X-RAY RIGHT WRIST AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-skull-pa-cadabams-30353', '30353', 'X-RAY SKULL PA', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-right-ankle-lateral-cadabams-30354', '30354', 'X-RAY RIGHT ANKLE LATERAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-right-ankle-aplat-cadabams-30355', '30355', 'X-RAY RIGHT ANKLE AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-left-foot-lateral-cadabams-30356', '30356', 'X-RAY LEFT FOOT LATERAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-right-foot-ap-cadabams-30357', '30357', 'X-RAY RIGHT FOOT AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-right-foot-lateral-cadabams-30358', '30358', 'X-RAY RIGHT FOOT LATERAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-right-foot-aplat-cadabams-30359', '30359', 'X-RAY RIGHT FOOT AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-right-foot-apoblique-cadabams-30360', '30360', 'X-RAY RIGHT FOOT AP/OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-skull-apalt-cadabams-30361', '30361', 'X-RAY SKULL AP/ALT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-sacram-aplat-cadabams-30362', '30362', 'X-RAY SACRAM AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-right-knee-lateral-cadabams-30363', '30363', 'X-RAY RIGHT KNEE LATERAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-right-knee-aplat-cadabams-30364', '30364', 'X-RAY RIGHT KNEE AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-right-hand-ap-cadabams-30365', '30365', 'X-RAY RIGHT HAND AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-right-hand-apoblique-cadabams-30366', '30366', 'X-RAY RIGHT HAND AP/OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-skull-lat-cadabams-30367', '30367', 'X-RAY SKULL LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-ankle-apoblique-cadabams-30368', '30368', 'X-RAY LEFT ANKLE AP/OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-both-heels-aplat-cadabams-30369', '30369', 'X-RAY BOTH HEELS AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1700.0, 1700.0, NULL, NULL,
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
  'x-ray-both-tmj-views-cadabams-30370', '30370', 'X-RAY BOTH TMJ VIEWS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-right-elbow-aplat-cadabams-30371', '30371', 'X-RAY RIGHT ELBOW AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-right-tmj-cadabams-30372', '30372', 'X-RAY RIGHT TMJ', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-right-heel-lateral-cadabams-30373', '30373', 'X-RAY RIGHT HEEL LATERAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-right-heel-aplat-cadabams-30374', '30374', 'X-RAY RIGHT HEEL AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-right-hip-joint-ap-cadabams-30375', '30375', 'X-RAY RIGHT HIP JOINT AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-right-hip-joint-lateral-cadabams-30376', '30376', 'X-RAY RIGHT HIP JOINT LATERAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-thoracic-lumbar-spine-erect-cadabams-30377', '30377', 'X-RAY THORACIC LUMBAR SPINE ERECT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-left-shoulder-ap-cadabams-30378', '30378', 'X-RAY LEFT SHOULDER AP', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-right-shoulder-aplat-cadabams-30379', '30379', 'X-RAY RIGHT SHOULDER AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-c-spine-extension-flexion-cadabams-30380', '30380', 'X-RAY C SPINE EXTENSION & FLEXION', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-both-knees-ap-standing-cadabams-30381', '30381', 'X-RAY BOTH KNEES AP STANDING', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1000.0, 1000.0, NULL, NULL,
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
  'x-ray-cystogram-apoblique-cadabams-30382', '30382', 'X-RAY CYSTOGRAM AP/OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2800.0, 2800.0, NULL, NULL,
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
  'x-ray-right-wrist-scaphoid-view-cadabams-30383', '30383', 'X-RAY RIGHT WRIST SCAPHOID VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-whole-spine-aplat-cadabams-30384', '30384', 'X-RAY WHOLE SPINE AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2000.0, 2000.0, NULL, NULL,
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
  'x-ray-left-foot-oblique-cadabams-30385', '30385', 'X-RAY LEFT FOOT OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-foot-aplat-cadabams-30386', '30386', 'X-RAY LEFT FOOT AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-left-leg-aplat-cadabams-30387', '30387', 'X-RAY LEFT LEG AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-wrist-aplat-cadabams-30388', '30388', 'X-RAY WRIST AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-right-greater-toe-apoblique-cadabams-30389', '30389', 'X-RAY RIGHT GREATER TOE AP/OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-right-foot-oblique-cadabams-30390', '30390', 'X-RAY RIGHT FOOT OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-right-hand-oblique-cadabams-30391', '30391', 'X-RAY RIGHT HAND OBLIQUE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-wrist-scaphoid-view-cadabams-30392', '30392', 'X-RAY LEFT WRIST SCAPHOID VIEW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-left-wrist-lateral-cadabams-30393', '30393', 'X-RAY LEFT WRIST LATERAL', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 500.0, 500.0, NULL, NULL,
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
  'x-ray-right-arm-aplat-cadabams-30394', '30394', 'X-RAY RIGHT ARM AP/LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-l-s-spine-lat-flexionextension-cadabams-30395', '30395', 'X-RAY L S SPINE LAT FLEXION/EXTENSION', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 850.0, 850.0, NULL, NULL,
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
  'x-ray-both-hips-lat-cadabams-30396', '30396', 'X-RAY BOTH HIPS LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1000.0, 1000.0, NULL, NULL,
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
  'x-ray-both-ankle-lat-cadabams-30397', '30397', 'X-RAY BOTH ANKLE LAT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1000.0, 1000.0, NULL, NULL,
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
  'x-ray-d-l-spine-ap-left-and-right-bending-cadabams-30398', '30398', 'X-RAY D L SPINE AP LEFT AND RIGHT BENDING', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1500.0, 1500.0, NULL, NULL,
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
  'bmd-body-fat-analysis-cadabams-30399', '30399', 'BMD - BODY FAT ANALYSIS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 5000.0, 5000.0, NULL, NULL,
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
  'bmd-bhip-spine-cadabams-30400', '30400', 'BMD - BHIP & SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 3500.0, 3500.0, NULL, NULL,
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
  'bmd-spine-cadabams-30401', '30401', 'BMD SPINE', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2500.0, 2500.0, NULL, NULL,
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
  'bmd-whole-body-hip-spine-forearm-cadabams-30402', '30402', 'BMD WHOLE BODY (HIP, SPINE & FOREARM)', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 5000.0, 5000.0, NULL, NULL,
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
  'ecg-cadabams-30403', '30403', 'ECG', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 400.0, 400.0, NULL, NULL,
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
  'echo-cadabams-30404', '30404', 'ECHO', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2000.0, 2000.0, NULL, NULL,
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
  'tmt-cadabams-30405', '30405', 'TMT', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2000.0, 2000.0, NULL, NULL,
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
  'endoscopy-cadabams-30406', '30406', 'ENDOSCOPY', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 7000.0, 7000.0, NULL, NULL,
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
  'colonoscopy-cadabams-30407', '30407', 'COLONOSCOPY', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
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
  'endoscopy-colonoscopy-biopsy-procedure-charges-cadabams-30408', '30408', 'ENDOSCOPY / COLONOSCOPY BIOPSY PROCEDURE CHARGES', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2000.0, 2000.0, NULL, NULL,
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
  'nerve-conduction-reporting-charges-cadabams-30409', '30409', 'NERVE CONDUCTION REPORTING CHARGES', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1000.0, 1000.0, NULL, NULL,
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
  'nerve-conduction-study-single-limb-cadabams-30410', '30410', 'NERVE CONDUCTION STUDY- SINGLE LIMB', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 2500.0, 2500.0, NULL, NULL,
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
  'nerve-conduction-study-two-limbs-cadabams-30411', '30411', 'NERVE CONDUCTION STUDY - TWO LIMBS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 5000.0, 5000.0, NULL, NULL,
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
  'nerve-conduction-study-upper-and-lower-limbs-cadabams-30412', '30412', 'NERVE CONDUCTION STUDY - UPPER AND LOWER LIMBS', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 7500.0, 7500.0, NULL, NULL,
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
  'eeg-cadabams-30413', '30413', 'EEG', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 5500.0, 5500.0, NULL, NULL,
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
  'x-ray-hsg-cadabams-30414', '30414', 'X-RAY HSG', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 5500.0, 5500.0, NULL, NULL,
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
  'impedance-audiometry-cadabams-30415', '30415', 'IMPEDANCE AUDIOMETRY', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1500.0, 1500.0, NULL, NULL,
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
  'pure-tone-audiometry-cadabams-30416', '30416', 'PURE TONE AUDIOMETRY', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 1000.0, 1000.0, NULL, NULL,
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
  'x-ray-barium-swallow-cadabams-30417', '30417', 'X-RAY BARIUM SWALLOW', 'imaging', 'Imaging & Radiology', 'Radiology', 'Cadabams',
  'Diagnostic Radiology procedure performed by Cadabams.', 'Diagnostic Radiology procedure performed by Cadabams.', 4500.0, 4500.0, NULL, NULL,
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
  'genomepatrihealth-wellness-genomics', 'GEN-1', 'Genomepatri(Health & Wellness)', 'genetics', 'Genomics & Genetics', 'Genetic Wellness', 'Health Express Genetics',
  'Comprehensive genetic test for overall wellness and preventive insights.', 'Comprehensive genetic test for overall wellness and preventive insights.', 11999.0, 11999.0, NULL, NULL,
  '7-14 Days', 'Saliva/Blood collection kit provided', 'Saliva / Blood', TRUE,
  FALSE, '[]'::jsonb, 0, 'genomics', 'Genomics'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mapmybiome-gutmicrobiome-genomics', 'GEN-1', 'MapMyBiome (GutMicrobiome)', 'genetics', 'Genomics & Genetics', 'Gut Health', 'Health Express Genetics',
  NULL, NULL, 14999.0, 14999.0, NULL, NULL,
  '7-14 Days', 'Saliva/Blood collection kit provided', 'Saliva / Blood', TRUE,
  FALSE, '[]'::jsonb, 0, 'genomics', 'Genomics'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'cardiomap-heart-panel-genomics', 'GEN-1', 'Cardiomap (Heart Panel)', 'genetics', 'Genomics & Genetics', 'Cardiac Health', 'Health Express Genetics',
  'Detects heart -related genetic risks and helps in preventive care.', 'Detects heart -related genetic risks and helps in preventive care.', 6999.0, 6999.0, NULL, NULL,
  '7-14 Days', 'Saliva/Blood collection kit provided', 'Saliva / Blood', TRUE,
  FALSE, '[]'::jsonb, 0, 'genomics', 'Genomics'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'medicamap-genomics', 'GEN-1', 'Medicamap', 'genetics', 'Genomics & Genetics', 'Pharmacogenomics', 'Health Express Genetics',
  'Helps understand drug response based on genetic profile; used by doctors and hospitals.', 'Helps understand drug response based on genetic profile; used by doctors and hospitals.', 6999.0, 6999.0, NULL, NULL,
  '7-14 Days', 'Saliva/Blood collection kit provided', 'Saliva / Blood', TRUE,
  FALSE, '[]'::jsonb, 0, 'genomics', 'Genomics'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'chromosomal-micro-array-pre-natal-genomics', 'GEN-1', 'Chromosomal Micro Array (Pre-Natal)', 'genetics', 'Genomics & Genetics', 'CMA', 'Health Express Genetics',
  NULL, NULL, 18000.0, 18000.0, NULL, NULL,
  '7-14 Days', 'Saliva/Blood collection kit provided', 'Saliva / Blood', TRUE,
  FALSE, '[]'::jsonb, 0, 'genomics', 'Genomics'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mapmyepigenome-genomics', 'GEN-1', 'Mapmyepigenome', 'genetics', 'Genomics & Genetics', 'Epigenetics', 'Health Express Genetics',
  'Advanced analysis of biological age, health span, and lifestyle impact markers.', 'Advanced analysis of biological age, health span, and lifestyle impact markers.', 85000.0, 85000.0, NULL, NULL,
  '7-14 Days', 'Saliva/Blood collection kit provided', 'Saliva / Blood', TRUE,
  FALSE, '[]'::jsonb, 0, 'genomics', 'Genomics'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'ultimate-bio-hacking-phase-1-genomics', 'GEN-1', 'Ultimate Bio Hacking Phase -1', 'genetics', 'Genomics & Genetics', 'Foundational Testing', 'Health Express Genetics',
  NULL, NULL, 200000.0, 200000.0, NULL, NULL,
  '7-14 Days', 'Saliva/Blood collection kit provided', 'Saliva / Blood', TRUE,
  FALSE, '[]'::jsonb, 0, 'genomics', 'Genomics'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'whole-exome-sequence-genomics', 'GEN-1', 'Whole Exome Sequence', 'genetics', 'Genomics & Genetics', 'WES', 'Health Express Genetics',
  NULL, NULL, 26000.0, 26000.0, NULL, NULL,
  '7-14 Days', 'Saliva/Blood collection kit provided', 'Saliva / Blood', TRUE,
  FALSE, '[]'::jsonb, 0, 'genomics', 'Genomics'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'whole-genome-sequence-genomics', 'GEN-1', 'Whole Genome Sequence', 'genetics', 'Genomics & Genetics', 'WGS', 'Health Express Genetics',
  NULL, NULL, 89000.0, 89000.0, NULL, NULL,
  '7-14 Days', 'Saliva/Blood collection kit provided', 'Saliva / Blood', TRUE,
  FALSE, '[]'::jsonb, 0, 'genomics', 'Genomics'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mapmyspark-genomics', 'GEN-1', 'Mapmyspark', 'genetics', 'Genomics & Genetics', 'Mitochondrial Wellness', 'Health Express Genetics',
  NULL, NULL, 14999.0, 14999.0, NULL, NULL,
  '7-14 Days', 'Saliva/Blood collection kit provided', 'Saliva / Blood', TRUE,
  FALSE, '[]'::jsonb, 0, 'genomics', 'Genomics'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'hex-basic-health-check-preventive', 'PKG-PREV-3', 'HEX Basic Health Check', 'health-packages', 'Health Packages', 'Preventive Health', 'Health Express Network',
  'Comprehensive preventive checkup panel containing 9 diagnostic parameters.', 'Comprehensive preventive checkup panel containing 9 diagnostic parameters.', 4000.0, 4000.0, NULL, NULL,
  '24 Hours', '10-12 hours fasting required before sample collection.', 'Blood & Urine', TRUE,
  FALSE, '["CBC", "ESR", "Fasting Blood Sugar", "HbA1c", "Urine Routine Analysis", "Lipid Profile", "Liver Function Test", "Renal Function Test", "Thyroid Profile (T3, T4, TSH)"]'::jsonb, 9, 'package', 'Preventive Care'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'hex-master-health-check-preventive', 'PKG-PREV-4', 'HEX Master Health Check', 'health-packages', 'Health Packages', 'Preventive Health', 'Health Express Network',
  'Comprehensive preventive checkup panel containing 16 diagnostic parameters.', 'Comprehensive preventive checkup panel containing 16 diagnostic parameters.', 9900.0, 9900.0, NULL, NULL,
  '24 Hours', '10-12 hours fasting required before sample collection.', 'Blood & Urine', TRUE,
  FALSE, '["CBC", "ESR", "Fasting Blood Sugar", "HbA1c", "Urine Routine Analysis", "Lipid Profile", "Liver Function Test", "Renal Function Test", "Thyroid Profile (T3, T4, TSH)", "Vitamin D", "Vitamin B12", "ECG", "Chest X-Ray", "Ultrasound Abdomen", "Physician Evaluation", "Dietician/Wellness"]'::jsonb, 16, 'package', 'Preventive Care'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'hex-whole-body-comprehesive-preventive', 'PKG-PREV-5', 'HEX Whole Body Comprehesive', 'health-packages', 'Health Packages', 'Preventive Health', 'Health Express Network',
  'Comprehensive preventive checkup panel containing 29 diagnostic parameters.', 'Comprehensive preventive checkup panel containing 29 diagnostic parameters.', 19000.0, 19000.0, NULL, NULL,
  '24 Hours', '10-12 hours fasting required before sample collection.', 'Blood & Urine', TRUE,
  FALSE, '["CBC", "ESR", "Fasting Blood Sugar", "HbA1c", "Urine Routine Analysis", "Urine Culture & Sensitiviy", "Lipid Profile", "Liver Function Test", "Renal Function Test", "Thyroid Profile (T3, T4, TSH)", "Vitamin D", "Vitamin B12", "Electrolyte Profile (Na+,K+,CL)", "Bone Marker - Calcium", "Bone Marker - Phosphorus", "Total Iron", "Testosterone", "Magnesium", "Stool Occult Blood", "ECG", "2D Echo", "TMT (Stress Test)", "Chest X-Ray", "Ultrasound Abdomen", "Physician Evaluation", "Cardiology", "ENT", "Ophthalmology", "Dietician/Wellness"]'::jsonb, 29, 'package', 'Preventive Care'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'hex-fever-profile-preventive', 'PKG-PREV-6', 'HEX Fever Profile', 'health-packages', 'Health Packages', 'Preventive Health', 'Health Express Network',
  'Comprehensive preventive checkup panel containing 7 diagnostic parameters.', 'Comprehensive preventive checkup panel containing 7 diagnostic parameters.', 3350.0, 3350.0, NULL, NULL,
  '24 Hours', '10-12 hours fasting required before sample collection.', 'Blood & Urine', TRUE,
  FALSE, '["CBC", "HbA1c", "Urine Routine Analysis", "Widal", "Dengue Profile", "C-Reactive Protein", "Malarial Parasite"]'::jsonb, 7, 'package', 'Preventive Care'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'hex-pregnancy-profile-preventive', 'PKG-PREV-7', 'HEX Pregnancy Profile', 'health-packages', 'Health Packages', 'Preventive Health', 'Health Express Network',
  'Comprehensive preventive checkup panel containing 10 diagnostic parameters.', 'Comprehensive preventive checkup panel containing 10 diagnostic parameters.', 4500.0, 4500.0, NULL, NULL,
  '24 Hours', '10-12 hours fasting required before sample collection.', 'Blood & Urine', TRUE,
  FALSE, '["CBC", "HbA1c", "Urine Routine Analysis", "Thyroid Profile (T3, T4, TSH)", "Serum Creatinine", "Blood Group", "HIV", "HBsAG", "HCV", "VDRL"]'::jsonb, 10, 'package', 'Preventive Care'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'hex-primary-preventive-health-checkup-preventive', 'PKG-PREV-8', 'HEX Primary Preventive Health Checkup', 'health-packages', 'Health Packages', 'Preventive Health', 'Health Express Network',
  'Comprehensive preventive checkup panel containing 16 diagnostic parameters.', 'Comprehensive preventive checkup panel containing 16 diagnostic parameters.', 8350.0, 8350.0, NULL, NULL,
  '24 Hours', '10-12 hours fasting required before sample collection.', 'Blood & Urine', TRUE,
  FALSE, '["CBC", "ESR", "Fasting Blood Sugar", "HbA1c", "Urine Routine Analysis", "Lipid Profile", "Liver Function Test", "Renal Function Test", "Thyroid Profile (T3, T4, TSH)", "Vitamin D", "Vitamin B12", "Electrolyte Profile (Na+,K+,CL)", "Bone Marker - Calcium", "Bone Marker - Phosphorus", "Physician Evaluation", "Dietician/Wellness"]'::jsonb, 16, 'package', 'Preventive Care'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'hex-wonen-wellness-preventive', 'PKG-PREV-9', 'HEX Wonen Wellness', 'health-packages', 'Health Packages', 'Preventive Health', 'Health Express Network',
  'Comprehensive preventive checkup panel containing 10 diagnostic parameters.', 'Comprehensive preventive checkup panel containing 10 diagnostic parameters.', 3950.0, 3950.0, NULL, NULL,
  '24 Hours', '10-12 hours fasting required before sample collection.', 'Blood & Urine', TRUE,
  FALSE, '["CBC", "Fasting Blood Sugar", "HbA1c", "Urine Routine Analysis", "Liver Function Test", "Thyroid Profile (T3, T4, TSH)", "Bone Marker - Calcium", "Bone Marker - Phosphorus", "Total Iron", "Peripheral Smear"]'::jsonb, 10, 'package', 'Preventive Care'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'hex-routine-diabetic-checkup-preventive', 'PKG-PREV-10', 'HEX Routine Diabetic Checkup', 'health-packages', 'Health Packages', 'Preventive Health', 'Health Express Network',
  'Comprehensive preventive checkup panel containing 7 diagnostic parameters.', 'Comprehensive preventive checkup panel containing 7 diagnostic parameters.', 3300.0, 3300.0, NULL, NULL,
  '24 Hours', '10-12 hours fasting required before sample collection.', 'Blood & Urine', TRUE,
  FALSE, '["CBC", "Fasting Blood Sugar", "HbA1c", "Urine Routine Analysis", "Lipid Profile", "Liver Function Test", "Renal Function Test"]'::jsonb, 7, 'package', 'Preventive Care'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'hex-pediatric-checkup-preventive', 'PKG-PREV-11', 'HEX Pediatric Checkup', 'health-packages', 'Health Packages', 'Preventive Health', 'Health Express Network',
  'Comprehensive preventive checkup panel containing 8 diagnostic parameters.', 'Comprehensive preventive checkup panel containing 8 diagnostic parameters.', 4450.0, 4450.0, NULL, NULL,
  '24 Hours', '10-12 hours fasting required before sample collection.', 'Blood & Urine', TRUE,
  FALSE, '["CBC", "Urine Routine Analysis", "Thyroid Profile (T3, T4, TSH)", "Vitamin D", "Vitamin B12", "Bone Marker - Calcium", "Total Iron", "Blood Group"]'::jsonb, 8, 'package', 'Preventive Care'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mens-sexual-health-essential-sexual-health-sexual-wellness', 'PKG-SEX-2', 'Men’s Sexual Health - Essential Sexual Health', 'health-packages', 'Health Packages', 'Sexual Wellness', 'Health Express Network',
  'Specialized sexual health and fertility package including 9 diagnostic parameters & specialist consultation.', 'Specialized sexual health and fertility package including 9 diagnostic parameters & specialist consultation.', 8750.0, 8750.0, NULL, NULL,
  '24-48 Hours', 'Confidential home sample pickup. No fasting required unless specified.', 'Blood & Urine', TRUE,
  FALSE, '["HIV 1 & 2 Ag/Ab", "Hepatitis B Surface Antigen (HBsAg)", "Hepatitis C Antibody HCV", "Syphilis (VDRL)", "Chlamydia PCR (Urine) - IgG IgM", "Complete Blood Count (CBC)", "HbA1c", "Urine Routine Examination", "Urologist / Andrologist"]'::jsonb, 9, 'package', 'Sexual Wellness'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mens-sexual-health-comprehensive-sexual-wellness-sexual-wellness', 'PKG-SEX-3', 'Men’s Sexual Health - Comprehensive Sexual Wellness', 'health-packages', 'Health Packages', 'Sexual Wellness', 'Health Express Network',
  'Specialized sexual health and fertility package including 23 diagnostic parameters & specialist consultation.', 'Specialized sexual health and fertility package including 23 diagnostic parameters & specialist consultation.', 18750.0, 18750.0, NULL, NULL,
  '24-48 Hours', 'Confidential home sample pickup. No fasting required unless specified.', 'Blood & Urine', TRUE,
  FALSE, '["HIV 1 & 2 Ag/Ab", "Hepatitis B Surface Antigen (HBsAg)", "Hepatitis C Antibody HCV", "Syphilis (VDRL)", "Chlamydia PCR (Urine) - IgG IgM", "Complete Blood Count (CBC)", "HbA1c", "Urine Routine Examination", "Lipid Profile", "Liver Function Test", "Kidney Function Test", "Vitamin D", "Vitamin B12", "Total Testosterone", "Free Testosterone", "LH (Luteinizing Hormone)", "FSH (Follicular Stimulating Hormone)", "PRL (Prolactin)", "Estradiol (E2)", "TSH (Thyroid Stimulating Hormone)", "Semen Analysis", "Urologist / Andrologist", "Dietitian"]'::jsonb, 23, 'package', 'Sexual Wellness'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'mens-sexual-health-executive-mens-reproductive-health-sexual-wellness', 'PKG-SEX-4', 'Men’s Sexual Health - Executive Men’s Reproductive Health', 'health-packages', 'Health Packages', 'Sexual Wellness', 'Health Express Network',
  'Specialized sexual health and fertility package including 27 diagnostic parameters & specialist consultation.', 'Specialized sexual health and fertility package including 27 diagnostic parameters & specialist consultation.', 23750.0, 23750.0, NULL, NULL,
  '24-48 Hours', 'Confidential home sample pickup. No fasting required unless specified.', 'Blood & Urine', TRUE,
  FALSE, '["HIV 1 & 2 Ag/Ab", "Hepatitis B Surface Antigen (HBsAg)", "Hepatitis C Antibody HCV", "Syphilis (VDRL)", "Chlamydia PCR (Urine) - IgG IgM", "Complete Blood Count (CBC)", "HbA1c", "Urine Routine Examination", "Lipid Profile", "Liver Function Test", "Kidney Function Test", "Vitamin D", "Vitamin B12", "Total Testosterone", "Free Testosterone", "LH (Luteinizing Hormone)", "FSH (Follicular Stimulating Hormone)", "PRL (Prolactin)", "Estradiol (E2)", "TSH (Thyroid Stimulating Hormone)", "Semen Analysis", "PSA (Age >45 years or high-risk individuals)", "Scrotal Ultrasound (if indicated)", "Fertility Specialist", "Sexual Medicine Specialist", "Urologist / Andrologist", "Dietitian"]'::jsonb, 27, 'package', 'Sexual Wellness'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'womens-sexual-health-essential-sexual-health-sexual-wellness', 'PKG-SEX-5', 'Women’s Sexual Health - Essential Sexual Health', 'health-packages', 'Health Packages', 'Sexual Wellness', 'Health Express Network',
  'Specialized sexual health and fertility package including 9 diagnostic parameters & specialist consultation.', 'Specialized sexual health and fertility package including 9 diagnostic parameters & specialist consultation.', 8750.0, 8750.0, NULL, NULL,
  '24-48 Hours', 'Confidential home sample pickup. No fasting required unless specified.', 'Blood & Urine', TRUE,
  FALSE, '["HIV 1 & 2 Ag/Ab", "Hepatitis B Surface Antigen (HBsAg)", "Hepatitis C Antibody HCV", "Syphilis (VDRL)", "Chlamydia PCR (Urine) - IgG IgM", "Complete Blood Count (CBC)", "HbA1c", "Urine Routine Examination", "General Physician"]'::jsonb, 9, 'package', 'Sexual Wellness'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'womens-sexual-health-comprehensive-womens-wellness-sexual-wellness', 'PKG-SEX-6', 'Women’s Sexual Health - Comprehensive Women’s Wellness', 'health-packages', 'Health Packages', 'Sexual Wellness', 'Health Express Network',
  'Specialized sexual health and fertility package including 24 diagnostic parameters & specialist consultation.', 'Specialized sexual health and fertility package including 24 diagnostic parameters & specialist consultation.', 20750.0, 20750.0, NULL, NULL,
  '24-48 Hours', 'Confidential home sample pickup. No fasting required unless specified.', 'Blood & Urine', TRUE,
  FALSE, '["HIV 1 & 2 Ag/Ab", "Hepatitis B Surface Antigen (HBsAg)", "Hepatitis C Antibody HCV", "Syphilis (VDRL)", "Chlamydia PCR (Urine) - IgG IgM", "Complete Blood Count (CBC)", "HbA1c", "Urine Routine Examination", "Lipid Profile", "Liver Function Test", "Kidney Function Test", "Vitamin D", "Vitamin B12", "Total Testosterone", "LH (Luteinizing Hormone)", "FSH (Follicular Stimulating Hormone)", "PRL (Prolactin)", "Estradiol (E2)", "TSH (Thyroid Stimulating Hormone)", "AMH (Anti-M\u00fcllerian Hormone)", "Progesterone", "General Physician", "Gynecologist", "Dietitian"]'::jsonb, 24, 'package', 'Sexual Wellness'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'womens-sexual-health-executive-womens-reproductive-health-sexual-wellness', 'PKG-SEX-7', 'Women’s Sexual Health - Executive Women’s Reproductive Health', 'health-packages', 'Health Packages', 'Sexual Wellness', 'Health Express Network',
  'Specialized sexual health and fertility package including 28 diagnostic parameters & specialist consultation.', 'Specialized sexual health and fertility package including 28 diagnostic parameters & specialist consultation.', 26750.0, 26750.0, NULL, NULL,
  '24-48 Hours', 'Confidential home sample pickup. No fasting required unless specified.', 'Blood & Urine', TRUE,
  FALSE, '["HIV 1 & 2 Ag/Ab", "Hepatitis B Surface Antigen (HBsAg)", "Hepatitis C Antibody HCV", "Syphilis (VDRL)", "Chlamydia PCR (Urine) - IgG IgM", "Complete Blood Count (CBC)", "HbA1c", "Urine Routine Examination", "Lipid Profile", "Liver Function Test", "Kidney Function Test", "Vitamin D", "Vitamin B12", "Total Testosterone", "LH (Luteinizing Hormone)", "FSH (Follicular Stimulating Hormone)", "PRL (Prolactin)", "Estradiol (E2)", "TSH (Thyroid Stimulating Hormone)", "AMH (Anti-M\u00fcllerian Hormone)", "Progesterone", "Pelvic Ultrasound", "Transvaginal Ultrasound (when appropriate)", "Fertility Specialist", "Sexual Medicine Specialist", "General Physician", "Gynecologist", "Dietitian"]'::jsonb, 28, 'package', 'Sexual Wellness'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();

INSERT INTO public.services (
  slug, service_code, service_name, category_id, category_name, subcategory, provider,
  description, overview, mrp, selling_price, b2b_price, discount_percentage,
  turnaround_time, patient_preparation, specimen_type, home_collection_available,
  centre_visit_required, parameters, parameters_count, service_type, source
) VALUES (
  'couples-fertility-sexual-wellness-package-infection-screening-both-partners-sexual-wellness', 'PKG-SEX-8', 'Couples Fertility & Sexual Wellness Package - Infection Screening (Both Partners)', 'health-packages', 'Health Packages', 'Sexual Wellness', 'Health Express Network',
  'Specialized sexual health and fertility package including 18 diagnostic parameters & specialist consultation.', 'Specialized sexual health and fertility package including 18 diagnostic parameters & specialist consultation.', 25150.0, 25150.0, NULL, NULL,
  '24-48 Hours', 'Confidential home sample pickup. No fasting required unless specified.', 'Blood & Urine', TRUE,
  FALSE, '["HIV 1 & 2 Ag/Ab", "Hepatitis B Surface Antigen (HBsAg)", "Hepatitis C Antibody HCV", "Syphilis (VDRL)", "Chlamydia PCR (Urine) - IgG IgM", "Total Testosterone", "Free Testosterone", "LH (Luteinizing Hormone)", "FSH (Follicular Stimulating Hormone)", "Estradiol (E2)", "AMH (Anti-M\u00fcllerian Hormone)", "Progesterone", "Semen Analysis", "Pap Smear", "Pelvic Ultrasound", "Fertility Specialist", "Urologist / Andrologist", "Gynecologist"]'::jsonb, 18, 'package', 'Sexual Wellness'
) ON CONFLICT (slug) DO UPDATE SET
  service_name = EXCLUDED.service_name,
  selling_price = EXCLUDED.selling_price,
  mrp = EXCLUDED.mrp,
  turnaround_time = EXCLUDED.turnaround_time,
  updated_at = now();
