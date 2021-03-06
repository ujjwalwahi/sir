-- Automatically generated, do not edit
\set ON_ERROR_STOP 1
BEGIN;

CREATE OR REPLACE FUNCTION search_artist_delete_0() RETURNS trigger
    AS $$
DECLARE
    gids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO gids FROM (SELECT artist.gid AS id FROM artist WHERE artist.id = OLD.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'delete', 'artist ' || gids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_delete_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_artist_insert_0() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.id = NEW.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_insert_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_artist_update_0() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.id = NEW.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_update_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_artist_delete_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.id IN (OLD.artist)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_delete_1() IS 'The path for this function is aliases';

CREATE OR REPLACE FUNCTION search_artist_insert_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.id IN (NEW.artist)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_insert_1() IS 'The path for this function is aliases';

CREATE OR REPLACE FUNCTION search_artist_update_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.id IN (NEW.artist)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_update_1() IS 'The path for this function is aliases';

CREATE OR REPLACE FUNCTION search_artist_delete_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.area IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_delete_2() IS 'The path for this function is area';

CREATE OR REPLACE FUNCTION search_artist_insert_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.area IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_insert_2() IS 'The path for this function is area';

CREATE OR REPLACE FUNCTION search_artist_update_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.area IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_update_2() IS 'The path for this function is area';

CREATE OR REPLACE FUNCTION search_artist_delete_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.area IN (SELECT area.id FROM area WHERE area.id IN (OLD.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_delete_3() IS 'The path for this function is area.aliases';

CREATE OR REPLACE FUNCTION search_artist_insert_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.area IN (SELECT area.id FROM area WHERE area.id IN (NEW.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_insert_3() IS 'The path for this function is area.aliases';

CREATE OR REPLACE FUNCTION search_artist_update_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.area IN (SELECT area.id FROM area WHERE area.id IN (NEW.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_update_3() IS 'The path for this function is area.aliases';

CREATE OR REPLACE FUNCTION search_artist_delete_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.begin_area IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_delete_4() IS 'The path for this function is begin_area';

CREATE OR REPLACE FUNCTION search_artist_insert_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.begin_area IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_insert_4() IS 'The path for this function is begin_area';

CREATE OR REPLACE FUNCTION search_artist_update_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.begin_area IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_update_4() IS 'The path for this function is begin_area';

CREATE OR REPLACE FUNCTION search_artist_delete_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.begin_area IN (SELECT area.id FROM area WHERE area.id IN (OLD.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_delete_5() IS 'The path for this function is begin_area.aliases';

CREATE OR REPLACE FUNCTION search_artist_insert_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.begin_area IN (SELECT area.id FROM area WHERE area.id IN (NEW.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_insert_5() IS 'The path for this function is begin_area.aliases';

CREATE OR REPLACE FUNCTION search_artist_update_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.begin_area IN (SELECT area.id FROM area WHERE area.id IN (NEW.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_update_5() IS 'The path for this function is begin_area.aliases';

CREATE OR REPLACE FUNCTION search_artist_delete_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.area IN (SELECT area.id FROM area WHERE area.id IN (OLD.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_delete_6() IS 'The path for this function is area.iso_3166_1_codes';

CREATE OR REPLACE FUNCTION search_artist_insert_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.area IN (SELECT area.id FROM area WHERE area.id IN (NEW.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_insert_6() IS 'The path for this function is area.iso_3166_1_codes';

CREATE OR REPLACE FUNCTION search_artist_update_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.area IN (SELECT area.id FROM area WHERE area.id IN (NEW.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_update_6() IS 'The path for this function is area.iso_3166_1_codes';

CREATE OR REPLACE FUNCTION search_artist_delete_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.end_area IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_delete_7() IS 'The path for this function is end_area';

CREATE OR REPLACE FUNCTION search_artist_insert_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.end_area IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_insert_7() IS 'The path for this function is end_area';

CREATE OR REPLACE FUNCTION search_artist_update_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.end_area IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_update_7() IS 'The path for this function is end_area';

CREATE OR REPLACE FUNCTION search_artist_delete_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.end_area IN (SELECT area.id FROM area WHERE area.id IN (OLD.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_delete_8() IS 'The path for this function is end_area.aliases';

CREATE OR REPLACE FUNCTION search_artist_insert_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.end_area IN (SELECT area.id FROM area WHERE area.id IN (NEW.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_insert_8() IS 'The path for this function is end_area.aliases';

CREATE OR REPLACE FUNCTION search_artist_update_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.end_area IN (SELECT area.id FROM area WHERE area.id IN (NEW.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_update_8() IS 'The path for this function is end_area.aliases';

CREATE OR REPLACE FUNCTION search_artist_delete_9() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.gender IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_delete_9() IS 'The path for this function is gender';

CREATE OR REPLACE FUNCTION search_artist_insert_9() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.gender IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_insert_9() IS 'The path for this function is gender';

CREATE OR REPLACE FUNCTION search_artist_update_9() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.gender IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_update_9() IS 'The path for this function is gender';

CREATE OR REPLACE FUNCTION search_artist_delete_10() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.id IN (OLD.artist)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_delete_10() IS 'The path for this function is ipis';

CREATE OR REPLACE FUNCTION search_artist_insert_10() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.id IN (NEW.artist)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_insert_10() IS 'The path for this function is ipis';

CREATE OR REPLACE FUNCTION search_artist_update_10() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.id IN (NEW.artist)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_update_10() IS 'The path for this function is ipis';

CREATE OR REPLACE FUNCTION search_artist_delete_11() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.id IN (OLD.artist)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_delete_11() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_artist_insert_11() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.id IN (NEW.artist)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_insert_11() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_artist_update_11() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.id IN (NEW.artist)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_update_11() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_artist_delete_12() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.id IN (SELECT artist_tag.artist FROM artist_tag WHERE artist_tag.tag IN (OLD.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_delete_12() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_artist_insert_12() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.id IN (SELECT artist_tag.artist FROM artist_tag WHERE artist_tag.tag IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_insert_12() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_artist_update_12() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.id IN (SELECT artist_tag.artist FROM artist_tag WHERE artist_tag.tag IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_update_12() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_artist_delete_13() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.type IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_delete_13() IS 'The path for this function is type';

CREATE OR REPLACE FUNCTION search_artist_insert_13() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.type IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_insert_13() IS 'The path for this function is type';

CREATE OR REPLACE FUNCTION search_artist_update_13() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT artist.id FROM artist WHERE artist.type IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'artist ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_artist_update_13() IS 'The path for this function is type';

CREATE OR REPLACE FUNCTION search_work_delete_0() RETURNS trigger
    AS $$
DECLARE
    gids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO gids FROM (SELECT work.gid AS id FROM work WHERE work.id = OLD.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'delete', 'work ' || gids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_delete_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_work_insert_0() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id = NEW.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_insert_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_work_update_0() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id = NEW.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_update_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_work_delete_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (OLD.work)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_delete_1() IS 'The path for this function is aliases';

CREATE OR REPLACE FUNCTION search_work_insert_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (NEW.work)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_insert_1() IS 'The path for this function is aliases';

CREATE OR REPLACE FUNCTION search_work_update_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (NEW.work)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_update_1() IS 'The path for this function is aliases';

CREATE OR REPLACE FUNCTION search_work_delete_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (OLD.entity1)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_delete_2() IS 'The path for this function is artist_links';

CREATE OR REPLACE FUNCTION search_work_insert_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (NEW.entity1)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_insert_2() IS 'The path for this function is artist_links';

CREATE OR REPLACE FUNCTION search_work_update_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (NEW.entity1)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_update_2() IS 'The path for this function is artist_links';

CREATE OR REPLACE FUNCTION search_work_delete_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (SELECT l_artist_work.id FROM l_artist_work WHERE l_artist_work.entity0 IN (OLD.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_delete_3() IS 'The path for this function is artist_links.artist';

CREATE OR REPLACE FUNCTION search_work_insert_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (SELECT l_artist_work.id FROM l_artist_work WHERE l_artist_work.entity0 IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_insert_3() IS 'The path for this function is artist_links.artist';

CREATE OR REPLACE FUNCTION search_work_update_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (SELECT l_artist_work.id FROM l_artist_work WHERE l_artist_work.entity0 IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_update_3() IS 'The path for this function is artist_links.artist';

CREATE OR REPLACE FUNCTION search_work_delete_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (OLD.work)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_delete_4() IS 'The path for this function is iswcs';

CREATE OR REPLACE FUNCTION search_work_insert_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (NEW.work)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_insert_4() IS 'The path for this function is iswcs';

CREATE OR REPLACE FUNCTION search_work_update_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (NEW.work)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_update_4() IS 'The path for this function is iswcs';

CREATE OR REPLACE FUNCTION search_work_delete_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.language IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_delete_5() IS 'The path for this function is language';

CREATE OR REPLACE FUNCTION search_work_insert_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.language IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_insert_5() IS 'The path for this function is language';

CREATE OR REPLACE FUNCTION search_work_update_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.language IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_update_5() IS 'The path for this function is language';

CREATE OR REPLACE FUNCTION search_work_delete_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (OLD.work)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_delete_6() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_work_insert_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (NEW.work)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_insert_6() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_work_update_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (NEW.work)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_update_6() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_work_delete_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (SELECT work_tag.work FROM work_tag WHERE work_tag.tag IN (OLD.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_delete_7() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_work_insert_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (SELECT work_tag.work FROM work_tag WHERE work_tag.tag IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_insert_7() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_work_update_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.id IN (SELECT work_tag.work FROM work_tag WHERE work_tag.tag IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_update_7() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_work_delete_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.type IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_delete_8() IS 'The path for this function is type';

CREATE OR REPLACE FUNCTION search_work_insert_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.type IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_insert_8() IS 'The path for this function is type';

CREATE OR REPLACE FUNCTION search_work_update_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT work.id FROM work WHERE work.type IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'work ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_work_update_8() IS 'The path for this function is type';

CREATE OR REPLACE FUNCTION search_label_delete_0() RETURNS trigger
    AS $$
DECLARE
    gids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO gids FROM (SELECT label.gid AS id FROM label WHERE label.id = OLD.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'delete', 'label ' || gids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_delete_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_label_insert_0() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.id = NEW.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_insert_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_label_update_0() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.id = NEW.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_update_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_label_delete_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.id IN (OLD.label)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_delete_1() IS 'The path for this function is aliases';

CREATE OR REPLACE FUNCTION search_label_insert_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.id IN (NEW.label)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_insert_1() IS 'The path for this function is aliases';

CREATE OR REPLACE FUNCTION search_label_update_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.id IN (NEW.label)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_update_1() IS 'The path for this function is aliases';

CREATE OR REPLACE FUNCTION search_label_delete_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.area IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_delete_2() IS 'The path for this function is area';

CREATE OR REPLACE FUNCTION search_label_insert_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.area IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_insert_2() IS 'The path for this function is area';

CREATE OR REPLACE FUNCTION search_label_update_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.area IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_update_2() IS 'The path for this function is area';

CREATE OR REPLACE FUNCTION search_label_delete_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.area IN (SELECT area.id FROM area WHERE area.id IN (OLD.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_delete_3() IS 'The path for this function is area.aliases';

CREATE OR REPLACE FUNCTION search_label_insert_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.area IN (SELECT area.id FROM area WHERE area.id IN (NEW.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_insert_3() IS 'The path for this function is area.aliases';

CREATE OR REPLACE FUNCTION search_label_update_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.area IN (SELECT area.id FROM area WHERE area.id IN (NEW.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_update_3() IS 'The path for this function is area.aliases';

CREATE OR REPLACE FUNCTION search_label_delete_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.area IN (SELECT area.id FROM area WHERE area.id IN (OLD.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_delete_4() IS 'The path for this function is area.iso_3166_1_codes';

CREATE OR REPLACE FUNCTION search_label_insert_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.area IN (SELECT area.id FROM area WHERE area.id IN (NEW.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_insert_4() IS 'The path for this function is area.iso_3166_1_codes';

CREATE OR REPLACE FUNCTION search_label_update_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.area IN (SELECT area.id FROM area WHERE area.id IN (NEW.area))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_update_4() IS 'The path for this function is area.iso_3166_1_codes';

CREATE OR REPLACE FUNCTION search_label_delete_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.id IN (OLD.label)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_delete_5() IS 'The path for this function is ipis';

CREATE OR REPLACE FUNCTION search_label_insert_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.id IN (NEW.label)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_insert_5() IS 'The path for this function is ipis';

CREATE OR REPLACE FUNCTION search_label_update_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.id IN (NEW.label)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_update_5() IS 'The path for this function is ipis';

CREATE OR REPLACE FUNCTION search_label_delete_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.id IN (OLD.label)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_delete_6() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_label_insert_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.id IN (NEW.label)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_insert_6() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_label_update_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.id IN (NEW.label)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_update_6() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_label_delete_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.id IN (SELECT label_tag.label FROM label_tag WHERE label_tag.tag IN (OLD.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_delete_7() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_label_insert_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.id IN (SELECT label_tag.label FROM label_tag WHERE label_tag.tag IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_insert_7() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_label_update_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.id IN (SELECT label_tag.label FROM label_tag WHERE label_tag.tag IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_update_7() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_label_delete_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.type IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_delete_8() IS 'The path for this function is type';

CREATE OR REPLACE FUNCTION search_label_insert_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.type IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_insert_8() IS 'The path for this function is type';

CREATE OR REPLACE FUNCTION search_label_update_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT label.id FROM label WHERE label.type IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'label ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_label_update_8() IS 'The path for this function is type';

CREATE OR REPLACE FUNCTION search_recording_delete_0() RETURNS trigger
    AS $$
DECLARE
    gids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO gids FROM (SELECT recording.gid AS id FROM recording WHERE recording.id = OLD.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'delete', 'recording ' || gids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_recording_insert_0() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id = NEW.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_recording_update_0() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id = NEW.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_recording_delete_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.artist_credit IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_1() IS 'The path for this function is artist_credit';

CREATE OR REPLACE FUNCTION search_recording_insert_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.artist_credit IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_1() IS 'The path for this function is artist_credit';

CREATE OR REPLACE FUNCTION search_recording_update_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.artist_credit IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_1() IS 'The path for this function is artist_credit';

CREATE OR REPLACE FUNCTION search_recording_delete_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (OLD.artist_credit))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_2() IS 'The path for this function is artist_credit.artists';

CREATE OR REPLACE FUNCTION search_recording_insert_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (NEW.artist_credit))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_2() IS 'The path for this function is artist_credit.artists';

CREATE OR REPLACE FUNCTION search_recording_update_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (NEW.artist_credit))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_2() IS 'The path for this function is artist_credit.artists';

CREATE OR REPLACE FUNCTION search_recording_delete_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (SELECT artist_credit_name.artist_credit FROM artist_credit_name WHERE artist_credit_name.artist IN (OLD.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_3() IS 'The path for this function is artist_credit.artists.artist';

CREATE OR REPLACE FUNCTION search_recording_insert_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (SELECT artist_credit_name.artist_credit FROM artist_credit_name WHERE artist_credit_name.artist IN (NEW.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_3() IS 'The path for this function is artist_credit.artists.artist';

CREATE OR REPLACE FUNCTION search_recording_update_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (SELECT artist_credit_name.artist_credit FROM artist_credit_name WHERE artist_credit_name.artist IN (NEW.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_3() IS 'The path for this function is artist_credit.artists.artist';

CREATE OR REPLACE FUNCTION search_recording_delete_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (OLD.recording)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_4() IS 'The path for this function is tracks';

CREATE OR REPLACE FUNCTION search_recording_insert_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (NEW.recording)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_4() IS 'The path for this function is tracks';

CREATE OR REPLACE FUNCTION search_recording_update_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (NEW.recording)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_4() IS 'The path for this function is tracks';

CREATE OR REPLACE FUNCTION search_recording_delete_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (OLD.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_5() IS 'The path for this function is tracks.medium';

CREATE OR REPLACE FUNCTION search_recording_insert_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_5() IS 'The path for this function is tracks.medium';

CREATE OR REPLACE FUNCTION search_recording_update_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_5() IS 'The path for this function is tracks.medium';

CREATE OR REPLACE FUNCTION search_recording_delete_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (OLD.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_6() IS 'The path for this function is tracks.medium.release';

CREATE OR REPLACE FUNCTION search_recording_insert_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (NEW.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_6() IS 'The path for this function is tracks.medium.release';

CREATE OR REPLACE FUNCTION search_recording_update_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (NEW.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_6() IS 'The path for this function is tracks.medium.release';

CREATE OR REPLACE FUNCTION search_recording_delete_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.id IN (OLD.release))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_7() IS 'The path for this function is tracks.medium.release.country_dates';

CREATE OR REPLACE FUNCTION search_recording_insert_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.id IN (NEW.release))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_7() IS 'The path for this function is tracks.medium.release.country_dates';

CREATE OR REPLACE FUNCTION search_recording_update_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.id IN (NEW.release))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_7() IS 'The path for this function is tracks.medium.release.country_dates';

CREATE OR REPLACE FUNCTION search_recording_delete_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.id IN (SELECT release_country.release FROM release_country WHERE release_country.country IN (OLD.id)))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_8() IS 'The path for this function is tracks.medium.release.country_dates.country';

CREATE OR REPLACE FUNCTION search_recording_insert_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.id IN (SELECT release_country.release FROM release_country WHERE release_country.country IN (NEW.id)))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_8() IS 'The path for this function is tracks.medium.release.country_dates.country';

CREATE OR REPLACE FUNCTION search_recording_update_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.id IN (SELECT release_country.release FROM release_country WHERE release_country.country IN (NEW.id)))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_8() IS 'The path for this function is tracks.medium.release.country_dates.country';

CREATE OR REPLACE FUNCTION search_recording_delete_9() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.id IN (SELECT release_country.release FROM release_country WHERE release_country.country IN (SELECT country_area.area FROM country_area WHERE country_area.area IN (OLD.id))))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_9() IS 'The path for this function is tracks.medium.release.country_dates.country.area';

CREATE OR REPLACE FUNCTION search_recording_insert_9() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.id IN (SELECT release_country.release FROM release_country WHERE release_country.country IN (SELECT country_area.area FROM country_area WHERE country_area.area IN (NEW.id))))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_9() IS 'The path for this function is tracks.medium.release.country_dates.country.area';

CREATE OR REPLACE FUNCTION search_recording_update_9() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.id IN (SELECT release_country.release FROM release_country WHERE release_country.country IN (SELECT country_area.area FROM country_area WHERE country_area.area IN (NEW.id))))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_9() IS 'The path for this function is tracks.medium.release.country_dates.country.area';

CREATE OR REPLACE FUNCTION search_recording_delete_10() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.format IN (OLD.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_10() IS 'The path for this function is tracks.medium.format';

CREATE OR REPLACE FUNCTION search_recording_insert_10() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.format IN (NEW.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_10() IS 'The path for this function is tracks.medium.format';

CREATE OR REPLACE FUNCTION search_recording_update_10() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.format IN (NEW.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_10() IS 'The path for this function is tracks.medium.format';

CREATE OR REPLACE FUNCTION search_recording_delete_11() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (OLD.recording)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_11() IS 'The path for this function is isrcs';

CREATE OR REPLACE FUNCTION search_recording_insert_11() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (NEW.recording)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_11() IS 'The path for this function is isrcs';

CREATE OR REPLACE FUNCTION search_recording_update_11() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (NEW.recording)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_11() IS 'The path for this function is isrcs';

CREATE OR REPLACE FUNCTION search_recording_delete_12() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.release_group IN (OLD.id))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_12() IS 'The path for this function is tracks.medium.release.release_group';

CREATE OR REPLACE FUNCTION search_recording_insert_12() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.release_group IN (NEW.id))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_12() IS 'The path for this function is tracks.medium.release.release_group';

CREATE OR REPLACE FUNCTION search_recording_update_12() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.release_group IN (NEW.id))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_12() IS 'The path for this function is tracks.medium.release.release_group';

CREATE OR REPLACE FUNCTION search_recording_delete_13() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.type IN (OLD.id)))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_13() IS 'The path for this function is tracks.medium.release.release_group.type';

CREATE OR REPLACE FUNCTION search_recording_insert_13() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.type IN (NEW.id)))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_13() IS 'The path for this function is tracks.medium.release.release_group.type';

CREATE OR REPLACE FUNCTION search_recording_update_13() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.type IN (NEW.id)))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_13() IS 'The path for this function is tracks.medium.release.release_group.type';

CREATE OR REPLACE FUNCTION search_recording_delete_14() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.id IN (OLD.release_group)))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_14() IS 'The path for this function is tracks.medium.release.release_group.secondary_types';

CREATE OR REPLACE FUNCTION search_recording_insert_14() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.id IN (NEW.release_group)))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_14() IS 'The path for this function is tracks.medium.release.release_group.secondary_types';

CREATE OR REPLACE FUNCTION search_recording_update_14() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.id IN (NEW.release_group)))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_14() IS 'The path for this function is tracks.medium.release.release_group.secondary_types';

CREATE OR REPLACE FUNCTION search_recording_delete_15() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.id IN (SELECT release_group_secondary_type_join.release_group FROM release_group_secondary_type_join WHERE release_group_secondary_type_join.secondary_type IN (OLD.id))))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_15() IS 'The path for this function is tracks.medium.release.release_group.secondary_types.secondary_type';

CREATE OR REPLACE FUNCTION search_recording_insert_15() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.id IN (SELECT release_group_secondary_type_join.release_group FROM release_group_secondary_type_join WHERE release_group_secondary_type_join.secondary_type IN (NEW.id))))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_15() IS 'The path for this function is tracks.medium.release.release_group.secondary_types.secondary_type';

CREATE OR REPLACE FUNCTION search_recording_update_15() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.id IN (SELECT release_group_secondary_type_join.release_group FROM release_group_secondary_type_join WHERE release_group_secondary_type_join.secondary_type IN (NEW.id))))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_15() IS 'The path for this function is tracks.medium.release.release_group.secondary_types.secondary_type';

CREATE OR REPLACE FUNCTION search_recording_delete_16() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.status IN (OLD.id))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_16() IS 'The path for this function is tracks.medium.release.status';

CREATE OR REPLACE FUNCTION search_recording_insert_16() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.status IN (NEW.id))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_16() IS 'The path for this function is tracks.medium.release.status';

CREATE OR REPLACE FUNCTION search_recording_update_16() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.status IN (NEW.id))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_16() IS 'The path for this function is tracks.medium.release.status';

CREATE OR REPLACE FUNCTION search_recording_delete_17() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (OLD.recording)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_17() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_recording_insert_17() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (NEW.recording)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_17() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_recording_update_17() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (NEW.recording)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_17() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_recording_delete_18() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT recording_tag.recording FROM recording_tag WHERE recording_tag.tag IN (OLD.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_18() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_recording_insert_18() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT recording_tag.recording FROM recording_tag WHERE recording_tag.tag IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_18() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_recording_update_18() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT recording_tag.recording FROM recording_tag WHERE recording_tag.tag IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_18() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_recording_delete_19() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.id IN (OLD.release))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_delete_19() IS 'The path for this function is tracks.medium.release.mediums';

CREATE OR REPLACE FUNCTION search_recording_insert_19() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.id IN (NEW.release))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_insert_19() IS 'The path for this function is tracks.medium.release.mediums';

CREATE OR REPLACE FUNCTION search_recording_update_19() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT recording.id FROM recording WHERE recording.id IN (SELECT track.id FROM track WHERE track.medium IN (SELECT medium.id FROM medium WHERE medium.release IN (SELECT release.id FROM release WHERE release.id IN (NEW.release))))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'recording ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_recording_update_19() IS 'The path for this function is tracks.medium.release.mediums';

CREATE OR REPLACE FUNCTION search_release_delete_0() RETURNS trigger
    AS $$
DECLARE
    gids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO gids FROM (SELECT release.gid AS id FROM release WHERE release.id = OLD.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'delete', 'release ' || gids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_release_insert_0() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id = NEW.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_release_update_0() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id = NEW.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_release_delete_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.artist_credit IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_1() IS 'The path for this function is artist_credit';

CREATE OR REPLACE FUNCTION search_release_insert_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.artist_credit IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_1() IS 'The path for this function is artist_credit';

CREATE OR REPLACE FUNCTION search_release_update_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.artist_credit IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_1() IS 'The path for this function is artist_credit';

CREATE OR REPLACE FUNCTION search_release_delete_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (OLD.artist_credit))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_2() IS 'The path for this function is artist_credit.artists';

CREATE OR REPLACE FUNCTION search_release_insert_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (NEW.artist_credit))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_2() IS 'The path for this function is artist_credit.artists';

CREATE OR REPLACE FUNCTION search_release_update_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (NEW.artist_credit))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_2() IS 'The path for this function is artist_credit.artists';

CREATE OR REPLACE FUNCTION search_release_delete_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (SELECT artist_credit_name.artist_credit FROM artist_credit_name WHERE artist_credit_name.artist IN (OLD.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_3() IS 'The path for this function is artist_credit.artists.artist';

CREATE OR REPLACE FUNCTION search_release_insert_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (SELECT artist_credit_name.artist_credit FROM artist_credit_name WHERE artist_credit_name.artist IN (NEW.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_3() IS 'The path for this function is artist_credit.artists.artist';

CREATE OR REPLACE FUNCTION search_release_update_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (SELECT artist_credit_name.artist_credit FROM artist_credit_name WHERE artist_credit_name.artist IN (NEW.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_3() IS 'The path for this function is artist_credit.artists.artist';

CREATE OR REPLACE FUNCTION search_release_delete_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (OLD.release)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_4() IS 'The path for this function is country_dates';

CREATE OR REPLACE FUNCTION search_release_insert_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (NEW.release)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_4() IS 'The path for this function is country_dates';

CREATE OR REPLACE FUNCTION search_release_update_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (NEW.release)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_4() IS 'The path for this function is country_dates';

CREATE OR REPLACE FUNCTION search_release_delete_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT release_country.release FROM release_country WHERE release_country.country IN (OLD.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_5() IS 'The path for this function is country_dates.country';

CREATE OR REPLACE FUNCTION search_release_insert_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT release_country.release FROM release_country WHERE release_country.country IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_5() IS 'The path for this function is country_dates.country';

CREATE OR REPLACE FUNCTION search_release_update_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT release_country.release FROM release_country WHERE release_country.country IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_5() IS 'The path for this function is country_dates.country';

CREATE OR REPLACE FUNCTION search_release_delete_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT release_country.release FROM release_country WHERE release_country.country IN (SELECT country_area.area FROM country_area WHERE country_area.area IN (OLD.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_6() IS 'The path for this function is country_dates.country.area';

CREATE OR REPLACE FUNCTION search_release_insert_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT release_country.release FROM release_country WHERE release_country.country IN (SELECT country_area.area FROM country_area WHERE country_area.area IN (NEW.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_6() IS 'The path for this function is country_dates.country.area';

CREATE OR REPLACE FUNCTION search_release_update_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT release_country.release FROM release_country WHERE release_country.country IN (SELECT country_area.area FROM country_area WHERE country_area.area IN (NEW.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_6() IS 'The path for this function is country_dates.country.area';

CREATE OR REPLACE FUNCTION search_release_delete_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (OLD.release)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_7() IS 'The path for this function is labels';

CREATE OR REPLACE FUNCTION search_release_insert_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (NEW.release)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_7() IS 'The path for this function is labels';

CREATE OR REPLACE FUNCTION search_release_update_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (NEW.release)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_7() IS 'The path for this function is labels';

CREATE OR REPLACE FUNCTION search_release_delete_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (OLD.release)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_8() IS 'The path for this function is mediums';

CREATE OR REPLACE FUNCTION search_release_insert_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (NEW.release)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_8() IS 'The path for this function is mediums';

CREATE OR REPLACE FUNCTION search_release_update_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (NEW.release)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_8() IS 'The path for this function is mediums';

CREATE OR REPLACE FUNCTION search_release_delete_9() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT medium.id FROM medium WHERE medium.id IN (OLD.medium))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_9() IS 'The path for this function is mediums.cdtocs';

CREATE OR REPLACE FUNCTION search_release_insert_9() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT medium.id FROM medium WHERE medium.id IN (NEW.medium))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_9() IS 'The path for this function is mediums.cdtocs';

CREATE OR REPLACE FUNCTION search_release_update_9() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT medium.id FROM medium WHERE medium.id IN (NEW.medium))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_9() IS 'The path for this function is mediums.cdtocs';

CREATE OR REPLACE FUNCTION search_release_delete_10() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT medium.id FROM medium WHERE medium.format IN (OLD.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_10() IS 'The path for this function is mediums.format';

CREATE OR REPLACE FUNCTION search_release_insert_10() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT medium.id FROM medium WHERE medium.format IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_10() IS 'The path for this function is mediums.format';

CREATE OR REPLACE FUNCTION search_release_update_10() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT medium.id FROM medium WHERE medium.format IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_10() IS 'The path for this function is mediums.format';

CREATE OR REPLACE FUNCTION search_release_delete_11() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT release_label.id FROM release_label WHERE release_label.label IN (OLD.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_11() IS 'The path for this function is labels.label';

CREATE OR REPLACE FUNCTION search_release_insert_11() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT release_label.id FROM release_label WHERE release_label.label IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_11() IS 'The path for this function is labels.label';

CREATE OR REPLACE FUNCTION search_release_update_11() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT release_label.id FROM release_label WHERE release_label.label IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_11() IS 'The path for this function is labels.label';

CREATE OR REPLACE FUNCTION search_release_delete_12() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.language IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_12() IS 'The path for this function is language';

CREATE OR REPLACE FUNCTION search_release_insert_12() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.language IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_12() IS 'The path for this function is language';

CREATE OR REPLACE FUNCTION search_release_update_12() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.language IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_12() IS 'The path for this function is language';

CREATE OR REPLACE FUNCTION search_release_delete_13() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.release_group IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_13() IS 'The path for this function is release_group';

CREATE OR REPLACE FUNCTION search_release_insert_13() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.release_group IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_13() IS 'The path for this function is release_group';

CREATE OR REPLACE FUNCTION search_release_update_13() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.release_group IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_13() IS 'The path for this function is release_group';

CREATE OR REPLACE FUNCTION search_release_delete_14() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.type IN (OLD.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_14() IS 'The path for this function is release_group.type';

CREATE OR REPLACE FUNCTION search_release_insert_14() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.type IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_14() IS 'The path for this function is release_group.type';

CREATE OR REPLACE FUNCTION search_release_update_14() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.type IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_14() IS 'The path for this function is release_group.type';

CREATE OR REPLACE FUNCTION search_release_delete_15() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.script IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_15() IS 'The path for this function is script';

CREATE OR REPLACE FUNCTION search_release_insert_15() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.script IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_15() IS 'The path for this function is script';

CREATE OR REPLACE FUNCTION search_release_update_15() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.script IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_15() IS 'The path for this function is script';

CREATE OR REPLACE FUNCTION search_release_delete_16() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.id IN (OLD.release_group))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_16() IS 'The path for this function is release_group.secondary_types';

CREATE OR REPLACE FUNCTION search_release_insert_16() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.id IN (NEW.release_group))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_16() IS 'The path for this function is release_group.secondary_types';

CREATE OR REPLACE FUNCTION search_release_update_16() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.id IN (NEW.release_group))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_16() IS 'The path for this function is release_group.secondary_types';

CREATE OR REPLACE FUNCTION search_release_delete_17() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.id IN (SELECT release_group_secondary_type_join.release_group FROM release_group_secondary_type_join WHERE release_group_secondary_type_join.secondary_type IN (OLD.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_17() IS 'The path for this function is release_group.secondary_types.secondary_type';

CREATE OR REPLACE FUNCTION search_release_insert_17() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.id IN (SELECT release_group_secondary_type_join.release_group FROM release_group_secondary_type_join WHERE release_group_secondary_type_join.secondary_type IN (NEW.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_17() IS 'The path for this function is release_group.secondary_types.secondary_type';

CREATE OR REPLACE FUNCTION search_release_update_17() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.release_group IN (SELECT release_group.id FROM release_group WHERE release_group.id IN (SELECT release_group_secondary_type_join.release_group FROM release_group_secondary_type_join WHERE release_group_secondary_type_join.secondary_type IN (NEW.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_17() IS 'The path for this function is release_group.secondary_types.secondary_type';

CREATE OR REPLACE FUNCTION search_release_delete_18() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.status IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_18() IS 'The path for this function is status';

CREATE OR REPLACE FUNCTION search_release_insert_18() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.status IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_18() IS 'The path for this function is status';

CREATE OR REPLACE FUNCTION search_release_update_18() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.status IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_18() IS 'The path for this function is status';

CREATE OR REPLACE FUNCTION search_release_delete_19() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (OLD.release)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_19() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_release_insert_19() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (NEW.release)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_19() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_release_update_19() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (NEW.release)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_19() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_release_delete_20() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT release_tag.release FROM release_tag WHERE release_tag.tag IN (OLD.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_delete_20() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_release_insert_20() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT release_tag.release FROM release_tag WHERE release_tag.tag IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_insert_20() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_release_update_20() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release.id FROM release WHERE release.id IN (SELECT release_tag.release FROM release_tag WHERE release_tag.tag IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_update_20() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_release_group_delete_0() RETURNS trigger
    AS $$
DECLARE
    gids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO gids FROM (SELECT release_group.gid AS id FROM release_group WHERE release_group.id = OLD.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'delete', 'release_group ' || gids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_delete_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_release_group_insert_0() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id = NEW.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_insert_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_release_group_update_0() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id = NEW.id) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_update_0() IS 'The path for this function is direct';

CREATE OR REPLACE FUNCTION search_release_group_delete_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.artist_credit IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_delete_1() IS 'The path for this function is artist_credit';

CREATE OR REPLACE FUNCTION search_release_group_insert_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.artist_credit IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_insert_1() IS 'The path for this function is artist_credit';

CREATE OR REPLACE FUNCTION search_release_group_update_1() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.artist_credit IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_update_1() IS 'The path for this function is artist_credit';

CREATE OR REPLACE FUNCTION search_release_group_delete_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (OLD.artist_credit))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_delete_2() IS 'The path for this function is artist_credit.artists';

CREATE OR REPLACE FUNCTION search_release_group_insert_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (NEW.artist_credit))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_insert_2() IS 'The path for this function is artist_credit.artists';

CREATE OR REPLACE FUNCTION search_release_group_update_2() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (NEW.artist_credit))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_update_2() IS 'The path for this function is artist_credit.artists';

CREATE OR REPLACE FUNCTION search_release_group_delete_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (SELECT artist_credit_name.artist_credit FROM artist_credit_name WHERE artist_credit_name.artist IN (OLD.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_delete_3() IS 'The path for this function is artist_credit.artists.artist';

CREATE OR REPLACE FUNCTION search_release_group_insert_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (SELECT artist_credit_name.artist_credit FROM artist_credit_name WHERE artist_credit_name.artist IN (NEW.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_insert_3() IS 'The path for this function is artist_credit.artists.artist';

CREATE OR REPLACE FUNCTION search_release_group_update_3() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.artist_credit IN (SELECT artist_credit.id FROM artist_credit WHERE artist_credit.id IN (SELECT artist_credit_name.artist_credit FROM artist_credit_name WHERE artist_credit_name.artist IN (NEW.id)))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_update_3() IS 'The path for this function is artist_credit.artists.artist';

CREATE OR REPLACE FUNCTION search_release_group_delete_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (OLD.release_group)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_delete_4() IS 'The path for this function is releases';

CREATE OR REPLACE FUNCTION search_release_group_insert_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (NEW.release_group)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_insert_4() IS 'The path for this function is releases';

CREATE OR REPLACE FUNCTION search_release_group_update_4() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (NEW.release_group)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_update_4() IS 'The path for this function is releases';

CREATE OR REPLACE FUNCTION search_release_group_delete_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (SELECT release.id FROM release WHERE release.status IN (OLD.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_delete_5() IS 'The path for this function is releases.status';

CREATE OR REPLACE FUNCTION search_release_group_insert_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (SELECT release.id FROM release WHERE release.status IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_insert_5() IS 'The path for this function is releases.status';

CREATE OR REPLACE FUNCTION search_release_group_update_5() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (SELECT release.id FROM release WHERE release.status IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_update_5() IS 'The path for this function is releases.status';

CREATE OR REPLACE FUNCTION search_release_group_delete_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (OLD.release_group)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_delete_6() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_release_group_insert_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (NEW.release_group)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_insert_6() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_release_group_update_6() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (NEW.release_group)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_update_6() IS 'The path for this function is tags';

CREATE OR REPLACE FUNCTION search_release_group_delete_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (SELECT release_group_tag.release_group FROM release_group_tag WHERE release_group_tag.tag IN (OLD.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_delete_7() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_release_group_insert_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (SELECT release_group_tag.release_group FROM release_group_tag WHERE release_group_tag.tag IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_insert_7() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_release_group_update_7() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (SELECT release_group_tag.release_group FROM release_group_tag WHERE release_group_tag.tag IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_update_7() IS 'The path for this function is tags.tag';

CREATE OR REPLACE FUNCTION search_release_group_delete_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.type IN (OLD.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_delete_8() IS 'The path for this function is type';

CREATE OR REPLACE FUNCTION search_release_group_insert_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.type IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_insert_8() IS 'The path for this function is type';

CREATE OR REPLACE FUNCTION search_release_group_update_8() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.type IN (NEW.id)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_update_8() IS 'The path for this function is type';

CREATE OR REPLACE FUNCTION search_release_group_delete_9() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (OLD.release_group)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_delete_9() IS 'The path for this function is secondary_types';

CREATE OR REPLACE FUNCTION search_release_group_insert_9() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (NEW.release_group)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_insert_9() IS 'The path for this function is secondary_types';

CREATE OR REPLACE FUNCTION search_release_group_update_9() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (NEW.release_group)) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_update_9() IS 'The path for this function is secondary_types';

CREATE OR REPLACE FUNCTION search_release_group_delete_10() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (SELECT release_group_secondary_type_join.release_group FROM release_group_secondary_type_join WHERE release_group_secondary_type_join.secondary_type IN (OLD.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_delete_10() IS 'The path for this function is secondary_types.secondary_type';

CREATE OR REPLACE FUNCTION search_release_group_insert_10() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (SELECT release_group_secondary_type_join.release_group FROM release_group_secondary_type_join WHERE release_group_secondary_type_join.secondary_type IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'index', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_insert_10() IS 'The path for this function is secondary_types.secondary_type';

CREATE OR REPLACE FUNCTION search_release_group_update_10() RETURNS trigger
    AS $$
DECLARE
    ids TEXT;
BEGIN
    SELECT string_agg(tmp.id::text, ' ') INTO ids FROM (SELECT release_group.id FROM release_group WHERE release_group.id IN (SELECT release_group_secondary_type_join.release_group FROM release_group_secondary_type_join WHERE release_group_secondary_type_join.secondary_type IN (NEW.id))) AS tmp;
    PERFORM amqp.publish(1, 'search', 'update', 'release_group ' || ids);
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;
COMMENT ON FUNCTION search_release_group_update_10() IS 'The path for this function is secondary_types.secondary_type';
COMMIT;
