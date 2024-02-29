INSERT INTO
		   evaluation_list(
						   evaluation_code, -- 평가코드  == varchar
                           emp_id,		    -- 사용자ID  == varchar
						   attendance_code, -- 근태코드  == varchar
                           penalty_factor,  -- 감점요인  == varchar
                           penalty_score   -- 페널티 점수  == integer
                           )          
		VALUES
    ('eva001', 'user002', 'att32', '지각', -1),
    ('eva002', 'user004', 'att34', '결근', -3),
    ('eva003', 'user006', 'att36', '지각', -1),
    ('eva004', 'user020', 'att50', '지각', -1),
    ('eva005', 'user022', 'att52', '지각', -1),
    ('eva006', 'user030', 'att60', '지각', -1),
    ('eva007', 'user004', 'att124', '지각', -1),
    ('eva008', 'user028', 'att148', '지각', -1),
    ('eva009', 'user029', 'att149', '결근', -3),
    ('eva010', 'user011', 'att161', '결근', -3),
    ('eva011', 'user005', 'att185', '지각', -1),
    ('eva012', 'user012', 'att192', '지각', -1),
    ('eva013', 'user003', 'att303', '지각', -1),
    ('eva014', 'user023', 'att323', '지각', -1),
    ('eva015', 'user007', 'att337', '결근', -3),
    ('eva016', 'user023', 'att383', '결근', -3),
    ('eva017', 'user011', 'att401', '지각', -1),
    ('eva018', 'user028', 'att418', '지각', -1),
    ('eva019', 'user010', 'att430', '지각', -1),
    ('eva020', 'user029', 'att449', '지각', -1),
    ('eva021', 'user011', 'att461', '결근', -3),
    ('eva022', 'user017', 'att557', '결근', -3),
    ('eva023', 'user014', 'att584', '지각', -1),
    ('eva024', 'user026', 'att596', '지각', -1),
    ('eva025', 'user003', 'att633', '지각', -1),
    ('eva026', 'user004', 'att664', '지각', -1),
    ('eva027', 'user020', 'att680', '지각', -1),
    ('eva028', 'user029', 'att689', '지각', -1);
    

 -- (평가코드, 직원ID, 평가코드, 감점요인, 페널티 점수)

SELECT * FROM evaluation_list;
-- 		WHERE emp_id = 'user003'; 
