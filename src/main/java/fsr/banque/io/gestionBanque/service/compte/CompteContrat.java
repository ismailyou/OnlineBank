package fsr.banque.io.gestionBanque.service.compte;

import fsr.banque.io.gestionBanque.exceptions.*;
import fsr.banque.io.gestionBanque.models.Compte;
import org.springframework.data.domain.Page;

import java.util.List;

public interface CompteContrat {

    Page<Compte> findCompteParMotCle(String mc, int page, int size);

    Compte updateAccount(Compte compte, Long aId);

    List<Compte> allAccounts();

    Compte findLeCompte(Long id) throws InvalidAccountException;

    Compte disactivateAccount(Long idCompte,String motDePasse,String confirmation) throws InvalidAccountException, InvalidPasswordException, InvalidConfirmationException, InvalidAdminDeletionException, InvalidHashPasswordException;

}
