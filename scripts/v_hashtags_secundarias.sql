SELECT ht.name FROM hashtag ht
INNER JOIN tweet tw ON ht.tweet_id = tw.id
WHERE ht.name NOT IN (
	SELECT sub_ht.name FROM hashtag sub_ht WHERE sub_ht.filter_id = 1 AND sub_ht.primary = '1'
) AND tw.filter_id = 1;