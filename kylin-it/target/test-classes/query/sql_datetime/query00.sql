SELECT

TEST_ORDER.ORDER_ID
,max(TEST_ORDER.TEST_TIME_ENC) as test_time
,max(TEST_ORDER.TEST_DATE_ENC) as test_date

FROM TEST_KYLIN_FACT as TEST_KYLIN_FACT 
INNER JOIN TEST_ORDER as TEST_ORDER
ON TEST_KYLIN_FACT.ORDER_ID = TEST_ORDER.ORDER_ID
INNER JOIN TEST_CATEGORY_GROUPINGS as TEST_CATEGORY_GROUPINGS
ON TEST_KYLIN_FACT.LEAF_CATEG_ID = TEST_CATEGORY_GROUPINGS.LEAF_CATEG_ID AND TEST_KYLIN_FACT.LSTG_SITE_ID = TEST_CATEGORY_GROUPINGS.SITE_ID

group by TEST_ORDER.ORDER_ID
order by TEST_ORDER.ORDER_ID