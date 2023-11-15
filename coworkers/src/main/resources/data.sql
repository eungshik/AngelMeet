-- Meeting Room
insert into meeting_room (mid, name, building_name, floor, usable_from, usable_to, first_registered_at, first_registered_by, last_modified_at, last_modified_by) values
(null, '10층 대회의실', '현대오피스빌딩', 10, TO_DATE('20190101', 'yyyyMMdd'), TO_DATE('99991231', 'yyyyMMdd'), CURRENT_TIMESTAMP(), 'admin', CURRENT_TIMESTAMP(), 'admin'),
(null, '10층 MT ROOM 1', '현대오피스빌딩', 10, TO_DATE('20190101', 'yyyyMMdd'), TO_DATE('99991231', 'yyyyMMdd'), CURRENT_TIMESTAMP(), 'admin', CURRENT_TIMESTAMP(), 'admin'),
(null, '10층 MT ROOM 2', '현대오피스빌딩', 10, TO_DATE('20190101', 'yyyyMMdd'), TO_DATE('99991231', 'yyyyMMdd'), CURRENT_TIMESTAMP(), 'admin', CURRENT_TIMESTAMP(), 'admin'),
(null, '10층 MT ROOM 3', '현대오피스빌딩', 10, TO_DATE('20190101', 'yyyyMMdd'), TO_DATE('99991231', 'yyyyMMdd'), CURRENT_TIMESTAMP(), 'admin', CURRENT_TIMESTAMP(), 'admin'),
(null, '10층 MT ROOM 4', '현대오피스빌딩', 10, TO_DATE('20190101', 'yyyyMMdd'), TO_DATE('99991231', 'yyyyMMdd'), CURRENT_TIMESTAMP(), 'admin', CURRENT_TIMESTAMP(), 'admin'),
(null, '8층 대회의실', '현대오피스빌딩', 8, TO_DATE('20190101', 'yyyyMMdd'), TO_DATE('99991231', 'yyyyMMdd'), CURRENT_TIMESTAMP(), 'admin', CURRENT_TIMESTAMP(), 'admin'),
(null, '8층 MT ROOM 1', '현대오피스빌딩', 8, TO_DATE('20190101', 'yyyyMMdd'), TO_DATE('99991231', 'yyyyMMdd'), CURRENT_TIMESTAMP(), 'admin', CURRENT_TIMESTAMP(), 'admin'),
(null, '8층 MT ROOM 2', '현대오피스빌딩', 8, TO_DATE('20190101', 'yyyyMMdd'), TO_DATE('99991231', 'yyyyMMdd'), CURRENT_TIMESTAMP(), 'admin', CURRENT_TIMESTAMP(), 'admin'),
(null, '8층 MT ROOM 3', '현대오피스빌딩', 8, TO_DATE('20190101', 'yyyyMMdd'), TO_DATE('99991231', 'yyyyMMdd'), CURRENT_TIMESTAMP(), 'admin', CURRENT_TIMESTAMP(), 'admin'),
(null, '8층 LAB 2', '현대오피스빌딩', 8, TO_DATE('20190101', 'yyyyMMdd'), TO_DATE('99991231', 'yyyyMMdd'), CURRENT_TIMESTAMP(), 'admin', CURRENT_TIMESTAMP(), 'admin'),
(null, '8층 LAB 3', '현대오피스빌딩', 8, TO_DATE('20190101', 'yyyyMMdd'), TO_DATE('99991231', 'yyyyMMdd'), CURRENT_TIMESTAMP(), 'admin', CURRENT_TIMESTAMP(), 'admin'),
(null, '12층 MT ROOM 2', '현대오피스빌딩', 12, TO_DATE('20190101', 'yyyyMMdd'), TO_DATE('99991231', 'yyyyMMdd'), CURRENT_TIMESTAMP(), 'admin', CURRENT_TIMESTAMP(), 'admin'),
(null, '12층 MT ROOM 3', '현대오피스빌딩', 12, TO_DATE('20190101', 'yyyyMMdd'), TO_DATE('99991231', 'yyyyMMdd'), CURRENT_TIMESTAMP(), 'admin', CURRENT_TIMESTAMP(), 'admin'),
(null, '12층 MT ROOM 4', '현대오피스빌딩', 12, TO_DATE('20190101', 'yyyyMMdd'), TO_DATE('99991231', 'yyyyMMdd'), CURRENT_TIMESTAMP(), 'admin', CURRENT_TIMESTAMP(), 'admin');


-- insert into reservation (rid, end, first_registered_at, first_registered_by, first_registered_through, is_repeated, last_modified_at, last_modified_by, last_modified_through, mid, pin, repeat_count, repeat_interval, representative_rid, start, title, user_name)
-- insert into reservation (rid, mid, start, end, pin, is_repeated, repeat_interval, repeat_count, representative_rid, first_registered_at, first_registered_by, first_registered_through, last_modified_at, last_modified_through, last_modified_by)