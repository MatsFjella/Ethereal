<script lang="ts">
  import AccountsList from './Accounts/AccountsList.svelte';
  import AccountTransactionsList from './Accounts/AccountTransactionsList.svelte';
  import { accounts, translations } from '../store/stores';
  import { formatMoney } from '../utils/misc';
</script>

<div class="main">
  <section>
    <AccountsList />
    <AccountTransactionsList />
  </section>
  <h5><i class="fa-solid fa-wallet fa-fw" />{formatMoney($accounts[0].cash)}</h5>
</div>

<style>
  .main {
    overflow: hidden;
    width: 90%;
    height: 90%;
    bottom: 5%;
    left: 5%;
    padding: 1rem;
    position: absolute;
    background-color: #32323e;
    border-radius: 5px;
    border: 13px solid #393a45;
    background-size: cover;
    background-position: center;
    opacity: 1;
  }

  section {
    display: flex;
    gap: 4rem;
    height: calc(100% - 2rem);
  }
  h5 {
    font-size: 1.4rem;
    display: flex;
    align-items: center;
    gap: 0.5rem;
  }
</style>
