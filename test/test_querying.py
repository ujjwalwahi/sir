import mock
import unittest

from . import helpers, models
from collections import defaultdict
from sir.querying import (_defer_everything_but, _iterate_path_values,
                          merge_paths)


class DeferEverythingButTest(unittest.TestCase):
    def setUp(self):
        mapper = helpers.Object()
        mapper.iterate_properties = []
        self.mapper = mapper

        prop = helpers.Object()
        prop.columns = ""
        self.prop = prop
        self.mapper.iterate_properties.append(prop)

        self.load = mock.Mock()
        self.required_columns = ["key", "key2"]

    def test_plain_column_called(self):
        self.prop.key = "foo"
        load = _defer_everything_but(self.mapper, self.load, *self.required_columns)
        load.defer.assert_called_once_with("foo")

    def test_plain_column_not_called(self):
        self.prop.key = "key"
        load = _defer_everything_but(self.mapper, self.load, *self.required_columns)
        self.assertFalse(load.defer.called)

    def test_id_column(self):
        self.prop.key = "foo_id"
        load = _defer_everything_but(self.mapper, self.load,
                                     *self.required_columns)
        self.assertFalse(load.defer.called)

    def test_position_column(self):
        self.prop.key = "position"
        load = _defer_everything_but(self.mapper, self.load,
                                     *self.required_columns)
        self.assertFalse(load.defer.called)


class IteratePathValuesTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        c = models.C(id=1)
        c.bs.append(models.B(id=1))
        c.bs.append(models.B(id=2))
        cls.c = c
        cls.c_path = "bs.id"

        b = models.B(id=1)
        b.c = models.C(id=1)
        cls.b = b
        cls.b_path = "c.id"

    def test_one_to_many(self):
        res = list(_iterate_path_values(self.c_path, self.c))
        self.assertEqual(res, [1, 2])

    def test_attribute_without_relationship(self):
        res = list(_iterate_path_values("id", self.c))
        self.assertEqual(res, [1])

    def test_many_to_one(self):
        res = list(_iterate_path_values(self.b_path, self.b))
        self.assertEqual(res, [1])


class MergePathsTest(unittest.TestCase):
    def test_dotless_path(self):
        paths = [["id"], ["name"]]
        expected = {"id": "", "name": ""}
        self.assertEquals(merge_paths(paths), expected)

    def test_dotted_path(self):
        paths = [["rel.id"], ["rel2.rel3.id"]]
        expected = {
            "rel": defaultdict(set, id=""),
            "rel2": defaultdict(set,
                                rel3=defaultdict(set,
                                                 id=""
                                                 )
                                )
        }
        self.assertEqual(dict(merge_paths(paths)), expected)