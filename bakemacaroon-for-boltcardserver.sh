#!/bin/sh

# Umbrelでboltcard server用のマカロンを作る

# LNULR-wのみ
docker exec lightning_lnd_1 lncli bakemacaroon \
--save_to /data/.lnd/data/chain/bitcoin/mainnet/SendPaymentV2.macaroon \
uri:/routerrpc.Router/SendPaymentV2

# 確認
docker exec lightning_lnd_1 lncli printmacaroon \
--macaroon_file  /data/.lnd/data/chain/bitcoin/mainnet/SendPaymentV2.macaroon

# LNURL-wおよびLNURL-p(ライトニングアドレス)
docker exec lightning_lnd_1 lncli bakemacaroon \
--save_to /data/.lnd/data/chain/bitcoin/mainnet/SendAddMonitor.macaroon \
uri:/routerrpc.Router/SendPaymentV2 \
uri:/lnrpc.Lightning/AddInvoice \
uri:/invoicesrpc.Invoices/SubscribeSingleInvoice 

# 確認
docker exec lightning_lnd_1 lncli printmacaroon \
--macaroon_file  /data/.lnd/data/chain/bitcoin/mainnet/SendAddMonitor.macaroon
