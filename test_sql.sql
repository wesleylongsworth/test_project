 SELECT
   cm.lead_id
 , COUNT(*) AS count
 FROM elastic-bi.master_marketing.sfdc_campaign_member AS cm
        LEFT JOIN
      elastic-bi.master_marketing.sfdc_lead AS l
      ON cm.lead_id = l.id
 WHERE cm.fcrm_fcr_net_new_lead_c = TRUE
   AND l.is_deleted = FALSE
 GROUP BY 1
 LIMIT 10