@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'ZGSN_I_ORDERS_U Unmanaged'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZGSN_I_ORDERS_U
  as select from aufk  as _order
    inner join   afko           on _order.aufnr = afko.aufnr
    inner join   afih           on afih.aufnr = _order.aufnr
    inner join   usr05 as plant on  plant.bname = $session.user
                                and plant.parid = 'IWK'
  //    inner join            jsto  as statusprofile on statusprofile.objnr = _order.objnr
  //    inner join            jcds  as status        on  status.objnr =  _order.objnr
  //                                                 and status.inact != 'X'
  //    left outer join       tj30  as userstatus    on  userstatus.stsma = statusprofile.stsma
  //                                                 and userstatus.estat = status.stat
{
  key _order.aufnr   as WorkOrder,
      _order.auart   as OrderType,
      _order.autyp   as OrderCategory,
      _order.refnr   as ReferenceOrderNumber,
      _order.ernam   as EnteredBy,
      @Semantics.systemTime.createdAt: true
      _order.erdat   as CreatedOn,
      @Semantics.user.lastChangedBy: true
      _order.aenam   as LastChangedBy,
      @Semantics.systemTime.lastChangedAt: true
      _order.aedat   as ChangeDate,
      @Semantics.text: true
      _order.ktext   as Description,
//      _order.ltext   as LongTextExists,
      _order.bukrs   as CompanyCode,
      _order.werks   as Plant,
      _order.gsber   as BusinessArea,
      //      _order.kokrs     as Kokrs,
      //      _order.cckey     as Cckey,
      //      _order.kostv     as Kostv,
      //      _order.stort     as Stort,
      //      _order.sowrk     as Sowrk,
      //      _order.astkz     as Astkz,
      afih.priok     as Priority,
      afih.equnr     as Equipment,
      _order.waers   as OrderCurrency,
      //      _order.astnr        as OrderStatus,
      ////      statusprofile.stsma        as StatusProfile,
      ////      userstatus.estat           as UserStatusCode,
      ////      length( userstatus.estat ) as len,
      ////      case
      ////        when length( userstatus.estat ) <> 0 then  'C'
      ////        else 'O' end             as OrderStatus,
      //      case cast( length( userstatus.estat ) as abap.int1 )
      //      when cast( 0 as abap.int1 ) then cast( 'O' as abap.char( 1 ) )
      //      else  cast( 'C' as abap.char( 1 ) ) end as OrderStatus,
      //      _order.stdat     as Stdat,
      //      _order.estnr     as Estnr,
      //      _order.phas0     as Phas0,
      //      _order.phas1     as Phas1,
      //      _order.phas2     as Phas2,
      //      _order.phas3     as Phas3,
      //      _order.pdat1     as Pdat1,
      //      _order.pdat2     as Pdat2,
      //      _order.pdat3     as Pdat3,
      //      _order.idat1     as Idat1,
      //      _order.idat2     as Idat2,
      //      _order.idat3     as Idat3,
      //      _order.objid     as Objid,
      //      _order.vogrp     as Vogrp,
      //
      //      _order.plgkz     as Plgkz,
      //      _order.kvewe     as Kvewe,
      //      _order.kappl     as Kappl,
      //      _order.kalsm     as Kalsm,
      //      _order.zschl     as Zschl,
      //      _order.abkrs     as Abkrs,
      //      _order.kstar     as Kstar,
      //      _order.kostl     as Kostl,
      //      _order.saknr     as Saknr,
      //      _order.setnm     as Setnm,
      //      _order.cycle     as Cycle,
      //      _order.sdate     as Sdate,
      //      _order.seqnr     as Seqnr,
      //      _order.user0     as User0,
      //      _order.user1     as User1,
      //      _order.user2     as User2,
      //      _order.user3     as User3,
      //
      //      _order.user5     as User5,
      //      _order.user6     as User6,
      //      _order.user7     as User7,
      //      _order.user8     as User8,
      //      _order.user9     as User9,
      _order.objnr   as Objnr,
      //      _order.prctr     as Prctr,
      //      _order.pspel     as Pspel,
      //      _order.awsls     as Awsls,
      //      _order.abgsl     as Abgsl,
      //      _order.ebw_key   as EbwKey,
      //      _order.eb_post   as EbPost,
      //      _order.txjcd     as Txjcd,
      //      _order.func_area as FuncArea,
      //      _order.scope     as Scope,
      //      _order.plint     as Plint,
      //      _order.kdauf     as Kdauf,
      //      _order.kdpos     as Kdpos,
      //      _order.aufex     as Aufex,
      //      _order.ivpro     as Ivpro,
      //      _order.logsystem as Logsystem,
      //      _order.flg_mltps as FlgMltps,
      //      _order.abukr     as Abukr,
      //      _order.akstl     as Akstl,
      //      _order.sizecl    as Sizecl,
      //      _order.izwek     as Izwek,
      //      _order.umwkz     as Umwkz,
      //      _order.kstempf   as Kstempf,
      //      _order.zschm     as Zschm,
      //      _order.pkosa     as Pkosa,
      //      _order.anfaufnr  as Anfaufnr,
      //      _order.procnr    as Procnr,
      //      _order.proty     as Proty,
      //      _order.rsord     as Rsord,
      //      _order.bemot     as Bemot,
      _order.adrnra  as AddressNumber,
      _order.erfzeit as Erfzeit,
      _order.aezeit  as Aezeit
      //_order.cstg_vrnt as CstgVrnt,
      //_order.costestnr as Costestnr,
      //_order.veraa_user as VeraaUser,
      //_order.order_proc_mode as OrderProcMode,
      //_order.eew_aufk_ps_dummy as EewAufkPsDummy,
      //_order.vname as Vname,
      //_order.recid as Recid,
      //_order.etype as Etype,
      //_order.otype as Otype,
      //_order.jv_jibcl as JvJibcl,
      //_order.jv_jibsa as JvJibsa,
      //_order.jv_oco as JvOco,
      //_order.cpd_updat as CpdUpdat,
      //_order./cum/indcu,
      //_order./cum/cmnum,
      //_order./cum/auest,
      //_order./cum/desnum,
      //_order./mrss/pl_stru_id as /mrss/plStruId,
      //_order./mrss/pl_man_typ as /mrss/plManTyp,
      //_order./mrss/order_prob as /mrss/orderProb,
      //_order./mrss/act_type as /mrss/actType,
      //_order./mrss/init_done as /mrss/initDone,
      //_order./mrss/datachange,
      //_order./mrss/sales_org as /mrss/salesOrg,
      //_order./mrss/nw_booked as /mrss/nwBooked,
      //_order.ad01profnr as Ad01profnr,
      //_order.vaplz as Vaplz,
      //_order.wawrk as Wawrk,
      //_order.ferc_ind as FercInd,
      //_order.aufk_status as AufkStatus,
      //_order.claim_control as ClaimControl,
      //_order.update_needed as UpdateNeeded,
      //_order.update_control as UpdateControl,
      //_order.zztest as Zztest
}

where
      _order.loekz != 'X'
  and _order.werks =  plant.parva
