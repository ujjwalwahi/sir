-- Automatically generated, do not edit
\set ON_ERROR_STOP 1
BEGIN;

CREATE TRIGGER search_artist_delete_0 BEFORE DELETE ON artist
    FOR EACH ROW EXECUTE PROCEDURE search_artist_delete_0();
COMMENT ON TRIGGER search_artist_delete_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_artist_insert_0 AFTER INSERT ON artist
    FOR EACH ROW EXECUTE PROCEDURE search_artist_insert_0();
COMMENT ON TRIGGER search_artist_insert_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_artist_update_0 AFTER UPDATE ON artist
    FOR EACH ROW EXECUTE PROCEDURE search_artist_update_0();
COMMENT ON TRIGGER search_artist_update_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_artist_delete_1 BEFORE DELETE ON artist_alias
    FOR EACH ROW EXECUTE PROCEDURE search_artist_delete_1();
COMMENT ON TRIGGER search_artist_delete_1 IS 'The path for this trigger is aliases';

CREATE TRIGGER search_artist_insert_1 AFTER INSERT ON artist_alias
    FOR EACH ROW EXECUTE PROCEDURE search_artist_insert_1();
COMMENT ON TRIGGER search_artist_insert_1 IS 'The path for this trigger is aliases';

CREATE TRIGGER search_artist_update_1 AFTER UPDATE ON artist_alias
    FOR EACH ROW EXECUTE PROCEDURE search_artist_update_1();
COMMENT ON TRIGGER search_artist_update_1 IS 'The path for this trigger is aliases';

CREATE TRIGGER search_artist_delete_2 BEFORE DELETE ON area
    FOR EACH ROW EXECUTE PROCEDURE search_artist_delete_2();
COMMENT ON TRIGGER search_artist_delete_2 IS 'The path for this trigger is area';

CREATE TRIGGER search_artist_insert_2 AFTER INSERT ON area
    FOR EACH ROW EXECUTE PROCEDURE search_artist_insert_2();
COMMENT ON TRIGGER search_artist_insert_2 IS 'The path for this trigger is area';

CREATE TRIGGER search_artist_update_2 AFTER UPDATE ON area
    FOR EACH ROW EXECUTE PROCEDURE search_artist_update_2();
COMMENT ON TRIGGER search_artist_update_2 IS 'The path for this trigger is area';

CREATE TRIGGER search_artist_delete_3 BEFORE DELETE ON area_alias
    FOR EACH ROW EXECUTE PROCEDURE search_artist_delete_3();
COMMENT ON TRIGGER search_artist_delete_3 IS 'The path for this trigger is area.aliases';

CREATE TRIGGER search_artist_insert_3 AFTER INSERT ON area_alias
    FOR EACH ROW EXECUTE PROCEDURE search_artist_insert_3();
COMMENT ON TRIGGER search_artist_insert_3 IS 'The path for this trigger is area.aliases';

CREATE TRIGGER search_artist_update_3 AFTER UPDATE ON area_alias
    FOR EACH ROW EXECUTE PROCEDURE search_artist_update_3();
COMMENT ON TRIGGER search_artist_update_3 IS 'The path for this trigger is area.aliases';

CREATE TRIGGER search_artist_delete_4 BEFORE DELETE ON area
    FOR EACH ROW EXECUTE PROCEDURE search_artist_delete_4();
COMMENT ON TRIGGER search_artist_delete_4 IS 'The path for this trigger is begin_area';

CREATE TRIGGER search_artist_insert_4 AFTER INSERT ON area
    FOR EACH ROW EXECUTE PROCEDURE search_artist_insert_4();
COMMENT ON TRIGGER search_artist_insert_4 IS 'The path for this trigger is begin_area';

CREATE TRIGGER search_artist_update_4 AFTER UPDATE ON area
    FOR EACH ROW EXECUTE PROCEDURE search_artist_update_4();
COMMENT ON TRIGGER search_artist_update_4 IS 'The path for this trigger is begin_area';

CREATE TRIGGER search_artist_delete_5 BEFORE DELETE ON area_alias
    FOR EACH ROW EXECUTE PROCEDURE search_artist_delete_5();
COMMENT ON TRIGGER search_artist_delete_5 IS 'The path for this trigger is begin_area.aliases';

CREATE TRIGGER search_artist_insert_5 AFTER INSERT ON area_alias
    FOR EACH ROW EXECUTE PROCEDURE search_artist_insert_5();
COMMENT ON TRIGGER search_artist_insert_5 IS 'The path for this trigger is begin_area.aliases';

CREATE TRIGGER search_artist_update_5 AFTER UPDATE ON area_alias
    FOR EACH ROW EXECUTE PROCEDURE search_artist_update_5();
COMMENT ON TRIGGER search_artist_update_5 IS 'The path for this trigger is begin_area.aliases';

CREATE TRIGGER search_artist_delete_6 BEFORE DELETE ON iso_3166_1
    FOR EACH ROW EXECUTE PROCEDURE search_artist_delete_6();
COMMENT ON TRIGGER search_artist_delete_6 IS 'The path for this trigger is area.iso_3166_1_codes';

CREATE TRIGGER search_artist_insert_6 AFTER INSERT ON iso_3166_1
    FOR EACH ROW EXECUTE PROCEDURE search_artist_insert_6();
COMMENT ON TRIGGER search_artist_insert_6 IS 'The path for this trigger is area.iso_3166_1_codes';

CREATE TRIGGER search_artist_update_6 AFTER UPDATE ON iso_3166_1
    FOR EACH ROW EXECUTE PROCEDURE search_artist_update_6();
COMMENT ON TRIGGER search_artist_update_6 IS 'The path for this trigger is area.iso_3166_1_codes';

CREATE TRIGGER search_artist_delete_7 BEFORE DELETE ON area
    FOR EACH ROW EXECUTE PROCEDURE search_artist_delete_7();
COMMENT ON TRIGGER search_artist_delete_7 IS 'The path for this trigger is end_area';

CREATE TRIGGER search_artist_insert_7 AFTER INSERT ON area
    FOR EACH ROW EXECUTE PROCEDURE search_artist_insert_7();
COMMENT ON TRIGGER search_artist_insert_7 IS 'The path for this trigger is end_area';

CREATE TRIGGER search_artist_update_7 AFTER UPDATE ON area
    FOR EACH ROW EXECUTE PROCEDURE search_artist_update_7();
COMMENT ON TRIGGER search_artist_update_7 IS 'The path for this trigger is end_area';

CREATE TRIGGER search_artist_delete_8 BEFORE DELETE ON area_alias
    FOR EACH ROW EXECUTE PROCEDURE search_artist_delete_8();
COMMENT ON TRIGGER search_artist_delete_8 IS 'The path for this trigger is end_area.aliases';

CREATE TRIGGER search_artist_insert_8 AFTER INSERT ON area_alias
    FOR EACH ROW EXECUTE PROCEDURE search_artist_insert_8();
COMMENT ON TRIGGER search_artist_insert_8 IS 'The path for this trigger is end_area.aliases';

CREATE TRIGGER search_artist_update_8 AFTER UPDATE ON area_alias
    FOR EACH ROW EXECUTE PROCEDURE search_artist_update_8();
COMMENT ON TRIGGER search_artist_update_8 IS 'The path for this trigger is end_area.aliases';

CREATE TRIGGER search_artist_delete_9 BEFORE DELETE ON gender
    FOR EACH ROW EXECUTE PROCEDURE search_artist_delete_9();
COMMENT ON TRIGGER search_artist_delete_9 IS 'The path for this trigger is gender';

CREATE TRIGGER search_artist_insert_9 AFTER INSERT ON gender
    FOR EACH ROW EXECUTE PROCEDURE search_artist_insert_9();
COMMENT ON TRIGGER search_artist_insert_9 IS 'The path for this trigger is gender';

CREATE TRIGGER search_artist_update_9 AFTER UPDATE ON gender
    FOR EACH ROW EXECUTE PROCEDURE search_artist_update_9();
COMMENT ON TRIGGER search_artist_update_9 IS 'The path for this trigger is gender';

CREATE TRIGGER search_artist_delete_10 BEFORE DELETE ON artist_ipi
    FOR EACH ROW EXECUTE PROCEDURE search_artist_delete_10();
COMMENT ON TRIGGER search_artist_delete_10 IS 'The path for this trigger is ipis';

CREATE TRIGGER search_artist_insert_10 AFTER INSERT ON artist_ipi
    FOR EACH ROW EXECUTE PROCEDURE search_artist_insert_10();
COMMENT ON TRIGGER search_artist_insert_10 IS 'The path for this trigger is ipis';

CREATE TRIGGER search_artist_update_10 AFTER UPDATE ON artist_ipi
    FOR EACH ROW EXECUTE PROCEDURE search_artist_update_10();
COMMENT ON TRIGGER search_artist_update_10 IS 'The path for this trigger is ipis';

CREATE TRIGGER search_artist_delete_11 BEFORE DELETE ON artist_tag
    FOR EACH ROW EXECUTE PROCEDURE search_artist_delete_11();
COMMENT ON TRIGGER search_artist_delete_11 IS 'The path for this trigger is tags';

CREATE TRIGGER search_artist_insert_11 AFTER INSERT ON artist_tag
    FOR EACH ROW EXECUTE PROCEDURE search_artist_insert_11();
COMMENT ON TRIGGER search_artist_insert_11 IS 'The path for this trigger is tags';

CREATE TRIGGER search_artist_update_11 AFTER UPDATE ON artist_tag
    FOR EACH ROW EXECUTE PROCEDURE search_artist_update_11();
COMMENT ON TRIGGER search_artist_update_11 IS 'The path for this trigger is tags';

CREATE TRIGGER search_artist_delete_12 BEFORE DELETE ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_artist_delete_12();
COMMENT ON TRIGGER search_artist_delete_12 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_artist_insert_12 AFTER INSERT ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_artist_insert_12();
COMMENT ON TRIGGER search_artist_insert_12 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_artist_update_12 AFTER UPDATE ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_artist_update_12();
COMMENT ON TRIGGER search_artist_update_12 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_artist_delete_13 BEFORE DELETE ON artist_type
    FOR EACH ROW EXECUTE PROCEDURE search_artist_delete_13();
COMMENT ON TRIGGER search_artist_delete_13 IS 'The path for this trigger is type';

CREATE TRIGGER search_artist_insert_13 AFTER INSERT ON artist_type
    FOR EACH ROW EXECUTE PROCEDURE search_artist_insert_13();
COMMENT ON TRIGGER search_artist_insert_13 IS 'The path for this trigger is type';

CREATE TRIGGER search_artist_update_13 AFTER UPDATE ON artist_type
    FOR EACH ROW EXECUTE PROCEDURE search_artist_update_13();
COMMENT ON TRIGGER search_artist_update_13 IS 'The path for this trigger is type';

CREATE TRIGGER search_work_delete_0 BEFORE DELETE ON work
    FOR EACH ROW EXECUTE PROCEDURE search_work_delete_0();
COMMENT ON TRIGGER search_work_delete_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_work_insert_0 AFTER INSERT ON work
    FOR EACH ROW EXECUTE PROCEDURE search_work_insert_0();
COMMENT ON TRIGGER search_work_insert_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_work_update_0 AFTER UPDATE ON work
    FOR EACH ROW EXECUTE PROCEDURE search_work_update_0();
COMMENT ON TRIGGER search_work_update_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_work_delete_1 BEFORE DELETE ON work_alias
    FOR EACH ROW EXECUTE PROCEDURE search_work_delete_1();
COMMENT ON TRIGGER search_work_delete_1 IS 'The path for this trigger is aliases';

CREATE TRIGGER search_work_insert_1 AFTER INSERT ON work_alias
    FOR EACH ROW EXECUTE PROCEDURE search_work_insert_1();
COMMENT ON TRIGGER search_work_insert_1 IS 'The path for this trigger is aliases';

CREATE TRIGGER search_work_update_1 AFTER UPDATE ON work_alias
    FOR EACH ROW EXECUTE PROCEDURE search_work_update_1();
COMMENT ON TRIGGER search_work_update_1 IS 'The path for this trigger is aliases';

CREATE TRIGGER search_work_delete_2 BEFORE DELETE ON l_artist_work
    FOR EACH ROW EXECUTE PROCEDURE search_work_delete_2();
COMMENT ON TRIGGER search_work_delete_2 IS 'The path for this trigger is artist_links';

CREATE TRIGGER search_work_insert_2 AFTER INSERT ON l_artist_work
    FOR EACH ROW EXECUTE PROCEDURE search_work_insert_2();
COMMENT ON TRIGGER search_work_insert_2 IS 'The path for this trigger is artist_links';

CREATE TRIGGER search_work_update_2 AFTER UPDATE ON l_artist_work
    FOR EACH ROW EXECUTE PROCEDURE search_work_update_2();
COMMENT ON TRIGGER search_work_update_2 IS 'The path for this trigger is artist_links';

CREATE TRIGGER search_work_delete_3 BEFORE DELETE ON artist
    FOR EACH ROW EXECUTE PROCEDURE search_work_delete_3();
COMMENT ON TRIGGER search_work_delete_3 IS 'The path for this trigger is artist_links.artist';

CREATE TRIGGER search_work_insert_3 AFTER INSERT ON artist
    FOR EACH ROW EXECUTE PROCEDURE search_work_insert_3();
COMMENT ON TRIGGER search_work_insert_3 IS 'The path for this trigger is artist_links.artist';

CREATE TRIGGER search_work_update_3 AFTER UPDATE ON artist
    FOR EACH ROW EXECUTE PROCEDURE search_work_update_3();
COMMENT ON TRIGGER search_work_update_3 IS 'The path for this trigger is artist_links.artist';

CREATE TRIGGER search_work_delete_4 BEFORE DELETE ON iswc
    FOR EACH ROW EXECUTE PROCEDURE search_work_delete_4();
COMMENT ON TRIGGER search_work_delete_4 IS 'The path for this trigger is iswcs';

CREATE TRIGGER search_work_insert_4 AFTER INSERT ON iswc
    FOR EACH ROW EXECUTE PROCEDURE search_work_insert_4();
COMMENT ON TRIGGER search_work_insert_4 IS 'The path for this trigger is iswcs';

CREATE TRIGGER search_work_update_4 AFTER UPDATE ON iswc
    FOR EACH ROW EXECUTE PROCEDURE search_work_update_4();
COMMENT ON TRIGGER search_work_update_4 IS 'The path for this trigger is iswcs';

CREATE TRIGGER search_work_delete_5 BEFORE DELETE ON language
    FOR EACH ROW EXECUTE PROCEDURE search_work_delete_5();
COMMENT ON TRIGGER search_work_delete_5 IS 'The path for this trigger is language';

CREATE TRIGGER search_work_insert_5 AFTER INSERT ON language
    FOR EACH ROW EXECUTE PROCEDURE search_work_insert_5();
COMMENT ON TRIGGER search_work_insert_5 IS 'The path for this trigger is language';

CREATE TRIGGER search_work_update_5 AFTER UPDATE ON language
    FOR EACH ROW EXECUTE PROCEDURE search_work_update_5();
COMMENT ON TRIGGER search_work_update_5 IS 'The path for this trigger is language';

CREATE TRIGGER search_work_delete_6 BEFORE DELETE ON work_tag
    FOR EACH ROW EXECUTE PROCEDURE search_work_delete_6();
COMMENT ON TRIGGER search_work_delete_6 IS 'The path for this trigger is tags';

CREATE TRIGGER search_work_insert_6 AFTER INSERT ON work_tag
    FOR EACH ROW EXECUTE PROCEDURE search_work_insert_6();
COMMENT ON TRIGGER search_work_insert_6 IS 'The path for this trigger is tags';

CREATE TRIGGER search_work_update_6 AFTER UPDATE ON work_tag
    FOR EACH ROW EXECUTE PROCEDURE search_work_update_6();
COMMENT ON TRIGGER search_work_update_6 IS 'The path for this trigger is tags';

CREATE TRIGGER search_work_delete_7 BEFORE DELETE ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_work_delete_7();
COMMENT ON TRIGGER search_work_delete_7 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_work_insert_7 AFTER INSERT ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_work_insert_7();
COMMENT ON TRIGGER search_work_insert_7 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_work_update_7 AFTER UPDATE ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_work_update_7();
COMMENT ON TRIGGER search_work_update_7 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_work_delete_8 BEFORE DELETE ON work_type
    FOR EACH ROW EXECUTE PROCEDURE search_work_delete_8();
COMMENT ON TRIGGER search_work_delete_8 IS 'The path for this trigger is type';

CREATE TRIGGER search_work_insert_8 AFTER INSERT ON work_type
    FOR EACH ROW EXECUTE PROCEDURE search_work_insert_8();
COMMENT ON TRIGGER search_work_insert_8 IS 'The path for this trigger is type';

CREATE TRIGGER search_work_update_8 AFTER UPDATE ON work_type
    FOR EACH ROW EXECUTE PROCEDURE search_work_update_8();
COMMENT ON TRIGGER search_work_update_8 IS 'The path for this trigger is type';

CREATE TRIGGER search_label_delete_0 BEFORE DELETE ON label
    FOR EACH ROW EXECUTE PROCEDURE search_label_delete_0();
COMMENT ON TRIGGER search_label_delete_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_label_insert_0 AFTER INSERT ON label
    FOR EACH ROW EXECUTE PROCEDURE search_label_insert_0();
COMMENT ON TRIGGER search_label_insert_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_label_update_0 AFTER UPDATE ON label
    FOR EACH ROW EXECUTE PROCEDURE search_label_update_0();
COMMENT ON TRIGGER search_label_update_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_label_delete_1 BEFORE DELETE ON label_alias
    FOR EACH ROW EXECUTE PROCEDURE search_label_delete_1();
COMMENT ON TRIGGER search_label_delete_1 IS 'The path for this trigger is aliases';

CREATE TRIGGER search_label_insert_1 AFTER INSERT ON label_alias
    FOR EACH ROW EXECUTE PROCEDURE search_label_insert_1();
COMMENT ON TRIGGER search_label_insert_1 IS 'The path for this trigger is aliases';

CREATE TRIGGER search_label_update_1 AFTER UPDATE ON label_alias
    FOR EACH ROW EXECUTE PROCEDURE search_label_update_1();
COMMENT ON TRIGGER search_label_update_1 IS 'The path for this trigger is aliases';

CREATE TRIGGER search_label_delete_2 BEFORE DELETE ON area
    FOR EACH ROW EXECUTE PROCEDURE search_label_delete_2();
COMMENT ON TRIGGER search_label_delete_2 IS 'The path for this trigger is area';

CREATE TRIGGER search_label_insert_2 AFTER INSERT ON area
    FOR EACH ROW EXECUTE PROCEDURE search_label_insert_2();
COMMENT ON TRIGGER search_label_insert_2 IS 'The path for this trigger is area';

CREATE TRIGGER search_label_update_2 AFTER UPDATE ON area
    FOR EACH ROW EXECUTE PROCEDURE search_label_update_2();
COMMENT ON TRIGGER search_label_update_2 IS 'The path for this trigger is area';

CREATE TRIGGER search_label_delete_3 BEFORE DELETE ON area_alias
    FOR EACH ROW EXECUTE PROCEDURE search_label_delete_3();
COMMENT ON TRIGGER search_label_delete_3 IS 'The path for this trigger is area.aliases';

CREATE TRIGGER search_label_insert_3 AFTER INSERT ON area_alias
    FOR EACH ROW EXECUTE PROCEDURE search_label_insert_3();
COMMENT ON TRIGGER search_label_insert_3 IS 'The path for this trigger is area.aliases';

CREATE TRIGGER search_label_update_3 AFTER UPDATE ON area_alias
    FOR EACH ROW EXECUTE PROCEDURE search_label_update_3();
COMMENT ON TRIGGER search_label_update_3 IS 'The path for this trigger is area.aliases';

CREATE TRIGGER search_label_delete_4 BEFORE DELETE ON iso_3166_1
    FOR EACH ROW EXECUTE PROCEDURE search_label_delete_4();
COMMENT ON TRIGGER search_label_delete_4 IS 'The path for this trigger is area.iso_3166_1_codes';

CREATE TRIGGER search_label_insert_4 AFTER INSERT ON iso_3166_1
    FOR EACH ROW EXECUTE PROCEDURE search_label_insert_4();
COMMENT ON TRIGGER search_label_insert_4 IS 'The path for this trigger is area.iso_3166_1_codes';

CREATE TRIGGER search_label_update_4 AFTER UPDATE ON iso_3166_1
    FOR EACH ROW EXECUTE PROCEDURE search_label_update_4();
COMMENT ON TRIGGER search_label_update_4 IS 'The path for this trigger is area.iso_3166_1_codes';

CREATE TRIGGER search_label_delete_5 BEFORE DELETE ON label_ipi
    FOR EACH ROW EXECUTE PROCEDURE search_label_delete_5();
COMMENT ON TRIGGER search_label_delete_5 IS 'The path for this trigger is ipis';

CREATE TRIGGER search_label_insert_5 AFTER INSERT ON label_ipi
    FOR EACH ROW EXECUTE PROCEDURE search_label_insert_5();
COMMENT ON TRIGGER search_label_insert_5 IS 'The path for this trigger is ipis';

CREATE TRIGGER search_label_update_5 AFTER UPDATE ON label_ipi
    FOR EACH ROW EXECUTE PROCEDURE search_label_update_5();
COMMENT ON TRIGGER search_label_update_5 IS 'The path for this trigger is ipis';

CREATE TRIGGER search_label_delete_6 BEFORE DELETE ON label_tag
    FOR EACH ROW EXECUTE PROCEDURE search_label_delete_6();
COMMENT ON TRIGGER search_label_delete_6 IS 'The path for this trigger is tags';

CREATE TRIGGER search_label_insert_6 AFTER INSERT ON label_tag
    FOR EACH ROW EXECUTE PROCEDURE search_label_insert_6();
COMMENT ON TRIGGER search_label_insert_6 IS 'The path for this trigger is tags';

CREATE TRIGGER search_label_update_6 AFTER UPDATE ON label_tag
    FOR EACH ROW EXECUTE PROCEDURE search_label_update_6();
COMMENT ON TRIGGER search_label_update_6 IS 'The path for this trigger is tags';

CREATE TRIGGER search_label_delete_7 BEFORE DELETE ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_label_delete_7();
COMMENT ON TRIGGER search_label_delete_7 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_label_insert_7 AFTER INSERT ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_label_insert_7();
COMMENT ON TRIGGER search_label_insert_7 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_label_update_7 AFTER UPDATE ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_label_update_7();
COMMENT ON TRIGGER search_label_update_7 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_label_delete_8 BEFORE DELETE ON label_type
    FOR EACH ROW EXECUTE PROCEDURE search_label_delete_8();
COMMENT ON TRIGGER search_label_delete_8 IS 'The path for this trigger is type';

CREATE TRIGGER search_label_insert_8 AFTER INSERT ON label_type
    FOR EACH ROW EXECUTE PROCEDURE search_label_insert_8();
COMMENT ON TRIGGER search_label_insert_8 IS 'The path for this trigger is type';

CREATE TRIGGER search_label_update_8 AFTER UPDATE ON label_type
    FOR EACH ROW EXECUTE PROCEDURE search_label_update_8();
COMMENT ON TRIGGER search_label_update_8 IS 'The path for this trigger is type';

CREATE TRIGGER search_recording_delete_0 BEFORE DELETE ON recording
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_0();
COMMENT ON TRIGGER search_recording_delete_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_recording_insert_0 AFTER INSERT ON recording
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_0();
COMMENT ON TRIGGER search_recording_insert_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_recording_update_0 AFTER UPDATE ON recording
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_0();
COMMENT ON TRIGGER search_recording_update_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_recording_delete_1 BEFORE DELETE ON artist_credit
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_1();
COMMENT ON TRIGGER search_recording_delete_1 IS 'The path for this trigger is artist_credit';

CREATE TRIGGER search_recording_insert_1 AFTER INSERT ON artist_credit
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_1();
COMMENT ON TRIGGER search_recording_insert_1 IS 'The path for this trigger is artist_credit';

CREATE TRIGGER search_recording_update_1 AFTER UPDATE ON artist_credit
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_1();
COMMENT ON TRIGGER search_recording_update_1 IS 'The path for this trigger is artist_credit';

CREATE TRIGGER search_recording_delete_2 BEFORE DELETE ON artist_credit_name
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_2();
COMMENT ON TRIGGER search_recording_delete_2 IS 'The path for this trigger is artist_credit.artists';

CREATE TRIGGER search_recording_insert_2 AFTER INSERT ON artist_credit_name
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_2();
COMMENT ON TRIGGER search_recording_insert_2 IS 'The path for this trigger is artist_credit.artists';

CREATE TRIGGER search_recording_update_2 AFTER UPDATE ON artist_credit_name
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_2();
COMMENT ON TRIGGER search_recording_update_2 IS 'The path for this trigger is artist_credit.artists';

CREATE TRIGGER search_recording_delete_3 BEFORE DELETE ON artist
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_3();
COMMENT ON TRIGGER search_recording_delete_3 IS 'The path for this trigger is artist_credit.artists.artist';

CREATE TRIGGER search_recording_insert_3 AFTER INSERT ON artist
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_3();
COMMENT ON TRIGGER search_recording_insert_3 IS 'The path for this trigger is artist_credit.artists.artist';

CREATE TRIGGER search_recording_update_3 AFTER UPDATE ON artist
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_3();
COMMENT ON TRIGGER search_recording_update_3 IS 'The path for this trigger is artist_credit.artists.artist';

CREATE TRIGGER search_recording_delete_4 BEFORE DELETE ON track
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_4();
COMMENT ON TRIGGER search_recording_delete_4 IS 'The path for this trigger is tracks';

CREATE TRIGGER search_recording_insert_4 AFTER INSERT ON track
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_4();
COMMENT ON TRIGGER search_recording_insert_4 IS 'The path for this trigger is tracks';

CREATE TRIGGER search_recording_update_4 AFTER UPDATE ON track
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_4();
COMMENT ON TRIGGER search_recording_update_4 IS 'The path for this trigger is tracks';

CREATE TRIGGER search_recording_delete_5 BEFORE DELETE ON medium
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_5();
COMMENT ON TRIGGER search_recording_delete_5 IS 'The path for this trigger is tracks.medium';

CREATE TRIGGER search_recording_insert_5 AFTER INSERT ON medium
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_5();
COMMENT ON TRIGGER search_recording_insert_5 IS 'The path for this trigger is tracks.medium';

CREATE TRIGGER search_recording_update_5 AFTER UPDATE ON medium
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_5();
COMMENT ON TRIGGER search_recording_update_5 IS 'The path for this trigger is tracks.medium';

CREATE TRIGGER search_recording_delete_6 BEFORE DELETE ON release
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_6();
COMMENT ON TRIGGER search_recording_delete_6 IS 'The path for this trigger is tracks.medium.release';

CREATE TRIGGER search_recording_insert_6 AFTER INSERT ON release
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_6();
COMMENT ON TRIGGER search_recording_insert_6 IS 'The path for this trigger is tracks.medium.release';

CREATE TRIGGER search_recording_update_6 AFTER UPDATE ON release
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_6();
COMMENT ON TRIGGER search_recording_update_6 IS 'The path for this trigger is tracks.medium.release';

CREATE TRIGGER search_recording_delete_7 BEFORE DELETE ON release_country
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_7();
COMMENT ON TRIGGER search_recording_delete_7 IS 'The path for this trigger is tracks.medium.release.country_dates';

CREATE TRIGGER search_recording_insert_7 AFTER INSERT ON release_country
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_7();
COMMENT ON TRIGGER search_recording_insert_7 IS 'The path for this trigger is tracks.medium.release.country_dates';

CREATE TRIGGER search_recording_update_7 AFTER UPDATE ON release_country
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_7();
COMMENT ON TRIGGER search_recording_update_7 IS 'The path for this trigger is tracks.medium.release.country_dates';

CREATE TRIGGER search_recording_delete_8 BEFORE DELETE ON country_area
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_8();
COMMENT ON TRIGGER search_recording_delete_8 IS 'The path for this trigger is tracks.medium.release.country_dates.country';

CREATE TRIGGER search_recording_insert_8 AFTER INSERT ON country_area
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_8();
COMMENT ON TRIGGER search_recording_insert_8 IS 'The path for this trigger is tracks.medium.release.country_dates.country';

CREATE TRIGGER search_recording_update_8 AFTER UPDATE ON country_area
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_8();
COMMENT ON TRIGGER search_recording_update_8 IS 'The path for this trigger is tracks.medium.release.country_dates.country';

CREATE TRIGGER search_recording_delete_9 BEFORE DELETE ON area
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_9();
COMMENT ON TRIGGER search_recording_delete_9 IS 'The path for this trigger is tracks.medium.release.country_dates.country.area';

CREATE TRIGGER search_recording_insert_9 AFTER INSERT ON area
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_9();
COMMENT ON TRIGGER search_recording_insert_9 IS 'The path for this trigger is tracks.medium.release.country_dates.country.area';

CREATE TRIGGER search_recording_update_9 AFTER UPDATE ON area
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_9();
COMMENT ON TRIGGER search_recording_update_9 IS 'The path for this trigger is tracks.medium.release.country_dates.country.area';

CREATE TRIGGER search_recording_delete_10 BEFORE DELETE ON medium_format
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_10();
COMMENT ON TRIGGER search_recording_delete_10 IS 'The path for this trigger is tracks.medium.format';

CREATE TRIGGER search_recording_insert_10 AFTER INSERT ON medium_format
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_10();
COMMENT ON TRIGGER search_recording_insert_10 IS 'The path for this trigger is tracks.medium.format';

CREATE TRIGGER search_recording_update_10 AFTER UPDATE ON medium_format
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_10();
COMMENT ON TRIGGER search_recording_update_10 IS 'The path for this trigger is tracks.medium.format';

CREATE TRIGGER search_recording_delete_11 BEFORE DELETE ON isrc
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_11();
COMMENT ON TRIGGER search_recording_delete_11 IS 'The path for this trigger is isrcs';

CREATE TRIGGER search_recording_insert_11 AFTER INSERT ON isrc
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_11();
COMMENT ON TRIGGER search_recording_insert_11 IS 'The path for this trigger is isrcs';

CREATE TRIGGER search_recording_update_11 AFTER UPDATE ON isrc
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_11();
COMMENT ON TRIGGER search_recording_update_11 IS 'The path for this trigger is isrcs';

CREATE TRIGGER search_recording_delete_12 BEFORE DELETE ON release_group
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_12();
COMMENT ON TRIGGER search_recording_delete_12 IS 'The path for this trigger is tracks.medium.release.release_group';

CREATE TRIGGER search_recording_insert_12 AFTER INSERT ON release_group
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_12();
COMMENT ON TRIGGER search_recording_insert_12 IS 'The path for this trigger is tracks.medium.release.release_group';

CREATE TRIGGER search_recording_update_12 AFTER UPDATE ON release_group
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_12();
COMMENT ON TRIGGER search_recording_update_12 IS 'The path for this trigger is tracks.medium.release.release_group';

CREATE TRIGGER search_recording_delete_13 BEFORE DELETE ON release_group_primary_type
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_13();
COMMENT ON TRIGGER search_recording_delete_13 IS 'The path for this trigger is tracks.medium.release.release_group.type';

CREATE TRIGGER search_recording_insert_13 AFTER INSERT ON release_group_primary_type
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_13();
COMMENT ON TRIGGER search_recording_insert_13 IS 'The path for this trigger is tracks.medium.release.release_group.type';

CREATE TRIGGER search_recording_update_13 AFTER UPDATE ON release_group_primary_type
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_13();
COMMENT ON TRIGGER search_recording_update_13 IS 'The path for this trigger is tracks.medium.release.release_group.type';

CREATE TRIGGER search_recording_delete_14 BEFORE DELETE ON release_group_secondary_type_join
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_14();
COMMENT ON TRIGGER search_recording_delete_14 IS 'The path for this trigger is tracks.medium.release.release_group.secondary_types';

CREATE TRIGGER search_recording_insert_14 AFTER INSERT ON release_group_secondary_type_join
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_14();
COMMENT ON TRIGGER search_recording_insert_14 IS 'The path for this trigger is tracks.medium.release.release_group.secondary_types';

CREATE TRIGGER search_recording_update_14 AFTER UPDATE ON release_group_secondary_type_join
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_14();
COMMENT ON TRIGGER search_recording_update_14 IS 'The path for this trigger is tracks.medium.release.release_group.secondary_types';

CREATE TRIGGER search_recording_delete_15 BEFORE DELETE ON release_group_secondary_type
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_15();
COMMENT ON TRIGGER search_recording_delete_15 IS 'The path for this trigger is tracks.medium.release.release_group.secondary_types.secondary_type';

CREATE TRIGGER search_recording_insert_15 AFTER INSERT ON release_group_secondary_type
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_15();
COMMENT ON TRIGGER search_recording_insert_15 IS 'The path for this trigger is tracks.medium.release.release_group.secondary_types.secondary_type';

CREATE TRIGGER search_recording_update_15 AFTER UPDATE ON release_group_secondary_type
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_15();
COMMENT ON TRIGGER search_recording_update_15 IS 'The path for this trigger is tracks.medium.release.release_group.secondary_types.secondary_type';

CREATE TRIGGER search_recording_delete_16 BEFORE DELETE ON release_status
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_16();
COMMENT ON TRIGGER search_recording_delete_16 IS 'The path for this trigger is tracks.medium.release.status';

CREATE TRIGGER search_recording_insert_16 AFTER INSERT ON release_status
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_16();
COMMENT ON TRIGGER search_recording_insert_16 IS 'The path for this trigger is tracks.medium.release.status';

CREATE TRIGGER search_recording_update_16 AFTER UPDATE ON release_status
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_16();
COMMENT ON TRIGGER search_recording_update_16 IS 'The path for this trigger is tracks.medium.release.status';

CREATE TRIGGER search_recording_delete_17 BEFORE DELETE ON recording_tag
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_17();
COMMENT ON TRIGGER search_recording_delete_17 IS 'The path for this trigger is tags';

CREATE TRIGGER search_recording_insert_17 AFTER INSERT ON recording_tag
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_17();
COMMENT ON TRIGGER search_recording_insert_17 IS 'The path for this trigger is tags';

CREATE TRIGGER search_recording_update_17 AFTER UPDATE ON recording_tag
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_17();
COMMENT ON TRIGGER search_recording_update_17 IS 'The path for this trigger is tags';

CREATE TRIGGER search_recording_delete_18 BEFORE DELETE ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_18();
COMMENT ON TRIGGER search_recording_delete_18 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_recording_insert_18 AFTER INSERT ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_18();
COMMENT ON TRIGGER search_recording_insert_18 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_recording_update_18 AFTER UPDATE ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_18();
COMMENT ON TRIGGER search_recording_update_18 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_recording_delete_19 BEFORE DELETE ON medium
    FOR EACH ROW EXECUTE PROCEDURE search_recording_delete_19();
COMMENT ON TRIGGER search_recording_delete_19 IS 'The path for this trigger is tracks.medium.release.mediums';

CREATE TRIGGER search_recording_insert_19 AFTER INSERT ON medium
    FOR EACH ROW EXECUTE PROCEDURE search_recording_insert_19();
COMMENT ON TRIGGER search_recording_insert_19 IS 'The path for this trigger is tracks.medium.release.mediums';

CREATE TRIGGER search_recording_update_19 AFTER UPDATE ON medium
    FOR EACH ROW EXECUTE PROCEDURE search_recording_update_19();
COMMENT ON TRIGGER search_recording_update_19 IS 'The path for this trigger is tracks.medium.release.mediums';

CREATE TRIGGER search_release_delete_0 BEFORE DELETE ON release
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_0();
COMMENT ON TRIGGER search_release_delete_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_release_insert_0 AFTER INSERT ON release
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_0();
COMMENT ON TRIGGER search_release_insert_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_release_update_0 AFTER UPDATE ON release
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_0();
COMMENT ON TRIGGER search_release_update_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_release_delete_1 BEFORE DELETE ON artist_credit
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_1();
COMMENT ON TRIGGER search_release_delete_1 IS 'The path for this trigger is artist_credit';

CREATE TRIGGER search_release_insert_1 AFTER INSERT ON artist_credit
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_1();
COMMENT ON TRIGGER search_release_insert_1 IS 'The path for this trigger is artist_credit';

CREATE TRIGGER search_release_update_1 AFTER UPDATE ON artist_credit
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_1();
COMMENT ON TRIGGER search_release_update_1 IS 'The path for this trigger is artist_credit';

CREATE TRIGGER search_release_delete_2 BEFORE DELETE ON artist_credit_name
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_2();
COMMENT ON TRIGGER search_release_delete_2 IS 'The path for this trigger is artist_credit.artists';

CREATE TRIGGER search_release_insert_2 AFTER INSERT ON artist_credit_name
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_2();
COMMENT ON TRIGGER search_release_insert_2 IS 'The path for this trigger is artist_credit.artists';

CREATE TRIGGER search_release_update_2 AFTER UPDATE ON artist_credit_name
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_2();
COMMENT ON TRIGGER search_release_update_2 IS 'The path for this trigger is artist_credit.artists';

CREATE TRIGGER search_release_delete_3 BEFORE DELETE ON artist
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_3();
COMMENT ON TRIGGER search_release_delete_3 IS 'The path for this trigger is artist_credit.artists.artist';

CREATE TRIGGER search_release_insert_3 AFTER INSERT ON artist
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_3();
COMMENT ON TRIGGER search_release_insert_3 IS 'The path for this trigger is artist_credit.artists.artist';

CREATE TRIGGER search_release_update_3 AFTER UPDATE ON artist
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_3();
COMMENT ON TRIGGER search_release_update_3 IS 'The path for this trigger is artist_credit.artists.artist';

CREATE TRIGGER search_release_delete_4 BEFORE DELETE ON release_country
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_4();
COMMENT ON TRIGGER search_release_delete_4 IS 'The path for this trigger is country_dates';

CREATE TRIGGER search_release_insert_4 AFTER INSERT ON release_country
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_4();
COMMENT ON TRIGGER search_release_insert_4 IS 'The path for this trigger is country_dates';

CREATE TRIGGER search_release_update_4 AFTER UPDATE ON release_country
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_4();
COMMENT ON TRIGGER search_release_update_4 IS 'The path for this trigger is country_dates';

CREATE TRIGGER search_release_delete_5 BEFORE DELETE ON country_area
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_5();
COMMENT ON TRIGGER search_release_delete_5 IS 'The path for this trigger is country_dates.country';

CREATE TRIGGER search_release_insert_5 AFTER INSERT ON country_area
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_5();
COMMENT ON TRIGGER search_release_insert_5 IS 'The path for this trigger is country_dates.country';

CREATE TRIGGER search_release_update_5 AFTER UPDATE ON country_area
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_5();
COMMENT ON TRIGGER search_release_update_5 IS 'The path for this trigger is country_dates.country';

CREATE TRIGGER search_release_delete_6 BEFORE DELETE ON area
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_6();
COMMENT ON TRIGGER search_release_delete_6 IS 'The path for this trigger is country_dates.country.area';

CREATE TRIGGER search_release_insert_6 AFTER INSERT ON area
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_6();
COMMENT ON TRIGGER search_release_insert_6 IS 'The path for this trigger is country_dates.country.area';

CREATE TRIGGER search_release_update_6 AFTER UPDATE ON area
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_6();
COMMENT ON TRIGGER search_release_update_6 IS 'The path for this trigger is country_dates.country.area';

CREATE TRIGGER search_release_delete_7 BEFORE DELETE ON release_label
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_7();
COMMENT ON TRIGGER search_release_delete_7 IS 'The path for this trigger is labels';

CREATE TRIGGER search_release_insert_7 AFTER INSERT ON release_label
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_7();
COMMENT ON TRIGGER search_release_insert_7 IS 'The path for this trigger is labels';

CREATE TRIGGER search_release_update_7 AFTER UPDATE ON release_label
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_7();
COMMENT ON TRIGGER search_release_update_7 IS 'The path for this trigger is labels';

CREATE TRIGGER search_release_delete_8 BEFORE DELETE ON medium
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_8();
COMMENT ON TRIGGER search_release_delete_8 IS 'The path for this trigger is mediums';

CREATE TRIGGER search_release_insert_8 AFTER INSERT ON medium
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_8();
COMMENT ON TRIGGER search_release_insert_8 IS 'The path for this trigger is mediums';

CREATE TRIGGER search_release_update_8 AFTER UPDATE ON medium
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_8();
COMMENT ON TRIGGER search_release_update_8 IS 'The path for this trigger is mediums';

CREATE TRIGGER search_release_delete_9 BEFORE DELETE ON medium_cdtoc
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_9();
COMMENT ON TRIGGER search_release_delete_9 IS 'The path for this trigger is mediums.cdtocs';

CREATE TRIGGER search_release_insert_9 AFTER INSERT ON medium_cdtoc
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_9();
COMMENT ON TRIGGER search_release_insert_9 IS 'The path for this trigger is mediums.cdtocs';

CREATE TRIGGER search_release_update_9 AFTER UPDATE ON medium_cdtoc
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_9();
COMMENT ON TRIGGER search_release_update_9 IS 'The path for this trigger is mediums.cdtocs';

CREATE TRIGGER search_release_delete_10 BEFORE DELETE ON medium_format
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_10();
COMMENT ON TRIGGER search_release_delete_10 IS 'The path for this trigger is mediums.format';

CREATE TRIGGER search_release_insert_10 AFTER INSERT ON medium_format
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_10();
COMMENT ON TRIGGER search_release_insert_10 IS 'The path for this trigger is mediums.format';

CREATE TRIGGER search_release_update_10 AFTER UPDATE ON medium_format
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_10();
COMMENT ON TRIGGER search_release_update_10 IS 'The path for this trigger is mediums.format';

CREATE TRIGGER search_release_delete_11 BEFORE DELETE ON label
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_11();
COMMENT ON TRIGGER search_release_delete_11 IS 'The path for this trigger is labels.label';

CREATE TRIGGER search_release_insert_11 AFTER INSERT ON label
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_11();
COMMENT ON TRIGGER search_release_insert_11 IS 'The path for this trigger is labels.label';

CREATE TRIGGER search_release_update_11 AFTER UPDATE ON label
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_11();
COMMENT ON TRIGGER search_release_update_11 IS 'The path for this trigger is labels.label';

CREATE TRIGGER search_release_delete_12 BEFORE DELETE ON language
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_12();
COMMENT ON TRIGGER search_release_delete_12 IS 'The path for this trigger is language';

CREATE TRIGGER search_release_insert_12 AFTER INSERT ON language
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_12();
COMMENT ON TRIGGER search_release_insert_12 IS 'The path for this trigger is language';

CREATE TRIGGER search_release_update_12 AFTER UPDATE ON language
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_12();
COMMENT ON TRIGGER search_release_update_12 IS 'The path for this trigger is language';

CREATE TRIGGER search_release_delete_13 BEFORE DELETE ON release_group
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_13();
COMMENT ON TRIGGER search_release_delete_13 IS 'The path for this trigger is release_group';

CREATE TRIGGER search_release_insert_13 AFTER INSERT ON release_group
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_13();
COMMENT ON TRIGGER search_release_insert_13 IS 'The path for this trigger is release_group';

CREATE TRIGGER search_release_update_13 AFTER UPDATE ON release_group
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_13();
COMMENT ON TRIGGER search_release_update_13 IS 'The path for this trigger is release_group';

CREATE TRIGGER search_release_delete_14 BEFORE DELETE ON release_group_primary_type
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_14();
COMMENT ON TRIGGER search_release_delete_14 IS 'The path for this trigger is release_group.type';

CREATE TRIGGER search_release_insert_14 AFTER INSERT ON release_group_primary_type
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_14();
COMMENT ON TRIGGER search_release_insert_14 IS 'The path for this trigger is release_group.type';

CREATE TRIGGER search_release_update_14 AFTER UPDATE ON release_group_primary_type
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_14();
COMMENT ON TRIGGER search_release_update_14 IS 'The path for this trigger is release_group.type';

CREATE TRIGGER search_release_delete_15 BEFORE DELETE ON script
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_15();
COMMENT ON TRIGGER search_release_delete_15 IS 'The path for this trigger is script';

CREATE TRIGGER search_release_insert_15 AFTER INSERT ON script
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_15();
COMMENT ON TRIGGER search_release_insert_15 IS 'The path for this trigger is script';

CREATE TRIGGER search_release_update_15 AFTER UPDATE ON script
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_15();
COMMENT ON TRIGGER search_release_update_15 IS 'The path for this trigger is script';

CREATE TRIGGER search_release_delete_16 BEFORE DELETE ON release_group_secondary_type_join
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_16();
COMMENT ON TRIGGER search_release_delete_16 IS 'The path for this trigger is release_group.secondary_types';

CREATE TRIGGER search_release_insert_16 AFTER INSERT ON release_group_secondary_type_join
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_16();
COMMENT ON TRIGGER search_release_insert_16 IS 'The path for this trigger is release_group.secondary_types';

CREATE TRIGGER search_release_update_16 AFTER UPDATE ON release_group_secondary_type_join
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_16();
COMMENT ON TRIGGER search_release_update_16 IS 'The path for this trigger is release_group.secondary_types';

CREATE TRIGGER search_release_delete_17 BEFORE DELETE ON release_group_secondary_type
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_17();
COMMENT ON TRIGGER search_release_delete_17 IS 'The path for this trigger is release_group.secondary_types.secondary_type';

CREATE TRIGGER search_release_insert_17 AFTER INSERT ON release_group_secondary_type
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_17();
COMMENT ON TRIGGER search_release_insert_17 IS 'The path for this trigger is release_group.secondary_types.secondary_type';

CREATE TRIGGER search_release_update_17 AFTER UPDATE ON release_group_secondary_type
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_17();
COMMENT ON TRIGGER search_release_update_17 IS 'The path for this trigger is release_group.secondary_types.secondary_type';

CREATE TRIGGER search_release_delete_18 BEFORE DELETE ON release_status
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_18();
COMMENT ON TRIGGER search_release_delete_18 IS 'The path for this trigger is status';

CREATE TRIGGER search_release_insert_18 AFTER INSERT ON release_status
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_18();
COMMENT ON TRIGGER search_release_insert_18 IS 'The path for this trigger is status';

CREATE TRIGGER search_release_update_18 AFTER UPDATE ON release_status
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_18();
COMMENT ON TRIGGER search_release_update_18 IS 'The path for this trigger is status';

CREATE TRIGGER search_release_delete_19 BEFORE DELETE ON release_tag
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_19();
COMMENT ON TRIGGER search_release_delete_19 IS 'The path for this trigger is tags';

CREATE TRIGGER search_release_insert_19 AFTER INSERT ON release_tag
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_19();
COMMENT ON TRIGGER search_release_insert_19 IS 'The path for this trigger is tags';

CREATE TRIGGER search_release_update_19 AFTER UPDATE ON release_tag
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_19();
COMMENT ON TRIGGER search_release_update_19 IS 'The path for this trigger is tags';

CREATE TRIGGER search_release_delete_20 BEFORE DELETE ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_release_delete_20();
COMMENT ON TRIGGER search_release_delete_20 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_release_insert_20 AFTER INSERT ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_release_insert_20();
COMMENT ON TRIGGER search_release_insert_20 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_release_update_20 AFTER UPDATE ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_release_update_20();
COMMENT ON TRIGGER search_release_update_20 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_release_group_delete_0 BEFORE DELETE ON release_group
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_delete_0();
COMMENT ON TRIGGER search_release_group_delete_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_release_group_insert_0 AFTER INSERT ON release_group
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_insert_0();
COMMENT ON TRIGGER search_release_group_insert_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_release_group_update_0 AFTER UPDATE ON release_group
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_update_0();
COMMENT ON TRIGGER search_release_group_update_0 IS 'The path for this trigger is direct';

CREATE TRIGGER search_release_group_delete_1 BEFORE DELETE ON artist_credit
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_delete_1();
COMMENT ON TRIGGER search_release_group_delete_1 IS 'The path for this trigger is artist_credit';

CREATE TRIGGER search_release_group_insert_1 AFTER INSERT ON artist_credit
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_insert_1();
COMMENT ON TRIGGER search_release_group_insert_1 IS 'The path for this trigger is artist_credit';

CREATE TRIGGER search_release_group_update_1 AFTER UPDATE ON artist_credit
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_update_1();
COMMENT ON TRIGGER search_release_group_update_1 IS 'The path for this trigger is artist_credit';

CREATE TRIGGER search_release_group_delete_2 BEFORE DELETE ON artist_credit_name
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_delete_2();
COMMENT ON TRIGGER search_release_group_delete_2 IS 'The path for this trigger is artist_credit.artists';

CREATE TRIGGER search_release_group_insert_2 AFTER INSERT ON artist_credit_name
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_insert_2();
COMMENT ON TRIGGER search_release_group_insert_2 IS 'The path for this trigger is artist_credit.artists';

CREATE TRIGGER search_release_group_update_2 AFTER UPDATE ON artist_credit_name
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_update_2();
COMMENT ON TRIGGER search_release_group_update_2 IS 'The path for this trigger is artist_credit.artists';

CREATE TRIGGER search_release_group_delete_3 BEFORE DELETE ON artist
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_delete_3();
COMMENT ON TRIGGER search_release_group_delete_3 IS 'The path for this trigger is artist_credit.artists.artist';

CREATE TRIGGER search_release_group_insert_3 AFTER INSERT ON artist
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_insert_3();
COMMENT ON TRIGGER search_release_group_insert_3 IS 'The path for this trigger is artist_credit.artists.artist';

CREATE TRIGGER search_release_group_update_3 AFTER UPDATE ON artist
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_update_3();
COMMENT ON TRIGGER search_release_group_update_3 IS 'The path for this trigger is artist_credit.artists.artist';

CREATE TRIGGER search_release_group_delete_4 BEFORE DELETE ON release
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_delete_4();
COMMENT ON TRIGGER search_release_group_delete_4 IS 'The path for this trigger is releases';

CREATE TRIGGER search_release_group_insert_4 AFTER INSERT ON release
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_insert_4();
COMMENT ON TRIGGER search_release_group_insert_4 IS 'The path for this trigger is releases';

CREATE TRIGGER search_release_group_update_4 AFTER UPDATE ON release
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_update_4();
COMMENT ON TRIGGER search_release_group_update_4 IS 'The path for this trigger is releases';

CREATE TRIGGER search_release_group_delete_5 BEFORE DELETE ON release_status
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_delete_5();
COMMENT ON TRIGGER search_release_group_delete_5 IS 'The path for this trigger is releases.status';

CREATE TRIGGER search_release_group_insert_5 AFTER INSERT ON release_status
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_insert_5();
COMMENT ON TRIGGER search_release_group_insert_5 IS 'The path for this trigger is releases.status';

CREATE TRIGGER search_release_group_update_5 AFTER UPDATE ON release_status
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_update_5();
COMMENT ON TRIGGER search_release_group_update_5 IS 'The path for this trigger is releases.status';

CREATE TRIGGER search_release_group_delete_6 BEFORE DELETE ON release_group_tag
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_delete_6();
COMMENT ON TRIGGER search_release_group_delete_6 IS 'The path for this trigger is tags';

CREATE TRIGGER search_release_group_insert_6 AFTER INSERT ON release_group_tag
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_insert_6();
COMMENT ON TRIGGER search_release_group_insert_6 IS 'The path for this trigger is tags';

CREATE TRIGGER search_release_group_update_6 AFTER UPDATE ON release_group_tag
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_update_6();
COMMENT ON TRIGGER search_release_group_update_6 IS 'The path for this trigger is tags';

CREATE TRIGGER search_release_group_delete_7 BEFORE DELETE ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_delete_7();
COMMENT ON TRIGGER search_release_group_delete_7 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_release_group_insert_7 AFTER INSERT ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_insert_7();
COMMENT ON TRIGGER search_release_group_insert_7 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_release_group_update_7 AFTER UPDATE ON tag
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_update_7();
COMMENT ON TRIGGER search_release_group_update_7 IS 'The path for this trigger is tags.tag';

CREATE TRIGGER search_release_group_delete_8 BEFORE DELETE ON release_group_primary_type
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_delete_8();
COMMENT ON TRIGGER search_release_group_delete_8 IS 'The path for this trigger is type';

CREATE TRIGGER search_release_group_insert_8 AFTER INSERT ON release_group_primary_type
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_insert_8();
COMMENT ON TRIGGER search_release_group_insert_8 IS 'The path for this trigger is type';

CREATE TRIGGER search_release_group_update_8 AFTER UPDATE ON release_group_primary_type
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_update_8();
COMMENT ON TRIGGER search_release_group_update_8 IS 'The path for this trigger is type';

CREATE TRIGGER search_release_group_delete_9 BEFORE DELETE ON release_group_secondary_type_join
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_delete_9();
COMMENT ON TRIGGER search_release_group_delete_9 IS 'The path for this trigger is secondary_types';

CREATE TRIGGER search_release_group_insert_9 AFTER INSERT ON release_group_secondary_type_join
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_insert_9();
COMMENT ON TRIGGER search_release_group_insert_9 IS 'The path for this trigger is secondary_types';

CREATE TRIGGER search_release_group_update_9 AFTER UPDATE ON release_group_secondary_type_join
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_update_9();
COMMENT ON TRIGGER search_release_group_update_9 IS 'The path for this trigger is secondary_types';

CREATE TRIGGER search_release_group_delete_10 BEFORE DELETE ON release_group_secondary_type
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_delete_10();
COMMENT ON TRIGGER search_release_group_delete_10 IS 'The path for this trigger is secondary_types.secondary_type';

CREATE TRIGGER search_release_group_insert_10 AFTER INSERT ON release_group_secondary_type
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_insert_10();
COMMENT ON TRIGGER search_release_group_insert_10 IS 'The path for this trigger is secondary_types.secondary_type';

CREATE TRIGGER search_release_group_update_10 AFTER UPDATE ON release_group_secondary_type
    FOR EACH ROW EXECUTE PROCEDURE search_release_group_update_10();
COMMENT ON TRIGGER search_release_group_update_10 IS 'The path for this trigger is secondary_types.secondary_type';
COMMIT;
