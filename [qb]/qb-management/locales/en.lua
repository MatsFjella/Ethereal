-- Add translations by MC
local Translations = {
    headers = {
        ['bsm'] = 'Sjefsmeny - ',
    },
    body = {
        ['manage'] = 'Administrer ansatte',
        ['managed'] = 'Sjekk din ansattliste',
        ['hire'] = 'Ansett',
        ['hired'] = 'Ansett personer i nærheten',
        ['storage'] = 'Lagringstilgang',
        ['storaged'] = 'Åpne lager',
        ['outfits'] = 'Antrekk',
        ['outfitsd'] = 'Se lagrede antrekk',
        ['money'] = 'Penger',
        ['moneyd'] = 'Se balanse',
        ['mempl'] = 'Administrer ansatte - ',
        ['mngpl'] = 'Administrer ',
        ['grade'] = 'Grad: ',
        ['fireemp'] = 'Gi sparken',
        ['hireemp'] = 'Ansett - ',
        ['cid'] = 'ID: ',
        ['balance'] = 'Balanse: kr',
        ['deposit'] = 'Innskudd',
        ['depositd'] = 'Sett inn penger på konto',
        ['withdraw'] = 'Uttak',
        ['withdrawd'] = 'Ta ut penger fra konto',
        ['depositm'] = 'Sett inn penger <br> Tilgjengelig saldo: kr',
        ['withdrawm'] = 'Ta ut penger <br> Tilgjengelig saldo: kr',
        ['submit'] = 'Godkjenn',
        ['amount'] = 'Beløp',
        ['return'] = 'Returner',
        ['exit'] = 'Gå ut',
    },
    drawtext = {
        ['label'] = '[E] Åpne Jobbmeny',
    },
    target = {
        ['label'] = 'Sjefmeny',
    },
    headersgang = {
        ['bsm'] = 'Gjengmeny  - ',
    },
    bodygang = {
        ['manage'] = 'Gjeng medlemmer',
        ['managed'] = 'Rekruttere eller spark gjengmedlemmer',
        ['hire'] = 'Rekrutter medlemmer',
        ['hired'] = 'Ansett gjengmedlemmer',
        ['storage'] = 'Lagringstilgang',
        ['storaged'] = 'Åpne gjeng Stash',
        ['outfits'] = 'Antrekk',
        ['outfitsd'] = 'Endre antrekk',
        ['money'] = 'Penger',
        ['moneyd'] = 'Sjekk gjeng saldo',
        ['mempl'] = 'Administrer medlemmer - ',
        ['mngpl'] = 'Administrer ',
        ['grade'] = 'Grad: ',
        ['fireemp'] = 'Spark',
        ['hireemp'] = 'Spark gjengmedlemmer - ',
        ['cid'] = 'ID: ',
        ['balance'] = 'Balanse: kr',
        ['deposit'] = 'Innskudd',
        ['depositd'] = 'Sett inn penger på konto',
        ['withdraw'] = 'Uttak',
        ['withdrawd'] = 'Ta ut penger fra konto',
        ['depositm'] = 'Sett inn penger <br> Tilgjengelig saldo: kr',
        ['withdrawm'] = 'Ta ut penger <br> Tilgjengelig saldo: kr',
        ['submit'] = 'Godkjenn',
        ['amount'] = 'Beløp',
        ['return'] = 'Returner',
        ['exit'] = 'Gå ut',
    },
    drawtextgang = {
        ['label'] = '[E] Åpne gjengmeny',
    },
    targetgang = {
        ['label'] = 'Gjengmeny',
    }
}

Lang = Lang or Locale:new({
    phrases = Translations,
    warnOnMissing = true
})
