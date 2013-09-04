SELECT rh.oeonrent, rd.pmdesc FROM renthead rh, rentdetl rd WHERE rh.kcustnum= @custid AND rh.kordnum = rd.kordnum AND rd.kpart = @kpart and rh.kordnum IN (SELECT equip.eqprano FROM equip WHERE equip.eqprntcust= @custid AND (equip.eqpstatus IN ('ON','PI') OR Col002='OTH') AND equip.GLAcc='142760') ORDER BY rh.kbranch,rh.kordnum DESC,rd.kpart,rh.oeonrent DESC

This is just a test. 